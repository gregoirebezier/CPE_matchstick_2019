##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

CC	=	gcc

RM	=	 rm -rf

CFLAGS = -W -Wall -Wextra

NAME = matchstick

SRC =	src/printf/my_putchar.c \
		src/printf/my_putstr.c 	\
		src/printf/my_put_nbr.c 	\
		src/printf/my_revstr.c 	\
		src/printf/my_strlen.c 	\
		src/printf/my_printf.c 	\
		src/printf/flag.c		\
		src/printf/my_getnbr.c 	\
		src/printf/my_put_hexa_max.c \
		src/printf/my_put_octal.c \
		src/printf/my_put_nbr2.c  \
		src/printf/my_put_space.c \
		src/printf/my_printf2.c	 \
		src/printf/my_put_hexa_min.c \
		src/printf/my_put_binary.c \
		src/print_game_board.c \

OBJ	=	$(SRC:.c=.o)

all: $(NAME)

$(NAME):	$(OBJ)
	$(CC) -o $(NAME) $(OBJ)
clean:
	rm -f $(OBJ)
	rm -f *.g*
	rm -f unit_test

fclean: clean
	rm -f $(NAME)

re:	fclean all