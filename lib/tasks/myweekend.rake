task :morning do
  puts "get up"
end
task :afternoon do
  puts "go shopping"
end
task :evening do
  puts "have supper"
end
task :my_weekend => [:morning, :afternoon, :evening] do
  puts "This is my whole day on my weekend"
end