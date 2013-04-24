# github-issue-importer

Handy little tool to import Github issues from a text file!

## Text file syntax

```text
Login
Design interface #design
Create user interface #frontend
Server OAuth #backend

Second Group
Do something #frontend #backend
Do something else #iOS
```

## How to use it

Install dependencies:

```bundle install```

Run the importer:

```ruby importer.rb issues.txt```