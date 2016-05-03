A tiny app to practice using layers of Rack middleware.  
  
To run:  
clone this repo  
`gem install rack`  
`rackup`  
visit `http://localhost:9292/` in your browser  
  
You should see "Hello, World!" rendered in your viewport. This is the default message.  
  
To change the message, add a query string to the url, eg: `http://localhost:9292?Yo`  
("Yo" will be rendered in the viewport instead.)  
  
See [here](http://yorkshireman.github.io/rack-and-rack-middleware) for an (in-progress) post explaining what's going on here.
