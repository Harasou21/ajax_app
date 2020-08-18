class PostsController < ApplicationController
 
  def index
    @posts = Post.all.order(id: "DESC")
    #インスタンス変数に取得したデータを代入
    #そうすることで、ビューに@postを使用できる
  end  

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
    #先ほど指定したurlパラメーターから既読したメモのidが
    #渡され、それを取得
    if post.checked
      #もし既読したら、(チェック、クリックしたら)
      #何故かfalseにするらしい
      post.update(checked: false)
    else
        posts.update(checked: true)
    end

    item = Post.find(params[:id])
    #更新したレコードをidで取得し直し、
    render json: {post: item}
    #json形式で、データとしてchecked.jsに返す
  end
 
end
