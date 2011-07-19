class BooksController < ApplicationController
  def index
    @books = Book.checked_in
  end

  def checked_out
    @books = Book.checked_out
    render :index
  end

  def search_checked_in
    @books = Book.checked_in
    @books = @books.search(params[:query]) if params[:query].present?
    render :index
  end

  def search_checked_out
    @books = Book.checked_out
    @books = @books.search(params[:query]) if params[:query].present?
    render :index
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.create(params[:book])
    redirect_to @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes params[:book]
    redirect_to @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to :books
  end

  def check_in
    @book = Book.find(params[:id])
    @book.update_attributes :checked_out => false
    redirect_to :back
  end

  def check_out
    @book = Book.find(params[:id])
    @book.update_attributes :checked_out => true
    redirect_to :back
  end
end
