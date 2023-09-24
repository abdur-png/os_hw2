# Part 5.1: atoi

.code16       # Tell the assembler that this is 16-bit code
.globl start  # Make our "start" label public for the linker

start:
  mov $0x00, %ah # Set Video Mode to:
  mov $0x03, %al # Text, 80x25 characters
  int $0x10

  mov $num1, %si
  mov $2, %cl
  call atoi
  mov $0x0e, %ah
  int $0x10

  mov $num2, %si
  mov $3, %cl
  call atoi
  mov $0x0e, %ah
  int $0x10

done:
  jmp done

# Add your own comments to answer questions on lines marked with 'Q:'
atoi:            # Q: What registers should be set by the caller of this
                 #    subroutine? What are they used for?
                 # A:
  xor %al, %al
  mov $10, %bh
  .loop:
    mul %bh      # Q: What does this do? Explain it in terms of registers.
                 # A:
    mov %al, %bl
    lodsb        # Q: Where does lodsb read the byte from? Explain it in terms
                 #    of registers.
                 # A:
    sub $48, %al # Q: What does 48 mean in this context? Why do we subtract here?
                 # A:
    add %al, %bl
    mov %bl, %al # Q: What do we have in 'al' after this line?
                 # A: 
    loop .loop
  ret            # Q: Where is the return value stored? Name the register.
                 # A:

num1:
  .ascii "42"  # *

num2:
  .ascii "109" # m
