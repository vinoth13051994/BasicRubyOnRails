class ArticlesController < ApplicationController

	def new
       @article=Article.new
	end
	def create
		#render plain:params[:article].inspect
		@article=Article.new(article_param)		
	    @article.save
	    redirect_to articles_show(@article)
	end

	def article_param
		params.require(:article).permit(:title,:description)
	end
end