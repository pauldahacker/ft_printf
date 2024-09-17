# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pde-masc <pde-masc@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/05 15:51:20 by pde-masc          #+#    #+#              #
#    Updated: 2023/10/09 16:30:35 by pde-masc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# -*- Makefile -*-


CC			= gcc
FLAGS		= -c -Wall -Werror -Wextra
LIB			= ar rcs
RM			= /bin/rm -f

NAME		= libftprintf.a
HEADER		= ft_printf.h

LIBFT		= ./libft
LIBFTNAME	= libft.a

SRC			= ft_printf.c printchar.c printstr.c printptr.c printnbr.c \
			  printud.c printhex.c

OBJ			= $(SRC:.c=.o)

all:		$(NAME)

makelibft:	
			@make -C $(LIBFT)
			@cp $(LIBFT)/$(LIBFTNAME) .
			@mv $(LIBFTNAME) $(NAME)

$(NAME):	makelibft $(OBJ) $(HEADER)
			$(LIB) $(NAME) $(OBJ)

%.o:		%.c $(HEADER)
			$(CC) $(FLAGS) -c -o $@ $<

clean:
			$(RM) $(OBJ)
			make clean -C $(LIBFT)

fclean:		clean
			$(RM) $(NAME)
			$(RM) $(LIBFT)/libft.a

re:			fclean all

.PHONY:		clean fclean all re
