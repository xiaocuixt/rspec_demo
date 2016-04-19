# coding: utf-8
Fabricator(:post, class_name: "Post") do
  title Faker::Name.name
  content Faker::Internet.email
  published false
end