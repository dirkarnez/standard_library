standard_library
======================
### TODOs
- [x] CMake do the `.obj` compilation
- [ ] struct
- [ ] array
- [ ] algebra

### Notes
- Algebra
 - `+`
  - ```asm
    mov     eax, DWORD PTR b$[rsp]
    mov     ecx, DWORD PTR a$[rsp]
    add     ecx, eax
    mov     eax, ecx
    ```
 - `-`
  - ```asm
    mov     eax, DWORD PTR b$[rsp]
    mov     ecx, DWORD PTR a$[rsp]
    sub     ecx, eax
    mov     eax, ecx
    ```
 - `*`
  - ```asm
    mov     eax, DWORD PTR a$[rsp]
    imul    eax, DWORD PTR b$[rsp]
    ```
 - `/`
  - ```asm
    mov     eax, DWORD PTR a$[rsp]
    cdq
    idiv    DWORD PTR b$[rsp]
    ```

### Reference
- [NASM - The Netwide Assembler](https://www.nasm.us/xdoc/2.15.05/html/nasmdoc0.html)
- [https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf)
- [Assembly Language & Computer Architecture Lecture (CS 301)](https://www.cs.uaf.edu/2015/fall/cs301/lecture/09_23_allocation.html)
- [Dynamic Memory Allocation on Windows in NASM — Steemit](https://steemit.com/programming/@orangeflash81/dynamic-memory-allocation-on-windows-in-nasm)
- [NASM x64 Assembly](https://www.cs.uaf.edu/2017/fall/cs301/reference/x86_64.html)
- [NASM Basic Window Extended 64 bit](https://www.davidgrantham.com/nasm-basicwindowextended64/)
- [JNE - Jump if Condition Is Met](https://faydoc.tripod.com/cpu/jne.htm)
- [NASM x64 Assembly](https://www.cs.uaf.edu/2017/fall/cs301/reference/x86_64.html)
- [Writing a Function in Assembly: Intel x86 Att Assembly Stack Part 1 - YouTube](https://www.youtube.com/watch?v=5iQkR69H_1M)
- [X86-64 Architecture Guide](http://6.s081.scripts.mit.edu/sp18/x86-64-architecture-guide.html)
- [**assembly-fun/7.malloc.s at master · simon-whitehead/assembly-fun**](https://github.com/simon-whitehead/assembly-fun/blob/master/windows-x64/7.malloc/7.malloc.s)
- [**optimization - What does alignment to 16-byte boundary mean in x86 - Stack Overflow**](https://stackoverflow.com/questions/10224564/what-does-alignment-to-16-byte-boundary-mean-in-x86)
- [x64 stack usage | Microsoft Docs](https://docs.microsoft.com/en-us/cpp/build/stack-usage?view=msvc-170)
- [linux-kernel-module-cheat/brk.c at d7a24ea2002547350e9b23f2a8f468b06dbd0836 · cirosantilli/linux-kernel-module-cheat](https://github.com/cirosantilli/linux-kernel-module-cheat/blob/d7a24ea2002547350e9b23f2a8f468b06dbd0836/userland/glibc/brk.c
- [c - What does the brk() system call do? - Stack Overflow](https://stackoverflow.com/questions/6988487/what-does-the-brk-system-call-do)
- [Challenges of Debugging Optimized x64 Code | Microsoft Docs](https://docs.microsoft.com/en-us/archive/blogs/ntdebugging/challenges-of-debugging-optimized-x64-code)
- alignment
  - [x64 ABI conventions | Microsoft Docs](https://docs.microsoft.com/en-us/cpp/build/x64-software-conventions?view=msvc-170)
  - [x64 calling convention | Microsoft Docs](https://docs.microsoft.com/en-us/cpp/build/x64-calling-convention?view=msvc-170)
- Stack
  - [x64 stack usage | Microsoft Docs](https://docs.microsoft.com/en-us/cpp/build/stack-usage?view=msvc-170)
- Shadow space
  - [windows - What is the 'shadow space' in x64 assembly? - Stack Overflow](https://stackoverflow.com/questions/30190132/what-is-the-shadow-space-in-x64-assembly)
  - [**Understanding Windows x64 Assembly**](https://sonictk.github.io/asm_tutorial/)
  > Under the Microsoft x64 calling convention, there is a unique concept of what's known as a shadow space, also referred to as a home space. This is a space that is reserved every time you enter a function and is equal to at least 32 bytes (which is enough space to hold 4 arguments). This space must be reserved whenever you're making use of the stack, since it's what is reserved for things leaving the register values on the stack for debuggers to inspect later on. While the calling convention does not explicitly require the callee to use the shadow space, you should allocate it regardless when you are utilizing the stack, especially in a non-leaf function.
  >   
  > Also, as a reminder, no matter how much space you allocate for the shadow space and your own function's variables, you still need to ensure that the stack pointer is aligned on a 16-byte boundary after all is said and done.

