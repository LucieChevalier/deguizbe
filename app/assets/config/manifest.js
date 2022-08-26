// = link_tree ../images
// = link_directory ../stylesheets .css
// = link_tree ../builds

$('.buy').click(function(){
  $('.bottom').addClass("clicked");
});

$('.remove').click(function(){
  $('.bottom').removeClass("clicked");
});
