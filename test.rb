require 'rubygems'
#require 'sinatra'
#require 'haml'


class Article
	attr_accessor :title,:body

	def self.remplir_article i
		nomfichier = "public/articles/#{i}.txt"	
		article = Article.new
		#article.title = File.open(nomfichier,"r").first
		#article.title = "montritre"
		#corps = File.readlines(nomfichier)
		#corps.join
		#corps = [0..100]
		#article.body = corps
		article.body = "test"		
		article
	end

	def self.load_all
		articles_array = []
		for n in (1..8)
			articles_array << remplir_article(n)
		end
		return articles_array
	end	

	def self.load i 
		remplir_article(i)
	end
end

articles = Article.new
articles = Article.load_all

articles.each do |article|
{
	puts article.title
}



#get '/' do
#  @articles = Article.load_all
#  haml :index
#end

#get '/articles/:number' do
#  @article = Article.load( params[:number] )
#  haml :show
#end
