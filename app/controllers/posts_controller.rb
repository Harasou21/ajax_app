class PostsController < ApplicationController
 
  def index
    @posts = Post.all.order(id: "DESC")
    #インスタンス変数に取得したデータを代入
    #そうすることで、ビューに@postを使用できる
  end  

  def create
    Post.create(content: params[:content],checked: false)
    render json:{post: post}
  end

 
end
