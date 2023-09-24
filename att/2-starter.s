; Part 2: Print a character

.code16       # Tell the assembler that this is 16-bit code
.globl start  # Make our "start" label public for the linker

start:
  mov sp, 0x7C00
  mov $0x00, %ah    # Set Video Mode to:
  mov $0x03, %al    # Text, 80x25 characters
  int $0x10


; Your code for part 2 starts here
; Write down your three-step subroutine for printing a single char
mov $'>', %al
mov $0x0e, %ah
int $0x10

; End of your code for part 2

done:
  jmp done

