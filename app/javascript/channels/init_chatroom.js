// Import the consumer
import consumer from "./consumer";

const insertIntoDOM = (message) => {
  const messages = document.getElementById('messages');
  messages.insertAdjacentHTML('beforeend', message)
}

// create the function to be exported
const initChatroom = () => {
  // find my messages DOM element
  const messages = document.getElementById('messages');
  // if it exists, we will create the subscription
  if (messages) {
    // find the chatroom id
    const id = messages.dataset.chatroomId;

    // create the subscription
    consumer.subscriptions.create(
      { channel: 'ChatroomChannel', id: id },
      {
        // when you receive something
        received(message) {
          // update the DOM
          insertIntoDOM(message);
        }
      }
    )
  }
};

// export the function
export { initChatroom }
