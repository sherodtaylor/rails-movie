var movieData = {};
var movies = new Array();
$(document).ready( function(){
  $('input').autocomplete({
    focus: function ( event, ui ){
      $('input').val(ui.item.value);
      return false;
    },
    source: function (request, response){
    var query = request.term;
         $.getJSON("http://www.omdbapi.com/?s=" + query,
         function(data) {
           var results = data['Search'];
           movies = [];
           for (var i = 0; i < results.length; i += 1 ){
             var title =  results[i]['Title']
                ,id =  results[i]['imdbID']
                ,hash = { label : title, value: title, id: id};

             movies.push(hash);
             response(movies);
         }
      });
    }, // source
    select: function (event, ui){
      $('input').val(ui.item.value);
      $.ajax({ url: "/search?id=" + ui.item.id,
               dataType: "json",
               method: "get",
               success: function ( movie ){
                 console.log("templating engine")
                 var source = $("#template").html()
                    ,template = Handlebars.compile(source)
                    ,html = template(movie);
                  $('.container').empty();
                  $('.container').append(html);
               }
      })
      return false;
    }
  })
});
