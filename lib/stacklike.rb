module DataStructure
	class Stacklike
		def stack
			@stack ||= []
		end

		def add_to_stack(item)
			stack.push(item)
		end

		def remove_from_stack(item)
			stack.pop
		end
	end
end
# Run 'Stacklike.ancestors' to see order of seach across modules and classes

