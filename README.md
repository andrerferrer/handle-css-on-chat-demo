## Goal
This is a demo app to teach how to implement a chat in RoR.
We'll be using WebSockets and ActionCable

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## How to
### 1. Implement the Chat itself
#### 1.1. Create a ChatRoom model and a Message model referencing User and ChatRoom

`rails g model ChatRoom name`

`rails g model message chatroom:references content user:references`

After this, we'll need to implement the relationships in the models.

`rails g controller chatrooms show`

`rails g controller messages create`

We will need to implement the views and the controllers properly after this.
Right now, we already have chatrooms working!

#### 1.2. Implement the Websocket

* generate the channel
`rails g channel chatroom`

* stream for it when the subscription happens
```ruby
# app/channels/chatroom_channel.rb
  def subscribed
    stream_for Chatroom.find params[:id]
  end
```

* Prepare the JS to handle it accordingly

TBD. For now, check [how to implement it](https://github.com/andrerferrer/chat-demo/blob/master/app/javascript/channels/init_chatroom.js) and [how to make it run](https://github.com/andrerferrer/chat-demo/blob/master/app/javascript/packs/application.js)

#### 1.3. Push it to production!

Under Construction
```
                           ___
                            {-)   |\
                       [m,].-"-.   /
      [][__][__]         \(/\__/\)/
      [__][__][__][__]~~~~  |  |
      [][__][__][__][__][] /   |
      [__][__][__][__][__]| /| |
      [][__][__][__][__][]| || |  ~~~~
      [__][__][__][__][__]__,__,  \__/
```
[ascii art source](https://asciiart.website/index.php?art=people/occupations/builders)


## Troubleshooting
