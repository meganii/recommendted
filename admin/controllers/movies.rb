Admin.controllers :movies do

  get :index do
    @movies = Movie.all
    render 'movies/index'
  end

  get :new do
    @movie = Movie.new
    render 'movies/new'
  end

  post :create do
    @movie = Movie.new(params[:movie])
    if @movie.save
      flash[:notice] = 'Movie was successfully created.'
      redirect url(:movies, :edit, :id => @movie.id)
    else
      render 'movies/new'
    end
  end

  get :edit, :with => :id do
    @movie = Movie.get(params[:id])
    render 'movies/edit'
  end

  put :update, :with => :id do
    @movie = Movie.get(params[:id])
    if @movie.update(params[:movie])
      flash[:notice] = 'Movie was successfully updated.'
      redirect url(:movies, :edit, :id => @movie.id)
    else
      render 'movies/edit'
    end
  end

  delete :destroy, :with => :id do
    movie = Movie.get(params[:id])
    if movie.destroy
      flash[:notice] = 'Movie was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Movie!'
    end
    redirect url(:movies, :index)
  end
end
