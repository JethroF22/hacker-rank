function processData(input) {
  input = input.split("\n");
  const endIndex = parseInt(input[0].split(" ")[0]) - 1;
  const array = input[1].split(" ");

  input.slice(2).forEach(query => {
    let queryArray = query.split(" ").map(num => parseInt(num));
    const index1 = queryArray[1] - 1;
    const index2 = queryArray[2] - 1;
    let numShiftedElements =
      index1 < index2 ? index2 - index1 : index1 - index2;
    let shiftedElements = array.splice(
      index1 < index2 ? index1 : index2,
      numShiftedElements + 1
    );
    queryArray[0] === 1
      ? array.unshift(...shiftedElements)
      : array.push(...shiftedElements);
  });
  console.log(Math.abs(array[0] - array[endIndex]));
  console.log(array.join(" "));
}
