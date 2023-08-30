# frozen_string_literal: true

class CipherTextsController < ApplicationController

  def new
    binding.pry
    # rails console
    @cipher_text = CipherText.new
  end

  def create
    @cipher_text = CipherText.new(cipher_text_params)

    if @cipher_text.save
      flash[:success] = "You just made some cipher text, oh my!"
      redirect_to cipher_texts_path
    else
      # flash[:alert] = "That cipher text is no good !"
      render :new
    end
  end

  def index
    @cipher_texts = CipherText.all
  end

  private

  def cipher_text_params
    params.require(:cipher_text).permit(:author, :message)
  end
end
