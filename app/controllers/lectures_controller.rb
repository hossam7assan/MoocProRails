class LecturesController < InheritedResources::Base


  def upvote 
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_by current_user
    redirect_to(@lecture)
  end  
  
  def downvote
    @lecture = Lecture.find(params[:id])
    @lecture.downvote_by current_user
    redirect_to(@lecture)
  end


  def spam
    current_user.lectures << Lecture.find(params[:id])  
    redirect_to lectures_url
  end

  private

    def lecture_params
      params.require(:lecture).permit(:content, :course_id)
    end
end

