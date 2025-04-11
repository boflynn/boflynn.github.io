# generate_tags.rb

require 'fileutils'
require 'yaml'

tags = {}

Dir.glob("_posts/*.md") do |file|
  front_matter = YAML.load_file(file)
  next unless front_matter['tags']
  front_matter['tags'].each do |tag|
    tags[tag] ||= []
    tags[tag] << file
  end
end

tag_dir = 'tag'
FileUtils.mkdir_p(tag_dir)

tags.each do |tag, posts|
  slug = tag.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  File.open("#{tag_dir}/#{slug}.md", 'w') do |f|
    f.puts "---"
    f.puts "layout: tag"
    f.puts "title: \"Posts tagged #{tag}\""
    f.puts "tag: #{tag}"
    f.puts "permalink: /tag/#{slug}/"
    f.puts "---"
  end
end