// app.js is the main JS file which you should define your Angular module
angular
  .module('sopranos', ['ui.bootstrap', 'ngAnimate'])
  .controller('MainCtrl', MainCtrl);

MainCtrl.$inject = ['$http'];

function MainCtrl($http) {
  const vm = this;

  $http
    .get('http://localhost:3000/questions')
    .then(res => {
      vm.questions = res.data;
    });
}
