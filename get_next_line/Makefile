# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: graiolo <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/21 16:38:22 by graiolo           #+#    #+#              #
#    Updated: 2022/11/04 15:32:25 by graiolo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= ../archive/libft.a

CC			= gcc $(CFLAGS)

CFLAGS		= -Wall -Werror -Wextra -c -I $(IDIR)

IDIR		= ../include

RM			= rm -f

LIB			= ar rcs $(NAME)

ODIR		= obj/

DIR			= src/

SRC_FILES	=	get_next_line.c get_next_line_utils.c\

OBJ 		= 	$(SRC_FILES:.c=.o)

$(ODIR)%.o : $(DIR)%.c
	$(CC) $(CFLAG) $< -o $@

OFILE 		= $(addprefix $(ODIR), $(OBJ))


DEF_COLOR = \033[0;39m
GREEN = \033[0;92m
RED = \033[0;91m
CIANO = \033[0;96m

$(NAME):	$(OFILE) 
			@$(LIB) $(OFILE)
			@echo "$(GREEN)get_next_line.a compilata con successo!$(DEF_COLOR)"

all:		$(NAME)

clean:
			@$(RM) $(OFILE)
			@echo "$(CIANO)file .obj di get_next_line eliminati con successo!$(DEF_COLOR)"

clean2:
			@$(RM) $(OFILE)

fclean:		clean2
			@$(RM) libft.a
			@echo "$(RED)get_next_line.a rimossa con successo!$(DEF_COLOR)"	

re:			fclean all

bonus:		all

.PHONY:		all clean fclean re