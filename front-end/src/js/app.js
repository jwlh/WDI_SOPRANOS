// app.js is the main JS file which you should define your Angular module
angular
  .module('sopranos', ['ui.bootstrap', 'ngAnimate', 'youtube-embed'])
  .controller('MainCtrl', MainCtrl);

MainCtrl.$inject = ['$http', '$timeout'];

function MainCtrl($http, $timeout) {
  const vm = this;
  vm.score = 0;
  vm.answers = 0;
  vm.outcome = null;
  vm.checkAnswer = checkAnswer;
  vm.hideModal = hideModal;
  vm.refreshPage = refreshPage;

  $http
    .get('http://localhost:3000/questions')
    .then(res => {
      vm.questions = res.data;
    });

  const modal = document.getElementById('myModal');
  const endModal = document.getElementById('endModal');

  function showModal(video) {
    modal.style.display = 'block';
    vm.video = video;
  }

  function showEndModal() {
    endModal.style.display = 'block';
  }

  function refreshPage() {
    location.reload();
  }

  function hideModal() {
    modal.style.display = 'none';
    if (vm.answers === 5) {
      showEndModal();
    }
  }

  function checkAnswer(suspectId, killerId, questionId, questionVid) {
    const outcome = document.getElementById('outcome');
    if (suspectId === killerId) {
      vm.score++;
      vm.answers++;
      vm.outcome = 'Correct';
      outcome.classList.remove('text-green', 'text-red');
      outcome.classList.add('text-green');
    } else {
      vm.answers++;
      vm.outcome = 'Incorrect';
      outcome.classList.remove('text-green', 'text-red');
      outcome.classList.add('text-red');
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
    $timeout(() => {
      showModal(questionVid);
    }, 600);
  }
}
