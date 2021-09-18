class ExpensesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
    @expenses = Expense.all
  end

  def new
    @category_pillars = Category.pillars.keys
    @expense = Expense.new
  end

  def create
    @expense = Expense.create(allowed_parameters)
    redirect_to Expense
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    @expense.update(amount: params[:expense][:amount], description: params[:expense][:description], high_cost: true)
    redirect_to expense_path(@expense)
  end

  private

  def allowed_parameters
    params.require(:expense).permit(:description, :category, :amount)
  end
end