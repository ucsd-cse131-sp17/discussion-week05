
section .text
extern error
extern print
global our_code_starts_here
;; Begin functions
f:
  ; Access first parameter
  mov eax, [esp-12]
  mov [esp-16], eax
  ; Pu your non_int check here
  ; Access second parameter
  mov eax, [esp - 8]
  mov [esp - 20], eax
  ; Put your non_int check here
  mov eax, [esp - 16]
  sub eax, [esp - 20]
  ; Put your overflow check here
  ret

;; End functions
our_code_starts_here:
  ; Return pointer
  mov [esp - 4], DWORD temp_after_f_1
  ; Store old esp
  mov [esp - 8], esp
  ; Push args
  mov eax, 4
  mov [esp - 12], eax
  mov eax, 2
  mov [esp - 16], eax
  ; New esp
  sub esp, 24
  jmp near f
; Return label
temp_after_f_1:
  ; Restore old esp
  mov esp, [esp - 8] 
  ret
