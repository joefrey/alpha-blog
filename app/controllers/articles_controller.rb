class ArticlesController < ApplicationController
    def show
        # byebug
        # instance variable to be available in views pages
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
        # byebug
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        # render plain: @article.inspect
        if @article.save
            flash[:notice] = "Article was created successfully."
            # redirect_to article_path(@article)
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        # byebug
        # instance variable
        @article = Article.find(params[:id])
        # params.require is to whitelist data
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Article was updated successfully."
            redirect_to @article
        else
            render 'edit'
        end
    end
end