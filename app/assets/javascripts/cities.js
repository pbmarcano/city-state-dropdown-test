document.addEventListener("turbolinks:load", function(){
  var country = document.getElementById("country");
  var state = document.getElementById("state");

  country.addEventListener("change", function(){
    Rails.ajax({
      url: "/states?country=" + country.value,
      type: "GET"
    })
  })

  state.addEventListener("change", function(){
    Rails.ajax({
      url: "/cities?country=" + country.value + "&state=" + state.value,
      type: "GET"
    })
  })
})
