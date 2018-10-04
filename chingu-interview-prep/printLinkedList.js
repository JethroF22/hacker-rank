function printLinkedList(head) {
  let node = head;
  while (true) {
    console.log(node.data);
    if (!node.next) {
      break;
    }
    node = node.next;
  }
}
