class WelcomeController < ApplicationController

  def index
    @books = Book.all.visibles
  end
end
