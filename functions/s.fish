function s --description "s <cmd> <args>; play a beep after successfully running cmd and args, three beeps after failure"
    if eval $argv
	set success 0
	osascript -e "beep";
    else
	set success $status
	osascript -e "beep beep beep";
    end
    return $success
end


