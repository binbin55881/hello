TGT := hello
SRCS := hello.c
CFLAGS += -Wall -g -DDEBUG

all: $(TGT)

$(TGT) : ${SRCS:%.c=%.o}
	$(CC) $(CFLAGS) -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c $<

.PHONY: all clean

clean:
	$(RM) ${SRCS:%.c=%.o} $(TGT)
	@echo "clean done"
