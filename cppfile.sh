#!/bin/bash

CLASS=$1
FILENAME="${CLASS}.cpp"

cat > $FILENAME << EOF
#include "${CLASS}.hpp"

$CLASS::$CLASS()
{
	return ;
}

$CLASS::$CLASS(const $CLASS& other)
{
	return ;
}

$CLASS& $CLASS::operator=(const $CLASS& other)
{
	return ;
}

$CLASS::~$CLASS()
{
	return ;
}
EOF
