

function getStuff(url) {
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data)
    });

}

function appendStuff() {

}
