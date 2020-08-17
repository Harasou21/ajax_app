class PostsController < ApplicationController
 
  def index
    @posts = Post.all
    #インスタンス変数に取得したデータを代入
    #そうすることで、ビューに@postを使用できる
  end  

  def new
    #ページを表示するだけなのでアクションはいらない
    #ってことは多分デフォルトが作動するはず
    #new.index.erbに行ってくださいってデフォルトが
  end  

  def create
    #フォームで送信されたデータもparamsの中に
    #格納されてコントローラで受け取れます
    
    @post = Post.create(content: params[:content])
                      #(テーブルのカラム名:paramsとして奥)
  end  
end
