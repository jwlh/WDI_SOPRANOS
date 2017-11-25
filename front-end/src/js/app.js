// app.js is the main JS file which you should define your Angular module
angular
  .module('sopranos', ['ui.bootstrap', 'ngAnimate', 'youtube-embed'])
  .controller('MainCtrl', MainCtrl);

MainCtrl.$inject = ['$http'];

function MainCtrl($http) {
  const vm = this;
  vm.score = 0;
  vm.checkAnswer = checkAnswer;


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
        buttons[i].style.cursor = 'default';
        buttons[i].classList.remove('is-hoverable');
      } else {
        buttons[i].classList.add('red');
        buttons[i].style.cursor = 'default';
        buttons[i].classList.remove('is-hoverable');
      }
    }
    const video = document.getElementById(`video-${questionId}`);
    video.setAttribute('height', 300);

    console.log(video);

  }
}
