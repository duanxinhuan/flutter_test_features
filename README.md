# flutter_test_key

Explore flutter list view rebuild

## Getting Started

There are mainly 2 solutions for flutter listview tiles rebuild

- create a list of contact and pass the contacts to the list view, so even is the list view is rebuilt, the data
  will be persisted.
- prevent the contact tile widget from rebuild using with AutomaticKeepAliveClientMixin
  and set wantKeepAlive=true


