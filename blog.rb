class Blog

def set_author=(author_name)
	@name = author_name
end

def get_author
	return @name
end

def set_title=(blog_title)
	@title = blog_title
end

def get_title
	return @title
	end
end


class Blog_Post < Blog
	@@total_posts = 0
	def initialize
		@@total_posts += 1
	end
	
	def set_post_title=(post_title_name)
		@post_name = post_title_name
	end
	
	def get_post_title
		return @post_name
	end
	def set_time=(post_time)
		
		@time = post_time
	end
	
	def get_time
		return @time
	end
	
	def set_content=(content)
	@content = content
	end
	
	def get_content
		return @content
	end
end
my_blog = Blog.new
my_blog.set_title = "What We All Need"
my_blog.set_author = "Me"
blogtitle = my_blog.get_title
author = my_blog.get_author
puts "#{blogtitle}\n#{author}\n"

my_blog_post = Blog_Post.new
my_blog_post.set_post_title = "\nA new blog post"
my_blog_post.set_content="So  much to say and so little time. Hopefully there will be more time later."
my_blog_post.set_time = Time.now

posttitle = my_blog_post.get_post_title
content= my_blog_post.get_content
time = my_blog_post.get_time
puts "#{posttitle}\n#{time}\n#{content}"

my_blog_post = Blog_Post.new
my_blog_post.set_post_title = "\nAnd another blog post"
my_blog_post.set_content="Last time there was too much to say. Today there is much too little to say. Later."
posttitle = my_blog_post.get_post_title
content= my_blog_post.get_content
puts "#{posttitle}\n#{time}\n#{content}"

my_blog_post = Blog_Post.new
my_blog_post.set_post_title = "\nBlogs, blogs and more blogs"
my_blog_post.set_content="What we have here is a new blog post. Here is what needs to be said.\n“We are all in the same boat, in a stormy sea, and we owe each other a terrible loyalty.” - G.K. Chesterton"
posttitle = my_blog_post.get_post_title
content= my_blog_post.get_content
puts "#{posttitle}\n #{time}\n#{content}"

blog_posts_hash = {posttitle => time}
puts my_blog_post.inspect

