# Greenlight with enforced authentication and preparation for MP4 recording view


![Coverage
!Status](https://coveralls.io/repos/github/bigbluebutton/greenlight/badge.svg?branch=master)
![Docker Pulls](https://img.shields.io/docker/pulls/bigbluebutton/greenlight.svg)

Greenlight is a simple front-end interface for your BigBlueButton server. At its heart, Greenlight provides a minimalistic web-based application that allows users to:

  * Signup/Login with LDAP/AD Authentication.
  * Create and manage your own personal rooms ([BigBlueButton](https://github.com/bigbluebutton/bigbluebutton) sessions).
  * Invite others to your room using a simple URL.
  * View recordings and share them with others.

**This greenlight has the same features as `release-2.8.2.2` of upstream Greenlight. Feel free to contribute.**

## extra Features additional to upstream Greenlight
  * enforce user authentication to view rooms or join meetings
  * room owners are able to change their names before entering a meeting
  * all others are enforced to user their domain names as in Greenlight
  * button for MP4 video, e.g. created with https://github.com/MBcom/kubernetes-bbb-video-download
  * button for getting shared notes, e.g. copied with https://github.com/MBcom/kubernetes-bbb-video-download/blob/master/snippets/post_publish_copy_notes.rb and copy_notes.sh
  * SIP support - with static PIN for each room

## enable SIP support
1. set the `VOICE_BRIDGE_PHONE_NUMBER` environment variable to your SIP telephone number. This value will be displayed in each room.
2. setup the BBB SIP Integration, if you use Scalelite, you can follow the instructions from https://github.com/MBcom/bbb-clustersip.git to setup a central SIP gateway for your BBB cluster
3. Greenlight will generate automatically a static conference PIN for each room and shows it next to the telephone number

## Deployment
This project is designed to be deployed to Kubernetes Clusters via GitLab CI/CD. If you have not htis ability you can use the scripts provided at https://github.com/MBcom/kubernetes-greenlight to deploy Greenlight to a Kubernetes Cluster. 
  
Too you can deploy this Greenlight as the upstream Greenlight.
The docker image you can find on https://hub.docker.com/r/mbcom/greenlight .

## Impressions



Interested? Try upstream Greenlight out on our [demo server](https://demo.bigbluebutton.org/gl)!

Greenlight is also completely configurable. This means you can turn on/off features to make Greenlight fit your specific use case. For more information on Greenlight and its features, see our [documentation](http://docs.bigbluebutton.org/greenlight/gl-install.html).

For a overview of how Greenlight works, checkout our Introduction to Greenlight Video:

[![GreenLight Overview](https://img.youtube.com/vi/Hso8yLzkqj8/0.jpg)](https://youtu.be/Hso8yLzkqj8)

## Installation on a BigBlueButton Server

Greenlight is designed to work on a [BigBlueButton 2.0](https://github.com/bigbluebutton/bigbluebutton) (or later) server.

For information on installing Greenlight, checkout our [Installing Greenlight on a BigBlueButton Server](http://docs.bigbluebutton.org/greenlight/gl-install.html#installing-on-a-bigbluebutton-server) documentation.

## Source Code & Contributing

Greenlight is built using Ruby on Rails. Many developers already know Rails well, and we wanted to create both a full front-end to BigBlueButton but also a reference implementation of how to fully leverage the [BigBlueButton API](http://docs.bigbluebutton.org/dev/api.html).

We invite you to build upon Greenlight and help make it better. See [Contributing to BigBlueButton](http://docs.bigbluebutton.org/support/faq.html#contributing-to-bigbluebutton).

We invite your feedback, questions, and suggests about Greenlight too. Please post them to the [developer mailing list](https://groups.google.com/forum/#!forum/bigbluebutton-dev).


**Contributions to this project are welcome.
E.g. you can help us to make our changes configurable, so that we can start a pull request to upstream repository in future.**
