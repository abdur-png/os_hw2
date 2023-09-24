; Part 4: Echo


.code16       # Tell the assembler that this is 16-bit code
.globl start  # Make our "start" label public for the linker

start:
  mov $0x00, %ah    # Set Video Mode to:
  mov $0x03, %al    # Text, 80x25 characters
  int $0x10


; Your code for part 4 starts here

; End of your code for part 4

done:
  jmp done

