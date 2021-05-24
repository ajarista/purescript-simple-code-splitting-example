exports.importHome = function(onError, onSuccess) {
  var homePromise = import('../output/Home/index.js');
  homePromise.then(function(home) {
    console.log("PROMISE RESOLVED", home);
    onSuccess(home);
  });
  // No way to cancel
  return function (cancelError, onCancelerError, onCancelerSuccess) {
    console.log("PROMISE CANCELLED", home);
    onCancelError(cancelError);
  };
};
