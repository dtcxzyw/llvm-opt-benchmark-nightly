Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tree?download=true
inline.NumInlined: 958
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@rcu_sched_clock_irq:bb.a
bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %i.af, i64 1152
  %i.an = load volatile i32, ptr %i.am, align 64
  %.not7.i.i = icmp eq i32 %i.an, 0
  br i1 %.not7.i.i, label %rcu_preempt_need_deferred_qs.exit.thread.i, label %rcu_preempt_need_deferred_qs.exit.i

rcu_preempt_need_deferred_qs.exit.i:              ; preds = %bb.o, %bb.n
  %i.ao = load volatile i32, ptr %i.ag, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %rcu_preempt_need_deferred_qs.exit.thread.i

bb.p:                                             ; preds = %rcu_preempt_need_deferred_qs.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_need_resched_tp, i64 8), i1 false) #30
          to label %set_need_resched_current.exit.i [label %test_tsk_thread_flag.exit.i.i.i], !srcloc !15

test_tsk_thread_flag.exit.i.i.i:                  ; preds = %bb.p
  %i.aq = load volatile i64, ptr %i.af, align 8
  %i.ar = and i64 %i.aq, 16
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.q, label %set_need_resched_current.exit.i

bb.q:                                             ; preds = %test_tsk_thread_flag.exit.i.i.i
  tail call void @__trace_set_need_resched(ptr noundef %i.af, i32 noundef 4) #31
  br label %set_need_resched_current.exit.i

set_need_resched_current.exit.i:                  ; preds = %bb.q, %test_tsk_thread_flag.exit.i.i.i, %bb.p
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.af, i32 16, ptr elementtype(i8) %i.af) #30, !srcloc !43
  tail call void asm "andl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 2147483647, ptr nonnull elementtype(i32) @__preempt_count) #30, !srcloc !44
  br label %rcu_preempt_need_deferred_qs.exit.thread.i

bb.r:                                             ; preds = %bb.m
  %i.as = tail call i8 asm "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 17)) #29, !srcloc !25
  %.not.i25.i = icmp eq i8 %i.as, 0
  br i1 %.not.i25.i, label %bb.s, label %rcu_preempt_need_deferred_qs.exit27.i

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr i8, ptr %i.af, i64 1152
  %i.au = load volatile i32, ptr %i.at, align 64
  %.not7.i26.i = icmp eq i32 %i.au, 0
  br i1 %.not7.i26.i, label %rcu_preempt_need_deferred_qs.exit27.thread.i, label %rcu_preempt_need_deferred_qs.exit27.i

rcu_preempt_need_deferred_qs.exit27.i:            ; preds = %bb.s, %bb.r
  %i.av = load volatile i32, ptr %i.ag, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.t, label %rcu_preempt_need_deferred_qs.exit27.thread.i

bb.t:                                             ; preds = %rcu_preempt_need_deferred_qs.exit27.i
  %i.ax = tail call i8 asm "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 17)) #29, !srcloc !25
  %.not.i.i28.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i28.i, label %bb.u, label %rcu_preempt_need_deferred_qs.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr i8, ptr %i.af, i64 1152
  %i.az = load volatile i32, ptr %i.ay, align 64
  %.not7.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not7.i.i.i, label %rcu_flavor_sched_clock_irq.exit, label %rcu_preempt_need_deferred_qs.exit.i.i

rcu_preempt_need_deferred_qs.exit.i.i:            ; preds = %bb.u, %bb.t
  %i.ba = load volatile i32, ptr %i.ag, align 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %rcu_flavor_sched_clock_irq.exit

bb.v:                                             ; preds = %rcu_preempt_need_deferred_qs.exit.i.i
  %i.bc = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !26
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !27
  tail call fastcc void @rcu_preempt_deferred_qs_irqrestore(ptr noundef %i.af, i64 noundef %i.bc) #33, !srcloc !28
  br label %rcu_flavor_sched_clock_irq.exit

rcu_preempt_need_deferred_qs.exit27.thread.i:     ; preds = %rcu_preempt_need_deferred_qs.exit27.i, %bb.s
  %i.bd = load volatile i32, ptr %i.ag, align 4
  %.not21.i = icmp eq i32 %i.bd, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.w, !prof !38

bb.w:                                             ; preds = %rcu_preempt_need_deferred_qs.exit27.thread.i
  tail call void asm sideeffect "1521: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1521b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1521) #30, !srcloc !133
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.46, i32 823, i32 2307, i64 16) #30, !srcloc !134
  tail call void asm sideeffect "1522: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1522b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1522) #30, !srcloc !135
  br label %rcu_preempt_need_deferred_qs.exit.thread.i

.critedge.i:                                      ; preds = %rcu_preempt_need_deferred_qs.exit27.thread.i
  %i.be = tail call i8 asm "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 16)) #29, !srcloc !13
  %.not.i29.i = icmp eq i8 %i.be, 0
  br i1 %.not.i29.i, label %rcu_flavor_sched_clock_irq.exit, label %bb.x

bb.x:                                             ; preds = %.critedge.i
  %i.bf = load ptr, ptr @rcu_qs.___tp_str, align 8
  %i.bg = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @rcu_data) #29, !srcloc !14
  %i.bh = load ptr, ptr @rcu_qs.___tp_str.271, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_grace_period, i64 8), i1 false) #30
          to label %trace_rcu_grace_period.exit.i.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !15

arch_test_bit.exit.i.i.i.i:                       ; preds = %bb.x
  %i.bi = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #30, !srcloc !16
  %i.bj = zext i32 %i.bi to i64
  %i.bk = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bj) #30, !srcloc !17 ; 2 uses
  %i.bl = icmp ult i8 %i.bk, 2
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = trunc nuw i8 %i.bk to i1
  br i1 %i.bm, label %bb.y, label %trace_rcu_grace_period.exit.i.i

bb.y:                                             ; preds = %arch_test_bit.exit.i.i.i.i
  %i.bn = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, ptr elementtype(i64) %i.bn) #30, !srcloc !18
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !19
  %i.bo = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_grace_period, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call i32 @__SCT__tp_func_rcu_grace_period(ptr noundef %i.bq, ptr noundef %i.bf, i64 noundef %i.bg, ptr noundef %i.bh) #31 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !20
  %i.bs = getelementptr i8, ptr %i.bn, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bs, ptr elementtype(i64) %i.bs) #30, !srcloc !21
  br label %trace_rcu_grace_period.exit.i.i

trace_rcu_grace_period.exit.i.i:                  ; preds = %bb.aa, %arch_test_bit.exit.i.i.i.i, %bb.x
  tail call void asm "movb $1, %gs:$0", "=*m,qi,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 16), i8 0) #30, !srcloc !22
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !23
  %i.bt = getelementptr i8, ptr %i.af, i64 1153
  store volatile i8 0, ptr %i.bt, align 1
  br label %rcu_flavor_sched_clock_irq.exit

rcu_preempt_need_deferred_qs.exit.thread.i:       ; preds = %bb.w, %set_need_resched_current.exit.i, %rcu_preempt_need_deferred_qs.exit.i, %bb.o
  %i.bu = load volatile i32, ptr %i.ag, align 4
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.ab, label %rcu_flavor_sched_clock_irq.exit

bb.ab:                                            ; preds = %rcu_preempt_need_deferred_qs.exit.thread.i
  %i.bw = tail call i8 asm "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 18)) #29, !srcloc !136
  %.not22.i = icmp eq i8 %i.bw, 0
  br i1 %.not22.i, label %rcu_flavor_sched_clock_irq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = tail call i8 asm "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 16)) #29, !srcloc !137
  %.not23.i = icmp eq i8 %i.bx, 0
  br i1 %.not23.i, label %rcu_flavor_sched_clock_irq.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr i8, ptr %i.af, i64 1153   ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  %.not24.i = icmp eq i8 %i.bz, 0
  br i1 %.not24.i, label %bb.ae, label %rcu_flavor_sched_clock_irq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3560), align 8
  %i.cb = add i64 %i.ca, 1000
  %i.cc = load volatile i64, ptr @jiffies, align 64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.af, label %rcu_flavor_sched_clock_irq.exit

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.by, align 1
  br label %rcu_flavor_sched_clock_irq.exit

rcu_flavor_sched_clock_irq.exit:                  ; preds = %bb.u, %rcu_preempt_need_deferred_qs.exit.i.i, %bb.v, %.critedge.i, %trace_rcu_grace_period.exit.i.i, %rcu_preempt_need_deferred_qs.exit.thread.i, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %i.cf = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #29, !srcloc !138
  %i.cg = add i64 %i.cf, ptrtoint (ptr @rcu_data to i64)
  %i.ch = inttoptr i64 %i.cg to ptr               ; 9 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 32     ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load i32, ptr @rcu_cpu_stall_suppress_at_boot, align 4
  %.not.i.i.i.i22 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i22, label %rcu_stall_is_suppressed.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %rcu_flavor_sched_clock_irq.exit
  %i.cl = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #31
  %i.cm = xor i1 %i.cl, true
  br label %rcu_stall_is_suppressed.exit.i.i

rcu_stall_is_suppressed.exit.i.i:                 ; preds = %bb.ag, %rcu_flavor_sched_clock_irq.exit
  %i.cn = phi i1 [ false, %rcu_flavor_sched_clock_irq.exit ], [ %i.cm, %bb.ag ]
  %i.co = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %i.cq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %rcu_stall_is_suppressed.exit.i.i
  %i.cr = load volatile i8, ptr @rcu_kick_kthreads, align 1, !range !40, !noundef !41
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ai, label %check_cpu_stall.exit.i

bb.ai:                                            ; preds = %bb.ah, %rcu_stall_is_suppressed.exit.i.i
  %i.ct = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64
  %i.cu = and i64 %i.ct, 3
  %.not.i.i23 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i23, label %check_cpu_stall.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @rcu_stall_kick_kthreads() #33, !srcloc !139
  %i.cv = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3600), align 16
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %check_cpu_stall.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  %i.cy = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !140
  %i.cz = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3592), align 8 ; 5 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !141
  %i.da = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3560), align 8 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !142
  %i.db = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64 ; 2 uses
  %.not42.i.i = icmp ne i64 %i.cy, %i.db
  %1 = sub i64 %i.cx, %i.cz
  %2 = icmp slt i64 %1, 0
  %or.cond.i.i = select i1 %.not42.i.i, i1 true, i1 %2
  %3 = sub i64 %i.da, %i.cz
  %4 = icmp sgt i64 %3, -1
  %or.cond52.i.i = select i1 %or.cond.i.i, i1 true, i1 %4
  %5 = and i64 %i.db, 3
  %.not43.i.i.a = icmp eq i64 %5, 0
  %or.cond54.i.i = or i1 %.not43.i.i.a, %or.cond52.i.i
  br i1 %or.cond54.i.i, label %check_cpu_stall.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = load ptr, ptr %i.ci, align 8
  %i.dd = load volatile i64, ptr @jiffies, align 64
  %i.de = add i64 %i.dd, 9223372036854775807      ; 2 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 32
  %i.dg = load volatile i64, ptr %i.df, align 32
  %i.dh = getelementptr i8, ptr %i.ch, i64 40
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = and i64 %i.di, %i.dg
  %.not44.i.i = icmp eq i64 %i.dj, 0              ; 2 uses
  %i.dk = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64
  %i.dl = and i64 %i.dk, 3
  %.not45.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not45.i.i, label %check_cpu_stall.exit.i, label %6

6:                                                ; preds = %bb.al
  br i1 %.not44.i.i, label %7, label %bb.am

7:                                                ; preds = %6
  %.neg55.i.i = add i64 %i.cx, -2
  %8 = sub i64 %.neg55.i.i, %i.cz
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %bb.am, label %check_cpu_stall.exit.i

bb.am:                                            ; preds = %7, %6
  %i.dm = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3592), i64 %i.de, i64 %i.cz, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3592)) #30, !srcloc !143
  %i.dn = icmp eq i64 %i.dm, %i.cz
  br i1 %i.dn, label %bb.an, label %check_cpu_stall.exit.i

bb.an:                                            ; preds = %bb.am
  %i.do = tail call zeroext i1 @kvm_check_and_clear_guest_paused() #31
  br i1 %i.do, label %check_cpu_stall.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dp = load i32, ptr @rcu_stall_count, align 4
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @rcu_stall_count, align 4
  %i.dr = load volatile i8, ptr @csd_lock_suppress_rcu_stall, align 1, !range !40, !noundef !41 ; 0 uses
  br i1 %.not44.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @print_cpu_stall(i64 noundef %i.cy, i64 noundef %i.da) #33, !srcloc !144
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  tail call fastcc void @print_other_cpu_stall(i64 noundef %i.cy, i64 noundef %i.da) #33, !srcloc !145
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ds = load volatile i32, ptr @rcu_cpu_stall_ftrace_dump, align 4
  %.not46.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not46.i.i, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = load volatile i32, ptr @check_cpu_stall.___rfd_beenhere, align 4
  %.not47.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not47.i.i, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.du = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @check_cpu_stall.___rfd_beenhere, i32 1, ptr nonnull elementtype(i32) @check_cpu_stall.___rfd_beenhere) #30, !srcloc !46
  %.not48.i.i = icmp eq i32 %i.du, 0
  br i1 %.not48.i.i, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  tail call void @tracing_off() #31
  %i.dv = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %.not49.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not49.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  tail call void @ftrace_dump(i32 noundef 1) #31
  %i.dw = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %i.dx = icmp eq i32 %i.dw, 3
  br i1 %i.dx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.at, %bb.as, %bb.ar
  %i.dy = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3592), align 8
  %i.dz = icmp eq i64 %i.dy, %i.de
  br i1 %i.dz, label %bb.az, label %check_cpu_stall.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.ea = load volatile i64, ptr @jiffies, align 64
  %i.eb = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4 ; 3 uses
  %i.ec = icmp slt i32 %i.eb, 3
  br i1 %i.ec, label %.sink.split.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ed = icmp samesign ugt i32 %i.eb, 300
  br i1 %i.ed, label %.sink.split.i.i.i, label %rcu_jiffies_till_stall_check.exit.i.i

.sink.split.i.i.i:                                ; preds = %bb.ba, %bb.az
  %.sink.i.i.i = phi i32 [ 3, %bb.az ], [ 300, %bb.ba ] ; 2 uses
  store volatile i32 %.sink.i.i.i, ptr @rcu_cpu_stall_timeout, align 4
  br label %rcu_jiffies_till_stall_check.exit.i.i

rcu_jiffies_till_stall_check.exit.i.i:            ; preds = %.sink.split.i.i.i, %bb.ba
  %.0.i.i.i = phi i32 [ %i.eb, %bb.ba ], [ %.sink.i.i.i, %.sink.split.i.i.i ]
  %i.ee = mul nuw nsw i32 %.0.i.i.i, 3000
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = add i64 %i.ea, 3
  %i.eh = add i64 %i.eg, %i.ef
  store volatile i64 %i.eh, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3592), align 8
  br label %check_cpu_stall.exit.i

check_cpu_stall.exit.i:                           ; preds = %rcu_jiffies_till_stall_check.exit.i.i, %bb.ay, %bb.an, %bb.am, %7, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.ei = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64
  %i.ej = and i64 %i.ei, 3
  %i.ek = icmp ne i64 %i.ej, 0                    ; 4 uses
  %.not.i24 = icmp eq i32 %0, 0                   ; 2 uses
  br i1 %.not.i24, label %bb.bb, label %rcu_is_cpu_rrupt_from_idle.exit.thread31.i

bb.bb:                                            ; preds = %check_cpu_stall.exit.i
  %i.el = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @context_tracking, i64 16)) #29, !srcloc !42 ; 2 uses
  %i.em = icmp sgt i64 %i.el, 1
  br i1 %i.em, label %rcu_is_cpu_rrupt_from_idle.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  switch i64 %i.el, label %rcu_is_cpu_rrupt_from_idle.exit.thread.i [
    i64 1, label %rcu_is_cpu_rrupt_from_idle.exit.thread31.i
    i64 0, label %rcu_is_cpu_rrupt_from_idle.exit.i
  ]

rcu_is_cpu_rrupt_from_idle.exit.i:                ; preds = %bb.bc
  %i.en = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #29, !srcloc !34
  %i.eo = add i64 %i.en, ptrtoint (ptr @context_tracking to i64)
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load volatile i32, ptr %i.ep, align 4
  %i.er = and i32 %i.eq, 4
  %.not26.not35.i = icmp ne i32 %i.er, 0
  %brmerge.not.i = select i1 %.not26.not35.i, i1 %i.ek, i1 false
  br i1 %brmerge.not.i, label %bb.bd, label %rcu_is_cpu_rrupt_from_idle.exit.thread31.i

rcu_is_cpu_rrupt_from_idle.exit.thread.i:         ; preds = %bb.bc, %bb.bb
  br i1 %i.ek, label %bb.bd, label %rcu_is_cpu_rrupt_from_idle.exit.thread31.i

bb.bd:                                            ; preds = %rcu_is_cpu_rrupt_from_idle.exit.thread.i, %rcu_is_cpu_rrupt_from_idle.exit.i
  %i.es = load volatile i64, ptr @jiffies, align 64 ; 0 uses
  %i.et = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3560), align 8 ; 0 uses
  br label %rcu_is_cpu_rrupt_from_idle.exit.thread31.i

rcu_is_cpu_rrupt_from_idle.exit.thread31.i:       ; preds = %bb.bd, %rcu_is_cpu_rrupt_from_idle.exit.thread.i, %rcu_is_cpu_rrupt_from_idle.exit.i, %bb.bc, %check_cpu_stall.exit.i
  %i.eu = getelementptr i8, ptr %i.ch, i64 18
  %i.ev = load i8, ptr %i.eu, align 2, !range !40, !noundef !41
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %rcu_is_cpu_rrupt_from_idle.exit.thread31.i
  %i.ex = getelementptr i8, ptr %i.ch, i64 16
  %i.ey = load i8, ptr %i.ex, align 8
  %i.ez = icmp eq i8 %i.ey, 0
  %or.cond.i = select i1 %i.ez, i1 %i.ek, i1 false
  br i1 %or.cond.i, label %rcu_pending.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %rcu_is_cpu_rrupt_from_idle.exit.thread31.i
  %i.fa = getelementptr i8, ptr %i.ch, i64 128
  %i.fb = tail call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %i.fa) #31
  br i1 %i.fb, label %rcu_pending.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ek, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fc = getelementptr i8, ptr %i.ch, i64 240
  %i.fd = load volatile i8, ptr %i.fc, align 8
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ff = getelementptr i8, ptr %i.ch, i64 152
  %i.fg = load volatile ptr, ptr %i.ff, align 8
  %i.fh = load volatile ptr, ptr %i.fg, align 8
  %.not.i28.i = icmp eq ptr %i.fh, null
  br i1 %.not.i28.i, label %bb.bj, label %rcu_pending.exit.thread

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.fi = getelementptr i8, ptr %i.cj, i64 8
  %i.fj = load volatile i64, ptr %i.fi, align 8
  %i.fk = load i64, ptr %i.ch, align 8
  %.not27.i = icmp eq i64 %i.fj, %i.fk
  br i1 %.not27.i, label %rcu_pending.exit, label %rcu_pending.exit.thread

rcu_pending.exit:                                 ; preds = %bb.bj
  %i.fl = getelementptr i8, ptr %i.ch, i64 20
  %i.fm = load volatile i8, ptr %i.fl, align 4, !range !40, !noundef !41
  %.not = icmp eq i8 %i.fm, 0
  br i1 %.not, label %invoke_rcu_core.exit, label %rcu_pending.exit.thread

rcu_pending.exit.thread:                          ; preds = %bb.bi, %bb.bj, %bb.bf, %bb.be, %rcu_pending.exit
  %i.fn = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #29, !srcloc !47
  %i.fo = zext i32 %i.fn to i64
  %i.fp = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fo) #30, !srcloc !17 ; 2 uses
  %i.fq = icmp ult i8 %i.fp, 2
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = trunc nuw i8 %i.fp to i1
  br i1 %i.fr, label %bb.bk, label %invoke_rcu_core.exit

bb.bk:                                            ; preds = %rcu_pending.exit.thread
  %i.fs = load i8, ptr @use_softirq, align 1, !range !40, !noundef !41
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call void @raise_softirq(i32 noundef 9) #31
  br label %invoke_rcu_core.exit

bb.bm:                                            ; preds = %bb.bk
  %i.fu = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !26
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !27
  tail call void asm "movb $1, %gs:$0", "=*m,qi,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 332), i8 1) #30, !srcloc !48
  %i.fv = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 320)) #29, !srcloc !49 ; 3 uses
  %i.fw = inttoptr i64 %i.fv to ptr
  %.not.i.i26 = icmp eq i64 %i.fv, 0
  %.not14.i.i = icmp eq i64 %i.ae, %i.fv
  %or.cond = or i1 %.not.i.i26, %.not14.i.i
  br i1 %or.cond, label %rcu_wake_cond.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fx = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) getelementptr inbounds nuw (i8, ptr @rcu_data, i64 328)) #29, !srcloc !50
  %.not.i16.i.i = icmp eq i32 %i.fx, 4
  br i1 %.not.i16.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fy = getelementptr i8, ptr %i.af, i64 44
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = and i32 %i.fz, 2
  %.not2.i.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not2.i.i.i, label %rcu_wake_cond.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.gb = tail call i32 @wake_up_process(ptr noundef nonnull %i.fw) #31 ; 0 uses
  br label %rcu_wake_cond.exit.i.i

rcu_wake_cond.exit.i.i:                           ; preds = %bb.bp, %bb.bo, %bb.bm
  %i.gc = and i64 %i.fu, 512
  %.not.i15.not.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not.i15.not.i.i, label %invoke_rcu_core.exit, label %bb.bq

bb.bq:                                            ; preds = %rcu_wake_cond.exit.i.i
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !51
  br label %invoke_rcu_core.exit

invoke_rcu_core.exit:                             ; preds = %bb.bq, %rcu_wake_cond.exit.i.i, %bb.bl, %rcu_pending.exit.thread, %rcu_pending.exit
  br i1 %.not.i24, label %bb.br, label %rcu_is_cpu_rrupt_from_idle.exit30.thread40

bb.br:                                            ; preds = %invoke_rcu_core.exit
  %i.gd = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @context_tracking, i64 16)) #29, !srcloc !42 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 1
  br i1 %i.ge, label %rcu_is_cpu_rrupt_from_idle.exit30.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  switch i64 %i.gd, label %rcu_is_cpu_rrupt_from_idle.exit30.thread [
    i64 1, label %rcu_is_cpu_rrupt_from_idle.exit30.thread40
    i64 0, label %rcu_is_cpu_rrupt_from_idle.exit30
  ]

rcu_is_cpu_rrupt_from_idle.exit30:                ; preds = %bb.bs
  %i.gf = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #29, !srcloc !34
  %i.gg = add i64 %i.gf, ptrtoint (ptr @context_tracking to i64)
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load volatile i32, ptr %i.gh, align 4
  %i.gj = and i32 %i.gi, 4
  %.not18.not = icmp eq i32 %i.gj, 0
  br i1 %.not18.not, label %rcu_is_cpu_rrupt_from_idle.exit30.thread40, label %rcu_is_cpu_rrupt_from_idle.exit30.thread

rcu_is_cpu_rrupt_from_idle.exit30.thread40:       ; preds = %bb.bs, %rcu_is_cpu_rrupt_from_idle.exit30, %invoke_rcu_core.exit
  %i.gk = getelementptr i8, ptr %i.af, i64 1192   ; 2 uses
  %i.gl = load volatile i8, ptr %i.gk, align 8
  %.not19 = icmp eq i8 %i.gl, 0
  br i1 %.not19, label %rcu_is_cpu_rrupt_from_idle.exit30.thread, label %bb.bt

bb.bt:                                            ; preds = %rcu_is_cpu_rrupt_from_idle.exit30.thread40
  store volatile i8 0, ptr %i.gk, align 8
  br label %rcu_is_cpu_rrupt_from_idle.exit30.thread

rcu_is_cpu_rrupt_from_idle.exit30.thread:         ; preds = %bb.bs, %bb.br, %rcu_is_cpu_rrupt_from_idle.exit30, %bb.bt, %rcu_is_cpu_rrupt_from_idle.exit30.thread40
  %i.gm = load ptr, ptr @rcu_sched_clock_irq.___tp_str.5, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_utilization, i64 8), i1 false) #30
          to label %trace_rcu_utilization.exit35 [label %arch_test_bit.exit.i.i31], !srcloc !15

arch_test_bit.exit.i.i31:                         ; preds = %rcu_is_cpu_rrupt_from_idle.exit30.thread
  %i.gn = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #30, !srcloc !39
  %i.go = zext i32 %i.gn to i64
  %i.gp = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.go) #30, !srcloc !17 ; 2 uses
  %i.gq = icmp ult i8 %i.gp, 2
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = trunc nuw i8 %i.gp to i1
  br i1 %i.gr, label %bb.bu, label %trace_rcu_utilization.exit35

bb.bu:                                            ; preds = %arch_test_bit.exit.i.i31
  %i.gs = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gs, ptr elementtype(i64) %i.gs) #30, !srcloc !18
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !19
  %i.gt = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_utilization, i64 56), align 8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i32, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = tail call i32 @__SCT__tp_func_rcu_utilization(ptr noundef %i.gv, ptr noundef %i.gm) #31 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !20
  %i.gx = getelementptr i8, ptr %i.gs, i64 8      ; 2 uses
end_hunk_0
