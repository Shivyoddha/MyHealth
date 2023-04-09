class HomeController < ApplicationController
  def index
    @slot=Slot.new
    @user=User.find(current_user.id)
    if @user.usertype=='doctor'
      redirect_to doctor_myslot_path(id:current_user.id)
    end
    @user1=User.where(usertype:'doctor')
  end

end
