# frozen_string_literal: true

class FlowController < ApplicationController
  def home
    @expense = Expense.new
    render 'Flows/home'
  end

  def cost
    render 'Flows/cost'
  end

  def cost_calculator
    render 'Flows/home'
  end
end
