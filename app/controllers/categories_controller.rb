class CategoriesController < ApplicationController
  def index
  end

  def totalprojects
    @categories = D3CategoryProject.all

    respond_to do |format|
      format.json { render :json => @categories }
    end
  end

  def totalfunding
    @categories = D3CategoryFunding.all

    respond_to do |format|
      format.json { render :json => @categories }
    end
  end
end