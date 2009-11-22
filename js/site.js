$(document).ready(function() {
  getRepos('martinisoft', function(repos) {
    if (!repos.length) return;
    $('#repos').replaceWith('<dl id="repos"></dl>');
    repos.each(function() {
      var escapedDesc = $('<div/>').text(this.description).html();
      $('#repos').append(
        '<dt><a href="'+this.url+'">'+this.name+'</a> ('+this.watchers+')</dt>'+
        '<dd>'+escapedDesc+'</dd>'
      );
    });
  });

  $(".tweet").tweet({
      username: "martinisoft",
      join_text: "auto",
      avatar_size: 32,
      count: 5,
      auto_join_text_default: "", 
      auto_join_text_ed: "",
      auto_join_text_ing: "",
      auto_join_text_reply: "",
      auto_join_text_url: "",
      loading_text: ""
  });

  function getRepos(username, callback) {
    $.getJSON('http://github.com/api/v1/json/'+username+'?callback=?', function(data) {
      var repos = data.user.repositories;
      repos = $.grep(repos, function(r) { return !r.fork });
      repos.sort(function(a, b) { return b.watchers - a.watchers });
      repos = $(repos);
      callback(repos);
    });
  }
});

$(function(){
  var spt = $('span.mailme');
  var at = / at /;
  var dot = / dot /g;
  var addr = $(spt).text().replace(at,"@").replace(dot,".");
  $(spt).after('<a href="mailto:'+addr+'" title="Send an email">'+addr+'</a>');
  $(spt).remove();
});