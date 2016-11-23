class ArticlesController < ApplicationController

	before_action :authenticate_editor!, except: [:index, :show]

	before_action :require_admin, only: [:destroy]

	def index 
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 7)
	end 

	def search
		if params[:search]
  			@articles = Article.search(params[:search]).order(created_at: :desc).paginate(:page => params[:page], :per_page => 9)
  		else
    		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 7) 
  		end
	end 

	def new  
		@article = Article.new 
	end 

	def create 
		@article = Article.new(article_params)
			if @article.save 
				redirect_to '/home'
			else 
				render 'new'
		end 
	end 

	def show 
		@article = Article.find(params[:id]) 
		@articles = Article.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 4)
	end

	def edit 
		@article = Article.find(params[:id]) 
	end 

	def update 
		@article = Article.find(params[:id]) 

		if @article.update(article_params) 
			redirect_to @article
		else 
			render 'edit'
		end 
	end 

	def destroy 
		@article = Article.find(params[:id]) 
		@article.destroy 
		redirect_to '/home'
	end 

	private 
	def article_params
		params.require(:article).permit(:title, :description, :image, :author, :body, :category) 
	end 

end
