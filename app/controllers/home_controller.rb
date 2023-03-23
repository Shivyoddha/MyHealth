class HomeController < ApplicationController
  def index
    @user=User.find(current_user.id)
    if @user.usertype=='doctor'
      redirect_to doctor_myslot_path
    end
    @user1=User.where(usertype:'doctor')


  end
end
