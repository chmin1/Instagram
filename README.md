# Project 3 - *Instagram*

**Instagram** is a photo sharing app using Parse as its backend.

Time spent: **30** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User can sign up to create a new account using Parse authentication
- [x] User can log in and log out of his or her account
- [x] The current signed in user is persisted across app restarts
- [x] User can take a photo, add a caption, and post it to "Instagram"
- [x] User can view the last 20 posts submitted to "Instagram"
- [x] User can pull to refresh the last 20 posts submitted to "Instagram"
- [x] User can load more posts once he or she reaches the bottom of the feed using infinite Scrolling
- [x] User can tap a post to view post details, including timestamp and creation
- [x] User can use a tab bar to switch between all "Instagram" posts and posts published only by the user.

The following **optional** features are implemented:

- [ ] Show the username and creation time for each post
- [ ] After the user submits a new post, show a progress HUD while the post is being uploaded to Parse.
- [x] User Profiles:
- [ ] Allow the logged in user to add a profile photo
- [ ] Display the profile photo with each post
- [ ] Tapping on a post's username or profile photo goes to that user's profile page
- [ ] User can comment on a post and see all comments for each post in the post details screen.
- [ ] User can like a post and see number of likes for each post in the post details screen.
- [ ] Run your app on your phone and use the camera to take the photo


The following **additional** features are implemented:

- [x] Add Instagram-like camera

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Implementing packages from **GitHub**
2. Designing the storyboard

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/IHjelCo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /> <img src='http://i.imgur.com/3w8DWet.gif' title='Video Walkthrough' width='' alt='Video Walkthrough2' />


GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library
- [Fusuma](https://github.com/ytakzk/Fusuma) - Instagram like camera
- [Parse](https://github.com/parse-community/parse-server) - Open Source Server


## Notes

Biggest Challenges that came from building this app was knowing how and where to request information from the Parse server. This caused a lot of crashes and bad outlets, leading to SIGABRT errors.

## License

Copyright 2017 **Chavane Minto**

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
