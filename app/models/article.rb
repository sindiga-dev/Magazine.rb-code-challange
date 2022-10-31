# Path: app/models/article.rb
#An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
#An article cannot change its author, magazine, or title after it is has been initialized.
#Returns the title for that given article
#Returns the author for that given article
#Returns the magazine for that given article
#Returns the author's name for that given article
#Returns the magazine's name for that given article
#Returns the author's age for that given article
#Returns the author
class Article
    attr_accessor :title, :author, :magazine
    
    @@all = []
    
    def initialize(title, author, magazine)
        @title = title
        @author = author
        @magazine = magazine
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    end
 