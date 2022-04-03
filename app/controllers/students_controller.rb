class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        ranked_students = Student.all.order(grade: :DESC)
        render json: ranked_students
    end

    def highest_grade
        teachers_pet = Student.all.order(grade: :DESC).first
        render json: teachers_pet
    end
end
