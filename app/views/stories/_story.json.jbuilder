json.extract! story, :id, :source_name, :link, :title, :created_at, :updated_at
json.url story_url(story, format: :json)