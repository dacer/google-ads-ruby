#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This example gets the metadata, such as whether the artifact is selectable,
# filterable and sortable, of an artifact. The artifact can be either a resource
# (such as customer, campaign) or a field (such as metrics.impressions,
# campaign.id). It'll also show the data type and artifacts that are
# selectable with the artifact.

require 'optparse'
require 'google/ads/google_ads'

def get_artifact_metadata(artifact_name)
  # GoogleAdsClient will read a config file from
  # ENV['HOME']/google_ads_config.rb when called without parameters
  client = Google::Ads::GoogleAds::GoogleAdsClient.new

  query = <<~QUERY
    SELECT
      name,
      category,
      selectable,
      filterable,
      sortable,
      selectable_with,
      data_type,
      is_repeated
    WHERE name = '#{artifact_name}'
  QUERY

  response = client.service.google_ads_field.search_google_ads_fields(query)

  if response.response.results.empty?
    puts "The specified artifact '#{artifact_name}' doesn't exist"
    return
  end

  response.each do |row|
    puts "An artifact named '#{row.name}' with category '#{row.category}' and data type " \
        "#{row.data_type} #{is_or_not(row.selectable.value)} selectable, " \
        "#{is_or_not(row.filterable.value)} filterable, #{is_or_not(row.sortable.value)} " \
        "sortable, and #{is_or_not(row.is_repeated.value)} repeated."

    if !row.selectable_with.empty?
      puts "The artifact can be selected with the following artifacts:"
      puts (row.selectable_with.sort_by { |field| field.value })
    end
  end
end

# Returns "is" when the specified value is true and "is not" when the
# specified value is false
def is_or_not(bool)
  bool ? 'is' : 'is not'
end

if __FILE__ == $PROGRAM_NAME
  options = {}

  # The following parameter(s) should be provided to run the example. You can
  # either specify these by changing the INSERT_XXX_ID_HERE values below, or on
  # the command line.
  #
  # Parameters passed on the command line will override any parameters set in
  # code.
  #
  # Running the example with -h will print the command line usage.
  options[:artifact_name] = 'campaign'

  OptionParser.new do |opts|
    opts.banner = sprintf('Usage: ruby %s [options]', File.basename(__FILE__))

    opts.separator ''
    opts.separator 'Options:'

    help_msg = 'Artifact Name (e.g. a resource such as customer, campaign' \
        ' or a field such as metrics.impressions, campaign.id)'

    opts.on('-A', '--artifact-name ARTIFACT-NAME', String, help_msg) do |v|
      options[:artifact_name] = v
    end

    opts.separator ''
    opts.separator 'Help:'

    opts.on_tail('-h', '--help', 'Show this message') do
      puts opts
      exit
    end
  end.parse!

  begin
    get_artifact_metadata(options[:artifact_name])
  rescue Google::Ads::GoogleAds::Errors::GoogleAdsError => e
    e.failure.errors.each do |error|
      error.error_code.to_h.each do |k, v|
        next if v == :UNSPECIFIED
        STDERR.printf("Error: %s\nDetails: %s\n", k, v)
      end
    end
  rescue Google::Gax::RetryError => e
    STDERR.printf("Error: '%s'\n\tCause: '%s'\n\tCode: %d\n\tDetails: '%s'\n" \
        "\tRequest-Id: '%s'\n", e.message, e.cause.message, e.cause.code,
        e.cause.details, e.cause.metadata['request-id'])
  end
end
