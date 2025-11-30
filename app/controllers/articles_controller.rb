class ArticlesController < ApplicationController
    layout "admin"

    def index
        @article = article.all 
    end
end