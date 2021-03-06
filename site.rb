require 'rubygems'
require 'sinatra'
require 'haml'


class Article
	attr_accessor :title,:body

	def self.remplir_article i
		nomfichier = "public/articles/#{i}.txt"	
		article = Article.new
		article.title = File.open(nomfichier,"r").first
		corps = File.readlines(nomfichier)
		corps = corps[1..-1]
		corps = corps.join
		corps = corps[0..100]
		article.body = corps	
		article
	end

	def self.load i
		remplir_article(i)
	end
	def self.load_all
		articles_array = []
		for n in (1..8)
			articles_array << remplir_article(n)
		end
		return articles_array
	end	
end

#Code qui marche dans un programme ruby classique o/ Doto? doto? dototage?
#articles = Article.load_all
#articles.each do |article|
#    puts article.body
#end

get '/' do
  @articles = Article.load_all
  haml :index
end
