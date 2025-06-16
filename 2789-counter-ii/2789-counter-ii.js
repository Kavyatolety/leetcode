/**
 * @param {integer} init
 * @return { increment: Function, decrement: Function, reset: Function }
 */
var createCounter = function(init) {
    let p_count = init;
    return {
        increment: function() {
            p_count++;
            return p_count;
        },
        decrement: function() {
            p_count--;
            return p_count;
        },
        reset: function() {
            p_count = init;
            return p_count;
        }
    }
};

/**
 * const counter = createCounter(5)
 * counter.increment(); // 6
 * counter.reset(); // 5
 * counter.decrement(); // 4
 */