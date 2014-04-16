==Airbnb clone
Authors: Elikem Adadevoh and Kelly Becker
Objective:  Create an AirBnB clone
Development:  Ruby, Rails, Devise, PSQL, AJAX, FactoryGirl, Capybara, Geocoder, Array#sample

* [DONE] As a user, I want to securely login (Devise) and manage my profile.
* [DONE] Change sign up requirement from email to username.
* Create a factory for user creation (Factory Girl).
* As a user, I want to receive email for various event triggers.
* As a user, I want to add listings for rent.
* As a renter, I want to securely login and find listings to rent by location.
* As a renter, I want to see availability for a property.


Future considerations
* Username should not accept spaces
before_create :validate_username
  def validate_username
    if self.username.match(" ")
      flash[:alert] = "No spaces allowed."
      # DO NOT SAVE
    end
  end
