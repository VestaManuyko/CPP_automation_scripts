#!/bin/bash

FILENAME=$1
CLASS=$2
upper=$(printf "%s" "$1" | tr '[:lower:]' '[:upper:]'| tr '.' '_')

cat > $FILENAME << EOF
#ifndef $upper
# define $upper

class $CLASS
{
	public:
    	$CLASS();
		$CLASS(const $CLASS& other); 
		$CLASS& operator=(const $CLASS& other);
		~$CLASS();
};

#endif
EOF
