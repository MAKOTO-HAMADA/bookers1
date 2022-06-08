class BooksController < ApplicationController

def index
    @books = Book.all #複数形の変数
    @book  = Book.new
    render :books
end

def show
    @book = Book.find(params[:id]) # params[:id]で指定されたidの番号のレコードを1つ取得する
end

def edit
    @book = Book.find(params[:id])
end

def create
    @book = Book.new(book_params) # formから送られてくるデータがparamsの中に入っている
    if @book.save
        flash[:notice] = "Book was successfully created."
        redirect_to book_path(@book.id)
    else
        @books = Book.all
        render :books
    end
    # ""で囲むとリンク指定方法に#{}が使用できる
end

def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
        flash[:notice] = "Book was successfully updated."
        redirect_to book_path(@book.id)
    else
        render :edit
    end
end

def destroy
    @book = Book.find(params[:id])
    if @book.destroy
        flash[:notice] = "Book was successfully destroyed."
        redirect_to books_path
    else
        redirect_to books_path
    end
end

private # ストロングパラメータ
def book_params
    params.require(:book).permit(:title, :body) # .require(:book)を記載するとエラーになる...nulなのか...
end
  
end

 # 