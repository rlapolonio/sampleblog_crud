class ArticlesController < ApplicationController
  def index
    @articles = Article.order(updated_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)

    if @article.save
      redirect_to articles_path, notice: "Article was created succesfully."
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to articles_path, notice: "Article was updated succesfully."
    else
      render :edit
    end
  end

  def delete
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, notice: "Article was deleted succesfully."
  end

  private

  def article_params
    params.require(:article).permit(:name, :body)
  end

end
