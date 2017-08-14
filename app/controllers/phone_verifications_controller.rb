class PhoneVerificationsController < ApplicationController
  def create
    session[:phone_number] = params[:phone_number]
    session[:country_code] = params[:country_code]
    @response = Authy::PhoneVerification.start(via: params[:method], country_code: params[:country_code], phone_number: params[:phone_number])
    if @response.ok?
      redirect_to challenge_phone_verifications_path
    else
      render :new
    end
  end

  def verify
    @response = Authy::PhoneVerification.check(verification_code: params[:code], country_code: session[:country_code], phone_number: session[:phone_number])
    if @response.ok?
      session[:phone_number] = nil
      session[:country_code] = nil
      redirect_to success_phone_verifications_path
    else
      render :challenge
    end
  end
end
