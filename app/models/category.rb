class Category < ActiveRecord::Base
  enum pillars: {
    pride: {name: 'pride'},
    procurement: {name: 'procurement'},
    social: {name: 'social'},
    professional_development: {name: 'professional_development'},
    other: {name: 'other'},
    reserve: {name: 'reserve'}
  }
end