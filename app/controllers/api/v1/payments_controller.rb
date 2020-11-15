class Api::V1::PaymentsController < ApplicationController

  def index
    @payments = Payment.all
    render json: @payments
  end

  def show
    find_payment
    render json: @payment
  end

  def create
    @payment = Payment.new(payment_params)
    if @payment.save
      render json: @payment
    else
      render json: {error: "Oops! There was an error creating this payment."}
  end

  def destroy
    find_payment
    @payment.destroy
  end

  private

  def payment_params
    params.require(:payment).permit(:student_id, :date, :amount, :paid)
  end

  def find_payment
    @payment = Payment.find(params[:id])
  end


end
