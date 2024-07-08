# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maugusto <maugusto@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/17 11:56:43 by maugusto          #+#    #+#              #
#    Updated: 2024/06/17 10:11:37 by maugusto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAMEC = client
NAMES = server
LIBFT = libft/libft.a
SRCC = client.c
SRCS = server.c
OBJC = $(SRCC:.c=.o)
OBJS = $(SRCS:.c=.o)
CC = cc
CFLAGS = -Wall -Werror -Wextra -fPIC
INCLUDE = -I include
RM = rm -rf


all: $(NAMES) $(NAMEC)


$(NAMES): $(OBJS) $(LIBFT)
	$(CC) -o $@ $(OBJS) -Llibft -lft

$(NAMEC): $(OBJC) $(LIBFT)
	$(CC) -o $@ $(OBJC) -Llibft -lft

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

$(LIBFT):
	make -C libft

clean:
	$(RM) $(OBJS) $(OBJC)
	make -C libft clean

fclean: clean
	$(RM) $(NAMES) $(NAMEC)
	make -C libft fclean

re: fclean all

.PHONY: all clean fclean re