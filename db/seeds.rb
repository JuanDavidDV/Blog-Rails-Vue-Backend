posts = [
  {
    title: "Post 1",
    body: "This is the body of post 1"
  },
  {
    title: "Post 2",
    body: "This is the body of post 2"
  },
  {
    title: "Post 3",
    body: "This is the body of post 3"
  }
]


posts.each do |post|
  Post.find_or_create_by!(title: post[:title]) do |a|
    a.body = post[:body]
  end
end
