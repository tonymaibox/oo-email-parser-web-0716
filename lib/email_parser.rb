# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

attr_accessor :emails

	def initialize(email)
		@email = email
	end

	def parse
		@emails = []
		new_email = ""
		@email.split.each do |email|
			new_email = email.delete(",")
			if @emails.include?(new_email) == false
				@emails << new_email
			end
		end
		return @emails
	end
end