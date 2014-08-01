//
//= require jquery
//= require jquery_ujs
//= require_tree .

// Fetch Data
var quotes = undefined;

$.ajax({
    url: '/fetchData.json',
    success: function(msg) {
      quotes = msg;
    },
    error: function(jqXHR, textStatus, errorThrown){
    },
    complete: function(){
      setTimeout(setPrompt, 1000);
    }
  });


setPrompt = function() {
  // Generate a random number of the quote to be picked
  random_index = ((Math.floor((Math.random() * 100))% quotes.data_count) + 1)
  noty({
    text: quotes.data[random_index],
    layout: quotes.position,
    maxVisible: quotes.maxVisible,
    timeout: quotes.timeout,
    type: 'default'
  });

  setTimeout(setPrompt, quotes.call_timeout);
};

