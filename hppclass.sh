#!/bin/bash

FILENAME=$1
CLASS=$2

cat > $FILENAME << EOF

class $CLASS
{
public:
    $CLASS();
	$CLASS(const $CLASS& other); 
	$CLASS& operator=(const $CLASS& other);
    ~$CLASS();
};
EOF