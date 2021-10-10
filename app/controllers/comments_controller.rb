class CommentsController < ApplicationController
    def index
        @book = Book.find(params[:book_id])
        @comments = @book.comments
    end
    
    def show
        @book = Book.find(params[:book_id])
        @comment = @book.comments.find(params[:id])
    end
    
    def create
        @book = Book.find(params[:book_id])
        @comment = @book.comments.create(comment_params)
        @comment.update!(user: current_user)
    
        redirect_to @book
    end

    def accept
        @book = Book.find(params[:book_id])
        @comment = @book.comments.find(params[:id])
    
        @comment.update!(accepted: true)
    
        redirect_to book_comments_path
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:title, :content)
    end
end
