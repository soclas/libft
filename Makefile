# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nkrifa <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/01/22 01:54:11 by nkrifa            #+#    #+#              #
#    Updated: 2017/01/28 00:28:11 by nkrifa           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SOURCES =	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
			ft_memchr.c ft_memcmp.c ft_memalloc.c ft_memdel.c \
			\
			ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			ft_itoa.c ft_atoi.c ft_tolower.c ft_toupper.c ft_islower.c\
			ft_isupper.c\
			\
			ft_putchar.c \
			ft_putendl.c ft_putnbr.c \
			ft_putstr.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c ft_putnbr_fd.c \
			ft_putstr_fd.c \
			\
			ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c \
			ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c \
			ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c ft_strmapi.c \
			ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c \
			ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c \
			ft_strsub.c ft_strtrim.c \
			\
			ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c \
			ft_lstmap.c ft_lstnew.c \
			\
			ft_squareroot.c ft_isprime.c ft_factprime.c ft_power.c \
			\

HEADERS = libft.h

OBJECTS = $(subst .c,.o,$(SOURCES))

WFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJECTS)
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)

$(OBJECTS): $(SOURCES) $(HEADERS)
	@gcc $(WFLAGS) -c $(SOURCES)

clean:
	@rm -f $(OBJECTS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
