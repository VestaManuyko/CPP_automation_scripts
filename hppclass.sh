#!/bin/bash

CLASS=$1
FILENAME="${CLASS}.hpp"
upper=$(printf "%s" "$FILENAME" | tr '[:lower:]' '[:upper:]'| tr '.' '_')

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
