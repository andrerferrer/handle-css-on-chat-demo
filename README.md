## Goal
This is a demo app to teach how to implement a chat in Ruby on Rails with different CSS for each message.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

This demo was created from [this one](https://github.com/andrerferrer/chat-demo#goal).

## [How to](https://github.com/andrerferrer/handle-css-on-chat-demo/commits/master)

1. [Add some style to the messages](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/7d759a705435584c56dc2585599d5a38e469ed6e)
1. [Differ messages with bg color (if you want to)](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/4b1f46d58cd9231e598a0a87ecb3b633a8c63ba5)
1. [Make the css_class optional](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/af2fa723ca0f685db2553a9ee304b754fb6c29c2)
1. [add users ids to the HTML](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/3599cd75ff58bc3959d70e80cd30234bd96f07ae)
1. [Handle users ids in the JS](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/394195f379b3975d0ebfb0bbd8229b52c205ad70)

## Update with Stimulus!
6. [install stimulus](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/4480ba71f4cd340c9b78f71ef8b9dce35c590f5e)
1. [remove old js code](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/9ed546b5deb93db5c3749a7ef35a070f94203be0)
1. [create a new stimulus controller instead](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/ca1b53518362e935196ebe29bd8f9f48be310bde)
1. [remove redirect from the messages controller (avoid two messages)](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/1b03fe942e8fdad7fefd3613f938a1295b2ac114)
1. [improve the controller with resetting and scrolling](https://github.com/andrerferrer/handle-css-on-chat-demo/commit/fe85ca115dbb3b71942ef67fc92147563bfb374d)


### If you want to check it locally
```sh
repo_name="handle-css-on-chat-demo"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can go to http://localhost:3000/ and check it out
```


And we're good to go 🤓

Good Luck and Have Fun
