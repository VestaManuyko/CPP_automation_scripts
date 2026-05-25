#!/bin/bash

NAME=$1
shift

cat > Makefile << EOF
NAME = $NAME

CC = c++
CFLAGS = -Wall -Wextra -Werror -std=c++98 -MMD -MF

OBJ_DIR = obj

SRC = $@

OBJ = \$(SRC:%.cpp=obj/%.o)
DEP = \$(SRC:%.cpp=obj/%.d)

all: \$(NAME)

\$(OBJ_DIR):
	@mkdir -p \$(OBJ_DIR)

\$(OBJ_DIR)/%.o: %.cpp | \$(OBJ_DIR)
	@\$(CC) \$(CFLAGS) \$(@:.o=.d) -c \$< -o \$@

\$(NAME): \$(OBJ_DIR) \$(OBJ)
	@\$(CC) \$(CFLAGS) \$(OBJ) -o \$(NAME)

clean:
	@rm -f \$(OBJ) \$(DEP)
	@rm -rf \$(OBJ_DIR)

fclean: clean
	@rm -f \$(NAME)

re: fclean all

.PHONY: all clean fclean re

-include \$(DEP)
EOF