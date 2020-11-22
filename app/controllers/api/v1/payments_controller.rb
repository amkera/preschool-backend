class Api::V1::PaymentsController < ApplicationController

  before_action :set_student

  def index
    @payments = @student.payments
    render json: @payments
  end
  #first find the student, and then find all of their payments
  #api/v1/students/1/payments

  def show
    find_payment
    render json: @payment
  end

  def create
    @payment = @student.payments.new(payment_params)
    if @payment.save
      render json: @student
    else
      render json: {error: "Oops! There was an error creating this payment."}
    end
  end
  #rendering the student in JSON renders the student whos payment was just created


  def destroy
    @payment = Payment.find(params["id"])
    @student = Student.find(@payment.student_id)
    @payment.destroy
    #binding.pry
    render json: @student
  end


  private

  def payment_params
    params.require(:payment).permit(:student_id, :date, :amount, :paid)
  end

  def set_student
    @student = Student.find(params[:student_id])
  end
  #:student_id comes from URL


  def find_payment
    @payment = Payment.find(params[:id])
  end


end
