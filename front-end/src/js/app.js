// app.js is the main JS file which you should define your Angular module
angular
  .module('sopranos', ['ui.bootstrap', 'ngAnimate', 'youtube-embed'])
  .controller('MainCtrl', MainCtrl);

MainCtrl.$inject = ['$http'];

function MainCtrl($http) {
  const vm = this;
  vm.score = 0;
  vm.checkAnswer = checkAnswer;
  vm.vidShow = false;

  $http
    .get('http://localhost:3000/questions')
    .then(res => {
      vm.questions = res.data;

    });

  function checkAnswer(suspectId, killerId, questionId) {
    if (suspectId === killerId) {
      vm.score++;

    }
    const buttons = document.querySelectorAll(`.answers-${questionId}`);
    for (var i = 0; i < buttons.length; i++) {
      if (buttons[i].id == killerId) {
        buttons[i].classList.add('green');
      } else {
        buttons[i].classList.add('red');
      }
    }
    const video = document.getElementById(`video-${questionId}`);
    video.setAttribute('height', 300);

    console.log(video);

  }
}
