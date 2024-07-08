# Minitalk
This project consists of two programs that communicate between each other. The `client` program is designed to send messages, whereas `server` is designed to receive them. 

## General notes

###  Functions
Functions from `signal.h` may require further context. It is recommended to read up on the structures behind them.

Function | Format | Description | Library
--- | --- | --- | ---
getpid | `int	getpid(void)` | Returns the current process ID | `signal.h`
kill | `int	kill(int pid, int sig)` | Sends signal sig to process pid. Returns 0 on success, -1 on error | `signal.h`
sigaction | `int	sigaction(int signum, const struct sigaction *act, struct sigaction *oldact)` | Change action from a process based on the receipt of signal signum, according to either act or oldact. Returns 0 on success, -1 on error | `signal.h`
sigemptyset | `int	sigemptyset(sigset_t *set)` | Initializes and empties a signal set. Returns 0 on success, -1 on error | `signal.h`
pause | `int	pause(void)` | Pauses execution until a signal is delivered | `unistd.h`
sleep | `unsigned int	sleep(unsigned int s)` | Suspends execution for s seconds. Returns 0 (if interrupted, returns remaining time). | `unistd.h`
usleep | `int	usleep(unsigned int usec)` | Suspends execution for usec microseconds. Returns 0 (if interrupted, returns remaining time). | `unistd.h`
