Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmalloc?download=true
inline.NumInlined: 671
inline.NumDeleted: 273
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ioremap_page_range:bb.a
  %i.al = getelementptr i8, ptr %i.x, i64 16
  %i.am = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 360, i32 2323, i64 16) #24, !srcloc !106
  %i.an = load ptr, ptr %i.ac, align 8
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = load i64, ptr %i.y, align 8
  %i.aq = and i64 %i.ap, 64
  %.not.i43 = icmp eq i64 %i.aq, 0
  %i.ar = load i64, ptr %i.al, align 8            ; 2 uses
  %i.as = add i64 %i.ar, -4096
  %.0.i44 = select i1 %.not.i43, i64 %i.as, i64 %i.ar
  %i.at = add i64 %.0.i44, %i.ao
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.am, i64 noundef %0, i64 noundef %1, i64 noundef %i.ao, i64 noundef %i.at) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !107
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.au = or i64 %3, -9223372036854775808
  %.b13.i = load i1, ptr @ioremap_max_page_shift, align 4
  %i.av = select i1 %.b13.i, i32 12, i32 63
  %i.aw = tail call fastcc range(i32 -22, 1) i32 @vmap_range_noflush(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %i.au, i32 noundef %i.av) #26, !srcloc !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %find_vm_area.exit.thread
  %.0 = phi i32 [ -34, %bb.j ], [ %i.aw, %bb.k ], [ -22, %find_vm_area.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @find_vm_area(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %.b.i = load i1, ptr @vmap_initialized, align 1
  br i1 %.b.i, label %bb.b, label %find_vmap_area.exit.thread, !prof !22

bb.b:                                             ; preds = %bb.a
  %.b.i.i = load i1, ptr @vmap_zone_size, align 4
  %i.b = lshr i64 %i.a, 16
  %i.c = select i1 %.b.i.i, i64 %i.b, i64 %i.a
  %i.d = load i32, ptr @nr_vmap_nodes, align 4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = urem i64 %i.c, %i.e
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.w, %bb.f ] ; 2 uses
  %i.h = load ptr, ptr @vmap_nodes, align 8
  %i.i = sext i32 %.0.i to i64
  %i.j = getelementptr [6272 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 6152
  %i.l = getelementptr i8, ptr %i.j, i64 6176     ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.l) #23
  %.val.i = load ptr, ptr %i.k, align 8           ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.i, null
  br i1 %.not6.i.i, label %__find_vmap_area.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.0157.i.i = phi ptr [ %.116.i.i, %bb.e ], [ %.val.i, %bb.c ] ; 5 uses
  %i.m = getelementptr i8, ptr %.0157.i.i, i64 -16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ugt i64 %i.n, %i.a
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr i8, ptr %.0157.i.i, i64 -8
  %i.q = load i64, ptr %i.p, align 8
  %.not19.i.i = icmp ugt i64 %i.q, %i.a
  br i1 %.not19.i.i, label %__find_vmap_area.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 16, %.lr.ph.i.i ], [ 8, %bb.d ]
  %i.r = getelementptr i8, ptr %.0157.i.i, i64 %.sink.i.i
  %.116.i.i = load ptr, ptr %i.r, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.116.i.i, null
  br i1 %.not.i.i, label %__find_vmap_area.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !0

__find_vmap_area.exit.thread.i:                   ; preds = %bb.e, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.l) #23
  br label %bb.f

__find_vmap_area.exit.i:                          ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.0157.i.i, i64 -16
  tail call void @_raw_spin_unlock(ptr noundef %i.l) #23
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %find_vmap_area.exit

bb.f:                                             ; preds = %__find_vmap_area.exit.i, %__find_vmap_area.exit.thread.i
  %i.t = load i32, ptr @nr_vmap_nodes, align 4    ; 2 uses
  %i.u = add i32 %.0.i, -1
  %i.v = add i32 %i.u, %i.t
  %i.w = urem i32 %i.v, %i.t                      ; 2 uses
  %.not13.i = icmp eq i32 %i.w, %i.g
  br i1 %.not13.i, label %find_vmap_area.exit.thread, label %bb.c, !llvm.loop !1

find_vmap_area.exit:                              ; preds = %__find_vmap_area.exit.i
  %i.x = getelementptr i8, ptr %.0157.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  br label %find_vmap_area.exit.thread

find_vmap_area.exit.thread:                       ; preds = %bb.f, %bb.a, %find_vmap_area.exit
  %.0 = phi ptr [ %i.y, %find_vmap_area.exit ], [ null, %bb.a ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__vunmap_range_noflush(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i64 %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "759: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 759b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 759) #24, !srcloc !113
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 488, i32 0, i64 16) #24, !srcloc !114
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_mm, i64 120), align 8
  %i.b = load i32, ptr @pgdir_shift, align 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %0, %i.c
  %i.e = and i64 %i.d, 511
  %i.f = getelementptr [8 x i8], ptr %i.a, i64 %i.e
  %i.g = add i64 %1, -1
  br label %bb.d

bb.d:                                             ; preds = %pgd_none_or_clear_bad.exit, %bb.c
  %.038 = phi i32 [ 0, %bb.c ], [ %.2, %pgd_none_or_clear_bad.exit ] ; 2 uses
  %.020 = phi i64 [ %0, %bb.c ], [ %i.p, %pgd_none_or_clear_bad.exit ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.cx, %pgd_none_or_clear_bad.exit ] ; 7 uses
  %i.h = load i32, ptr @pgdir_shift, align 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = add i64 %i.j, %.020
  %i.l = sub i64 0, %i.j
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = icmp ult i64 %i.n, %i.g
  %i.p = select i1 %i.o, i64 %i.m, i64 %1         ; 5 uses
  %i.q = load i64, ptr %.0, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_bad.exit [label %pgd_bad.exit, label %pgd_bad.exit.thread], !srcloc !28

pgd_bad.exit:                                     ; preds = %bb.d, %bb.d
  %i.r = and i64 %i.q, 9218868437227409403
  %.not47 = icmp ne i64 %i.r, 99
  %i.s = zext i1 %.not47 to i32
  %spec.select = or i32 %.038, %i.s
  br label %pgd_bad.exit.thread

pgd_bad.exit.thread:                              ; preds = %pgd_bad.exit, %bb.d
  %.1 = phi i32 [ %spec.select, %pgd_bad.exit ], [ %.038, %bb.d ] ; 3 uses
  %i.t = load i64, ptr %.0, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_none.exit.i [label %pgd_none.exit.i, label %pgd_none.exit.thread.i], !srcloc !28

pgd_none.exit.i:                                  ; preds = %pgd_bad.exit.thread, %pgd_bad.exit.thread
  %.not.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.not.i, label %pgd_none_or_clear_bad.exit, label %pgd_none.exit.thread.i

pgd_none.exit.thread.i:                           ; preds = %pgd_none.exit.i, %pgd_bad.exit.thread
  %i.u = load i64, ptr %.0, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_bad.exit.i [label %pgd_bad.exit.i, label %bb.f], !srcloc !28

pgd_bad.exit.i:                                   ; preds = %pgd_none.exit.thread.i, %pgd_none.exit.thread.i
  %i.v = and i64 %i.u, 9218868437227409403
  %.not.i = icmp eq i64 %i.v, 99
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !34

bb.e:                                             ; preds = %pgd_bad.exit.i
  tail call void @pgd_clear_bad(ptr noundef %.0) #23
  br label %pgd_none_or_clear_bad.exit

bb.f:                                             ; preds = %pgd_bad.exit.i, %pgd_none.exit.thread.i
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.g [label %bb.g, label %p4d_offset.exit.i], !srcloc !28

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.w = load i64, ptr %.0, align 8
  %i.x = and i64 %i.w, 4503599627366400
  %i.y = load i64, ptr @page_offset_base, align 8
  %i.z = add i64 %i.y, %i.x
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = lshr i64 %.020, 39
  %i.ac = load i32, ptr @ptrs_per_p4d, align 4
  %i.ad = add i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = and i64 %i.ab, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %i.aa, i64 %i.af
  br label %p4d_offset.exit.i

p4d_offset.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.ag, %bb.g ], [ %.0, %bb.f ]
  %i.ah = add i64 %i.p, -1
  br label %bb.h

bb.h:                                             ; preds = %vunmap_pud_range.exit.i, %p4d_offset.exit.i
  %.3 = phi i32 [ %.1, %p4d_offset.exit.i ], [ %.5, %vunmap_pud_range.exit.i ] ; 3 uses
  %.019.i = phi ptr [ %.0.i.i, %p4d_offset.exit.i ], [ %i.cw, %vunmap_pud_range.exit.i ] ; 4 uses
  %.0.i30 = phi i64 [ %.020, %p4d_offset.exit.i ], [ %i.am, %vunmap_pud_range.exit.i ] ; 4 uses
  %i.ai = and i64 %.0.i30, -549755813888
  %i.aj = add i64 %i.ai, 549755813888
  %i.ak = or i64 %.0.i30, 549755813887
  %i.al = icmp ult i64 %i.ak, %i.ah
  %i.am = select i1 %i.al, i64 %i.aj, i64 %i.p    ; 5 uses
  tail call void @p4d_clear_huge(ptr noundef %.019.i) #23
  %i.an = load i64, ptr %.019.i, align 8          ; 3 uses
  %i.ao = and i64 %i.an, 9218868437227409304
  %.not29.i = icmp eq i64 %i.ao, 0                ; 2 uses
  %i.ap = or i32 %.3, 2                           ; 2 uses
  %spec.select44 = select i1 %.not29.i, i32 %.3, i32 %i.ap
  %i.aq = and i64 %i.an, -97
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %vunmap_pud_range.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not29.i, label %p4d_none_or_clear_bad.exit.i, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  tail call void @p4d_clear_bad(ptr noundef %.019.i) #23
  br label %vunmap_pud_range.exit.i

p4d_none_or_clear_bad.exit.i:                     ; preds = %bb.i
  %i.ar = and i64 %i.an, 4503599627366400
  %i.as = load i64, ptr @page_offset_base, align 8
  %i.at = add i64 %i.as, %i.ar
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = lshr i64 %.0.i30, 30
  %i.aw = and i64 %i.av, 511
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = add i64 %i.am, -1
  br label %bb.k

bb.k:                                             ; preds = %vunmap_pmd_range.exit.i.i, %p4d_none_or_clear_bad.exit.i
  %.026.i.i = phi ptr [ %i.ax, %p4d_none_or_clear_bad.exit.i ], [ %i.cv, %vunmap_pmd_range.exit.i.i ] ; 4 uses
  %.0.i24.i = phi i64 [ %.0.i30, %p4d_none_or_clear_bad.exit.i ], [ %i.bd, %vunmap_pmd_range.exit.i.i ] ; 5 uses
  %i.az = and i64 %.0.i24.i, -1073741824
  %i.ba = add i64 %i.az, 1073741824
  %i.bb = or i64 %.0.i24.i, 1073741823
  %i.bc = icmp ult i64 %i.bb, %i.ay
  %i.bd = select i1 %i.bc, i64 %i.ba, i64 %i.am   ; 6 uses
  %i.be = tail call i32 @pud_clear_huge(ptr noundef %.026.i.i) #23
  %.not.i25.i = icmp eq i32 %i.be, 0
  br i1 %.not.i25.i, label %.thread.i.i, label %bb.l

.thread.i.i:                                      ; preds = %bb.k
  %i.bf = load i64, ptr %.026.i.i, align 8        ; 4 uses
  %i.bg = and i64 %i.bf, 128
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bg, 0        ; 2 uses
  %i.bh = and i64 %i.bf, -97
  %.not.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i, label %vunmap_pmd_range.exit.i.i, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = sub i64 %i.bd, %.0.i24.i
  %i.bj = icmp ult i64 %i.bi, 1073741824
  br i1 %i.bj, label %bb.m, label %vunmap_pmd_range.exit.i.i, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "757: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 757b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 757) #24, !srcloc !115
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 440, i32 2305, i64 16) #24, !srcloc !116
  tail call void asm sideeffect "758: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 758b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 758) #24, !srcloc !117
  br label %vunmap_pmd_range.exit.i.i

bb.n:                                             ; preds = %.thread.i.i
  %i.bk = select i1 %.not.i.i.i.i.i.i, i64 -4503599627366504, i64 -4503598553628776
  %i.bl = and i64 %i.bk, %i.bf
  %.not4.i26.i = icmp eq i64 %i.bl, 0
  br i1 %.not4.i26.i, label %pud_none_or_clear_bad.exit.i.i, label %bb.o, !prof !22

bb.o:                                             ; preds = %bb.n
  tail call void @pud_clear_bad(ptr noundef %.026.i.i) #23
  br label %vunmap_pmd_range.exit.i.i

pud_none_or_clear_bad.exit.i.i:                   ; preds = %bb.n
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 4503599627366400, i64 4503598553628672
  %i.bm = and i64 %..i.i.i.i.i.i, %i.bf
  %i.bn = load i64, ptr @page_offset_base, align 8
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = lshr i64 %.0.i24.i, 21
  %i.br = and i64 %i.bq, 511
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %i.br
  %i.bt = add i64 %i.bd, -1
  br label %bb.p

bb.p:                                             ; preds = %pmd_none_or_clear_bad.exit.thread.i.i.i, %pud_none_or_clear_bad.exit.i.i
  %.026.i.i.i = phi ptr [ %i.bs, %pud_none_or_clear_bad.exit.i.i ], [ %i.cu, %pmd_none_or_clear_bad.exit.thread.i.i.i ] ; 4 uses
  %.0.i32.i.i = phi i64 [ %.0.i24.i, %pud_none_or_clear_bad.exit.i.i ], [ %i.by, %pmd_none_or_clear_bad.exit.thread.i.i.i ] ; 5 uses
  %i.bu = and i64 %.0.i32.i.i, -2097152
  %i.bv = add i64 %i.bu, 2097152
  %i.bw = or i64 %.0.i32.i.i, 2097151
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = select i1 %i.bx, i64 %i.bv, i64 %i.bd   ; 4 uses
  %i.bz = tail call i32 @pmd_clear_huge(ptr noundef %.026.i.i.i) #23
  %.not.i33.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i33.i.i, label %.thread.i.i.i, label %bb.q

.thread.i.i.i:                                    ; preds = %bb.p
  %i.ca = load i64, ptr %.026.i.i.i, align 8      ; 4 uses
  %i.cb = and i64 %i.ca, 128
  %.not.i.i.i.i.i34.i.i = icmp eq i64 %i.cb, 0    ; 2 uses
  %i.cc = and i64 %i.ca, -97
  %.not.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i, label %pmd_none_or_clear_bad.exit.thread.i.i.i, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cd = sub i64 %i.by, %.0.i32.i.i
  %i.ce = icmp ult i64 %i.cd, 2097152
  br i1 %i.ce, label %bb.r, label %pmd_none_or_clear_bad.exit.thread.i.i.i, !prof !23

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "755: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 755b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 755) #24, !srcloc !118
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 413, i32 2305, i64 16) #24, !srcloc !119
  tail call void asm sideeffect "756: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 756b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 756) #24, !srcloc !120
  br label %pmd_none_or_clear_bad.exit.thread.i.i.i

bb.s:                                             ; preds = %.thread.i.i.i
  %i.cf = select i1 %.not.i.i.i.i.i34.i.i, i64 -4503599627366437, i64 -4503599625273381
  %i.cg = and i64 %i.cf, %i.ca
  %.not4.i35.i.i = icmp eq i64 %i.cg, 67
  br i1 %.not4.i35.i.i, label %pmd_none_or_clear_bad.exit.i.i.i, label %bb.t, !prof !22

bb.t:                                             ; preds = %bb.s
  tail call void @pmd_clear_bad(ptr noundef %.026.i.i.i) #23
  br label %pmd_none_or_clear_bad.exit.thread.i.i.i

pmd_none_or_clear_bad.exit.i.i.i:                 ; preds = %bb.s
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i34.i.i, i64 4503599627366400, i64 4503599625273344
  %i.ch = and i64 %..i.i.i.i.i.i.i, %i.ca
  %i.ci = load i64, ptr @page_offset_base, align 8
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = lshr i64 %.0.i32.i.i, 12
  %i.cm = and i64 %i.cl, 511
  %i.cn = getelementptr [8 x i8], ptr %i.ck, i64 %i.cm
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i.i.i.i, %pmd_none_or_clear_bad.exit.i.i.i
  %.045.i.i.i.i = phi ptr [ %i.cn, %pmd_none_or_clear_bad.exit.i.i.i ], [ %i.cr, %.critedge.i.i.i.i ] ; 3 uses
  %.0.i32.i.i.i = phi i64 [ %.0.i32.i.i, %pmd_none_or_clear_bad.exit.i.i.i ], [ %i.cs, %.critedge.i.i.i.i ]
  %i.co = tail call i64 asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %.045.i.i.i.i, i64 0, ptr elementtype(i64) %.045.i.i.i.i) #24, !srcloc !121 ; 2 uses
  %i.cp = and i64 %i.co, -97
  %.not.i.i.i.i.i = icmp ne i64 %i.cp, 0
  %i.cq = and i64 %i.co, 257
  %.not53.i.i.i.i = icmp eq i64 %i.cq, 0
  %or.cond.i.i.i.i = and i1 %.not.i.i.i.i.i, %.not53.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.v, label %.critedge.i.i.i.i, !prof !122

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "753: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 753b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 753) #24, !srcloc !123
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 390, i32 2305, i64 16) #24, !srcloc !124
  tail call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #24, !srcloc !125
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.cr = getelementptr i8, ptr %.045.i.i.i.i, i64 8
  %i.cs = add i64 %.0.i32.i.i.i, 4096             ; 2 uses
  %.not54.i.i.i.i = icmp eq i64 %i.cs, %i.by
  br i1 %.not54.i.i.i.i, label %vunmap_pte_range.exit.i.i.i, label %bb.u, !llvm.loop !108

vunmap_pte_range.exit.i.i.i:                      ; preds = %.critedge.i.i.i.i
  %i.ct = tail call i32 @__SCT__cond_resched() #23 ; 0 uses
  br label %pmd_none_or_clear_bad.exit.thread.i.i.i

pmd_none_or_clear_bad.exit.thread.i.i.i:          ; preds = %vunmap_pte_range.exit.i.i.i, %bb.t, %.thread.i.i.i, %bb.r, %bb.q
  %i.cu = getelementptr i8, ptr %.026.i.i.i, i64 8
  %.not30.i.i.i = icmp eq i64 %i.by, %i.bd
  br i1 %.not30.i.i.i, label %vunmap_pmd_range.exit.i.i, label %bb.p, !llvm.loop !109

vunmap_pmd_range.exit.i.i:                        ; preds = %pmd_none_or_clear_bad.exit.thread.i.i.i, %bb.o, %.thread.i.i, %bb.m, %bb.l
  %i.cv = getelementptr i8, ptr %.026.i.i, i64 8
  %.not30.i.i = icmp eq i64 %i.bd, %i.am
  br i1 %.not30.i.i, label %vunmap_pud_range.exit.i, label %bb.k, !llvm.loop !110

vunmap_pud_range.exit.i:                          ; preds = %vunmap_pmd_range.exit.i.i, %bb.j, %bb.h
  %.5 = phi i32 [ %spec.select44, %bb.h ], [ %i.ap, %bb.j ], [ %.3, %vunmap_pmd_range.exit.i.i ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.019.i, i64 8
  %.not22.i = icmp eq i64 %i.am, %i.p
  br i1 %.not22.i, label %pgd_none_or_clear_bad.exit, label %bb.h, !llvm.loop !111

pgd_none_or_clear_bad.exit:                       ; preds = %vunmap_pud_range.exit.i, %bb.e, %pgd_none.exit.i
  %.2 = phi i32 [ %.1, %bb.e ], [ %.1, %pgd_none.exit.i ], [ %.5, %vunmap_pud_range.exit.i ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.0, i64 8
  %.not26 = icmp eq i64 %i.p, %1
  br i1 %.not26, label %bb.w, label %bb.d, !llvm.loop !112

bb.w:                                             ; preds = %pgd_none_or_clear_bad.exit
  %i.cy = zext i32 %.2 to i64
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.x [label %bb.x, label %_static_cpu_has.exit], !srcloc !28

bb.x:                                             ; preds = %bb.w, %bb.w
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.w, %bb.x
  %i.cz = phi i64 [ 1, %bb.x ], [ 2, %bb.w ]
  %i.da = and i64 %i.cz, %i.cy
  %.not27 = icmp eq i64 %i.da, 0
  br i1 %.not27, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_static_cpu_has.exit
  tail call void @arch_sync_kernel_mappings(i64 noundef %0, i64 noundef %1) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_static_cpu_has.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_sync_kernel_mappings(i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vunmap_range_noflush(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @__vunmap_range_noflush(i64 noundef %0, i64 noundef %1) #26
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vunmap_range(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @__vunmap_range_noflush(i64 noundef %0, i64 noundef %1) #26
  tail call void @flush_tlb_kernel_range(i64 noundef %0, i64 noundef %1) #23
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @__vmap_pages_range_noflush(i64 noundef %0, i64 noundef %1, i64 %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i.i.i.i.i.i.i = alloca i64, align 8    ; 4 uses
  %.sroa.0.i.i.i.i.i.i = alloca i64, align 8      ; 3 uses
  %i.a = sub i64 %1, %0
  %i.b = lshr i64 %i.a, 12
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp ult i32 %4, 12
  br i1 %i.d, label %.thread, label %bb.b, !prof !23

.thread:                                          ; preds = %bb.a
  tail call void asm sideeffect "767: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 767b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 767) #24, !srcloc !132
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 664, i32 2305, i64 16) #24, !srcloc !133
  tail call void asm sideeffect "768: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 768b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 768) #24, !srcloc !134
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %4, 12
  br i1 %i.e, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.thread, %bb.b
  %i.f = zext nneg i32 %4 to i64
  %i.g = shl nuw i64 1, %i.f
  %.not45 = icmp eq i32 %i.c, 0
  br i1 %.not45, label %vmap_small_pages_range_noflush.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = add i32 %4, -12
  %i.i = shl nuw i32 1, %i.h
  br label %bb.al

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %0, %1
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "766: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 766b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 766) #24, !srcloc !135
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 633, i32 0, i64 16) #24, !srcloc !136
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_mm, i64 120), align 8
  %i.k = load i32, ptr @pgdir_shift, align 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %0, %i.l
  %i.n = and i64 %i.m, 511
  %i.o = getelementptr [8 x i8], ptr %i.j, i64 %i.n
  %i.p = add i64 %1, -1
  %i.q = and i64 %2, 66
  %i.r = icmp eq i64 %i.q, 64
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %2, 0
  %i.s = and i64 %2, 1
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0  ; 2 uses
  %i.t = and i1 %.not.i.i.i.i.i.i.i.i.i, %.not2.i.i.i.i.i.i.i.i.i
  %i.u = sext i1 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %vmap_pages_p4d_range.exit.i, %bb.e
  %.042.i = phi i32 [ 0, %bb.e ], [ %i.ep, %vmap_pages_p4d_range.exit.i ]
  %.041.i = phi i32 [ 0, %bb.e ], [ %.4.i, %vmap_pages_p4d_range.exit.i ] ; 2 uses
  %.022.i = phi ptr [ %i.o, %bb.e ], [ %i.ev, %vmap_pages_p4d_range.exit.i ] ; 6 uses
  %.0.i = phi i64 [ %0, %bb.e ], [ %i.ad, %vmap_pages_p4d_range.exit.i ] ; 4 uses
  %i.v = load i32, ptr @pgdir_shift, align 4
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = add i64 %i.x, %.0.i
  %i.z = sub i64 0, %i.x
  %i.aa = and i64 %i.y, %i.z                      ; 2 uses
  %i.ab = add i64 %i.aa, -1
  %i.ac = icmp ult i64 %i.ab, %i.p
  %i.ad = select i1 %i.ac, i64 %i.aa, i64 %1      ; 5 uses
  %i.ae = load i64, ptr %.022.i, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_bad.exit.i [label %pgd_bad.exit.i, label %pgd_bad.exit.thread.i], !srcloc !28

pgd_bad.exit.i:                                   ; preds = %bb.f, %bb.f
  %i.af = and i64 %i.ae, 9218868437227409403
  %.not59.i = icmp ne i64 %i.af, 99
  %i.ag = zext i1 %.not59.i to i32
  %spec.select.i = or i32 %.041.i, %i.ag
  br label %pgd_bad.exit.thread.i

pgd_bad.exit.thread.i:                            ; preds = %pgd_bad.exit.i, %bb.f
  %.1.i = phi i32 [ %spec.select.i, %pgd_bad.exit.i ], [ %.041.i, %bb.f ] ; 4 uses
  %i.ah = load i64, ptr %.022.i, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_none.exit.i.i.i [label %pgd_none.exit.i.i.i, label %pgd_none.exit.thread.i.i.i], !srcloc !28

pgd_none.exit.i.i.i:                              ; preds = %pgd_bad.exit.thread.i, %pgd_bad.exit.thread.i
  %.not.i.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.not.i.i.i, label %bb.g, label %pgd_none.exit.thread.i.i.i, !prof !30

bb.g:                                             ; preds = %pgd_none.exit.i.i.i
  %i.ai = tail call i32 @__p4d_alloc(ptr noundef @init_mm, ptr noundef %.022.i, i64 noundef %.0.i) #23
  %.not7.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not7.i.i.i, label %bb.h, label %vmap_pages_p4d_range.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.aj = or i32 %.1.i, 1
  br label %pgd_none.exit.thread.i.i.i

pgd_none.exit.thread.i.i.i:                       ; preds = %bb.h, %pgd_none.exit.i.i.i, %pgd_bad.exit.thread.i
  %.2.i = phi i32 [ %i.aj, %bb.h ], [ %.1.i, %pgd_none.exit.i.i.i ], [ %.1.i, %pgd_bad.exit.thread.i ] ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.i [label %bb.i, label %p4d_alloc_track.exit.i.i], !srcloc !28

bb.i:                                             ; preds = %pgd_none.exit.thread.i.i.i, %pgd_none.exit.thread.i.i.i
  %i.ak = load i64, ptr %.022.i, align 8
  %i.al = and i64 %i.ak, 4503599627366400
  %i.am = load i64, ptr @page_offset_base, align 8
  %i.an = add i64 %i.am, %i.al
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = lshr i64 %.0.i, 39
  %i.aq = load i32, ptr @ptrs_per_p4d, align 4
  %i.ar = add i32 %i.aq, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = and i64 %i.ap, %i.as
  %i.au = getelementptr [8 x i8], ptr %i.ao, i64 %i.at
  br label %p4d_alloc_track.exit.i.i

p4d_alloc_track.exit.i.i:                         ; preds = %bb.i, %pgd_none.exit.thread.i.i.i
  %.0.i.i.i = phi ptr [ %.022.i, %pgd_none.exit.thread.i.i.i ], [ %i.au, %bb.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i, label %vmap_pages_p4d_range.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %p4d_alloc_track.exit.i.i
  %i.av = add i64 %i.ad, -1
  br label %bb.j

bb.j:                                             ; preds = %vmap_pages_pud_range.exit.i.i, %.preheader.i.i
  %.143.i = phi i32 [ %.042.i, %.preheader.i.i ], [ %i.ep, %vmap_pages_pud_range.exit.i.i ]
  %.3.i = phi i32 [ %.2.i, %.preheader.i.i ], [ %.4.i, %vmap_pages_pud_range.exit.i.i ] ; 3 uses
  %.021.i.i = phi ptr [ %.0.i.i.i, %.preheader.i.i ], [ %i.eu, %vmap_pages_pud_range.exit.i.i ] ; 4 uses
  %.020.i.i = phi i64 [ %.0.i, %.preheader.i.i ], [ %i.ba, %vmap_pages_pud_range.exit.i.i ] ; 5 uses
  %i.aw = and i64 %.020.i.i, -549755813888
  %i.ax = add i64 %i.aw, 549755813888
  %i.ay = or i64 %.020.i.i, 549755813887
  %i.az = icmp ult i64 %i.ay, %i.av
  %i.ba = select i1 %i.az, i64 %i.ax, i64 %i.ad   ; 5 uses
  %i.bb = load i64, ptr %.021.i.i, align 8        ; 2 uses
  %i.bc = and i64 %i.bb, -97
  %.not.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %pud_alloc_track.exit.i.i.i, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call i32 @__pud_alloc(ptr noundef @init_mm, ptr noundef %.021.i.i, i64 noundef %.020.i.i) #23
  %.not7.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not7.i.i.i.i, label %bb.l, label %vmap_pages_p4d_range.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.be = or i32 %.3.i, 2
  %.val.pre.i.i.i.i = load i64, ptr %.021.i.i, align 8
end_hunk_0
begin_hunk_1_@vmap_pfn_apply:bb.a
  tail call void asm sideeffect "219: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 219b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 219) #24, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.39, i32 735, i32 2307, i64 16) #24, !srcloc !32
  tail call void asm sideeffect "220: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 220b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #24, !srcloc !33
  br label %pfn_pte.exit

pfn_pte.exit:                                     ; preds = %.critedge, %bb.n
  %i.ap = shl i64 %i.f, 12
  %.not.i.i.i15 = icmp ne i64 %i.am, 0
  %i.aq = and i64 %i.am, 1
  %.not2.i.i.i = icmp eq i64 %i.aq, 0             ; 2 uses
  %i.ar = and i1 %.not.i.i.i15, %.not2.i.i.i
  %i.as = sext i1 %i.ar to i64
  %i.at = xor i64 %i.ap, %i.as
  %i.au = and i64 %i.at, 4503599627366400
  %i.av = load i64, ptr @__supported_pte_mask, align 8
  %i.aw = select i1 %.not2.i.i.i, i64 -513, i64 %i.av
  %.0.i.i.i16 = and i64 %i.aw, %i.am
  %i.ax = or i64 %i.au, %.0.i.i.i16
  %i.ay = or i64 %i.ax, 512
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store i64 %i.ay, ptr %.sroa.0.i.i, align 8
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = load volatile i64, ptr %.sroa.0.i.i, align 8
  store volatile i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.az = load i32, ptr %i.b, align 8
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %pfn_pte.exit
  %.0 = phi i32 [ 0, %pfn_pte.exit ], [ -22, %bb.m ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @free_vm_area(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call i32 @__SCT__might_resched() #23 ; 0 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = and i64 %i.d, 4095
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.1, i32 3321, i32 2321, i64 16) #24, !srcloc !70
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.f, ptr noundef %i.b) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !71
  br label %remove_vm_area.exit

.critedge.i:                                      ; preds = %bb.a
  %i.g = tail call fastcc ptr @find_unlink_vmap_area(i64 noundef %i.d) #26, !srcloc !72 ; 5 uses
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %remove_vm_area.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not26.i = icmp eq ptr %i.i, null
  br i1 %.not26.i, label %remove_vm_area.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.g, align 8
  %i.l = load i64, ptr %i.j, align 8
  tail call void @__vunmap_range_noflush(i64 noundef %i.k, i64 noundef %i.l) #26
  tail call fastcc void @free_vmap_area_noflush(ptr noundef nonnull %i.g) #26, !srcloc !56
  br label %remove_vm_area.exit

remove_vm_area.exit:                              ; preds = %bb.b, %.critedge.i, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %.critedge.i ]
  %.not = icmp eq ptr %.0.i, %0
  br i1 %.not, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %remove_vm_area.exit
  tail call void asm sideeffect "938: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 938b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 938) #24, !srcloc !251
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 4870, i32 0, i64 16) #24, !srcloc !252
  unreachable

bb.f:                                             ; preds = %remove_vm_area.exit
  tail call void @kfree(ptr noundef %0) #23
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 524289) i32 @memalloc_apply_gfp_scope(i32 noundef %0) local_unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %0, 82944
  %or.cond = icmp eq i32 %i.a, 1024
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !59
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i32 %0 to i8
  %trunc = and i8 %i.c, -64
  switch i8 %trunc, label %bb.f [
    i8 64, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !59
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !59
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e, %bb.d
  %.sink = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.b, %bb.b ]
  %.sink11 = phi i32 [ 262144, %bb.d ], [ 524288, %bb.e ], [ 2048, %bb.b ] ; 2 uses
  %i.f = inttoptr i64 %.sink to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 44       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = xor i32 %i.h, -1
  %i.j = and i32 %.sink11, %i.i
  %i.k = or i32 %i.h, %.sink11
  store i32 %i.k, ptr %i.g, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.j, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @memalloc_restore_scope(i32 noundef %0) local_unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = xor i32 %0, -1
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !59
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 44       ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, %i.a
  store i32 %i.f, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 %5, i64 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "908: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 908b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 908) #24, !srcloc !263
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 4015, i32 2307, i64 16) #24, !srcloc !264
  tail call void asm sideeffect "909: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 909b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 909) #24, !srcloc !265
  br label %.loopexit

.critedge:                                        ; preds = %bb.a
  %i.c = lshr i64 %0, 12
  %i.d = load volatile i64, ptr @_totalram_pages, align 8
  %i.e = icmp ugt i64 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef @.str.7, i64 noundef %0) #23
  br label %.loopexit

bb.d:                                             ; preds = %.critedge
  %.b = load i1, ptr @vmap_allow_huge, align 1
  %i.f = and i64 %6, 1024
  %.not81 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not81, %.b
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %0, 2097151
  %spec.select = select i1 %i.g, i32 21, i32 12   ; 2 uses
  %i.h = zext nneg i32 %spec.select to i64
  %i.i = shl nuw nsw i64 1, %i.h
  %i.j = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.178 = phi i32 [ %spec.select, %bb.e ], [ 12, %bb.d ]
  %.069 = phi i64 [ %i.j, %bb.e ], [ %1, %bb.d ]
  %i.k = or i64 %6, 34
  %i.l = and i32 %4, 781536
  %i.m = or disjoint i32 %i.l, 256                ; 2 uses
  %i.n = and i32 %4, 33792
  %spec.select.i = icmp eq i32 %i.n, 33792
  %i.o = and i32 %4, 5
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = or i32 %4, 2
  %.059.i = select i1 %.not.i, i32 %i.p, i32 %4   ; 6 uses
  %i.q = or i32 %.059.i, 8192                     ; 4 uses
  %i.r = and i32 %i.q, -32769
  %i.s = icmp eq i32 %7, -1                       ; 3 uses
  %i.t = sext i32 %7 to i64                       ; 2 uses
  %i.u = and i32 %.059.i, 82944
  %or.cond.i88 = icmp eq i32 %i.u, 1024
  %i.v = trunc i32 %.059.i to i8
  %trunc.i = and i8 %i.v, -64
  %i.w = and i32 %4, 32768
  %.not83 = icmp eq i32 %i.w, 0                   ; 2 uses
  %i.x = select i1 %.not83, ptr @.str.3, ptr @.str.9
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.thread, %bb.f
  %.279.ph = phi i32 [ 12, %.thread ], [ %.178, %bb.f ] ; 5 uses
  %.1.ph = phi i64 [ %1, %.thread ], [ %.069, %bb.f ]
  %i.y = zext nneg i32 %.279.ph to i64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.h
  %i.z = call ptr @__get_vm_area_node(i64 noundef %0, i64 noundef %.1.ph, i64 noundef %i.y, i64 noundef %i.k, i64 noundef %2, i64 noundef %3, i32 noundef %7, i32 noundef %4, ptr noundef %8) #26 ; 14 uses
  %.not82 = icmp eq ptr %i.z, null
  br i1 %.not82, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.backedge
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef @.str.8, i64 noundef %0, ptr noundef nonnull %i.x) #23
  br i1 %.not83, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #23 ; 0 uses
  br label %.backedge

bb.i:                                             ; preds = %.backedge
  %i.ab = getelementptr i8, ptr %i.z, i64 8       ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ae = getelementptr i8, ptr %i.z, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, 64
  %.not.i96 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr i8, ptr %i.z, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = add i64 %i.ai, -4096
  %.0.i97 = select i1 %.not.i96, i64 %i.aj, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %.0.i97, 12                    ; 2 uses
  %i.al = trunc i64 %i.ak to i32                  ; 11 uses
  %i.am = and i64 %i.ak, 4294967295               ; 4 uses
  %i.an = shl nuw nsw i64 %i.am, 3                ; 3 uses
  %i.ao = icmp samesign ugt i64 %i.am, 512
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.z, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i64, ptr @vmalloc_base, align 8    ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.k [label %bb.k, label %__vmalloc_node_noprof.exit], !inline_history !253, !srcloc !28

bb.k:                                             ; preds = %bb.j, %bb.j
  br label %__vmalloc_node_noprof.exit

__vmalloc_node_noprof.exit:                       ; preds = %bb.j, %bb.k
  %i.as = phi i64 [ 14073748835532800, %bb.k ], [ 35184372088832, %bb.j ]
  %i.at = add i64 %i.ar, -1
  %i.au = add i64 %i.at, %i.as
  %i.av = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.aw = and i64 %i.av, -9223372036854775453
  %i.ax = call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %i.an, i64 noundef 1, i64 noundef %i.ar, i64 noundef %i.au, i32 noundef %i.m, i64 %i.aw, i64 noundef 0, i32 noundef %7, ptr noundef %i.aq) #30, !inline_history !253
  br label %_kmalloc_node_noprof.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ay = call noalias align 8 ptr @__kmalloc_node_noprof(i64 noundef range(i64 0, 4097) %i.an, i32 noundef range(i32 256, 781824) %i.m, i32 noundef %7) #31, !inline_history !254
  br label %_kmalloc_node_noprof.exit.i

_kmalloc_node_noprof.exit.i:                      ; preds = %bb.l, %__vmalloc_node_noprof.exit
  %.1.i.i.sink = phi ptr [ %i.ax, %__vmalloc_node_noprof.exit ], [ %i.ay, %bb.l ] ; 16 uses
  %i.az = getelementptr i8, ptr %i.z, i64 32
  store ptr %.1.i.i.sink, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.z, i64 32      ; 2 uses
  %.not61.i = icmp eq ptr %.1.i.i.sink, null
  br i1 %.not61.i, label %bb.m, label %__ilog2_u32.exit133.i

bb.m:                                             ; preds = %_kmalloc_node_noprof.exit.i
  %i.bb = shl nuw nsw i64 %i.am, 12
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %.059.i, ptr noundef null, ptr noundef @.str.47, i64 noundef %i.bb, i64 noundef %i.an) #23, !inline_history !254
  br label %bb.ap

__ilog2_u32.exit133.i:                            ; preds = %_kmalloc_node_noprof.exit.i
  %i.bc = add nsw i32 %.279.ph, -12               ; 12 uses
  %i.bd = getelementptr i8, ptr %i.z, i64 40
  store i32 %i.bc, ptr %i.bd, align 8
  %.not104 = icmp eq i32 %i.bc, 0                 ; 3 uses
  %spec.select.i94 = select i1 %.not104, i32 %i.q, i32 %i.r ; 7 uses
  %i.be = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.al, i32 -1) #27, !srcloc !77 ; 2 uses
  %.not142.i = icmp eq i32 %i.be, 0
  %.v.i = select i1 %.not142.i, i32 -1025, i32 -33793
  %i.bf = and i32 %.v.i, %spec.select.i94         ; 3 uses
  %i.bg = call i32 @llvm.umin.i32(i32 %i.be, i32 10) ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, %i.bc
  %i.bi = icmp ne i32 %i.al, 0
  %i.bj = and i1 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %__ilog2_u32.exit133.i
  %i.bk = and i32 %spec.select.i94, 2105344
  %.not.i.i.i.i = icmp eq i32 %i.bk, 2105344
  br label %bb.n

bb.n:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.0109147.i = phi i32 [ 0, %.lr.ph.i ], [ %.0109.be.i, %.backedge.i ] ; 7 uses
  %.0110146.i = phi i32 [ %i.al, %.lr.ph.i ], [ %.0110.be.i, %.backedge.i ]
  %.0111145.i = phi i32 [ 10, %.lr.ph.i ], [ %.0111.be.i, %.backedge.i ] ; 2 uses
  %.0118144.i = phi i32 [ %i.bg, %.lr.ph.i ], [ %.0118.be.i, %.backedge.i ] ; 7 uses
  br i1 %i.s, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = call ptr @alloc_pages_noprof(i32 noundef %i.bf, i32 noundef %.0118144.i) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.bf, ptr %i.b, align 4
  br i1 %.not.i.i.i.i, label %.split4.i.i.i.i, label %alloc_pages_node_noprof.exit.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.bm = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 8), i64 range(i64 -2147483648, 4294967296) %i.t) #24, !srcloc !38 ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 2
  call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc nuw i8 %i.bm to i1
  br i1 %i.bo, label %alloc_pages_node_noprof.exit.i, label %bb.q

bb.q:                                             ; preds = %.split4.i.i.i.i
  %i.bp = call i32 (ptr, ...) @_printk(ptr noundef @.str.50, ptr noundef nonnull %i.b, i32 noundef range(i32 0, -1) %7) #29 ; 0 uses
  call void @dump_stack() #29
  br label %alloc_pages_node_noprof.exit.i

alloc_pages_node_noprof.exit.i:                   ; preds = %bb.q, %.split4.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bq = call ptr @__alloc_pages_noprof(i32 noundef %i.bf, i32 noundef %.0118144.i, i32 noundef range(i32 0, -1) %7, ptr noundef null) #23
  br label %bb.r

bb.r:                                             ; preds = %alloc_pages_node_noprof.exit.i, %bb.o
  %.0114.i = phi ptr [ %i.bl, %bb.o ], [ %i.bq, %alloc_pages_node_noprof.exit.i ] ; 8 uses
  %.not131.i = icmp eq ptr %.0114.i, null
  br i1 %.not131.i, label %bb.s, label %bb.t, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.br = add nsw i32 %.0118144.i, -1             ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %__ilog2_u32.exit.i, %bb.s
  %.0118.be.i = phi i32 [ %i.br, %bb.s ], [ %i.di, %__ilog2_u32.exit.i ] ; 2 uses
  %.0111.be.i = phi i32 [ %i.br, %bb.s ], [ %.0111145.i, %__ilog2_u32.exit.i ]
  %.0110.be.i = phi i32 [ %.0110146.i, %bb.s ], [ %i.dg, %__ilog2_u32.exit.i ] ; 2 uses
  %.0109.be.i = phi i32 [ %.0109147.i, %bb.s ], [ %i.df, %__ilog2_u32.exit.i ] ; 2 uses
  %i.bs = icmp ugt i32 %.0118.be.i, %i.bc
  %i.bt = icmp ne i32 %.0110.be.i, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.n, label %._crit_edge.i, !llvm.loop !255

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i32 1, %.0118144.i          ; 4 uses
  %.0114.val.i = load i64, ptr %.0114.i, align 16
  %i.bw = lshr i64 %.0114.val.i, 58
  %i.bx = getelementptr [8 x i8], ptr @node_data, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = zext nneg i32 %i.bv to i64
  call void @mod_node_page_state(ptr noundef %i.by, i32 noundef 36, i64 noundef %i.bz) #23
  call void @split_page(ptr noundef nonnull %.0114.i, i32 noundef %.0118144.i) #23
  %i.ca = icmp ult i32 %.0118144.i, 2
  br i1 %i.ca, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.t
  %unroll_iter = and i32 %i.bv, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.new
  %.0116143.i = phi i32 [ 0, %.new ], [ %i.cy, %bb.u ] ; 6 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.u ]
  %i.cb = sext i32 %.0116143.i to i64
  %i.cc = getelementptr [64 x i8], ptr %.0114.i, i64 %i.cb
  %i.cd = add i32 %.0116143.i, %.0109147.i
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8
  %i.cg = or disjoint i32 %.0116143.i, 1          ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [64 x i8], ptr %.0114.i, i64 %i.ch
  %i.cj = add i32 %i.cg, %.0109147.i
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ck
  store ptr %i.ci, ptr %i.cl, align 8
  %i.cm = or disjoint i32 %.0116143.i, 2          ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [64 x i8], ptr %.0114.i, i64 %i.cn
  %i.cp = add i32 %i.cm, %.0109147.i
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.cq
  store ptr %i.co, ptr %i.cr, align 8
  %i.cs = or disjoint i32 %.0116143.i, 3          ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [64 x i8], ptr %.0114.i, i64 %i.ct
  %i.cv = add i32 %i.cs, %.0109147.i
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.cw
  store ptr %i.cu, ptr %i.cx, align 8
  %i.cy = add nuw i32 %.0116143.i, 4
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %__ilog2_u32.exit.i, label %bb.u, !llvm.loop !256

.epil.preheader:                                  ; preds = %bb.t
  %lcmp.mod155 = icmp ult i32 %.0118144.i, 2
  call void @llvm.assume(i1 %lcmp.mod155)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.0116143.i.epil = phi i32 [ 0, %.epil.preheader ], [ %i.de, %bb.v ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cz = sext i32 %.0116143.i.epil to i64
  %i.da = getelementptr [64 x i8], ptr %.0114.i, i64 %i.cz
  %i.db = add i32 %.0116143.i.epil, %.0109147.i
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.dc
  store ptr %i.da, ptr %i.dd, align 8
  %i.de = add nuw i32 %.0116143.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.bv
  br i1 %epil.iter.cmp.not, label %__ilog2_u32.exit.i, label %bb.v, !llvm.loop !257

__ilog2_u32.exit.i:                               ; preds = %bb.v, %bb.u
  %i.df = add i32 %i.bv, %.0109147.i              ; 2 uses
  %i.dg = sub i32 %i.al, %i.df                    ; 2 uses
  %i.dh = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dg, i32 -1) #27, !srcloc !77
  %i.di = call i32 @llvm.umin.i32(i32 %.0111145.i, i32 %i.dh)
  br label %.backedge.i

._crit_edge.i:                                    ; preds = %.backedge.i, %__ilog2_u32.exit133.i
  %.0109.lcssa.i = phi i32 [ 0, %__ilog2_u32.exit133.i ], [ %.0109.be.i, %.backedge.i ] ; 3 uses
  br i1 %.not104, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %._crit_edge.i
  br i1 %i.s, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %._crit_edge151.us.i
  %.1.us.i = phi i32 [ %i.dq, %._crit_edge151.us.i ], [ %.0109.lcssa.i, %.preheader.i ] ; 7 uses
  %i.dj = icmp ult i32 %.1.us.i, %i.al
  br i1 %i.dj, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %.preheader.split.us.i
  %i.dk = sub nuw i32 %i.al, %.1.us.i
  %i.dl = call i32 @llvm.umin.i32(i32 %i.dk, i32 100) ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = zext i32 %.1.us.i to i64
  %i.do = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.dn
  %i.dp = call i64 @alloc_pages_bulk_mempolicy_noprof(i32 noundef %i.q, i64 noundef %i.dm, ptr noundef %i.do) #23
  %.0113.us.i = trunc i64 %i.dp to i32            ; 2 uses
  %i.dq = add i32 %.1.us.i, %.0113.us.i           ; 4 uses
  %i.dr = icmp ult i32 %.1.us.i, %i.dq
  br i1 %i.dr, label %.lr.ph150.us.i, label %._crit_edge151.us.i

.lr.ph150.us.i:                                   ; preds = %bb.w, %.lr.ph150.us.i
  %.0112148.us.i = phi i32 [ %i.dy, %.lr.ph150.us.i ], [ %.1.us.i, %bb.w ] ; 2 uses
  %i.ds = sext i32 %.0112148.us.i to i64
  %i.dt = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8
  %.val.us.i = load i64, ptr %i.du, align 16
  %i.dv = lshr i64 %.val.us.i, 58
  %i.dw = getelementptr [8 x i8], ptr @node_data, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8
  call void @mod_node_page_state(ptr noundef %i.dx, i32 noundef 36, i64 noundef 1) #23
  %i.dy = add i32 %.0112148.us.i, 1               ; 2 uses
  %exitcond165.not.i = icmp eq i32 %i.dy, %i.dq
  br i1 %exitcond165.not.i, label %._crit_edge151.us.i, label %.lr.ph150.us.i, !llvm.loop !258

._crit_edge151.us.i:                              ; preds = %.lr.ph150.us.i, %bb.w
  %.not127.us.i = icmp eq i32 %i.dl, %.0113.us.i
  br i1 %.not127.us.i, label %.preheader.split.us.i, label %.loopexit.i

.preheader.split.i:                               ; preds = %.preheader.i, %._crit_edge151.i
  %.1.i = phi i32 [ %i.ef, %._crit_edge151.i ], [ %.0109.lcssa.i, %.preheader.i ] ; 7 uses
  %i.dz = icmp ult i32 %.1.i, %i.al
  br i1 %i.dz, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %.preheader.split.i
  %i.ea = sub nuw i32 %i.al, %.1.i
  %i.eb = call i32 @llvm.umin.i32(i32 %i.ea, i32 100) ; 2 uses
  %i.ec = zext i32 %.1.i to i64
  %i.ed = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ec
  %i.ee = call i64 @alloc_pages_bulk_noprof(i32 noundef %i.q, i32 noundef range(i32 0, -1) %7, ptr noundef null, i32 noundef %i.eb, ptr noundef %i.ed) #23
  %.0113.i = trunc i64 %i.ee to i32               ; 2 uses
  %i.ef = add i32 %.1.i, %.0113.i                 ; 4 uses
  %i.eg = icmp ult i32 %.1.i, %i.ef
  br i1 %i.eg, label %.lr.ph150.i, label %._crit_edge151.i

.lr.ph150.i:                                      ; preds = %bb.x, %.lr.ph150.i
  %.0112148.i = phi i32 [ %i.en, %.lr.ph150.i ], [ %.1.i, %bb.x ] ; 2 uses
  %i.eh = sext i32 %.0112148.i to i64
  %i.ei = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8
  %.val.i93 = load i64, ptr %i.ej, align 16
  %i.ek = lshr i64 %.val.i93, 58
  %i.el = getelementptr [8 x i8], ptr @node_data, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8
  call void @mod_node_page_state(ptr noundef %i.em, i32 noundef 36, i64 noundef 1) #23
  %i.en = add i32 %.0112148.i, 1                  ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.en, %i.ef
  br i1 %exitcond164.not.i, label %._crit_edge151.i, label %.lr.ph150.i, !llvm.loop !258

._crit_edge151.i:                                 ; preds = %.lr.ph150.i, %bb.x
  %.not127.i = icmp eq i32 %i.eb, %.0113.i
  br i1 %.not127.i, label %.preheader.split.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge151.i, %.preheader.split.i, %._crit_edge151.us.i, %.preheader.split.us.i, %._crit_edge.i
  %.2.i = phi i32 [ %.0109.lcssa.i, %._crit_edge.i ], [ %i.dq, %._crit_edge151.us.i ], [ %.1.us.i, %.preheader.split.us.i ], [ %i.ef, %._crit_edge151.i ], [ %.1.i, %.preheader.split.i ] ; 3 uses
  %i.eo = icmp ult i32 %.2.i, %i.al
  br i1 %i.eo, label %.lr.ph156.i, label %vm_area_alloc_pages.exit

.lr.ph156.i:                                      ; preds = %.loopexit.i
  %i.ep = and i32 %spec.select.i94, 32768
  %.not128.i = icmp eq i32 %i.ep, 0
  %i.eq = and i32 %spec.select.i94, 2105344
  %.not.i.i.i134.i = icmp eq i32 %i.eq, 2105344
  %i.er = shl nuw nsw i32 1, %i.bc                ; 4 uses
  %i.es = zext nneg i32 %i.er to i64
  %i.et = icmp ult i32 %i.bc, 2
  %unroll_iter161 = and i32 %i.er, 2147483644
  %lcmp.mod160 = icmp ult i32 %i.bc, 2
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa, %.lr.ph156.i
  %.3154.i = phi i32 [ %.2.i, %.lr.ph156.i ], [ %i.gn, %.unr-lcssa ] ; 8 uses
  br i1 %.not128.i, label %task_sigpending.exit.i.i, label %fatal_signal_pending.exit.thread.i

task_sigpending.exit.i.i:                         ; preds = %bb.y
  %i.eu = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !59
  %i.ev = inttoptr i64 %i.eu to ptr               ; 2 uses
  %i.ew = load volatile i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.ew, 2
  %.not.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %task_sigpending.exit.i.i
  %i.ey = getelementptr i8, ptr %i.ev, i64 2152
  %.val.i.i = load i64, ptr %i.ey, align 8
  %i.ez = and i64 %.val.i.i, 256
  %.not129.i = icmp eq i64 %i.ez, 0
  br i1 %.not129.i, label %fatal_signal_pending.exit.thread.i, label %vm_area_alloc_pages.exit

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %task_sigpending.exit.i.i, %bb.y
  br i1 %i.s, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %fatal_signal_pending.exit.thread.i
  %i.fa = call ptr @alloc_pages_noprof(i32 noundef %spec.select.i94, i32 noundef %i.bc) #23
  br label %bb.ac

bb.aa:                                            ; preds = %fatal_signal_pending.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %spec.select.i94, ptr %i.a, align 4
  br i1 %.not.i.i.i134.i, label %.split4.i.i.i135.i, label %alloc_pages_node_noprof.exit140.i

.split4.i.i.i135.i:                               ; preds = %bb.aa
  %i.fb = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 8), i64 range(i64 -2147483648, 4294967296) %i.t) #24, !srcloc !38 ; 2 uses
  %i.fc = icmp ult i8 %i.fb, 2
  call void @llvm.assume(i1 %i.fc)
  %i.fd = trunc nuw i8 %i.fb to i1
  br i1 %i.fd, label %alloc_pages_node_noprof.exit140.i, label %bb.ab

bb.ab:                                            ; preds = %.split4.i.i.i135.i
  %i.fe = call i32 (ptr, ...) @_printk(ptr noundef @.str.50, ptr noundef nonnull %i.a, i32 noundef range(i32 0, -1) %7) #29 ; 0 uses
  call void @dump_stack() #29
  br label %alloc_pages_node_noprof.exit140.i

alloc_pages_node_noprof.exit140.i:                ; preds = %bb.ab, %.split4.i.i.i135.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ff = call ptr @__alloc_pages_noprof(i32 noundef %spec.select.i94, i32 noundef %i.bc, i32 noundef range(i32 0, -1) %7, ptr noundef null) #23
  br label %bb.ac

bb.ac:                                            ; preds = %alloc_pages_node_noprof.exit140.i, %bb.z
  %.1115.i = phi ptr [ %i.fa, %bb.z ], [ %i.ff, %alloc_pages_node_noprof.exit140.i ] ; 8 uses
  %.not130.i = icmp eq ptr %.1115.i, null
  br i1 %.not130.i, label %vm_area_alloc_pages.exit, label %bb.ad, !prof !23

bb.ad:                                            ; preds = %bb.ac
  %.1115.val.i = load i64, ptr %.1115.i, align 16
  %i.fg = lshr i64 %.1115.val.i, 58
  %i.fh = getelementptr [8 x i8], ptr @node_data, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8
  call void @mod_node_page_state(ptr noundef %i.fi, i32 noundef 36, i64 noundef %i.es) #23
  br i1 %.not104, label %.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @split_page(ptr noundef nonnull %.1115.i, i32 noundef %i.bc) #23
  br label %.preheader

.preheader:                                       ; preds = %bb.ae, %bb.ad
  br i1 %i.et, label %.epil.preheader156, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.1117153.i = phi i32 [ %i.gg, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter162 = phi i32 [ %niter162.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.fj = sext i32 %.1117153.i to i64
  %i.fk = getelementptr [64 x i8], ptr %.1115.i, i64 %i.fj
  %i.fl = add i32 %.1117153.i, %.3154.i
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.fm
  store ptr %i.fk, ptr %i.fn, align 8
  %i.fo = or disjoint i32 %.1117153.i, 1          ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [64 x i8], ptr %.1115.i, i64 %i.fp
  %i.fr = add i32 %i.fo, %.3154.i
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.fs
  store ptr %i.fq, ptr %i.ft, align 8
  %i.fu = or disjoint i32 %.1117153.i, 2          ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr [64 x i8], ptr %.1115.i, i64 %i.fv
  %i.fx = add i32 %i.fu, %.3154.i
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.fy
  store ptr %i.fw, ptr %i.fz, align 8
  %i.ga = or disjoint i32 %.1117153.i, 3          ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [64 x i8], ptr %.1115.i, i64 %i.gb
  %i.gd = add i32 %i.ga, %.3154.i
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.ge
  store ptr %i.gc, ptr %i.gf, align 8
  %i.gg = add nuw i32 %.1117153.i, 4
  %niter162.next.3 = add i32 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i32 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !259

.epil.preheader156:                               ; preds = %.preheader
  call void @llvm.assume(i1 %lcmp.mod160)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader156
  %.1117153.i.epil = phi i32 [ %i.gm, %bb.af ], [ 0, %.epil.preheader156 ] ; 3 uses
  %epil.iter158 = phi i32 [ %epil.iter158.next, %bb.af ], [ 0, %.epil.preheader156 ]
  %i.gh = sext i32 %.1117153.i.epil to i64
  %i.gi = getelementptr [64 x i8], ptr %.1115.i, i64 %i.gh
  %i.gj = add i32 %.1117153.i.epil, %.3154.i
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr [8 x i8], ptr %.1.i.i.sink, i64 %i.gk
  store ptr %i.gi, ptr %i.gl, align 8
  %i.gm = add nuw i32 %.1117153.i.epil, 1
  %epil.iter158.next = add i32 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i32 %epil.iter158.next, %i.er
  br i1 %epil.iter158.cmp.not, label %.unr-lcssa, label %bb.af, !llvm.loop !260

.unr-lcssa:                                       ; preds = %bb.af, %.preheader.new
  %i.gn = add i32 %.3154.i, %i.er                 ; 3 uses
  %i.go = icmp ult i32 %i.gn, %i.al
  br i1 %i.go, label %bb.y, label %vm_area_alloc_pages.exit, !llvm.loop !261

vm_area_alloc_pages.exit:                         ; preds = %fatal_signal_pending.exit.i, %bb.ac, %.unr-lcssa, %.loopexit.i
  %.3.lcssa.i = phi i32 [ %.2.i, %.loopexit.i ], [ %i.gn, %.unr-lcssa ], [ %.3154.i, %fatal_signal_pending.exit.i ], [ %.3154.i, %bb.ac ] ; 2 uses
  %i.gp = getelementptr i8, ptr %i.z, i64 44      ; 2 uses
  store i32 %.3.lcssa.i, ptr %i.gp, align 4
  %.not62.i = icmp eq i32 %.3.lcssa.i, %i.al
  br i1 %.not62.i, label %bb.ai, label %task_sigpending.exit.i

task_sigpending.exit.i:                           ; preds = %vm_area_alloc_pages.exit
  %i.gq = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !inline_history !254, !srcloc !59
  %i.gr = inttoptr i64 %i.gq to ptr               ; 2 uses
  %i.gs = load volatile i64, ptr %i.gr, align 8
  %i.gt = and i64 %i.gs, 2
  %.not.i90 = icmp eq i64 %i.gt, 0
  br i1 %.not.i90, label %fatal_signal_pending.exit, label %bb.ag

bb.ag:                                            ; preds = %task_sigpending.exit.i
  %i.gu = getelementptr i8, ptr %i.gr, i64 2152
  %.val.i91 = load i64, ptr %i.gu, align 8
  %i.gv = trunc i64 %.val.i91 to i32
  %i.gw = lshr i32 %i.gv, 8
  %i.gx = and i32 %i.gw, 1
  %i.gy = or i32 %i.gx, %i.bc
  br label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i, %bb.ag
  %i.gz = phi i32 [ %i.bc, %task_sigpending.exit.i ], [ %i.gy, %bb.ag ]
  %or.cond.i = icmp eq i32 %i.gz, 0
  br i1 %or.cond.i, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %fatal_signal_pending.exit
  %i.ha = shl nuw nsw i64 %i.am, 12
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %.059.i, ptr noundef null, ptr noundef @.str.48, i64 noundef %i.ha) #23, !inline_history !254
  br label %bb.ap

end_hunk_1
