function insertNodeAtTail(head, data) {
  if (head) {
    let node = head;
    let prevNode = null;

    while (node) {
      prevNode = node;
      node = node.next;
    }
    node = new SinglyLinkedListNode(data);
    prevNode.next = node;
  } else {
    head = new SinglyLinkedListNode(data);
  }
  return head;
}
