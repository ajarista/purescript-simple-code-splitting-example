exports.clog = function(x) {
    return function() {
        console.log(x);
    };
};

exports.debug = function() {
    debugger;
};

// THE IMPORT NEEDS TO BE IN A SEPARATE FILE BECAUSE PS DOESN'T HANDLE ES IMPORT STATEMENTS
exports.importHome_ = require('../../src/importHome.js').importHome;
