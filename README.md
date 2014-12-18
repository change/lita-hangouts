lita-hangouts
=============
A simple Lita handler for creating an on-demand Google Hangout by simply typing in either of these terms:

`hangouts`  
`hangout`  
`new hangouts`  
`new hangout`


In your Lita instance's `lita_config.rb` file, you must add a line assigning `config.handlers.hangouts.namespace` to a namespace for your Google Hangouts url.  That namespace - along with a timestamp - forms your new, unique Hangouts url according to this pattern: 
```rb
"https://plus.google.com/hangouts/_/#{namespace}/#{timestamp}"
```
