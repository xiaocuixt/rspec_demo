namespace :say do
  task :hi do
    Rake::Task['say:hello'].invoke
    puts "hi xiaocui"
  end
end