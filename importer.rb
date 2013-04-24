require "github_api"
require "highline/import"

# read parameters
issues_file = ARGV[0]
user = ask("Github user name: ")
pass = ask("Github password: ") { |q| q.echo = false }
repo_user = ask("Repository user: ")
repo_name = ask("Repository name: ")
milestone = ask("Issue milestone: ")

# connect on github
github = Github.new :basic_auth => "#{user}:#{pass}"
group = nil

File.read(issues_file).split(/\n/).each do |issue|

	if not group

		# read group
		group = issue
		puts "\n\nGroup: #{group}"

	elsif issue == ""

		# line break? time to read next group
		group = nil

	else

		# create issue
		labels = issue.split.find_all{|word| /^#.+/.match word }
		title = issue.gsub(/\s?#[^\s]+\s?/, "")

		puts "Issue: #{title}"
		github.issues.create :user => repo_user, :repo => repo_name, :milestone => milestone.to_i, :title => "[#{group}] #{title}", :labels => labels

	end

end

puts "\n\nDone! :]"