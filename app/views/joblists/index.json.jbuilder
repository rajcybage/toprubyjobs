json.array!(@joblists) do |joblist|
  json.extract! joblist, :id, :short_description, :long_description, :job_link, :recruiter_name, :title, :number_of_position, :type, :location
  json.url joblist_url(joblist, format: :json)
end
