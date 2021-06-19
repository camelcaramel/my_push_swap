INCLUDESDIR=./includes
CH_SRCS=	./srcs/null.c\
			./srcs/checker.c     \
			./srcs/commands_1.c  \
			./srcs/commands_2.c  \
			./srcs/commands_3.c  \
			./srcs/init.c        \
			./srcs/quick_sort.c \
			./srcs/util.c        \
			./srcs/utils2.c      \
			./srcs/utils3.c      \
			./srcs/utils4.c      \
			./srcs/utils5.c      \
			./srcs/partition.c         \
			./srcs/valid_check.c 
SRCSDIR=./srcs	
PS_SRCS=	./srcs/null.c\
			./srcs/push_swap.c ./srcs/commands_1.c ./srcs/commands_2.c ./srcs/commands_3.c  \
			./srcs/init.c        \
			./srcs/find_element.c \
			./srcs/quick_sort.c \
			./srcs/sorting.c \
			./srcs/static_sort.c \
			./srcs/util.c        \
			./srcs/utils2.c      \
			./srcs/utils3.c      \
			./srcs/utils4.c      \
			./srcs/utils5.c      \
			./srcs/partition.c         \
			./srcs/valid_check.c 
SRCSDIR=./srcs
INCLUDESDIR=./includes
INCLUDES=push_swap.h
CC= gcc
FLAGS= -Wall -Wextra -Werror
CH_OBJS= $(CH_SRCS:.c=.o)
PS_OBJS= $(PS_SRCS:.c=.o)
CH_TARGET= checker
PS_TARGET= push_swap

.PHONY : clean re fclean all 

all : $(CH_TARGET) $(PS_TARGET)

$(CH_TARGET) : $(CH_OBJS)
	$(CC) $(FLAGS) -o $@ $^
$(PS_TARGET) : $(PS_OBJS)
	$(CC) $(FLAGS) -o $@ $^

%.o : %.c
	$(CC) $(FLAGS) -c $< -o $@ 

clean :
	rm -rf $(PS_OBJS) $(CH_OBJS)

fclean : clean
	rm -rf $(CH_TARGET) $(PS_TARGET)

re : clean all