class PagesController < ApplicationController
    def home
    end

    def acervo
        @articles = Article.all
    end
end