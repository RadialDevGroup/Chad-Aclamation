# Working on Aclamation Project

1. Pick a story from [Sprintly][sprintly] and start it.

  > Example: #5 - As a Guest I want to book a tour from the list so that I can plan on taking the tour

2. Create a local branch in your development environment to work on the story.

  > Example: 5-guest-book-tour

5. Commit branch to github.

  `git commit -am "Added guest book feature"`

6. Create a pull request using the template.

  See [PULL_REQUEST_TEMPLATE.MD](PULL_REQUEST_TEMPLATE.MD)

  > You may need to merge master back into your branch before it will merge cleanly:
  > ```
  >   git fetch
  >   git merge origin/master
  > ```
  > OR
  > ```
  >   git pull origin master
  > ```

7. Contact someone to review your code.

  > To: Marshall Smith <marshall@newline.us>
  
  > Subject: Pull Request
  >
  > Hey Marshall,
  >
  > Could you please review the PR for my branch 5-guest-book-tour: it's number #18
  >
  > Thanks,
  >
  > -- Ben

8. Make any necessary changes.

9. Request reviewer or project lead merge your code.

  > Github Comment:
  >
  > @marshallds thanks. I have made all of those changes, could you please merge this.
  >


[sprintly]: http://sprint.ly/product/29894/dashboard/?tags=Aclamation&statuses=backlog,current,complete&order=priority
