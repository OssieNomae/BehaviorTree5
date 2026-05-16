local Module = {}
local SUCCESS,FAIL,RUNNING = 1,2,3

-- Any arguments passed into Tree:run(obj) can be received after the first parameter, obj
-- Example: Tree:run(obj,deltaTime) - > Module.start(obj, deltaTime), Module.run(obj, deltaTime), Module.finish(obj, status, deltaTime)

-- Blackboards
-- objects attached to the tree have tables injected into them called Blackboards.
-- these can be read from and written to by the tree using the Blackboard node, and can be accessed in tasks via object.Blackboard
--

function Module.Start(self)
	--[[
		(optional) this function is called directly before the run method
  		is called. It allows you to setup things before starting to run
  		Beware: if task is resumed after calling running(), start is not called.
	--]]

	local Blackboard = self.Blackboard

end

function Module.Finish(self, Status: number)
	--[[
		(optional) this function is called directly after the run method
		is completed with either success() or fail(). It allows you to clean up
		things, after you run the task.
	--]]

	local Blackboard = self.Blackboard 

end	

function Module.Run(self)
	--[[
		This is the meat of your task. The run method does everything you want it to do.
			
  	 	Finish it by returning one of the following:
	  		SUCCESS - The task did run successfully
	  		FAIL    - The task did fail
	  		RUNNING - The task is still running and will be called directly from parent node
	--]]

	local Blackboard = self.Blackboard

	return SUCCESS
end

return Module