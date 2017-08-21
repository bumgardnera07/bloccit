require 'random_data'

 # Create Posts
 50.times do
   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 
 posts = Post.all
 
 unless posts.any?{|a| a.title == "masterpost" && a.body == "masterbody"}
          Post.create!(title: 'masterpost', body: 'masterbody')
 end
 
 # Create Comments

 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 comment= Comment.all
 
 unless comment.any?{|a| a.body == "specialcomment"}
          Post.create!(body: 'specialcomment')
 end
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"