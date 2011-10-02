class TodosController < ApplicationController
  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
    @data_url = todos_path
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
    @todo = Todo.find(params[:id])
  end

  # GET /todos/new
  # GET /todos/new.json
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
    @todo = Todo.find(params[:id])
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(params[:todo])
      if @todo.save
        redirect_to todos_url, notice: 'Todo was successfully created.'
      else
        render action: "new"
     end
  end

  # PUT /todos/1
  # PUT /todos/1.json
  def update
    @todo = Todo.find(params[:id])

    if @todo.update_attributes(params[:todo])
      redirect_to "/todos/", notice: 'Todo was successfully updated.' 
    else
      render action: "edit"
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_url
  end
end
