# Path: app/models/author.rb
#An author is initialized with a name as a string, age as
#an integer, and a list of articles as an array of Article objects.
#An author cannot change its name, age, or articles after it is has been initialized.
#Returns the name for that given author
#Returns the age for that given author
#Returns the articles for that given author
#Returns the titles for that given author
#Returns the magazines for that given author
#Returns the magazines' names for that given author
#Returns the oldest article for that given author
#Returns the oldest article's title for that given author
#Returns the oldest article's magazine for that given author
#Returns the oldest article's magazine's name for that given author

class Author
  attr_accessor :name, :age
  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def titles
    self.articles.map {|article| article.title}
  end

  def magazines
    self.articles.map {|article| article.magazine}
  end

  def magazines_names
    self.magazines.map {|magazine| magazine.name}
  end

  def oldest_article
    self.articles.max_by {|article| article.author.age}
  end

  def oldest_article_title
    self.oldest_article.title
  end

  def oldest_article_magazine
    self.oldest_article.magazine
  end

  def oldest_article_magazine_name
    self.oldest_article_magazine.name
  end
end

