local tickets = import 'tickets.json';

local listKeys = tickets.tickets;

local choice1 = "This is a test ticket";
local choice2 = "This is a real ticket";

local assignDescription(choice) =({
   "Description": choice 
});

{
 ["Id " + listKeys[index].id ]: {
    "subject": listKeys[index].subject,
    "Time": listKeys[index].created_at,
    "Created by": listKeys[index].submitter_id,
    "Description": if index/2 == 0 then assignDescription(choice1) else assignDescription(choice2)
  }
 for index in std.range(0, std.length(listKeys) - 1)
}

