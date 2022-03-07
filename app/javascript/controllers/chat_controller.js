import { Controller } from "stimulus"
import consumer from '../channels/consumer'

export default class extends Controller {
  static targets = ['form', 'messages']

  connect() {
    const stimulusController = this;
    // find my messages DOM element
    const messages = this.messagesTarget;
    // if it exists, we will create the subscription
    if (messages) {
      // find the chatroom id
      const chatroomId = messages.dataset.chatroomId;
      const currentUserId = messages.dataset.currentUserId;

      // create the subscription
      consumer.subscriptions.create(
        { channel: 'ChatroomChannel', id: chatroomId },
        {
          // when you receive something
          received(messageHTML) {
            // update the DOM
            stimulusController.insertIntoDOM(messageHTML, currentUserId, messages);
          }
        }
      )
    }
  };

    
  insertIntoDOM = (messageHTML, currentUserId, messages) => {
    // create an empty div
    const message = document.createElement('div') // https://developer.mozilla.org/pt-BR/docs/Web/API/Document/createElement

    // put the message HTML inside
    message.innerHTML = messageHTML;
    // if the message is from the sender,
    if (message.firstChild.dataset.senderId === currentUserId) {
      // add the sender CSS
      message.firstChild.classList.add('sent-message');
    } else {
      // Else, add the receiver css
      message.firstChild.classList.add('received-message');
    }
    messages.scrollTo(0, messages.scrollHeight)
    this.formTarget.reset()

    // insert the element in the DOM
    messages.insertAdjacentElement('beforeend', message);
  }

}
