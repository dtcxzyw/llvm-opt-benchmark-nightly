inline.NumInlined: 958
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@rcu_preempt_deferred_qs_irqrestore:bb.a
  br i1 %i.t, label %bb.j, label %trace_rcu_grace_period.exit.i

bb.j:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.u = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.u, ptr elementtype(i64) %i.u) #30, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !17
  %i.v = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_grace_period, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 @__SCT__tp_func_rcu_grace_period(ptr noundef %i.x, ptr noundef %i.m, i64 noundef %i.n, ptr noundef %i.o) #31 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !18
  %i.z = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.z, ptr elementtype(i64) %i.z) #30, !srcloc !19
  br label %trace_rcu_grace_period.exit.i

trace_rcu_grace_period.exit.i:                    ; preds = %bb.l, %arch_test_bit.exit.i.i.i, %bb.i
  tail call void asm "movb $1, %gs:$0", "=*m,qi,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 16), i8 0) #30, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !21
  %i.aa = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #32, !srcloc !22
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 1153
  store volatile i8 0, ptr %i.ac, align 1
  br label %rcu_qs.exit

rcu_qs.exit:                                      ; preds = %bb.d, %trace_rcu_grace_period.exit.i, %bb.h, %bb.g
  %i.ad = getelementptr i8, ptr %i.c, i64 17
  %i.ae = load i8, ptr %i.ad, align 1
  %.not73 = icmp eq i8 %i.ae, 0
  br i1 %.not73, label %bb.n, label %bb.m

bb.m:                                             ; preds = %rcu_qs.exit
  tail call fastcc void @rcu_report_exp_rdp(ptr noundef %i.c) #33, !srcloc !349
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %rcu_qs.exit
  %i.af = and i32 %.sroa.0.0.copyload, 255
  %.not74 = icmp eq i32 %i.af, 0
  br i1 %.not74, label %bb.aw, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr i8, ptr %0, i64 1176      ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 21 uses
  tail call void @_raw_spin_lock(ptr noundef %i.ah) #31
  %i.ai = load ptr, ptr %i.ag, align 8
  %.not75 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not75, label %bb.q, label %bb.p, !prof !46

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "1498: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1498b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1498) #30, !srcloc !350
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.46, i32 534, i32 2307, i64 16) #30, !srcloc !351
  tail call void asm sideeffect "1499: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1499b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1499) #30, !srcloc !352
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aj = getelementptr i8, ptr %i.ah, i64 129    ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = load i32, ptr @rcu_num_lvls, align 4
  %i.an = add i32 %i.am, -1
  %.not76 = icmp eq i32 %i.an, %i.al
  br i1 %.not76, label %bb.s, label %bb.r, !prof !46

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "1500: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1500b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1500) #30, !srcloc !353
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.46, i32 535, i32 2307, i64 16) #30, !srcloc !354
  tail call void asm sideeffect "1501: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1501b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1501) #30, !srcloc !355
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = getelementptr i8, ptr %i.ah, i64 160    ; 5 uses
  %i.ap = load volatile ptr, ptr %i.ao, align 32
  %.not90 = icmp ne ptr %i.ap, null               ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ah, i64 24     ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.ah, i64 8      ; 4 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp ne i64 %i.ar, %i.at                ; 2 uses
  %brmerge = select i1 %i.au, i1 true, i1 %.not90
  br i1 %brmerge, label %bb.t, label %.split

.split:                                           ; preds = %bb.s
  %i.av = getelementptr i8, ptr %i.ah, i64 32
  %i.aw = load i64, ptr %i.av, align 32
  %.not91 = icmp eq i64 %i.aw, 0
  br i1 %.not91, label %bb.v, label %bb.u, !prof !46

bb.t:                                             ; preds = %bb.s
  br i1 %i.au, label %bb.v, label %bb.u, !prof !46

bb.u:                                             ; preds = %.split, %bb.t
  tail call void asm sideeffect "1502: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1502b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1502) #30, !srcloc !356
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.46, i32 538, i32 2307, i64 16) #30, !srcloc !357
  tail call void asm sideeffect "1503: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1503b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1503) #30, !srcloc !358
  br label %bb.v

bb.v:                                             ; preds = %.split, %bb.u, %bb.t
  %i.ax = getelementptr i8, ptr %i.ah, i64 168    ; 4 uses
  %i.ay = load volatile ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.w, label %sync_rcu_exp_done.exit

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr i8, ptr %i.ah, i64 64
  %i.bb = load volatile i64, ptr %i.ba, align 64
  %i.bc = icmp ne i64 %i.bb, 0
  br label %sync_rcu_exp_done.exit

sync_rcu_exp_done.exit:                           ; preds = %bb.v, %bb.w
  %.not = phi i1 [ true, %bb.v ], [ %i.bc, %bb.w ]
  %i.bd = getelementptr i8, ptr %0, i64 1160      ; 6 uses
  %.val = load ptr, ptr %i.bd, align 8            ; 4 uses
  %i.be = getelementptr i8, ptr %i.ah, i64 144
  %i.bf = icmp eq ptr %.val, %i.be
  %spec.store.select.i = select i1 %i.bf, ptr null, ptr %.val ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 1168      ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 16           ; 2 uses
  %i.bi = getelementptr i8, ptr %.val, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  store volatile ptr %.val, ptr %i.bh, align 8
  store volatile ptr %i.bd, ptr %i.bd, align 8
  store volatile ptr %i.bd, ptr %i.bg, align 16
  store ptr null, ptr %i.ag, align 8
  %i.bj = load ptr, ptr @rcu_preempt_deferred_qs_irqrestore.___tp_str, align 8
  %i.bk = load i64, ptr %i.as, align 8
  %i.bl = getelementptr i8, ptr %0, i64 1528
  %i.bm = load i32, ptr %i.bl, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_unlock_preempted_task, i64 8), i1 false) #30
          to label %trace_rcu_unlock_preempted_task.exit [label %arch_test_bit.exit.i.i], !srcloc !13

arch_test_bit.exit.i.i:                           ; preds = %sync_rcu_exp_done.exit
  %i.bn = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #30, !srcloc !359
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bo) #30, !srcloc !15 ; 2 uses
  %i.bq = icmp ult i8 %i.bp, 2
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = trunc nuw i8 %i.bp to i1
  br i1 %i.br, label %bb.x, label %trace_rcu_unlock_preempted_task.exit

bb.x:                                             ; preds = %arch_test_bit.exit.i.i
  %i.bs = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bs, ptr elementtype(i64) %i.bs) #30, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !17
  %i.bt = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_unlock_preempted_task, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call i32 @__SCT__tp_func_rcu_unlock_preempted_task(ptr noundef %i.bv, ptr noundef %i.bj, i64 noundef %i.bk, i32 noundef %i.bm) #31 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !18
  %i.bx = getelementptr i8, ptr %i.bs, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bx, ptr elementtype(i64) %i.bx) #30, !srcloc !19
  br label %trace_rcu_unlock_preempted_task.exit

trace_rcu_unlock_preempted_task.exit:             ; preds = %sync_rcu_exp_done.exit, %arch_test_bit.exit.i.i, %bb.z
  %i.by = load ptr, ptr %i.ao, align 32
  %i.bz = icmp eq ptr %i.bd, %i.by
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %trace_rcu_unlock_preempted_task.exit
  store volatile ptr %spec.store.select.i, ptr %i.ao, align 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %trace_rcu_unlock_preempted_task.exit
  %i.ca = load ptr, ptr %i.ax, align 8
  %i.cb = icmp eq ptr %i.bd, %i.ca
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store volatile ptr %spec.store.select.i, ptr %i.ax, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cc = load volatile ptr, ptr %i.ax, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ae, label %sync_rcu_exp_done.exit85

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr i8, ptr %i.ah, i64 64
  %i.cf = load volatile i64, ptr %i.ce, align 64
  %i.cg = icmp eq i64 %i.cf, 0
  br label %sync_rcu_exp_done.exit85

sync_rcu_exp_done.exit85:                         ; preds = %bb.ad, %bb.ae
  %i.ch = phi i1 [ false, %bb.ad ], [ %i.cg, %bb.ae ]
  br i1 %.not90, label %bb.af, label %bb.au

bb.af:                                            ; preds = %sync_rcu_exp_done.exit85
  %i.ci = load volatile ptr, ptr %i.ao, align 32
  %2 = icmp ne ptr %i.ci, null                    ; 2 uses
  %3 = zext i1 %2 to i32
  br i1 %2, label %bb.au, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = load ptr, ptr @rcu_preempt_deferred_qs_irqrestore.___tp_str.273, align 8
  %i.ck = load i64, ptr %i.as, align 8
  %i.cl = getelementptr i8, ptr %i.ah, i64 32     ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 32
  %i.cn = load i8, ptr %i.aj, align 1
  %i.co = getelementptr i8, ptr %i.ah, i64 120
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %i.ah, i64 124
  %i.cr = load i32, ptr %i.cq, align 4
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_quiescent_state_report, i64 8), i1 false) #30
          to label %trace_rcu_quiescent_state_report.exit [label %arch_test_bit.exit.i.i86], !srcloc !13

arch_test_bit.exit.i.i86:                         ; preds = %bb.ag
  %i.cs = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #30, !srcloc !198
  %i.ct = zext i32 %i.cs to i64
  %i.cu = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ct) #30, !srcloc !15 ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 2
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = trunc nuw i8 %i.cu to i1
  br i1 %i.cw, label %bb.ah, label %trace_rcu_quiescent_state_report.exit

bb.ah:                                            ; preds = %arch_test_bit.exit.i.i86
  %i.cx = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cx, ptr elementtype(i64) %i.cx) #30, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !17
  %i.cy = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_quiescent_state_report, i64 56), align 8 ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i87, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call i32 @__SCT__tp_func_rcu_quiescent_state_report(ptr noundef %i.da, ptr noundef %i.cj, i64 noundef %i.ck, i64 noundef 0, i64 noundef %i.cm, i8 noundef zeroext %i.cn, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef range(i32 0, 2) %3) #31 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !18
  %i.dc = getelementptr i8, ptr %i.cx, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dc, ptr elementtype(i64) %i.dc) #30, !srcloc !19
  br label %trace_rcu_quiescent_state_report.exit

trace_rcu_quiescent_state_report.exit:            ; preds = %bb.ag, %arch_test_bit.exit.i.i86, %bb.aj
  %i.dd = load volatile ptr, ptr %i.ao, align 32
  %.not25.i = icmp eq ptr %i.dd, null
  br i1 %.not25.i, label %.critedge.i, label %bb.ak, !prof !46

bb.ak:                                            ; preds = %trace_rcu_quiescent_state_report.exit
  tail call void asm sideeffect "1052: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1052b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1052) #30, !srcloc !360
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2441, i32 2307, i64 16) #30, !srcloc !361
  tail call void asm sideeffect "1053: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1053b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1053) #30, !srcloc !362
  br label %bb.al

.critedge.i:                                      ; preds = %trace_rcu_quiescent_state_report.exit
  %i.de = load i64, ptr %i.cl, align 32
  %.not24.i = icmp eq i64 %i.de, 0
  br i1 %.not24.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.i, %bb.ak
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ah, i64 noundef %1) #31
  br label %rcu_report_unblock_qs_rnp.exit

bb.am:                                            ; preds = %.critedge.i
  %i.df = load i64, ptr %i.as, align 8            ; 2 uses
  store i64 %i.df, ptr %i.aq, align 8
  %i.dg = getelementptr i8, ptr %i.ah, i64 136
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.dj = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64
  %i.dk = and i64 %i.dj, 3
  %.not.i.i89 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i89, label %bb.ao, label %bb.ap, !prof !32

bb.ao:                                            ; preds = %bb.an
  tail call void asm sideeffect "1041: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1041b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1041) #30, !srcloc !199
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2347, i32 2307, i64 16) #30, !srcloc !200
  tail call void asm sideeffect "1042: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1042b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1042) #30, !srcloc !201
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dl = load i16, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3312), align 16
  %i.dm = or i16 %i.dl, 2
  store volatile i16 %i.dm, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3312), align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i64 noundef %1) #31
  %i.dn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3280), align 16 ; 2 uses
  %i.do = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #32, !srcloc !22
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dr = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #29, !srcloc !63
  %i.ds = and i32 %i.dr, 983296
  %or.cond6.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %or.cond6.i.i.i, label %rcu_report_unblock_qs_rnp.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dt = load volatile i16, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3312), align 16
  %i.du = icmp ne i16 %i.dt, 0
  %i.dv = icmp ne ptr %i.dn, null
  %or.cond.i.i.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond.i.i.i, label %bb.as, label %rcu_report_unblock_qs_rnp.exit

bb.as:                                            ; preds = %bb.ar
  %i.dw = load volatile i64, ptr @jiffies, align 64
  store volatile i64 %i.dw, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3320), align 8
  %i.dx = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64
  store volatile i64 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3328), align 64
  tail call void @swake_up_one(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3288)) #31
  br label %rcu_report_unblock_qs_rnp.exit

bb.at:                                            ; preds = %bb.am
  %i.dy = getelementptr i8, ptr %i.ah, i64 112
  %i.dz = load i64, ptr %i.dy, align 16
  tail call void @_raw_spin_unlock(ptr noundef %i.ah) #31
  tail call void @_raw_spin_lock(ptr noundef nonnull %i.dh) #31
  tail call fastcc void @rcu_report_qs_rnp(i64 noundef %i.dz, ptr noundef nonnull %i.dh, i64 noundef %i.df, i64 noundef %1) #33, !srcloc !363
  br label %rcu_report_unblock_qs_rnp.exit

bb.au:                                            ; preds = %sync_rcu_exp_done.exit85, %bb.af
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ah, i64 noundef %1) #31
  br label %rcu_report_unblock_qs_rnp.exit

rcu_report_unblock_qs_rnp.exit:                   ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.al, %bb.au
  %or.cond = select i1 %.not, i1 %i.ch, i1 false
  br i1 %or.cond, label %bb.av, label %arch_local_irq_restore.exit81

bb.av:                                            ; preds = %rcu_report_unblock_qs_rnp.exit
  %i.ea = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ah) #31
  tail call fastcc void @__rcu_report_exp_rnp(ptr noundef %i.ah, i1 noundef zeroext true, i64 noundef %i.ea) #33, !srcloc !364
  br label %arch_local_irq_restore.exit81

bb.aw:                                            ; preds = %bb.n
  %i.eb = and i64 %1, 512
  %.not.i83.not = icmp eq i64 %i.eb, 0
  br i1 %.not.i83.not, label %arch_local_irq_restore.exit81, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !82
  br label %arch_local_irq_restore.exit81

arch_local_irq_restore.exit81:                    ; preds = %bb.ax, %bb.aw, %bb.f, %bb.e, %bb.av, %rcu_report_unblock_qs_rnp.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @exit_rcu() local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #32, !srcloc !22
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1160     ; 2 uses
  %i.d = load volatile ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, %i.c
  %i.e = getelementptr i8, ptr %i.b, i64 1148     ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  store volatile i32 1, ptr %i.e, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !365
  %i.f = getelementptr i8, ptr %i.b, i64 1152
  store volatile i8 1, ptr %i.f, align 64
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = load volatile i32, ptr %i.e, align 4
  %.not1 = icmp eq i32 %i.g, 0
  br i1 %.not1, label %bb.f, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  store volatile i32 1, ptr %i.e, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @__rcu_read_unlock() #33
  tail call void @rcu_preempt_deferred_qs(ptr noundef %i.b) #33
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @param_set_first_fqs_jiffies(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 0, ptr %i.a, align 8, !annotation !122
  %i.b = call i32 @kstrtoull(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a) #31 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8
  %i.d = call i64 @llvm.umin.i64(i64 %i.c, i64 1000)
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  store volatile i64 %i.d, ptr %i.f, align 8
  %i.g = load i64, ptr @jiffies_till_sched_qs, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %adjust_jiffies_till_sched_qs.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load volatile i64, ptr @jiffies_till_first_fqs, align 8
  %i.i = load volatile i64, ptr @jiffies_till_next_fqs, align 8
  %i.j = shl i64 %i.i, 1
  %i.k = add i64 %i.j, %i.h
  %i.l = load i32, ptr @nr_cpu_ids, align 4
  %i.m = lshr i32 %i.l, 8
  %i.n = add nuw nsw i32 %i.m, 100
  %i.o = zext nneg i32 %i.n to i64
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.k, i64 %i.o) ; 2 uses
  %i.p = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, i64 noundef %spec.select.i) #34 ; 0 uses
  br label %adjust_jiffies_till_sched_qs.exit

adjust_jiffies_till_sched_qs.exit:                ; preds = %bb.b, %bb.c
  %spec.select.sink.i = phi i64 [ %spec.select.i, %bb.c ], [ %i.g, %bb.b ]
  store volatile i64 %spec.select.sink.i, ptr @jiffies_to_sched_qs, align 8
  br label %bb.d

bb.d:                                             ; preds = %adjust_jiffies_till_sched_qs.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %i.b
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
end_hunk_0
