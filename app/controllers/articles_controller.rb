class ArticlesController < ApplicationController
    def show
        # byebug
        # instance variable
        @article = Article.find(params[:id])
    end
end