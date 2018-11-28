class AdminController < ApplicationController
  def admin
    @engineering=Engineering.all
    @agriculture=Agriculture.all
    @electronic=Electronic.all
    @humanity=Humanity.all
    @medical=Medical.all
    @social=Social.all
    @teacher=Teacher.all
    @life_science=Lifescience.all
    @natural=Natrual.all
  end
  
  
  def engineering_order
    @name=params[:name]
    @discount=params[:discount]

    @engineering=Engineering.new
    @engineering.name=params[:name]
    @engineering.discount=params[:discount]
    @engineering.save
    redirect_to '/admin/admin'
  end
  
  def agriculture_order
    @name=params[:name]
    @discount=params[:discount]

    @agriculture=Agriculture.new
    @agriculture.name=params[:name]
    @agriculture.discount=params[:discount]
    @agriculture.save
    redirect_to '/admin/admin'
  end
  
  def electronic_order
    @name=params[:name]
    @discount=params[:discount]

    @electronic=Electronic.new
    @electronic.name=params[:name]
    @electronic.discount=params[:discount]
    @electronic.save
    redirect_to '/admin/admin'
  end
  
  def humanity_order
    @name=params[:name]
    @discount=params[:discount]

    @humanity=Humanity.new
    @humanity.name=params[:name]
    @humanity.discount=params[:discount]
    @humanity.save
    redirect_to '/admin/admin'
  end
  
  def medical_order
    @name=params[:name]
    @discount=params[:discount]

    @medical=Medical.new
    @medical.name=params[:name]
    @medical.discount=params[:discount]
    @medical.save
    redirect_to '/admin/admin'
  end
  
  def social_order
    @name=params[:name]
    @discount=params[:discount]

    @social=Social.new
    @social.name=params[:name]
    @social.discount=params[:discount]
    @social.save
    redirect_to '/admin/admin'
  end
  
  def teacher_order
    @name=params[:name]
    @discount=params[:discount]

    @teacher=Teacher.new
    @teacher.name=params[:name]
    @teacher.discount=params[:discount]
    @teacher.save
    redirect_to '/admin/admin'
  end
  
  def life_science_order
    @name=params[:name]
    @discount=params[:discount]

    @life_science=Lifescience.new
    @life_science.name=params[:name]
    @life_science.discount=params[:discount]
    @life_science.save
    redirect_to '/admin/admin'
  end
  
  def natural_order
    @name=params[:name]
    @discount=params[:discount]

    @natural=Natrual.new
    @natural.name=params[:name]
    @natural.discount=params[:discount]
    @natural.save
    redirect_to '/admin/admin'
  end




  def agriculture_edit
    @post=Agriculture.find(params[:post_id])
  end
  
  def engineering_edit
    @post=Engineering.find(params[:post_id])
  end
  
  def electronic_edit
    @post=Electronic.find(params[:post_id])
  end
  
  def humanity_edit
    @post=Humanity.find(params[:post_id])
  end
  
  def medical_edit
    @post=Medical.find(params[:post_id])
  end
  
  def social_edit
    @post=Social.find(params[:post_id])
  end
  
  def teacher_edit
    @post=Teacher.find(params[:post_id])
  end
  
  def life_science_edit
    @post=Lifescience.find(params[:post_id])
  end
  
  def natural_edit
    @post=Natrual.find(params[:post_id])
  end
  
  
  def engineering_update
    @post=Engineering.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def agriculture_update
    @post=Agriculture.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def electronic_update
    @post=Electronic.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def humanity_update
    @post=Humanity.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def medical_update
    @post=Medical.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def social_update
    @post=Social.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def teacher_update
    @post=Teacher.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def life_science_update
    @post=Lifescience.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def natural_update
    @post=Natrual.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def humanity_update
    @post=Engineering.find(params[:post_id])
    @post.name=params[:name]
    @post.discount=params[:discount]
    @post.save
    redirect_to '/admin/admin'
  end
  
  def agriculture_destroy
    @agriculture_delete=Agriculture.find(params[:post_id])
    @agriculture_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def engineering_destroy
    @engineering_delete=Engineering.find(params[:post_id])
    @engineering_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def electronic_destroy
    @electronic_delete=Electronic.find(params[:post_id])
    @electronic_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def humanity_destroy
    @humanity_delete=Humanity.find(params[:post_id])
    @humanity_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def medical_destroy
    @medical_delete=Medical.find(params[:post_id])
    @medical_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def social_destroy
    @social_delete=Social.find(params[:post_id])
    @social_delete_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def teacher_destroy
    @teacher_delete=Teacher.find(params[:post_id])
    @teacher_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def life_science_destroy
    @life_science_delete=Lifescience.find(params[:post_id])
    @life_science_delete.destroy
    redirect_to '/admin/admin'
  end
  
  def natural_destroy
    @natural_delete=Natrual.find(params[:post_id])
    @natural_delete.destroy
    redirect_to '/admin/admin'
  end
  
end
