class ArticlesController < ApplicationController
    layout "dashboard"

    def index
        @articles = Article.all 
        @new_article = Article.new 
    end

    def create
        @new_article = Article.new(articles_params)
        if @new_article.save
            redirect_to articles_path, notice: "Artigo criado com sucesso!"
        else
            # Se der erro, precisamos carregar a lista de novo para o fundo da tela não quebrar
            @articles = Article.all
            render :index, status: :unprocessable_entity
        end
    end

    private

    def articles_params
        params.require(:article).permit(:title, :author, :area, :status, :abstract, :published_at)
    end
end