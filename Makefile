#Makefile   inception

SRCS		= main.cpp

OBJS		= $(SRCS:.cpp=.o)

NAME		= inception 

CC			= c++-12

RM			= rm -f

CFLAGS		= -Wall -Werror -Wextra -std=c++98 -fsanitize=address


all:		${NAME}

%.o: %.cpp
			$(CC) $(CFLAGS) -c $< 

${NAME}:	$(OBJS)
			$(CC) $(CFLAGS) -o $(NAME) $(OBJS)
			

.PHONY:		all clean fclean  re

clean:	
			$(RM) $(OBJS)


fclean:		clean
			$(RM) $(NAME)

re:			fclean all
