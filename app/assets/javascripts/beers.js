$(function() {
  $("#beers_search input").keyup(function() {
    $.get($("#beers_search").attr("action"), $("#beers_search").serialize(), null, "script");
    return false;
  });
});
