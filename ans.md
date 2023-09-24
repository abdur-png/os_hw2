/*

1. In a 16-bit x86 system, how many bits can cx, cl, ch store, respectively?
 => cx: 16 bits , cl: 8 bits (lower 8 bits of cx) , ch: 8 bits (higher 8 bits of cx)

2. In a 32-bit x86 system, how many bits can cx, cl, ch, ecx store, respectively?
=> cx: 16 bits (lower 16 bits of ecx), cl: 8 bits (lower 8 bits of cx), ch: 8 bits (higher 8 bits of cx), ecx: 32 bits

3. 1 byte = ____ bits
=>  byte = 8 bits

4. In an x86 system, how many bytes are needed to represent an ASCII character?
=> 1 byte

5. In a 16-bit x86 system, to optimize the register usage, among all registers that start with "c", what’s the best register to use if we would like to carry one ASCII character? What if to carry a decimal number 96? Choose the appropriate option for each question.
=>  For one ASCII character: A. ch or cl (since ASCII characters fit within 8 bits)
    For a decimal number 96: B. cx (since 96 can be represented within 8 bits, but to optimize register usage, it's better to use the full 16-bit register)

6. At least how many bytes are needed to represent the hexadecimal number 0x68?
=> 1 byte (since 0x68 is an 8-bit number)

7. What letter does the number 0x68 represent in ASCII?
=> The number 0x68 represents the letter 'h' in ASCII.

8. After running the following instructions, what is in ah, al, bh, cx, dh, dl, respectively? Write your answer in decimal.
=>  ah contains the remainder of the division, which is 9.
    al contains the quotient of the division, which is 5.
    bh contains the value 59 (from the instruction mov bh, 3bh).
    cx contains the value 10 (from the instruction mov cx, 0x000a).
    dh and dl are not modified by the given instructions, so their values remain unchanged and are unknown based on the provided information.
*/