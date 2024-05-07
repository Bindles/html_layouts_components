command = "G()(al)"
/**
 * @param {string} command
 * @return {string}
 */
//WORKINS IN JS NOT RUBY
var interpret = function(command) {
  return command.split("()").join("o").split("(al)").join("al");  
};
console.log(interpret(command))

//WORKS IN RUBY NOT JS LEETCODE | WORKS HERE IN EDITOR
var interpret = function(command) {
  return command.replace("()", () => 'o').replace("(al)", () => 'al');
}
console.log(interpret(command))

//
var interpret = function(command) {
  let result = "";
  let i = 0;

  while (i < command.length) {
    if (command[i] === "G") {
      result += command[i];
    } else if (command.slice(i, i + 2) === "()") {
      result += "o";
      i++;
    } else if (command.slice(i, i + 4) === "(al)") {
      result += "al";
      i += 3;
    } else {
      i++;
      continue;
    }
    i++;
  }
  return result;
};
console.log(interpret(command))