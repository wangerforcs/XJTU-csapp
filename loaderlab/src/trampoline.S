# PLT trampoline for lazy binding
    .text
    .globl trampoline
    .hidden trampoline
    .type trampoline, @function
    .align 16

trampoline:

# Your code here
    pushq %rdi
    pushq %rsi
    pushq %rbp
    movq 24(%rsp),%rdi
    movq 32(%rsp),%rsi
    call runtimeResolve
    popq %rbp
    popq %rsi
    popq %rdi
    addq $16,%rsp
    jmp *%rax
# Your code here
