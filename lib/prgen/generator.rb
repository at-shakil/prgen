module PRGen
	class Generator
		attr_reader :task_id, :pr_id

		def initialize task_id, pr_id
			@template, @has_template =
				begin
					[open(PRGen::TEMPLATE_PATH, "r") {|file| file.read}, true]
				rescue Errno::ENOENT => e
					["", false]
				end
			@task_id = task_id
			@pr_id = pr_id
		end

		def render
			{has_template: @has_template, message: ERB.new(@template).result(binding)}
		end
	end
end
