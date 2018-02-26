//add class scroll
var scrollpos = window.scrollY;
var header = document.getElementById("topmenu");

function add_class_on_scroll() {
    header.classList.add("hidetopmenu");
}

function remove_class_on_scroll() {
    header.classList.remove("hidetopmenu");
}

window.addEventListener('scroll', function() { 
  
    scrollpos = window.scrollY;

    if(scrollpos > 144){
        add_class_on_scroll();
    }
    else {
        remove_class_on_scroll();
    }
});
