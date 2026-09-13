Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fault?download=true
inline.NumInlined: 178
inline.NumDeleted: 112
begin_hunk_0_@do_user_addr_fault:bb.a
bb.h:                                             ; preds = %kprobe_page_fault.exit
  tail call void asm sideeffect "878: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 878b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 878) #17, !srcloc !57
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.7, i32 1245, i32 2307, i64 16) #17, !srcloc !58
  tail call void asm sideeffect "879: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 879b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 879) #17, !srcloc !59
  br label %.loopexit

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.d, %kprobe_page_fault.exit
  %i.r = and i64 %1, 8
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %.critedge
  tail call fastcc void @pgtable_bad(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !srcloc !60
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 308, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 86)) #17
          to label %_static_cpu_has.exit [label %_static_cpu_has.exit, label %.critedge150], !srcloc !20

_static_cpu_has.exit:                             ; preds = %bb.j, %bb.j
  %i.s = and i64 %1, 4
  %.not120 = icmp eq i64 %i.s, 0
  br i1 %.not120, label %bb.k, label %.critedge150

bb.k:                                             ; preds = %_static_cpu_has.exit
  %i.t = getelementptr i8, ptr %0, i64 144
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 262144
  %.not121 = icmp eq i64 %i.v, 0
  br i1 %.not121, label %bb.l, label %.critedge150, !prof !15

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @page_fault_oops(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !srcloc !61
  br label %.loopexit

.critedge150:                                     ; preds = %bb.j, %_static_cpu_has.exit, %bb.k
  %i.w = getelementptr i8, ptr %i.b, i64 2900
  %i.x = load i32, ptr %i.w, align 4
  %.not229 = icmp eq i32 %i.x, 0
  br i1 %.not229, label %bb.m, label %.critedge152, !prof !14

bb.m:                                             ; preds = %.critedge150
  %i.y = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #18, !srcloc !22
  %i.z = and i32 %i.y, 2147483647
  %.not122 = icmp ne i32 %i.z, 0
  %.not123 = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not122, i1 true, i1 %.not123, !prof !15
  br i1 %spec.select, label %.critedge152, label %bb.n, !prof !15

.critedge152:                                     ; preds = %.critedge150, %bb.m
  tail call fastcc void @bad_area_nosemaphore(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !srcloc !62
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %0, i64 144
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 512
  %.not124 = icmp eq i64 %i.ac, 0
  br i1 %.not124, label %bb.o, label %.critedge154, !prof !15

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "880: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 880b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 880) #17, !srcloc !63
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.7, i32 1283, i32 2307, i64 16) #17, !srcloc !64
  tail call void asm sideeffect "881: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 881b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 881) #17, !srcloc !65
  tail call fastcc void @bad_area_nosemaphore(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !srcloc !66
  br label %.loopexit

.critedge154:                                     ; preds = %bb.n
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !26
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @perf_swevent_enabled, i64 32), i1 false) #17
          to label %perf_sw_event.exit [label %bb.p], !srcloc !27

bb.p:                                             ; preds = %.critedge154
  tail call void @__perf_sw_event(i32 noundef 2, i64 noundef 1, ptr noundef %0, i64 noundef %2) #16
  br label %perf_sw_event.exit

perf_sw_event.exit:                               ; preds = %.critedge154, %bb.p
  %i.ad = and i64 %1, 64
  %.not125 = icmp eq i64 %i.ad, 0                 ; 6 uses
  %i.ae = and i64 %1, 2
  %.not126.not = icmp eq i64 %i.ae, 0             ; 6 uses
  %i.af = and i64 %1, 66
  %i.ag = icmp eq i64 %i.af, 0
  %.1 = select i1 %i.ag, i32 532, i32 533         ; 2 uses
  %i.ah = and i64 %1, 16
  %.not127 = icmp eq i64 %i.ah, 0                 ; 4 uses
  %i.ai = or disjoint i32 %.1, 256
  %.2 = select i1 %.not127, i32 %.1, i32 %i.ai    ; 2 uses
  %i.aj = load i16, ptr %i.h, align 8
  %i.ak = and i16 %i.aj, 3
  %.not230 = icmp eq i16 %i.ak, 0
  %i.al = or disjoint i32 %.2, 64
  %.3 = select i1 %.not230, i32 %.2, i32 %i.al    ; 5 uses
  %i.am = and i64 %2, -4096
  %i.an = icmp eq i64 %i.am, -10485760
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %perf_sw_event.exit
  %i.ao = tail call zeroext i1 @emulate_vsyscall_pf(i64 noundef %1, ptr noundef %0, i64 noundef %2) #16
  br i1 %i.ao, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q, %perf_sw_event.exit
  %i.ap = and i32 %.3, 64
  %.not129 = icmp eq i32 %i.ap, 0
  br i1 %.not129, label %fault_signal_pending.exit.thread217, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = tail call ptr @lock_vma_under_rcu(ptr noundef nonnull %i.d, i64 noundef %2) #16 ; 8 uses
  %.not130 = icmp eq ptr %i.aq, null
  br i1 %.not130, label %fault_signal_pending.exit.thread217, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = and i64 %1, 32800
  %or.cond.i = icmp eq i64 %i.ar, 0
  br i1 %or.cond.i, label %bb.u, label %access_error.exit.thread, !prof !67

bb.u:                                             ; preds = %bb.t
  br i1 %.not127, label %bb.v, label %arch_vma_access_permitted.exit.i

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %arch_vma_access_permitted.exit.i, label %vma_is_foreign.exit.i.i

vma_is_foreign.exit.i.i:                          ; preds = %bb.v
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 16
  %.not2.i.not.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not2.i.not.i.i, label %bb.w, label %arch_vma_access_permitted.exit.i

bb.w:                                             ; preds = %vma_is_foreign.exit.i.i
  %i.av = getelementptr i8, ptr %i.aq, i64 32
  %.val.i.i = load i64, ptr %i.av, align 32
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #17
          to label %bb.x [label %bb.x, label %read_pkru.exit.i.i.i], !srcloc !20

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.aw = tail call { i32, i32 } asm sideeffect "rdpkru", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !28
  %i.ax = extractvalue { i32, i32 } %i.aw, 0
  br label %read_pkru.exit.i.i.i

read_pkru.exit.i.i.i:                             ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.ax, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %sh.diff.i.i = lshr i64 %.val.i.i, 31
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.ay = and i32 %tr.sh.diff.i.i, 30             ; 2 uses
  %i.az = shl nuw nsw i32 1, %i.ay
  %i.ba = and i32 %.0.i.i.i.i, %i.az
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %access_error.exit.thread

bb.y:                                             ; preds = %read_pkru.exit.i.i.i
  br i1 %.not126.not, label %arch_vma_access_permitted.exit.thread23.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = shl nuw i32 3, %i.ay
  %i.bc = and i32 %.0.i.i.i.i, %i.bb
  %.not.i5.i.i.i = icmp eq i32 %i.bc, 0
  %or.cond30.i = and i1 %.not125, %.not.i5.i.i.i
  br i1 %or.cond30.i, label %access_error.exit, label %access_error.exit.thread

arch_vma_access_permitted.exit.i:                 ; preds = %vma_is_foreign.exit.i.i, %bb.v, %bb.u
  br i1 %.not125, label %bb.aa, label %access_error.exit.thread

arch_vma_access_permitted.exit.thread23.i:        ; preds = %bb.y
  %i.bd = and i64 %1, 65
  %or.cond31.i = icmp eq i64 %i.bd, 0
  br i1 %or.cond31.i, label %access_error.exit, label %access_error.exit.thread, !prof !67

bb.aa:                                            ; preds = %arch_vma_access_permitted.exit.i
  br i1 %.not126.not, label %.thread.i, label %access_error.exit

.thread.i:                                        ; preds = %bb.aa
  %.old.i = and i64 %1, 1
  %.not16.old.i = icmp eq i64 %.old.i, 0
  br i1 %.not16.old.i, label %access_error.exit, label %access_error.exit.thread, !prof !14

access_error.exit:                                ; preds = %bb.z, %arch_vma_access_permitted.exit.thread23.i, %bb.aa, %.thread.i
  %.sink35.i = phi i64 [ 2, %bb.aa ], [ 2, %bb.z ], [ 7, %arch_vma_access_permitted.exit.thread23.i ], [ 7, %.thread.i ]
  %i.be = getelementptr i8, ptr %i.aq, i64 32
  %.val.i = load i64, ptr %i.be, align 32
  %i.bf = and i64 %.val.i, %.sink35.i
  %.not33.i.not = icmp eq i64 %i.bf, 0
  br i1 %.not33.i.not, label %access_error.exit.thread, label %bb.ab, !prof !68

access_error.exit.thread:                         ; preds = %bb.z, %.thread.i, %arch_vma_access_permitted.exit.thread23.i, %arch_vma_access_permitted.exit.i, %bb.t, %read_pkru.exit.i.i.i, %access_error.exit
  tail call fastcc void @bad_area_access_error(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef null, ptr noundef nonnull %i.aq) #19, !srcloc !69
  br label %.loopexit

bb.ab:                                            ; preds = %access_error.exit
  %i.bg = or disjoint i32 %.3, 4096
  %i.bh = tail call i32 @handle_mm_fault(ptr noundef nonnull %i.aq, i64 noundef %2, i32 noundef %i.bg, ptr noundef %0) #16 ; 4 uses
  %i.bi = and i32 %i.bh, 17408
  %.not132 = icmp eq i32 %i.bi, 0
  br i1 %.not132, label %bb.ac, label %vma_end_read.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr i8, ptr %i.aq, i64 16
  %i.bk = load ptr, ptr %i.bj, align 16
  %i.bl = getelementptr i8, ptr %i.aq, i64 128    ; 3 uses
  %i.bm = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bl, i32 -1, ptr elementtype(i32) %i.bl) #17, !srcloc !29 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %__vma_refcount_put_return.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = icmp slt i32 %i.bm, 1
  br i1 %i.bo, label %.thread.i.i, label %bb.ae, !prof !15

.thread.i.i:                                      ; preds = %bb.ad
  tail call void @refcount_warn_saturate(ptr noundef %i.bl, i32 noundef 3) #16
  br label %vma_end_read.exit

__vma_refcount_put_return.exit.i.i:               ; preds = %bb.ac
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !30
  br label %vma_end_read.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bp = add nsw i32 %i.bm, -1073741825
  %i.bq = icmp ult i32 %i.bp, 2
  br i1 %i.bq, label %bb.af, label %vma_end_read.exit

bb.af:                                            ; preds = %bb.ae
  %i.br = getelementptr i8, ptr %i.bk, i64 512
  %i.bs = tail call i32 @rcuwait_wake_up(ptr noundef %i.br) #16 ; 0 uses
  br label %vma_end_read.exit

vma_end_read.exit:                                ; preds = %bb.af, %bb.ae, %__vma_refcount_put_return.exit.i.i, %.thread.i.i, %bb.ab
  %i.bt = and i32 %i.bh, 1024
  %.not133 = icmp eq i32 %i.bt, 0
  br i1 %.not133, label %bb.az, label %task_sigpending.exit.i.i

task_sigpending.exit.i.i:                         ; preds = %vma_end_read.exit
  %i.bu = shl i32 %i.bh, 3
  %i.bv = and i32 %i.bu, 32
  %spec.select156 = or disjoint i32 %i.bv, %.3    ; 2 uses
  %i.bw = load volatile i64, ptr %i.b, align 8
  %i.bx = and i64 %i.bw, 2
  %.not.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %task_sigpending.exit.i.i
  %i.by = getelementptr i8, ptr %i.b, i64 2152
  %.val.i.i162 = load i64, ptr %i.by, align 8
  %i.bz = and i64 %.val.i.i162, 256
  %.not1.i = icmp eq i64 %i.bz, 0
  br i1 %.not1.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge

fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge: ; preds = %fatal_signal_pending.exit.i
  %.pre = load i16, ptr %i.h, align 8
  br label %fault_signal_pending.exit.thread

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %task_sigpending.exit.i.i
  %i.ca = load i16, ptr %i.h, align 8             ; 3 uses
  %i.cb = and i16 %i.ca, 3
  %.not8.i = icmp eq i16 %i.cb, 0
  br i1 %.not8.i, label %fault_signal_pending.exit.thread217, label %test_tsk_thread_flag.exit.i.i

test_tsk_thread_flag.exit.i.i:                    ; preds = %fatal_signal_pending.exit.thread.i
  %i.cc = load volatile i64, ptr %i.b, align 8
  %i.cd = and i64 %i.cc, 4
  %.not.i3.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i3.i, label %fault_signal_pending.exit, label %fault_signal_pending.exit.thread, !prof !14

fault_signal_pending.exit:                        ; preds = %test_tsk_thread_flag.exit.i.i
  %i.ce = load volatile i64, ptr %i.b, align 8
  %i.cf = and i64 %i.ce, 2
  %.not231 = icmp eq i64 %i.cf, 0
  br i1 %.not231, label %fault_signal_pending.exit.thread217, label %fault_signal_pending.exit.thread

fault_signal_pending.exit.thread:                 ; preds = %fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge, %test_tsk_thread_flag.exit.i.i, %fault_signal_pending.exit
  %i.cg = phi i16 [ %.pre, %fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge ], [ %i.ca, %test_tsk_thread_flag.exit.i.i ], [ %i.ca, %fault_signal_pending.exit ]
  %i.ch = and i16 %i.cg, 3
  %.not232 = icmp eq i16 %i.ch, 0
  br i1 %.not232, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %fault_signal_pending.exit.thread
  tail call fastcc void @kernelmode_fixup_or_oops(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19
  br label %.loopexit

fault_signal_pending.exit.thread217:              ; preds = %fatal_signal_pending.exit.thread.i, %fault_signal_pending.exit, %bb.s, %bb.r
  %.5 = phi i32 [ %spec.select156, %fault_signal_pending.exit ], [ %.3, %bb.s ], [ %.3, %bb.r ], [ %spec.select156, %fatal_signal_pending.exit.thread.i ] ; 2 uses
  %i.ci = tail call ptr @lock_mm_and_find_vma(ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %0) #16 ; 12 uses
  %.not135244 = icmp eq ptr %i.ci, null
  br i1 %.not135244, label %._crit_edge, label %.lr.ph, !prof !70

.lr.ph:                                           ; preds = %fault_signal_pending.exit.thread217
  %i.cj = and i64 %1, 32800
  %or.cond.i163 = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %1, 65
  %or.cond31.i189 = icmp eq i64 %i.ck, 0          ; 2 uses
  %i.cl = getelementptr i8, ptr %i.b, i64 2152    ; 2 uses
  %i.cm = or i32 %.5, 32
  br i1 %or.cond.i163, label %bb.ah, label %access_error.exit190.thread, !prof !67

bb.ah:                                            ; preds = %.lr.ph
  br i1 %.not127, label %bb.ai, label %arch_vma_access_permitted.exit.i167.peel

bb.ai:                                            ; preds = %bb.ah
  %i.cn = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i.i176.peel = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i176.peel, label %arch_vma_access_permitted.exit.i167.peel, label %vma_is_foreign.exit.i.i177.peel

vma_is_foreign.exit.i.i177.peel:                  ; preds = %bb.ai
  %i.co = getelementptr i8, ptr %i.ci, i64 16
  %i.cp = load ptr, ptr %i.co, align 16
  %.not2.i.not.i.i178.peel = icmp eq ptr %i.cn, %i.cp
  br i1 %.not2.i.not.i.i178.peel, label %bb.aj, label %arch_vma_access_permitted.exit.i167.peel

bb.aj:                                            ; preds = %vma_is_foreign.exit.i.i177.peel
  %i.cq = getelementptr i8, ptr %i.ci, i64 32
  %.val.i.i179.peel = load i64, ptr %i.cq, align 32
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #17
          to label %bb.ak [label %bb.ak, label %read_pkru.exit.i.i.i180.peel], !srcloc !20

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.cr = tail call { i32, i32 } asm sideeffect "rdpkru", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !28
  %i.cs = extractvalue { i32, i32 } %i.cr, 0
  br label %read_pkru.exit.i.i.i180.peel

read_pkru.exit.i.i.i180.peel:                     ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i181.peel = phi i32 [ %i.cs, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %sh.diff.i.i182.peel = lshr i64 %.val.i.i179.peel, 31
  %tr.sh.diff.i.i183.peel = trunc i64 %sh.diff.i.i182.peel to i32
  %i.ct = and i32 %tr.sh.diff.i.i183.peel, 30     ; 2 uses
  %i.cu = shl nuw nsw i32 1, %i.ct
  %i.cv = and i32 %.0.i.i.i.i181.peel, %i.cu
  %.not.i.i.i.i184.peel = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i184.peel, label %bb.al, label %access_error.exit190.thread

bb.al:                                            ; preds = %read_pkru.exit.i.i.i180.peel
  br i1 %.not126.not, label %arch_vma_access_permitted.exit.thread23.i188.peel, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cw = shl nuw i32 3, %i.ct
  %i.cx = and i32 %.0.i.i.i.i181.peel, %i.cw
  %.not.i5.i.i.i185.peel = icmp eq i32 %i.cx, 0
  %or.cond30.i187.peel = and i1 %.not125, %.not.i5.i.i.i185.peel
  br i1 %or.cond30.i187.peel, label %access_error.exit190.peel, label %access_error.exit190.thread

arch_vma_access_permitted.exit.thread23.i188.peel: ; preds = %bb.al
  br i1 %or.cond31.i189, label %access_error.exit190.peel, label %access_error.exit190.thread, !prof !67

arch_vma_access_permitted.exit.i167.peel:         ; preds = %vma_is_foreign.exit.i.i177.peel, %bb.ai, %bb.ah
  br i1 %.not125, label %bb.an, label %access_error.exit190.thread

bb.an:                                            ; preds = %arch_vma_access_permitted.exit.i167.peel
  %i.cy = and i64 %1, 3
  %brmerge.not.peel = icmp eq i64 %i.cy, 1
  %.mux.peel = select i1 %.not126.not, i64 7, i64 2, !prof !71
  br i1 %brmerge.not.peel, label %access_error.exit190.thread, label %access_error.exit190.peel, !prof !72

access_error.exit190.peel:                        ; preds = %bb.an, %arch_vma_access_permitted.exit.thread23.i188.peel, %bb.am
  %.sink35.i170.peel = phi i64 [ %.mux.peel, %bb.an ], [ 2, %bb.am ], [ 7, %arch_vma_access_permitted.exit.thread23.i188.peel ]
  %i.cz = getelementptr i8, ptr %i.ci, i64 32
  %.val.i171.peel = load i64, ptr %i.cz, align 32
  %i.da = and i64 %.val.i171.peel, %.sink35.i170.peel
  %.not33.i172.not.peel = icmp eq i64 %i.da, 0
  br i1 %.not33.i172.not.peel, label %access_error.exit190.thread, label %bb.ao, !prof !68

bb.ao:                                            ; preds = %access_error.exit190.peel
  %i.db = tail call i32 @handle_mm_fault(ptr noundef nonnull %i.ci, i64 noundef %2, i32 noundef %.5, ptr noundef %0) #16 ; 4 uses
  %i.dc = and i32 %i.db, 1024
  %.not.i191.peel = icmp eq i32 %i.dc, 0
  br i1 %.not.i191.peel, label %fault_signal_pending.exit206.thread221, label %task_sigpending.exit.i.i193.peel

task_sigpending.exit.i.i193.peel:                 ; preds = %bb.ao
  %i.dd = load volatile i64, ptr %i.b, align 8
  %i.de = and i64 %i.dd, 2
  %.not.i.i194.peel = icmp eq i64 %i.de, 0
  br i1 %.not.i.i194.peel, label %fatal_signal_pending.exit.thread.i198.peel, label %fatal_signal_pending.exit.i195.peel

fatal_signal_pending.exit.i195.peel:              ; preds = %task_sigpending.exit.i.i193.peel
  %.val.i.i196.peel = load i64, ptr %i.cl, align 8
  %i.df = and i64 %.val.i.i196.peel, 256
  %.not1.i197.peel = icmp eq i64 %i.df, 0
  br i1 %.not1.i197.peel, label %fatal_signal_pending.exit.thread.i198.peel, label %fault_signal_pending.exit206.thread

fatal_signal_pending.exit.thread.i198.peel:       ; preds = %fatal_signal_pending.exit.i195.peel, %task_sigpending.exit.i.i193.peel
  %i.dg = load i16, ptr %i.h, align 8
  %i.dh = and i16 %i.dg, 3
  %.not8.i199.peel = icmp eq i16 %i.dh, 0
  br i1 %.not8.i199.peel, label %fault_signal_pending.exit206.thread221.thread.peel, label %test_tsk_thread_flag.exit.i.i201.peel

test_tsk_thread_flag.exit.i.i201.peel:            ; preds = %fatal_signal_pending.exit.thread.i198.peel
  %i.di = load volatile i64, ptr %i.b, align 8
  %i.dj = and i64 %i.di, 4
  %.not.i3.i202.peel = icmp eq i64 %i.dj, 0
  br i1 %.not.i3.i202.peel, label %fault_signal_pending.exit206.peel, label %fault_signal_pending.exit206.thread, !prof !14

fault_signal_pending.exit206.peel:                ; preds = %test_tsk_thread_flag.exit.i.i201.peel
  %i.dk = load volatile i64, ptr %i.b, align 8
  %i.dl = and i64 %i.dk, 2
  %.not233.peel = icmp eq i64 %i.dl, 0
  br i1 %.not233.peel, label %.thread.peel, label %fault_signal_pending.exit206.thread

.thread.peel:                                     ; preds = %fault_signal_pending.exit206.peel
  %i.dm = and i32 %i.db, 16384
  %.not137222.peel = icmp eq i32 %i.dm, 0
  br i1 %.not137222.peel, label %.thread223.peel, label %.loopexit

fault_signal_pending.exit206.thread221.thread.peel: ; preds = %fatal_signal_pending.exit.thread.i198.peel
  %i.dn = and i32 %i.db, 16384
  %.not137225.peel = icmp eq i32 %i.dn, 0
  br i1 %.not137225.peel, label %.thread223.peel, label %.loopexit

.thread223.peel:                                  ; preds = %fault_signal_pending.exit206.thread221.thread.peel, %.thread.peel
  %i.do = tail call ptr @lock_mm_and_find_vma(ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %0) #16 ; 2 uses
  %.not135.peel = icmp eq ptr %i.do, null
  br i1 %.not135.peel, label %._crit_edge, label %.peel.next, !prof !73

.peel.next:                                       ; preds = %.thread223.peel
  %i.dp = and i64 %1, 3
  %brmerge.not = icmp ne i64 %i.dp, 1
  %.mux = select i1 %.not126.not, i64 7, i64 2, !prof !71
  %brmerge.not273 = and i1 %brmerge.not, %.not125
  br label %bb.ap

._crit_edge:                                      ; preds = %.thread223, %.thread223.peel, %fault_signal_pending.exit.thread217
  tail call fastcc void @bad_area_nosemaphore(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !srcloc !74
  br label %.loopexit
end_hunk_0
begin_hunk_1_@dump_pagetable:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !16
  %i.bv = call i64 @copy_from_kernel_nofault(ptr noundef nonnull %i.a, ptr noundef %i.bu, i64 noundef 8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bw = and i64 %i.bv, 4294967295
  %.not32 = icmp eq i64 %i.bw, 0
  br i1 %.not32, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = load i64, ptr %i.bu, align 8
  %i.by = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i64 noundef %i.bx) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.e, %p4d_offset.exit, %bb.a, %bb.h, %bb.f, %bb.d, %pgd_present.exit, %bb.j
  %.str.43.sink = phi ptr [ @.str.42, %bb.h ], [ @.str.42, %bb.j ], [ @.str.42, %pgd_present.exit ], [ @.str.42, %bb.d ], [ @.str.42, %bb.f ], [ @.str.43, %bb.a ], [ @.str.43, %p4d_offset.exit ], [ @.str.43, %bb.e ], [ @.str.43, %bb.g ], [ @.str.43, %bb.i ]
  %i.bz = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.43.sink) #21 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @convert_ip_to_linear(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @unhandled_signal(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @print_vma_addr(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @show_opcodes(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 2) i32 @is_errata93(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 2), align 2
  %i.b = icmp ne i8 %i.a, 2
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 1), align 1
  %i.d = icmp ne i8 %i.c, 15
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 136
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 3
  %.not28 = icmp eq i16 %i.g, 0
  br i1 %.not28, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not24 = icmp eq i64 %1, %i.i
  %.not25 = icmp ult i64 %1, 4294967296
  %or.cond27 = and i1 %.not25, %.not24
  br i1 %or.cond27, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = or disjoint i64 %1, -4294967296          ; 3 uses
  %i.k = icmp uge i64 %i.j, ptrtoint (ptr @_stext to i64)
  %i.l = icmp ule i64 %i.j, ptrtoint (ptr @_etext to i64)
  %or.cond4 = and i1 %i.k, %i.l
  %i.m = add nsw i64 %1, -3221225472
  %or.cond6 = icmp ult i64 %i.m, 1056964609
  %or.cond26 = select i1 %or.cond4, i1 true, i1 %or.cond6
  br i1 %or.cond26, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.b = load i1, ptr @is_errata93.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @is_errata93.__already_done, align 1
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @errata93_warning) #21 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  store i64 %i.j, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %.critedge
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %.critedge ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @pgtable_bad(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #15 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @oops_begin() #16
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 2008
  %i.e = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %i.d, i64 noundef %2) #21 ; 0 uses
  tail call fastcc void @dump_pagetable(i64 noundef %2) #19, !srcloc !111
  %i.f = tail call i32 @__die(ptr noundef nonnull @.str.50, ptr noundef %0, i64 noundef %1) #16
  %.not = icmp eq i32 %i.f, 0
  %spec.select = select i1 %.not, i32 9, i32 0
  tail call void @oops_end(i64 noundef %i.a, ptr noundef %0, i32 noundef %spec.select) #16
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @emulate_vsyscall_pf(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @lock_vma_under_rcu(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @bad_area_access_error(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #17
          to label %bb.b [label %bb.b, label %bb.o], !srcloc !20

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = and i64 %1, 32
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bad_area_access_from_pkeys.exit

bb.c:                                             ; preds = %bb.b
  %i.b = and i64 %1, 2
  %.not8.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %1, 16
  %.not9.i = icmp eq i64 %i.c, 0
  br i1 %.not9.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 1400
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.o, label %vma_is_foreign.exit.i.i

vma_is_foreign.exit.i.i:                          ; preds = %bb.d
  %i.h = getelementptr i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 16
  %.not2.i.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not2.i.not.i.i, label %bb.e, label %bb.o

bb.e:                                             ; preds = %vma_is_foreign.exit.i.i
  %i.j = getelementptr i8, ptr %4, i64 32
  %.val.i.i = load i64, ptr %i.j, align 32
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #17
          to label %bb.f [label %bb.f, label %read_pkru.exit.i.i.i], !srcloc !20

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.k = tail call { i32, i32 } asm sideeffect "rdpkru", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !28
  %i.l = extractvalue { i32, i32 } %i.k, 0
  br label %read_pkru.exit.i.i.i

read_pkru.exit.i.i.i:                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %sh.diff.i.i = lshr i64 %.val.i.i, 31
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.m = and i32 %tr.sh.diff.i.i, 30              ; 2 uses
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = and i32 %.0.i.i.i.i, %i.n
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bad_area_access_from_pkeys.exit

bb.g:                                             ; preds = %read_pkru.exit.i.i.i
  br i1 %.not8.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl nuw i32 3, %i.m
  %i.q = and i32 %.0.i.i.i.i, %i.p
  %.not.i5.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i5.i.i.i, label %bb.o, label %bad_area_access_from_pkeys.exit

bad_area_access_from_pkeys.exit:                  ; preds = %bb.h, %read_pkru.exit.i.i.i, %bb.b
  %i.r = getelementptr i8, ptr %4, i64 32
  %.val = load i64, ptr %i.r, align 32
  %i.s = lshr i64 %.val, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = and i32 %i.t, 15
  %.not.i13 = icmp eq ptr %3, null
  br i1 %.not.i13, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bad_area_access_from_pkeys.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #17
          to label %mmap_read_unlock.exit.i [label %bb.j], !srcloc !27

bb.j:                                             ; preds = %bb.i
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %3, i1 noundef zeroext false) #16
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %bb.j, %bb.i
  %i.v = getelementptr i8, ptr %3, i64 464
  tail call void @up_read(ptr noundef %i.v) #16
  br label %__bad_area.exit

bb.k:                                             ; preds = %bad_area_access_from_pkeys.exit
  %i.w = getelementptr i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 16
  %i.y = getelementptr i8, ptr %4, i64 128        ; 3 uses
  %i.z = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y, i32 -1, ptr elementtype(i32) %i.y) #17, !srcloc !29 ; 3 uses
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %__vma_refcount_put_return.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp slt i32 %i.z, 1
  br i1 %i.ab, label %.thread.i.i.i, label %bb.m, !prof !15

.thread.i.i.i:                                    ; preds = %bb.l
  tail call void @refcount_warn_saturate(ptr noundef %i.y, i32 noundef 3) #16
  br label %__bad_area.exit

__vma_refcount_put_return.exit.i.i.i:             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !30
  br label %__bad_area.exit

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.z, -1073741825
  %i.ad = icmp ult i32 %i.ac, 2
  br i1 %i.ad, label %bb.n, label %__bad_area.exit

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %i.x, i64 512
  %i.af = tail call i32 @rcuwait_wake_up(ptr noundef %i.ae) #16 ; 0 uses
  br label %__bad_area.exit

__bad_area.exit:                                  ; preds = %mmap_read_unlock.exit.i, %.thread.i.i.i, %__vma_refcount_put_return.exit.i.i.i, %bb.m, %bb.n
  tail call fastcc void @__bad_area_nosemaphore(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 16) %i.u, i32 noundef 4) #19, !srcloc !112
  br label %bb.v

bb.o:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.c, %vma_is_foreign.exit.i.i, %bb.d
  %.not.i14 = icmp eq ptr %3, null
  br i1 %.not.i14, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #17
          to label %mmap_read_unlock.exit.i15 [label %bb.q], !srcloc !27

bb.q:                                             ; preds = %bb.p
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %3, i1 noundef zeroext false) #16
  br label %mmap_read_unlock.exit.i15

mmap_read_unlock.exit.i15:                        ; preds = %bb.q, %bb.p
  %i.ag = getelementptr i8, ptr %3, i64 464
  tail call void @up_read(ptr noundef %i.ag) #16
  br label %__bad_area.exit18

bb.r:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16
  %i.aj = getelementptr i8, ptr %4, i64 128       ; 3 uses
  %i.ak = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aj, i32 -1, ptr elementtype(i32) %i.aj) #17, !srcloc !29 ; 3 uses
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %__vma_refcount_put_return.exit.i.i.i17, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = icmp slt i32 %i.ak, 1
  br i1 %i.am, label %.thread.i.i.i16, label %bb.t, !prof !15

.thread.i.i.i16:                                  ; preds = %bb.s
  tail call void @refcount_warn_saturate(ptr noundef %i.aj, i32 noundef 3) #16
  br label %__bad_area.exit18

__vma_refcount_put_return.exit.i.i.i17:           ; preds = %bb.r
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !30
  br label %__bad_area.exit18

bb.t:                                             ; preds = %bb.s
  %i.an = add nsw i32 %i.ak, -1073741825
  %i.ao = icmp ult i32 %i.an, 2
  br i1 %i.ao, label %bb.u, label %__bad_area.exit18

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr i8, ptr %i.ai, i64 512
  %i.aq = tail call i32 @rcuwait_wake_up(ptr noundef %i.ap) #16 ; 0 uses
  br label %__bad_area.exit18

__bad_area.exit18:                                ; preds = %mmap_read_unlock.exit.i15, %.thread.i.i.i16, %__vma_refcount_put_return.exit.i.i.i17, %bb.t, %bb.u
  tail call fastcc void @__bad_area_nosemaphore(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 2) #19, !srcloc !112
  br label %bb.v

bb.v:                                             ; preds = %__bad_area.exit18, %__bad_area.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @lock_mm_and_find_vma(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pagefault_out_of_memory() local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @do_sigbus(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 3
  %.not14 = icmp eq i16 %i.c, 0
  br i1 %.not14, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @kernelmode_fixup_or_oops(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @is_prefetch(ptr noundef %0, i64 noundef %1) #19
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %sanitize_error_code.exit, label %bb.e

sanitize_error_code.exit:                         ; preds = %bb.c
  %i.e = tail call i64 asm sideeffect "# ALT: oldinstr\0A771:\0A\09movq $2,$0\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (16*32+16)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09movq $3,$0\0A775:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #17, !srcloc !21
  %.not.i = icmp uge i64 %2, %i.e
  %i.f = zext i1 %.not.i to i64
  %spec.select = or i64 %1, %i.f                  ; 2 uses
  %i.g = tail call zeroext i1 @fixup_vdso_exception(ptr noundef %0, i32 noundef 14, i64 noundef %spec.select, i64 noundef %2) #16
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sanitize_error_code.exit
  %i.h = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 3224
  store i64 14, ptr %i.j, align 8
  %i.k = or i64 %spec.select, 4
  %i.l = getelementptr i8, ptr %i.i, i64 3232
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.i, i64 3216
  store i64 %2, ptr %i.m, align 8
  %i.n = inttoptr i64 %2 to ptr
  %i.o = tail call i32 @force_sig_fault(i32 noundef 7, i32 noundef 2, ptr noundef %i.n) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %sanitize_error_code.exit, %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__perf_sw_event(i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__kvm_handle_async_pf(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_page_fault_user(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_page_fault_user, i64 8), i1 false) #17
          to label %arch_static_branch.exit [label %cpumask_test_cpu.exit.i], !srcloc !27

cpumask_test_cpu.exit.i:                          ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #17, !srcloc !113
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #17, !srcloc !32 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #17, !srcloc !33
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !34
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_page_fault_user, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_page_fault_user(ptr noundef %i.i, i64 noundef %0, ptr noundef %1, i64 noundef %2) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !35
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #17, !srcloc !36
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %cpumask_test_cpu.exit.i, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_page_fault_kernel(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_page_fault_kernel, i64 8), i1 false) #17
          to label %arch_static_branch.exit [label %cpumask_test_cpu.exit.i], !srcloc !27

cpumask_test_cpu.exit.i:                          ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #17, !srcloc !114
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #17, !srcloc !32 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #17, !srcloc !33
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !34
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_page_fault_kernel, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_page_fault_kernel(ptr noundef %i.i, i64 noundef %0, ptr noundef %1, i64 noundef %2) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !35
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #17, !srcloc !36
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %cpumask_test_cpu.exit.i, %bb.a
  ret void
}

attributes #0 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #15 = { cold fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #16 = { noredzone nounwind "no-builtin-wcslen" }
attributes #17 = { nounwind }
attributes #18 = { nounwind memory(read) }
attributes #19 = { noredzone "no-builtin-wcslen" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"rsp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
end_hunk_1
