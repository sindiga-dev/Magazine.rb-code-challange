# Path: app/models/magazine.rb
#A magazine is initialized with a name as a string and a list of articles as an array of Article objects.
#A magazine cannot change its name or articles after it is has been initialized.
#Returns the name for that given magazine
#Returns the articles for that given magazine
#Returns the titles for that given magazine
#Returns the authors for that given magazine
#Returns the authors' names for that given magazine
#Returns the oldest article for that given magazine
#Returns the oldest article's title for that given magazine
#Returns the oldest article's magazine for that given magazine
#Returns the oldest article's magazine's name for that given magazine
#Returns the oldest article's author for that given magazine
#Returns the oldest article's author's name for that given magazine
#Returns the oldest article's author's age for that given magazine
#Returns the oldest article's author
class Magazine
  attr_accessor :name, :category
  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def titles
    self.articles.map {|article| article.title}
  end

  def authors
    self.articles.map {|article| article.author}
  end

  def authors_names
    self.authors.map {|author| author.name}
  end

  def oldest_article
    self.articles.min_by {|article| article.author.age}
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

  def oldest_article_author
    self.oldest_article.author
  end

  def oldest_article_author_name
    self.oldest_article_author.name
  end

  def oldest_article_author_age
    self.oldest_article_author.age
  end

  def oldest_article_author
    self.oldest_article.author
  end
end

