class PagesController < ApplicationController

	def index_music
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 9)
	end 

	def index_cinema
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 9)
	end 

	def index_books
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 9)
	end 

	def index_food
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 9)
	end 

	def index_brand
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 9)
	end 

	def index_event
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 9)
	end 

	def app_index
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 7)
	end 

end
