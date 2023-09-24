# Part 6: Caesar Encoding

.code16        # Tell the assembler that this is 16-bit code
.globl start   # Make our "start" label public for the linker

start:
  mov $0x00, %ah # Set Video Mode to:
  mov $0x03, %al # Text, 80x25 characters
  int $0x10

# Your code can start here

read_cmos:       # Check this out: https://wiki.osdev.org/CMOS
  mov $0x0B, %al # CMOS Status Register B
  out %al, $0x70
  mov $0x04, %al # Binary Mode plz
  out %al, $0x71

  mov $0x00, %al # Select the CMOS register for seconds (0x00)
  out %al, $0x70 # Copy address to CMOS register    
  in $0x71, %al  # Read the value from the selected register
  ret            # At this point, al contains the seconds value from CMOS

done:
  jmp done       # When we're done, loop indefinitely
