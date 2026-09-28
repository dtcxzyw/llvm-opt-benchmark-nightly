Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmalloc?download=true
inline.NumInlined: 671
inline.NumDeleted: 273
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@is_vmalloc_or_module_addr:bb.a
  %i.d = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  %.not.i = icmp ugt i64 %i.d, %i.c
  br i1 %.not.i, label %is_vmalloc_addr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.d [label %bb.d, label %_static_cpu_has.exit.i], !srcloc !28

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %_static_cpu_has.exit.i

_static_cpu_has.exit.i:                           ; preds = %bb.d, %bb.c
  %i.e = phi i64 [ 14073748835532800, %bb.d ], [ 35184372088832, %bb.c ]
  %i.f = add i64 %i.d, -1
  %i.g = add i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.g, %i.c
  %i.i = zext i1 %i.h to i32
  br label %is_vmalloc_addr.exit

is_vmalloc_addr.exit:                             ; preds = %_static_cpu_has.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %i.i, %_static_cpu_has.exit.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @vmalloc_to_page(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_mm, i64 120), align 8
  %i.c = load i32, ptr @pgdir_shift, align 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 %i.a, %i.d
  %i.f = and i64 %i.e, 511
  %i.g = getelementptr [8 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = load i64, ptr %i.g, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_none.exit [label %pgd_none.exit, label %pgd_none.exit.thread], !srcloc !28

pgd_none.exit:                                    ; preds = %bb.a, %bb.a
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %bb.o, label %pgd_none.exit.thread

pgd_none.exit.thread:                             ; preds = %bb.a, %pgd_none.exit
  %i.i = load i64, ptr %i.g, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_bad.exit [label %pgd_bad.exit, label %.critedge], !srcloc !28

pgd_bad.exit:                                     ; preds = %pgd_none.exit.thread, %pgd_none.exit.thread
  %i.j = and i64 %i.i, 9218868437227409403
  %.not = icmp eq i64 %i.j, 99
  br i1 %.not, label %.critedge, label %bb.b, !prof !34

bb.b:                                             ; preds = %pgd_bad.exit
  tail call void asm sideeffect "778: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 778b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 778) #24, !srcloc !147
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 819, i32 2307, i64 16) #24, !srcloc !148
  tail call void asm sideeffect "779: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 779b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 779) #24, !srcloc !149
  br label %bb.o

.critedge:                                        ; preds = %pgd_none.exit.thread, %pgd_bad.exit
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.c [label %bb.c, label %p4d_offset.exit], !srcloc !28

bb.c:                                             ; preds = %.critedge, %.critedge
  %i.k = load i64, ptr %i.g, align 8
  %i.l = and i64 %i.k, 4503599627366400
  %i.m = load i64, ptr @page_offset_base, align 8
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = lshr i64 %i.a, 39
  %i.q = load i32, ptr @ptrs_per_p4d, align 4
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = and i64 %i.p, %i.s
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %i.t
  br label %p4d_offset.exit

p4d_offset.exit:                                  ; preds = %.critedge, %bb.c
  %.0.i66 = phi ptr [ %i.u, %bb.c ], [ %i.g, %.critedge ]
  %i.v = load i64, ptr %.0.i66, align 8           ; 3 uses
  %i.w = and i64 %i.v, -97
  %.not81 = icmp eq i64 %i.w, 0
  br i1 %.not81, label %bb.o, label %bb.d

bb.d:                                             ; preds = %p4d_offset.exit
  %i.x = and i64 %i.v, 9218868437227409304
  %.not82 = icmp eq i64 %i.x, 0
  br i1 %.not82, label %.critedge58, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "780: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 780b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 780) #24, !srcloc !150
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 827, i32 2307, i64 16) #24, !srcloc !151
  tail call void asm sideeffect "781: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 781b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 781) #24, !srcloc !152
  br label %bb.o

.critedge58:                                      ; preds = %bb.d
  %i.y = and i64 %i.v, 4503599627366400
  %i.z = load i64, ptr @page_offset_base, align 8 ; 3 uses
  %i.aa = add i64 %i.z, %i.y
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = lshr i64 %i.a, 30
  %i.ad = and i64 %i.ac, 511
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8            ; 6 uses
  %i.ag = and i64 %i.af, -97
  %.not83 = icmp eq i64 %i.ag, 0
  br i1 %.not83, label %bb.o, label %bb.f

bb.f:                                             ; preds = %.critedge58
  %i.ah = and i64 %i.af, 128
  %.not84 = icmp eq i64 %i.ah, 0
  br i1 %.not84, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr @vmemmap_base, align 8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = and i64 %i.af, 1
  %sext89.a = add nuw nsw i64 %i.ak, 4503599627370495
  %i.al = xor i64 %sext89.a, %i.af
  %i.am = lshr i64 %i.al, 12
  %i.an = and i64 %i.am, 1099511365632
  %i.ao = getelementptr [64 x i8], ptr %i.aj, i64 %i.an
  %i.ap = lshr i64 %i.a, 12
  %i.aq = and i64 %i.ap, 262143
  %i.ar = getelementptr [64 x i8], ptr %i.ao, i64 %i.aq
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.as = and i64 %i.af, -4503599627366632
  %.not85 = icmp eq i64 %i.as, 0
  br i1 %.not85, label %.critedge60, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "782: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 782b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 782) #24, !srcloc !153
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 835, i32 2307, i64 16) #24, !srcloc !154
  tail call void asm sideeffect "783: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 783b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 783) #24, !srcloc !155
  br label %bb.o

.critedge60:                                      ; preds = %bb.h
  %i.at = and i64 %i.af, 4503599627366400
  %i.au = add i64 %i.at, %i.z
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = lshr i64 %i.a, 21
  %i.ax = and i64 %i.aw, 511
  %i.ay = getelementptr [8 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 6 uses
  %i.ba = and i64 %i.az, -97
  %.not86 = icmp eq i64 %i.ba, 0
  br i1 %.not86, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.critedge60
  %i.bb = and i64 %i.az, 128
  %.not87 = icmp eq i64 %i.bb, 0
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i64, ptr @vmemmap_base, align 8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = and i64 %i.az, 1
  %sext.a = add nuw nsw i64 %i.be, 4503599627370495
  %i.bf = xor i64 %sext.a, %i.az
  %i.bg = lshr i64 %i.bf, 12
  %i.bh = and i64 %i.bg, 1099511627264
  %i.bi = getelementptr [64 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = lshr i64 %i.a, 12
  %i.bk = and i64 %i.bj, 511
  %i.bl = getelementptr [64 x i8], ptr %i.bi, i64 %i.bk
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bm = and i64 %i.az, -4503599627366565
  %.not88 = icmp eq i64 %i.bm, 67
  br i1 %.not88, label %.critedge62, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "784: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 784b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 784) #24, !srcloc !156
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 843, i32 2307, i64 16) #24, !srcloc !157
  tail call void asm sideeffect "785: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 785b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 785) #24, !srcloc !158
  br label %bb.o

.critedge62:                                      ; preds = %bb.l
  %i.bn = and i64 %i.az, 4503599627366400
  %i.bo = add i64 %i.bn, %i.z
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = lshr i64 %i.a, 12
  %i.br = and i64 %i.bq, 511
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0.0.copyload.i = load volatile i64, ptr %i.bs, align 8 ; 4 uses
  store volatile i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bt = and i64 %.sroa.0.0.copyload.i, 257
  %.not56 = icmp eq i64 %i.bt, 0
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge62
  %i.bu = load i64, ptr @vmemmap_base, align 8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = and i64 %.sroa.0.0.copyload.i, 1
  %sext90 = add nuw nsw i64 %i.bw, 4503599627370495
  %i.bx = xor i64 %.sroa.0.0.copyload.i, %sext90
  %i.by = lshr i64 %i.bx, 12
  %i.bz = and i64 %i.by, 1099511627775
  %i.ca = getelementptr [64 x i8], ptr %i.bv, i64 %i.bz
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.e, %bb.b, %.critedge62, %bb.n, %.critedge60, %.critedge58, %p4d_offset.exit, %pgd_none.exit, %bb.k, %bb.g
  %.0 = phi ptr [ null, %.critedge60 ], [ null, %bb.m ], [ null, %pgd_none.exit ], [ null, %bb.b ], [ null, %p4d_offset.exit ], [ null, %bb.e ], [ %i.ar, %bb.g ], [ null, %.critedge58 ], [ null, %bb.i ], [ %i.bl, %bb.k ], [ %i.ca, %bb.n ], [ null, %.critedge62 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -144115188075855872, 144115188075855872) i64 @vmalloc_to_pfn(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @vmalloc_to_page(ptr noundef %0) #26
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 6
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @register_vmap_purge_notifier(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @vmap_notify_list, ptr noundef %0) #23
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @unregister_vmap_purge_notifier(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @vmap_notify_list, ptr noundef %0) #23
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @find_vmap_area(i64 noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @vmap_initialized, align 1
  br i1 %.b, label %bb.b, label %.loopexit, !prof !22

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @vmap_zone_size, align 4
  %i.a = lshr i64 %0, 16
  %i.b = select i1 %.b.i, i64 %i.a, i64 %0
  %i.c = load i32, ptr @nr_vmap_nodes, align 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = urem i64 %i.b, %i.d
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.v, %bb.f ]  ; 2 uses
  %i.g = load ptr, ptr @vmap_nodes, align 8
  %i.h = sext i32 %.0 to i64
  %i.i = getelementptr [6272 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 6152
  %i.k = getelementptr i8, ptr %i.i, i64 6176     ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.k) #23
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not6.i = icmp eq ptr %.val, null
  br i1 %.not6.i, label %__find_vmap_area.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.0157.i = phi ptr [ %.116.i, %bb.e ], [ %.val, %bb.c ] ; 4 uses
  %i.l = getelementptr i8, ptr %.0157.i, i64 -16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ugt i64 %i.m, %0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr i8, ptr %.0157.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8
  %.not19.i = icmp ugt i64 %i.p, %0
  br i1 %.not19.i, label %__find_vmap_area.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.sink.i = phi i64 [ 16, %.lr.ph.i ], [ 8, %bb.d ]
  %i.q = getelementptr i8, ptr %.0157.i, i64 %.sink.i
  %.116.i = load ptr, ptr %i.q, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.116.i, null
  br i1 %.not.i, label %__find_vmap_area.exit.thread, label %.lr.ph.i, !llvm.loop !0

__find_vmap_area.exit.thread:                     ; preds = %bb.e, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #23
  br label %bb.f

__find_vmap_area.exit:                            ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.0157.i, i64 -16  ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #23
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %__find_vmap_area.exit.thread, %__find_vmap_area.exit
  %i.s = load i32, ptr @nr_vmap_nodes, align 4    ; 2 uses
  %i.t = add i32 %.0, -1
  %i.u = add i32 %i.t, %i.s
  %i.v = urem i32 %i.u, %i.s                      ; 2 uses
  %.not13 = icmp eq i32 %i.v, %i.f
  br i1 %.not13, label %.loopexit, label %bb.c, !llvm.loop !1

.loopexit:                                        ; preds = %bb.f, %__find_vmap_area.exit, %bb.a
  %.010 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.r, %__find_vmap_area.exit ]
  ret ptr %.010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vm_unmap_aliases() #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @_vm_unmap_aliases(i64 noundef -1, i64 noundef 0, i32 noundef 0) #26, !srcloc !159
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @_vm_unmap_aliases(i64 noundef range(i64 1, 0) %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.list_head, align 8          ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %3, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %3, ptr %i.b, align 8
  %.b = load i1, ptr @vmap_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.i, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @mutex_lock(ptr noundef nonnull @vmap_purge_lock) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.c = phi i64 [ 0, %bb.b ], [ %i.bd, %._crit_edge ]
  %.064 = phi i64 [ %0, %bb.b ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %.03963 = phi i64 [ %1, %bb.b ], [ %.140.lcssa, %._crit_edge ] ; 4 uses
  %.04262 = phi i32 [ %2, %bb.b ], [ %.143.lcssa, %._crit_edge ] ; 4 uses
  %i.d = load i64, ptr @__cpu_possible_mask, align 8
  %i.e = shl nsw i64 -1, %i.c
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.c
  %i.g = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.f) #27, !srcloc !49 ; 3 uses
  %i.h = and i64 %i.g, 4294967232
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %find_next_bit.exit.thread

bb.d:                                             ; preds = %find_next_bit.exit
  %i.j = and i64 %i.g, 63
  %i.k = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, ptrtoint (ptr @vmap_block_queue to i64)
  %i.n = inttoptr i64 %i.m to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !annotation !24
  call void @__rcu_read_lock() #23
  store i64 0, ptr %i.a, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  %i.p = call ptr @xa_find(ptr noundef %i.o, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #23 ; 2 uses
  %.not55 = icmp eq ptr %i.p, null
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.159 = phi i64 [ %.2, %bb.f ], [ %.064, %bb.d ] ; 3 uses
  %.14058 = phi i64 [ %.241, %bb.f ], [ %.03963, %bb.d ] ; 3 uses
  %.14357 = phi i32 [ %.244, %bb.f ], [ %.04262, %bb.d ] ; 2 uses
  %.04656 = phi ptr [ %i.bb, %bb.f ], [ %i.p, %bb.d ] ; 14 uses
  call void @_raw_spin_lock(ptr noundef nonnull %.04656) #23
  %i.q = getelementptr i8, ptr %.04656, i64 16    ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %.04656, i64 24    ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = add i64 %i.t, %i.r
  %.not.i52 = icmp eq i64 %i.u, 1024
  %i.v = icmp ne i64 %i.t, 1024
  %or.cond.not19.i = and i1 %i.v, %.not.i52
  %i.w = icmp ult i64 %i.r, 256
  %or.cond17.i = and i1 %i.w, %or.cond.not19.i
  br i1 %or.cond17.i, label %purge_fragmented_block.exit.thread, label %purge_fragmented_block.exit

purge_fragmented_block.exit.thread:               ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %.04656, i64 224
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, ptrtoint (ptr @vmap_block_queue to i64)
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  store volatile i64 0, ptr %i.q, align 8
end_hunk_0
