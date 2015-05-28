class ArticlePolicy < ApplicationPolicy
  attr_reader :user, :article

  def initiaize(user, article)
    @user = user
    @article = article
  end

  def update?
    user.admin? or user.editor?
  end
end
