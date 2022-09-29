class ArticulosController < ApplicationController
  
  def new
    @detail = Detail.new
  end