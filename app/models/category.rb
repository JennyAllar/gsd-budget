class Category < ActiveRecord::Base
  enum pillars: {
    pride: {name: 'pride', budget_remaining: 400 },
    procurement: {name: 'procurement', budget_remaining: 1400},
    social: {name: 'social', budget_remaining: 800},
    professional_development: {name: 'professional_development', budget_remaining: 3000},
    other: {name: 'other', budget_remaining: 4000},
    reserve: {name: 'reserve', budget_remaining: 2000}
  }
end