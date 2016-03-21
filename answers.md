# Q0: Why is this error being thrown?
home_controller calls @pokemon but there isn't a pokemons controller

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
@pokemon = trainerless_pokemon.sample. these pokemons have to have no trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button redirects to capture/@pokemon.id. capture_path specifies the prefix and concats id to it.

# Question 3: What would you name your own Pokemon?
Ash

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path(@pokemon.trainer_id). it needs a trainer id

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
<%= render 'layouts/messages' %> in layouts/application.html.erb . it renders "layouts/_mesaages.html.erb in the same folder", which displays the error message. 

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
