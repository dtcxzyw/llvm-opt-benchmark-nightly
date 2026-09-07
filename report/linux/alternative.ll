Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/alternative?download=true
inline.NumInlined: 103
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@apply_retpolines:bb.a
  %or.cond = icmp slt i8 %i.ab, -112
  br i1 %or.cond, label %._crit_edge110, label %bb.k

._crit_edge110:                                   ; preds = %bb.j
  %.pre106.pre = load i8, ptr %i.e, align 2
  %.pre108.pre = load i32, ptr %i.f, align 8
  br label %bb.l

bb.k:                                             ; preds = %.critedge, %bb.j
  call void asm sideeffect "672: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 672b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 672) #24, !srcloc !94
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1008, i32 2307, i64 16) #24, !srcloc !95
  call void asm sideeffect "673: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 673b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 673) #24, !srcloc !96
  br label %text_poke_early.exit

bb.l:                                             ; preds = %._crit_edge110, %bb.g, %bb.f
  %.pre108 = phi i32 [ %.pre108.pre, %._crit_edge110 ], [ %i.r, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %.pre106 = phi i8 [ %.pre106.pre, %._crit_edge110 ], [ %i.o, %bb.g ], [ %i.o, %bb.f ] ; 3 uses
  %i.ac = load i32, ptr @debug_alternative, align 4
  %i.ad = and i32 %i.ac, 4
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = zext i8 %.pre106 to i32
  %i.af = zext i8 %.pre106 to i64
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.af
  %i.ah = sext i32 %.pre108 to i64
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %i.j, ptr noundef %i.j, i32 noundef %i.ae, ptr noundef %i.ai) #27 ; 0 uses
  %.pre = load i8, ptr %i.e, align 2
  %.pre107 = load i32, ptr %i.f, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ak = phi i32 [ %.pre107, %bb.m ], [ %.pre108, %bb.l ]
  %i.al = phi i8 [ %.pre, %bb.m ], [ %.pre106, %bb.l ]
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr i8, ptr %i.j, i64 %i.am
  %i.ao = sext i32 %i.ak to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, ptrtoint (ptr @__x86_indirect_thunk_array to i64)
  %i.as = lshr exact i64 %i.ar, 5                 ; 3 uses
  %i.at = trunc i64 %i.as to i32                  ; 8 uses
  %.not.i = icmp ult i32 %i.at, 16
  br i1 %.not.i, label %.critedge.i, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  call void asm sideeffect "663: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 663b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 663) #24, !srcloc !97
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 896, i32 2307, i64 16) #24, !srcloc !98
  call void asm sideeffect "664: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 664b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 664) #24, !srcloc !99
  br label %text_poke_early.exit

.critedge.i:                                      ; preds = %bb.n
  %i.au = icmp eq i32 %i.at, 4
  br i1 %i.au, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %.critedge.i
  call void asm sideeffect "665: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 665b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 665) #24, !srcloc !100
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 900, i32 0, i64 16) #24, !srcloc !101
  unreachable

bb.q:                                             ; preds = %.critedge.i
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 364, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 93)) #24
          to label %bb.r [label %bb.r, label %_static_cpu_has.exit62.i], !srcloc !13

bb.r:                                             ; preds = %bb.q, %bb.q
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 365, i32 32, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 93)) #24
          to label %_static_cpu_has.exit62.i [label %_static_cpu_has.exit62.i, label %_static_cpu_has.exit60.i], !srcloc !13

_static_cpu_has.exit60.i:                         ; preds = %bb.r
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 371, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 94)) #24
          to label %bb.s [label %bb.s, label %text_poke_early.exit], !srcloc !13

bb.s:                                             ; preds = %_static_cpu_has.exit60.i, %_static_cpu_has.exit60.i
  %i.av = and i64 %i.as, 15                       ; 2 uses
  %i.aw = getelementptr [32 x i8], ptr @__x86_indirect_call_thunk_array, i64 %i.av
  %i.ax = getelementptr [32 x i8], ptr @__x86_indirect_jump_thunk_array, i64 %i.av
  %i.ay = load i8, ptr %i.c, align 8              ; 2 uses
  %i.az = icmp eq i8 %i.ay, 15
  br i1 %i.az, label %is_jcc32.exit.i82, label %is_jcc32.exit.thread.i67

is_jcc32.exit.i82:                                ; preds = %bb.s
  %i.ba = load i8, ptr %i.d, align 1              ; 2 uses
  %i.bb = icmp slt i8 %i.ba, -112
  br i1 %i.bb, label %bb.v, label %is_jcc32.exit.thread.i67

is_jcc32.exit.thread.i67:                         ; preds = %is_jcc32.exit.i82, %bb.s
  %i.bc = load i8, ptr %i.e, align 2
  %i.bd = icmp eq i8 %i.bc, 6
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %is_jcc32.exit.thread.i67
  store i8 46, ptr %i.a, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %is_jcc32.exit.thread.i67
  %.043.i68 = phi i32 [ 1, %bb.t ], [ 0, %is_jcc32.exit.thread.i67 ] ; 4 uses
  switch i8 %i.ay, label %bb.w [
    i8 -24, label %text_opcode_size.exit.i81
    i8 -23, label %.thread.i69
  ]

.thread.i69:                                      ; preds = %bb.u
  %i.be = zext nneg i32 %.043.i68 to i64
  br label %text_opcode_size.exit45.i70

text_opcode_size.exit.i81:                        ; preds = %bb.u
  %i.bf = zext nneg i32 %.043.i68 to i64          ; 2 uses
  %i.bg = getelementptr i8, ptr %i.a, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.j, i64 %i.bf
  %i.bi = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.bg) #26, !srcloc !24 ; 2 uses
  %i.bj = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.bh) #26, !srcloc !25
  %i.bk = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.aw) #26, !srcloc !26
  store i8 -24, ptr %i.bi, align 1
  br label %bb.x

bb.v:                                             ; preds = %is_jcc32.exit.i82
  store i8 15, ptr %i.a, align 16
  br label %text_opcode_size.exit45.i70

text_opcode_size.exit45.i70:                      ; preds = %bb.v, %.thread.i69
  %.sink52.i71 = phi i64 [ 1, %bb.v ], [ %i.be, %.thread.i69 ] ; 2 uses
  %.04251.i72 = phi i8 [ %i.ba, %bb.v ], [ -23, %.thread.i69 ]
  %.149.i73 = phi i32 [ 1, %bb.v ], [ %.043.i68, %.thread.i69 ]
  %i.bl = getelementptr i8, ptr %i.a, i64 %.sink52.i71
  %i.bm = getelementptr i8, ptr %i.j, i64 %.sink52.i71
  %i.bn = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.bl) #26, !srcloc !24 ; 2 uses
  %i.bo = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.bm) #26, !srcloc !25
  %i.bp = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.ax) #26, !srcloc !26
  store i8 %.04251.i72, ptr %i.bn, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bq = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.21, ptr nonnull @.str.1, i32 820, i32 2321, i64 16) #24, !srcloc !102
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bq, ptr noundef %i.j, ptr noundef %i.j, i32 noundef 6, ptr noundef %i.j) #23
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !103
  br label %text_poke_early.exit

bb.x:                                             ; preds = %text_opcode_size.exit45.i70, %text_opcode_size.exit.i81
  %.sink61.i74 = phi ptr [ %i.bp, %text_opcode_size.exit45.i70 ], [ %i.bk, %text_opcode_size.exit.i81 ]
  %.sink60.i75 = phi ptr [ %i.bo, %text_opcode_size.exit45.i70 ], [ %i.bj, %text_opcode_size.exit.i81 ]
  %.sink55.i76 = phi ptr [ %i.bn, %text_opcode_size.exit45.i70 ], [ %i.bi, %text_opcode_size.exit.i81 ]
  %.2.in.i77 = phi i32 [ %.149.i73, %text_opcode_size.exit45.i70 ], [ %.043.i68, %text_opcode_size.exit.i81 ]
  %i.br = ptrtoint ptr %.sink61.i74 to i64
  %i.bs = getelementptr i8, ptr %.sink60.i75, i64 5
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.br, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr i8, ptr %.sink55.i76, i64 1
  store i32 %i.bv, ptr %i.bw, align 1
  %.2.i78 = add nuw nsw i32 %.2.in.i77, 5         ; 3 uses
  %i.bx = load i8, ptr %i.e, align 2
  %i.by = zext i8 %i.bx to i32
  %.not.i79 = icmp eq i32 %.2.i78, %i.by
  br i1 %.not.i79, label %patch_retpoline.exit, label %bb.y, !prof !14

bb.y:                                             ; preds = %bb.x
  call void asm sideeffect "661: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 661b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 661) #24, !srcloc !104
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 824, i32 2307, i64 16) #24, !srcloc !105
  call void asm sideeffect "662: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 662b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 662) #24, !srcloc !106
  br label %patch_retpoline.exit

_static_cpu_has.exit62.i:                         ; preds = %bb.r, %bb.r, %bb.q
  %i.bz = load i8, ptr %i.c, align 8              ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 15
  br i1 %i.ca, label %is_jcc32.exit.i, label %is_jcc32.exit.thread.i

is_jcc32.exit.i:                                  ; preds = %_static_cpu_has.exit62.i
  %i.cb = load i8, ptr %i.d, align 1              ; 2 uses
  %i.cc = icmp slt i8 %i.cb, -112
  br i1 %i.cc, label %bb.z, label %is_jcc32.exit.thread.i

bb.z:                                             ; preds = %is_jcc32.exit.i
  %i.cd = and i8 %i.cb, 15
  %i.ce = xor i8 %i.cd, 113
  store i8 %i.ce, ptr %i.a, align 16
  %i.cf = load i8, ptr %i.e, align 2
  %i.cg = add i8 %i.cf, -2
  store i8 %i.cg, ptr %i.g, align 1
  br label %is_jcc32.exit.thread.i

is_jcc32.exit.thread.i:                           ; preds = %bb.z, %is_jcc32.exit.i, %_static_cpu_has.exit62.i
  %.053.i = phi i32 [ 2, %bb.z ], [ 0, %is_jcc32.exit.i ], [ 0, %_static_cpu_has.exit62.i ] ; 3 uses
  %.052.i = phi i8 [ -23, %bb.z ], [ 15, %is_jcc32.exit.i ], [ %i.bz, %_static_cpu_has.exit62.i ]
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 365, i32 32, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 93)) #24
          to label %bb.aa [label %bb.aa, label %_static_cpu_has.exit.i], !srcloc !13

bb.aa:                                            ; preds = %is_jcc32.exit.thread.i, %is_jcc32.exit.thread.i
  %i.ch = zext nneg i32 %.053.i to i64
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch   ; 3 uses
  store i8 15, ptr %i.ci, align 2
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  store i8 -82, ptr %i.cj, align 1
  %i.ck = add nuw nsw i32 %.053.i, 3
  %i.cl = getelementptr i8, ptr %i.ci, i64 2
  store i8 -24, ptr %i.cl, align 2
  br label %_static_cpu_has.exit.i

_static_cpu_has.exit.i:                           ; preds = %bb.aa, %is_jcc32.exit.thread.i
  %.1.i = phi i32 [ %i.ck, %bb.aa ], [ %.053.i, %is_jcc32.exit.thread.i ] ; 3 uses
  %i.cm = zext nneg i32 %.1.i to i64              ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 682, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 133)) #24
          to label %cpu_wants_indirect_its_thunk_at.exit.i [label %cpu_wants_indirect_its_thunk_at.exit.i, label %cpu_wants_indirect_its_thunk_at.exit.thread.i], !srcloc !13

cpu_wants_indirect_its_thunk_at.exit.i:           ; preds = %_static_cpu_has.exit.i, %_static_cpu_has.exit.i
  %i.cn = ptrtoint ptr %i.j to i64
  %.cmp.i = icmp samesign ugt i32 %i.at, 7        ; 5 uses
  %i.co = select i1 %.cmp.i, i64 2, i64 1
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = add i64 %i.cp, %i.cm
  %i.cr = and i64 %i.cq, 32
  %.not.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i, label %bb.ab, label %cpu_wants_indirect_its_thunk_at.exit.thread.i

bb.ab:                                            ; preds = %cpu_wants_indirect_its_thunk_at.exit.i
  %i.cs = select i1 %.cmp.i, i32 4, i32 3
  %i.ct = load ptr, ptr @its_page, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i32, ptr @its_offset, align 4      ; 2 uses
  %i.cv = select i1 %.cmp.i, i32 -4093, i32 -4094
  %i.cw = add i32 %i.cu, %i.cv
  %i.cx = icmp ult i32 %i.cw, -4096
  br i1 %i.cx, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cy = load ptr, ptr @its_mod, align 8         ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  %i.cz = getelementptr i8, ptr %i.cy, i64 848
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @its_pages, ptr %i.cz ; 4 uses
  %i.da = call ptr @execmem_alloc_rw(i32 noundef 0, i64 noundef 4096) #23 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %spec.select.i.i.i.i, align 8
  %i.dc = getelementptr i8, ptr %spec.select.i.i.i.i, i64 8 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = add i32 %i.dd, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 3
  %i.dh = call ptr @krealloc_node_align_noprof(ptr noundef %i.db, i64 noundef %i.dg, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #28 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not18.i.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @execmem_free(ptr noundef nonnull %i.da) #23
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.dh, ptr %spec.select.i.i.i.i, align 8
  %i.di = load i32, ptr %i.dc, align 8            ; 2 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dc, align 8
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr [8 x i8], ptr %i.dh, i64 %i.dk
  store ptr %i.da, ptr %i.dl, align 8
  %i.dm = icmp eq ptr %spec.select.i.i.i.i, @its_pages
  br i1 %i.dm, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dn = ptrtoint ptr %i.da to i64
  %i.do = call i32 @set_memory_x(i64 noundef %i.dn, i32 noundef 1) #23 ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af, %bb.ad
  store ptr null, ptr @its_page, align 8
  %i.dp = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #27 ; 0 uses
  br label %emit_its_trampoline.exit.i

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  store ptr %i.da, ptr @its_page, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.da, i8 -52, i64 4096, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ac
  %i.dq = phi ptr [ %i.da, %bb.aj ], [ %i.ct, %bb.ac ]
  %i.dr = phi i32 [ 32, %bb.aj ], [ %i.cu, %bb.ac ] ; 3 uses
  %i.ds = select i1 %.cmp.i, i32 3, i32 2
  %i.dt = add i32 %i.dr, %i.ds
  %i.du = and i32 %i.dt, 32
  %.not8.not.i.i.i = icmp eq i32 %i.du, 0
  %i.dv = add i32 %i.dr, -1
  %i.dw = or i32 %i.dv, 63
  %i.dx = add i32 %i.dw, 33
  %i.dy = select i1 %.not8.not.i.i.i, i32 %i.dx, i32 %i.dr ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr i8, ptr %i.dq, i64 %i.dz  ; 3 uses
  %i.eb = add i32 %i.dy, %i.cs
  store i32 %i.eb, ptr @its_offset, align 4
  br i1 %.cmp.i, label %bb.al, label %its_init_thunk.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  store i8 65, ptr %i.ea, align 1
  %i.ec = add nsw i32 %i.at, -8
  br label %its_init_thunk.exit.i.i.i

its_init_thunk.exit.i.i.i:                        ; preds = %bb.al, %bb.ak
  %.013.i.i.i.i = phi i32 [ %i.ec, %bb.al ], [ %i.at, %bb.ak ]
  %.0.i.i.i.i = phi i64 [ 1, %bb.al ], [ 0, %bb.ak ]
  %i.ed = getelementptr i8, ptr %i.ea, i64 %.0.i.i.i.i ; 3 uses
  store i8 -1, ptr %i.ed, align 1
  %i.ee = trunc nuw nsw i32 %.013.i.i.i.i to i8
  %i.ef = add nuw nsw i8 %i.ee, -32
  %i.eg = getelementptr i8, ptr %i.ed, i64 1
  store i8 %i.ef, ptr %i.eg, align 1
  %i.eh = getelementptr i8, ptr %i.ed, i64 2
  store i8 -52, ptr %i.eh, align 1
  br label %emit_its_trampoline.exit.i

emit_its_trampoline.exit.i:                       ; preds = %its_init_thunk.exit.i.i.i, %bb.ai
  %.0.i.i.i = phi ptr [ %i.ea, %its_init_thunk.exit.i.i.i ], [ null, %bb.ai ] ; 2 uses
  %i.ei = and i64 %i.as, 15
  %i.ej = getelementptr [64 x i8], ptr @__x86_indirect_its_thunk_array, i64 %i.ei
  %.not.i64.i = icmp eq ptr %.0.i.i.i, null
  %spec.select.i.i = select i1 %.not.i64.i, ptr %i.ej, ptr %.0.i.i.i ; 2 uses
  %i.ek = load i8, ptr %i.c, align 8              ; 2 uses
  %i.el = icmp eq i8 %i.ek, 15
  br i1 %i.el, label %is_jcc32.exit.i66, label %is_jcc32.exit.thread.i63

is_jcc32.exit.i66:                                ; preds = %emit_its_trampoline.exit.i
  %i.em = load i8, ptr %i.d, align 1              ; 2 uses
  %i.en = icmp slt i8 %i.em, -112
  br i1 %i.en, label %bb.ao, label %is_jcc32.exit.thread.i63

is_jcc32.exit.thread.i63:                         ; preds = %is_jcc32.exit.i66, %emit_its_trampoline.exit.i
  %i.eo = load i8, ptr %i.e, align 2
  %i.ep = icmp eq i8 %i.eo, 6
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %is_jcc32.exit.thread.i63
  store i8 46, ptr %i.a, align 16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %is_jcc32.exit.thread.i63
  %.043.i = phi i32 [ 1, %bb.am ], [ 0, %is_jcc32.exit.thread.i63 ] ; 4 uses
  switch i8 %i.ek, label %bb.ap [
    i8 -24, label %text_opcode_size.exit.i
    i8 -23, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.an
  %i.eq = zext nneg i32 %.043.i to i64
  br label %text_opcode_size.exit45.i

text_opcode_size.exit.i:                          ; preds = %bb.an
  %i.er = zext nneg i32 %.043.i to i64            ; 2 uses
  %i.es = getelementptr i8, ptr %i.a, i64 %i.er
  %i.et = getelementptr i8, ptr %i.j, i64 %i.er
  %i.eu = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.es) #26, !srcloc !24 ; 2 uses
  %i.ev = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.et) #26, !srcloc !25
  %i.ew = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %spec.select.i.i) #26, !srcloc !26
  store i8 -24, ptr %i.eu, align 1
  br label %bb.aq

bb.ao:                                            ; preds = %is_jcc32.exit.i66
  store i8 15, ptr %i.a, align 16
  br label %text_opcode_size.exit45.i

text_opcode_size.exit45.i:                        ; preds = %bb.ao, %.thread.i
  %.sink52.i = phi i64 [ 1, %bb.ao ], [ %i.eq, %.thread.i ] ; 2 uses
  %.04251.i = phi i8 [ %i.em, %bb.ao ], [ -23, %.thread.i ]
  %.149.i = phi i32 [ 1, %bb.ao ], [ %.043.i, %.thread.i ]
  %i.ex = getelementptr i8, ptr %i.a, i64 %.sink52.i
  %i.ey = getelementptr i8, ptr %i.j, i64 %.sink52.i
  %i.ez = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.ex) #26, !srcloc !24 ; 2 uses
  %i.fa = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %i.ey) #26, !srcloc !25
  %i.fb = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %spec.select.i.i) #26, !srcloc !26
  store i8 %.04251.i, ptr %i.ez, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.fc = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.21, ptr nonnull @.str.1, i32 820, i32 2321, i64 16) #24, !srcloc !102
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.fc, ptr noundef %i.j, ptr noundef %i.j, i32 noundef 6, ptr noundef %i.j) #23
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !103
  br label %text_poke_early.exit

bb.aq:                                            ; preds = %text_opcode_size.exit45.i, %text_opcode_size.exit.i
  %.sink61.i = phi ptr [ %i.fb, %text_opcode_size.exit45.i ], [ %i.ew, %text_opcode_size.exit.i ]
  %.sink60.i = phi ptr [ %i.fa, %text_opcode_size.exit45.i ], [ %i.ev, %text_opcode_size.exit.i ]
  %.sink55.i = phi ptr [ %i.ez, %text_opcode_size.exit45.i ], [ %i.eu, %text_opcode_size.exit.i ]
  %.2.in.i = phi i32 [ %.149.i, %text_opcode_size.exit45.i ], [ %.043.i, %text_opcode_size.exit.i ]
  %i.fd = ptrtoint ptr %.sink61.i to i64
  %i.fe = getelementptr i8, ptr %.sink60.i, i64 5
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.fd, %i.ff
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr i8, ptr %.sink55.i, i64 1
  store i32 %i.fh, ptr %i.fi, align 1
  %.2.i = add nuw nsw i32 %.2.in.i, 5             ; 3 uses
  %i.fj = load i8, ptr %i.e, align 2
  %i.fk = zext i8 %i.fj to i32
  %.not.i64 = icmp eq i32 %.2.i, %i.fk
  br i1 %.not.i64, label %patch_retpoline.exit, label %bb.ar, !prof !14

bb.ar:                                            ; preds = %bb.aq
  call void asm sideeffect "661: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 661b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 661) #24, !srcloc !104
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 824, i32 2307, i64 16) #24, !srcloc !105
  call void asm sideeffect "662: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 662b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 662) #24, !srcloc !106
  br label %patch_retpoline.exit

cpu_wants_indirect_its_thunk_at.exit.thread.i:    ; preds = %cpu_wants_indirect_its_thunk_at.exit.i, %_static_cpu_has.exit.i
  %i.fl = getelementptr i8, ptr %i.a, i64 %i.cm   ; 12 uses
  %i.fm = load i8, ptr %i.e, align 2
  %i.fn = zext i8 %i.fm to i32
  %i.fo = sub nsw i32 %i.fn, %.1.i
  %i.fp = icmp samesign ugt i32 %i.at, 7          ; 2 uses
  %.neg.i.i = select i1 %i.fp, i32 -3, i32 -2
  %i.fq = add nsw i32 %i.fo, %.neg.i.i            ; 9 uses
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.as, label %bb.at, !prof !17

bb.as:                                            ; preds = %cpu_wants_indirect_its_thunk_at.exit.thread.i
  call void asm sideeffect "656: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 656b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 656) #24, !srcloc !107
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 742, i32 2307, i64 16) #24, !srcloc !108
  call void asm sideeffect "657: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 657b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 657) #24, !srcloc !109
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %cpu_wants_indirect_its_thunk_at.exit.thread.i
  switch i8 %.052.i, label %emit_indirect.exit.thread.i [
    i8 -24, label %bb.au
    i8 -23, label %._crit_edge.i.i
  ]

bb.au:                                            ; preds = %bb.at
  %i.fs = icmp sgt i32 %i.fq, 3
  %.not43.i.i = icmp eq i32 %i.fq, 0
  %or.cond.i.i = or i1 %i.fs, %.not43.i.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.au
  %i.ft = add nsw i32 %i.fq, -1
  %xtraiter = and i32 %i.fq, 3                    ; 3 uses
  %i.fu = icmp ult i32 %i.ft, 3
  br i1 %i.fu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.fq, -4
  br label %.lr.ph.i.i

emit_indirect.exit.thread.i:                      ; preds = %bb.at
  call void asm sideeffect "658: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 658b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 658) #24, !srcloc !110
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 760, i32 2307, i64 16) #24, !srcloc !111
  call void asm sideeffect "659: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 659b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 659) #24, !srcloc !112
  br label %text_poke_early.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.03544.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.gd, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.fv = sext i32 %.03544.i.i to i64
  %i.fw = getelementptr i8, ptr %i.fl, i64 %i.fv
  store i8 46, ptr %i.fw, align 1
  %i.fx = sext i32 %.03544.i.i to i64
  %i.fy = getelementptr i8, ptr %i.fl, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 1
  store i8 46, ptr %i.fz, align 1
  %i.ga = sext i32 %.03544.i.i to i64
  %i.gb = getelementptr i8, ptr %i.fl, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 2
  store i8 46, ptr %i.gc, align 1
  %i.gd = add nuw i32 %.03544.i.i, 4              ; 2 uses
  %i.ge = sext i32 %.03544.i.i to i64
  %i.gf = getelementptr i8, ptr %i.fl, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 3
  store i8 46, ptr %i.gg, align 1
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !78

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.03544.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.gd, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod130)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.03544.i.i.epil = phi i32 [ %i.gh, %.lr.ph.i.i.epil ], [ %.03544.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.gh = add nuw i32 %.03544.i.i.epil, 1
  %i.gi = sext i32 %.03544.i.i.epil to i64
  %i.gj = getelementptr i8, ptr %i.fl, i64 %i.gi
  store i8 46, ptr %i.gj, align 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.au, %bb.at
  %.03459.i.i = phi i32 [ 208, %bb.au ], [ 224, %bb.at ], [ 208, %.lr.ph.i.i.epil ], [ 208, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.03758.i.i = phi i32 [ 0, %bb.au ], [ %i.fq, %bb.at ], [ 0, %.lr.ph.i.i.epil ], [ 0, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.035.lcssa.i.i = phi i32 [ 0, %bb.au ], [ 0, %bb.at ], [ %i.fq, %.lr.ph.i.i.epil ], [ %i.fq, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 3 uses
  br i1 %i.fp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.gk = add nsw i32 %.035.lcssa.i.i, 1
  %i.gl = sext i32 %.035.lcssa.i.i to i64
  %i.gm = getelementptr i8, ptr %i.fl, i64 %i.gl
  store i8 65, ptr %i.gm, align 1
  %i.gn = add nsw i32 %i.at, -8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i.i
  %.136.i.i = phi i32 [ %i.gk, %bb.av ], [ %.035.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.032.i.i = phi i32 [ %i.gn, %bb.av ], [ %i.at, %._crit_edge.i.i ]
  %i.go = add nuw nsw i32 %.032.i.i, %.03459.i.i
  %i.gp = trunc nuw i32 %i.go to i8
  %i.gq = sext i32 %.136.i.i to i64
  %i.gr = getelementptr i8, ptr %i.fl, i64 %i.gq  ; 2 uses
  store i8 -1, ptr %i.gr, align 1
  %i.gs = add nsw i32 %.136.i.i, 2                ; 3 uses
  %i.gt = getelementptr i8, ptr %i.gr, i64 1
  store i8 %i.gp, ptr %i.gt, align 1
  %.not4246.i.i = icmp eq i32 %.03758.i.i, 0
  br i1 %.not4246.i.i, label %emit_indirect.exit.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %bb.aw
  %xtraiter131 = and i32 %.03758.i.i, 3           ; 2 uses
  %lcmp.mod132.not = icmp eq i32 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph50.i.i.prol.loopexit, label %.lr.ph50.i.i.prol

.lr.ph50.i.i.prol:                                ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i.prol
  %.248.i.i.prol = phi i32 [ %i.gv, %.lr.ph50.i.i.prol ], [ %i.gs, %.lr.ph50.i.i.preheader ] ; 2 uses
  %.13847.i.i.prol = phi i32 [ %i.gu, %.lr.ph50.i.i.prol ], [ %.03758.i.i, %.lr.ph50.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph50.i.i.prol ], [ 0, %.lr.ph50.i.i.preheader ]
  %i.gu = add i32 %.13847.i.i.prol, -1            ; 2 uses
  %i.gv = add i32 %.248.i.i.prol, 1               ; 3 uses
  %i.gw = sext i32 %.248.i.i.prol to i64
  %i.gx = getelementptr i8, ptr %i.fl, i64 %i.gw
  store i8 -52, ptr %i.gx, align 1
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.i.prol.loopexit, label %.lr.ph50.i.i.prol, !llvm.loop !80

.lr.ph50.i.i.prol.loopexit:                       ; preds = %.lr.ph50.i.i.prol, %.lr.ph50.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph50.i.i.preheader ], [ %i.gv, %.lr.ph50.i.i.prol ]
  %.248.i.i.unr = phi i32 [ %i.gs, %.lr.ph50.i.i.preheader ], [ %i.gv, %.lr.ph50.i.i.prol ]
  %.13847.i.i.unr = phi i32 [ %.03758.i.i, %.lr.ph50.i.i.preheader ], [ %i.gu, %.lr.ph50.i.i.prol ]
  %i.gy = icmp ult i32 %.03758.i.i, 4
  br i1 %i.gy, label %emit_indirect.exit.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.prol.loopexit, %.lr.ph50.i.i
  %.248.i.i = phi i32 [ %i.hj, %.lr.ph50.i.i ], [ %.248.i.i.unr, %.lr.ph50.i.i.prol.loopexit ] ; 5 uses
  %.13847.i.i = phi i32 [ %i.hi, %.lr.ph50.i.i ], [ %.13847.i.i.unr, %.lr.ph50.i.i.prol.loopexit ]
  %i.gz = add i32 %.248.i.i, 1
  %i.ha = sext i32 %.248.i.i to i64
  %i.hb = getelementptr i8, ptr %i.fl, i64 %i.ha
  store i8 -52, ptr %i.hb, align 1
  %i.hc = add i32 %.248.i.i, 2
  %i.hd = sext i32 %i.gz to i64
  %i.he = getelementptr i8, ptr %i.fl, i64 %i.hd
  store i8 -52, ptr %i.he, align 1
  %i.hf = add i32 %.248.i.i, 3
  %i.hg = sext i32 %i.hc to i64
  %i.hh = getelementptr i8, ptr %i.fl, i64 %i.hg
  store i8 -52, ptr %i.hh, align 1
  %i.hi = add i32 %.13847.i.i, -4                 ; 2 uses
  %i.hj = add i32 %.248.i.i, 4                    ; 2 uses
  %i.hk = sext i32 %i.hf to i64
  %i.hl = getelementptr i8, ptr %i.fl, i64 %i.hk
  store i8 -52, ptr %i.hl, align 1
  %.not42.i.i.3 = icmp eq i32 %i.hi, 0
  br i1 %.not42.i.i.3, label %emit_indirect.exit.i, label %.lr.ph50.i.i, !llvm.loop !81

emit_indirect.exit.i:                             ; preds = %.lr.ph50.i.i.prol.loopexit, %.lr.ph50.i.i, %bb.aw
  %.0.i65.i = phi i32 [ %i.gs, %bb.aw ], [ %.lcssa.unr, %.lr.ph50.i.i.prol.loopexit ], [ %i.hj, %.lr.ph50.i.i ] ; 3 uses
  %i.hm = icmp slt i32 %.0.i65.i, 0
  br i1 %i.hm, label %patch_retpoline.exit, label %bb.ax

bb.ax:                                            ; preds = %emit_indirect.exit.i
  %i.hn = add nuw i32 %.0.i65.i, %.1.i            ; 3 uses
  %i.ho = load i8, ptr %i.e, align 2              ; 3 uses
  %i.hp = zext i8 %i.ho to i32
  %i.hq = icmp slt i32 %i.hn, %i.hp
  br i1 %i.hq, label %.lr.ph.preheader.i, label %patch_retpoline.exit

.lr.ph.preheader.i:                               ; preds = %bb.ax
  %i.hr = sext i32 %i.hn to i64                   ; 2 uses
  %i.hs = zext i8 %i.ho to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.hr
  %i.ht = sub nsw i64 %i.hs, %i.hr
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 -112, i64 %i.ht, i1 false)
  %i.hu = zext i8 %i.ho to i32
  br label %patch_retpoline.exit

patch_retpoline.exit:                             ; preds = %bb.ar, %bb.aq, %bb.y, %bb.x, %emit_indirect.exit.i, %bb.ax, %.lr.ph.preheader.i
  %.0.i = phi i32 [ %.2.i, %bb.ar ], [ %.2.i78, %bb.x ], [ %.2.i78, %bb.y ], [ %.0.i65.i, %emit_indirect.exit.i ], [ %i.hu, %.lr.ph.preheader.i ], [ %.2.i, %bb.aq ], [ %i.hn, %bb.ax ] ; 7 uses
  %i.hv = load i8, ptr %i.e, align 2
  %i.hw = zext i8 %i.hv to i32
  %i.hx = icmp eq i32 %.0.i, %i.hw
  br i1 %i.hx, label %bb.ay, label %text_poke_early.exit

bb.ay:                                            ; preds = %patch_retpoline.exit
  %i.hy = zext nneg i32 %.0.i to i64              ; 3 uses
  call fastcc void @optimize_nops(ptr noundef %i.j, ptr noundef nonnull %i.a, i64 noundef %i.hy) #25, !srcloc !114
  %i.hz = load i32, ptr @debug_alternative, align 4
  %i.ia = and i32 %i.hz, 4
  %.not56 = icmp eq i32 %i.ia, 0
  br i1 %.not56, label %.thread86, label %bb.az, !prof !14

bb.az:                                            ; preds = %bb.ay
  %.not57 = icmp eq i32 %.0.i, 0
  br i1 %.not57, label %.thread86, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ib = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %i.j) #27 ; 0 uses
  %i.ic = add nsw i32 %.0.i, -1                   ; 2 uses
  %.not128 = icmp eq i32 %.0.i, 1
  br i1 %.not128, label %bb.bb, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ba
  %wide.trip.count = zext nneg i32 %i.ic to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.id = getelementptr i8, ptr %i.j, i64 %indvars.iv
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = zext i8 %i.ie to i32
  %i.ig = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %i.if) #27 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !82

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ih = zext nneg i32 %i.ic to i64
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.loopexit, %bb.ba
  %.054.lcssa = phi i64 [ %i.ih, %._crit_edge.loopexit ], [ 0, %bb.ba ]
  %i.ii = getelementptr i8, ptr %i.j, i64 %.054.lcssa
  %i.ij = load i8, ptr %i.ii, align 1
end_hunk_0
