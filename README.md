# github-issue-importer

Handy little tool to import Github issues from a text file!

## Text file syntax

```
Login
Design interface #design
Create user interface #frontend
Server OAuth #backend

Second Group
Do something #frontend #backend
Do something else #iOS
```

And this is the [importer result](https://github.com/gil/github-issue-importer/issues?milestone=1&state=open) :]

## How to use it

Install dependencies:

```bundle install```

Run the importer:

```ruby importer.rb issues.txt```
