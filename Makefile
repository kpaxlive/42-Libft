# ************************************************************************** #
#                                                                            #
#                                                        :::      ::::::::   #
#   Makefile                                           :+:      :+:    :+:   #
#                                                    +:+ +:+         +:+     #
#   By: fayan <42istanbul.com.tr>                  +#+  +:+       +#+        #
#                                                +#+#+#+#+#+   +#+           #
#   Created: 2022/02/04 13:28:16 by fayan             #+#    #+#             #
#   Updated: 2022/02/04 13:28:33 by fayan            ###   ########.tr       #
#                                                                            #
# ************************************************************************** #

SRCS        =   ft_isalpha.c\
                ft_isdigit.c\
                ft_isalnum.c\
                ft_isascii.c\
                ft_isprint.c\
                ft_strlen.c\
                ft_memset.c\
                ft_bzero.c\
                ft_memcpy.c\
                ft_memmove.c\
                ft_strlcpy.c\
                ft_strlcat.c\
                ft_toupper.c\
                ft_tolower.c\
                ft_strchr.c\
                ft_strrchr.c\
                ft_strncmp.c\
                ft_memchr.c\
                ft_memcmp.c\
                ft_strnstr.c\
                ft_atoi.c\
                ft_calloc.c\
                ft_strdup.c\
                ft_substr.c\
                ft_strjoin.c\
                ft_strtrim.c\
                ft_split.c\
                ft_itoa.c\
				ft_strmapi.c\
				ft_striteri.c\
				ft_putchar_fd.c\
				ft_putstr_fd.c\
				ft_putendl_fd.c\
				ft_putnbr_fd.c

BNS_SRC		=	ft_lstnew.c\
				ft_lstadd_front.c\
				ft_lstsize.c\
				ft_lstlast.c\
				ft_lstadd_back.c\
				ft_lstdelone.c\
				ft_lstclear.c\
				ft_lstiter.c\
				ft_lstmap.c

HDR = ./libft.h

BNS_OBJS 	=	$(BNS_SRC:.c=.o)

OBJS		= 	$(SRCS:.c=.o)

NAME		= 	libft.a

CC 			=	/usr/bin/gcc

CFLAGS		= 	-Wall -Wextra -Werror

BONUS		= 	bonus

RM			= 	/bin/rm -f

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)


all:		$(NAME)

$(BONUS):	$(OBJS) $(BNS_OBJS)
			ar rcs $(NAME) $(OBJS) $(BNS_OBJS)

%.o: %.c $(HDR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
			$(RM) $(OBJS) $(BNS_OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean re fclean