Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tree?download=true
inline.NumInlined: 958
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@rcu_gp_fqs_loop:bb.a
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i32 @__SCT__tp_func_rcu_grace_period(ptr noundef %i.ae, ptr noundef %i.t, i64 noundef %i.u, ptr noundef %i.v) #31 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !20
  %i.ag = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, ptr elementtype(i64) %i.ag) #30, !srcloc !21
  br label %trace_rcu_grace_period.exit

trace_rcu_grace_period.exit:                      ; preds = %bb.g, %arch_test_bit.exit.i.i, %bb.j
  store volatile i16 5, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3314), align 2
  %i.ah = and i32 %.199, 4
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.k, label %rcu_gp_fqs_check_wake.exit.thread

bb.k:                                             ; preds = %trace_rcu_grace_period.exit
  %i.ai = load volatile i16, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3312), align 16 ; 3 uses
  %i.aj = zext i16 %i.ai to i32                   ; 4 uses
  %i.ak = and i16 %i.ai, 2
  %.not7.i = icmp eq i16 %i.ak, 0
  br i1 %.not7.i, label %bb.l, label %rcu_gp_fqs_check_wake.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.al = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 32), align 32
  %.not8.i = icmp eq i64 %i.al, 0
  br i1 %.not8.i, label %bb.m, label %rcu_gp_fqs_check_wake.exit

bb.m:                                             ; preds = %bb.l
  %i.am = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 160), align 32
  %.not10.i = icmp eq ptr %i.am, null
  %.not = icmp eq i64 %.147, 0
  %or.cond = select i1 %.not10.i, i1 true, i1 %.not
  br i1 %or.cond, label %rcu_gp_fqs_check_wake.exit.thread, label %bb.n

rcu_gp_fqs_check_wake.exit:                       ; preds = %bb.l
  %.not.old = icmp eq i64 %.147, 0
  br i1 %.not.old, label %rcu_gp_fqs_check_wake.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %rcu_gp_fqs_check_wake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store i64 0, ptr %0, align 8, !annotation !62
  store volatile ptr %i.c, ptr %i.c, align 8
  store volatile ptr %i.c, ptr %i.d, align 8
  %i.an = call i64 @prepare_to_swait_event(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3288), ptr noundef nonnull %0, i32 noundef 1026) #31 ; 0 uses
  %i.ao = and i16 %i.ai, 4
  %.not.i70125 = icmp eq i16 %i.ao, 0
  br i1 %.not.i70125, label %.lr.ph, label %rcu_gp_fqs_check_wake.exit75.thread

.lr.ph:                                           ; preds = %bb.n, %bb.q
  %.052126 = phi i64 [ %i.at, %bb.q ], [ %.147, %bb.n ] ; 3 uses
  %i.ap = load volatile i16, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3312), align 16 ; 3 uses
  %i.aq = and i16 %i.ap, 2
  %.not7.i72 = icmp eq i16 %i.aq, 0
  br i1 %.not7.i72, label %bb.o, label %rcu_gp_fqs_check_wake.exit75.thread.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.ar = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 32), align 32
  %.not8.i73 = icmp eq i64 %i.ar, 0
  br i1 %.not8.i73, label %bb.p, label %rcu_gp_fqs_check_wake.exit75

bb.p:                                             ; preds = %bb.o
  %i.as = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 160), align 32
  %.not10.i74 = icmp eq ptr %i.as, null
  %.not61 = icmp eq i64 %.052126, 0
  %or.cond122 = select i1 %.not10.i74, i1 true, i1 %.not61
  br i1 %or.cond122, label %rcu_gp_fqs_check_wake.exit75.thread.loopexit, label %bb.q

rcu_gp_fqs_check_wake.exit75:                     ; preds = %bb.o
  %.not61.old = icmp eq i64 %.052126, 0
  br i1 %.not61.old, label %rcu_gp_fqs_check_wake.exit75.thread.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %rcu_gp_fqs_check_wake.exit75
  %i.at = call i64 @schedule_timeout(i64 noundef %.052126) #31
  %i.au = call i64 @prepare_to_swait_event(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3288), ptr noundef nonnull %0, i32 noundef 1026) #31 ; 0 uses
  %i.av = and i16 %i.ap, 4
  %.not.i70 = icmp eq i16 %i.av, 0
  br i1 %.not.i70, label %.lr.ph, label %rcu_gp_fqs_check_wake.exit75.thread.loopexit

rcu_gp_fqs_check_wake.exit75.thread.loopexit:     ; preds = %bb.p, %bb.q, %.lr.ph, %rcu_gp_fqs_check_wake.exit75
  %i.aw = zext i16 %i.ap to i32
  br label %rcu_gp_fqs_check_wake.exit75.thread

rcu_gp_fqs_check_wake.exit75.thread:              ; preds = %rcu_gp_fqs_check_wake.exit75.thread.loopexit, %bb.n
  %.7112.ph = phi i32 [ %i.aj, %bb.n ], [ %i.aw, %rcu_gp_fqs_check_wake.exit75.thread.loopexit ]
  call void @finish_swait(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3288), ptr noundef nonnull %0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %rcu_gp_fqs_check_wake.exit.thread

rcu_gp_fqs_check_wake.exit.thread:                ; preds = %bb.m, %trace_rcu_grace_period.exit, %bb.k, %rcu_gp_fqs_check_wake.exit75.thread, %rcu_gp_fqs_check_wake.exit
  %.3101 = phi i32 [ %i.aj, %rcu_gp_fqs_check_wake.exit ], [ %.7112.ph, %rcu_gp_fqs_check_wake.exit75.thread ], [ 4, %trace_rcu_grace_period.exit ], [ %i.aj, %bb.k ], [ %i.aj, %bb.m ]
  store volatile i16 6, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3314), align 2
  %i.ax = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 32), align 32
  %.not62 = icmp eq i64 %i.ax, 0
  br i1 %.not62, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rcu_gp_fqs_check_wake.exit.thread
  %i.ay = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 160), align 32
  %.not121 = icmp eq ptr %i.ay, null
  br i1 %.not121, label %bb.bj, label %bb.s

bb.s:                                             ; preds = %bb.r, %rcu_gp_fqs_check_wake.exit.thread
  %i.az = load volatile i64, ptr @jiffies, align 64
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3536), align 16
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp slt i64 %i.bb, 0
  %i.bd = and i32 %.3101, 6
  %.not64 = icmp eq i32 %i.bd, 0
  %or.cond120 = and i1 %.not64, %i.bc
  br i1 %or.cond120, label %bb.bc, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3624), align 8
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64
  %i.bg = load ptr, ptr @rcu_gp_fqs_loop.___tp_str.148, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_grace_period, i64 8), i1 false) #30
          to label %trace_rcu_grace_period.exit80 [label %arch_test_bit.exit.i.i76], !srcloc !15

arch_test_bit.exit.i.i76:                         ; preds = %bb.t
  %i.bh = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #30, !srcloc !16
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bi) #30, !srcloc !17 ; 2 uses
  %i.bk = icmp ult i8 %i.bj, 2
  call void @llvm.assume(i1 %i.bk)
  %i.bl = trunc nuw i8 %i.bj to i1
  br i1 %i.bl, label %bb.u, label %trace_rcu_grace_period.exit80

bb.u:                                             ; preds = %arch_test_bit.exit.i.i76
  %i.bm = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bm, ptr elementtype(i64) %i.bm) #30, !srcloc !18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !19
  %i.bn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rcu_grace_period, i64 56), align 8 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i32 @__SCT__tp_func_rcu_grace_period(ptr noundef %i.bp, ptr noundef %i.be, i64 noundef %i.bf, ptr noundef %i.bg) #31 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !20
  %i.br = getelementptr i8, ptr %i.bm, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.br, ptr elementtype(i64) %i.br) #30, !srcloc !21
  br label %trace_rcu_grace_period.exit80

trace_rcu_grace_period.exit80:                    ; preds = %bb.t, %arch_test_bit.exit.i.i76, %bb.w
  %i.bs = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3600), align 16 ; 3 uses
  %i.bt = load volatile i64, ptr @jiffies, align 64
  store volatile i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3576), align 8
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3552), align 32
  %i.bv = add i64 %i.bu, 1
  store volatile i64 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3552), align 32
  %i.bw = icmp sgt i32 %i.bs, 3
  br i1 %i.bw, label %bb.x, label %bb.y, !prof !31

bb.x:                                             ; preds = %trace_rcu_grace_period.exit80
  call void asm sideeffect "995: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 995b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 995) #30, !srcloc !470
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2064, i32 2307, i64 16) #30, !srcloc !471
  call void asm sideeffect "996: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 996b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 996) #30, !srcloc !472
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %trace_rcu_grace_period.exit80
  switch i32 %i.bs, label %bb.ab [
    i32 0, label %bb.ac
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.bx = load volatile i64, ptr @jiffies, align 64
  %i.by = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4 ; 3 uses
  %i.bz = icmp slt i32 %i.by, 3
  br i1 %i.bz, label %.sink.split.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = icmp samesign ugt i32 %i.by, 300
  br i1 %i.ca, label %.sink.split.i.i, label %rcu_jiffies_till_stall_check.exit.i

.sink.split.i.i:                                  ; preds = %bb.aa, %bb.z
  %.sink.i.i = phi i32 [ 3, %bb.z ], [ 300, %bb.aa ] ; 2 uses
  store volatile i32 %.sink.i.i, ptr @rcu_cpu_stall_timeout, align 4
  br label %rcu_jiffies_till_stall_check.exit.i

rcu_jiffies_till_stall_check.exit.i:              ; preds = %.sink.split.i.i, %bb.aa
  %.0.i.i = phi i32 [ %i.by, %bb.aa ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.cb = mul nuw nsw i32 %.0.i.i, 1000
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = add i64 %i.bx, %i.cc
  store volatile i64 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3592), align 8
  br label %bb.ab

bb.ab:                                            ; preds = %rcu_jiffies_till_stall_check.exit.i, %bb.y
  %i.ce = add i32 %i.bs, -1
  store volatile i32 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3600), align 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %rcu_watching_snap_save.rcu_watching_snap_recheck.i = select i1 %.0, ptr @rcu_watching_snap_save, ptr @rcu_watching_snap_recheck
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3533), align 1
  store i8 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3532), align 4
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3533), align 1
  %i.cg = load i32, ptr @rcu_num_lvls, align 4
  %i.ch = add i32 %i.cg, -1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3200), i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = load i32, ptr @rcu_num_nodes, align 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [640 x i8], ptr @rcu_state, i64 %i.cm
  %i.co = icmp ult ptr %i.ck, %i.cn
  br i1 %i.co, label %.lr.ph85.i, label %force_qs_rnp.exit

.lr.ph85.i:                                       ; preds = %bb.ac
  %i.cp = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #32, !srcloc !24
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr i8, ptr %i.cq, i64 1192   ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %.lr.ph85.i
  %.05083.i = phi ptr [ %i.ck, %.lr.ph85.i ], [ %i.fx, %.loopexit.i ] ; 13 uses
  %i.cs = load volatile i8, ptr %i.cr, align 8
  %.not.i93 = icmp eq i8 %i.cs, 0
  br i1 %.not.i93, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store volatile i8 0, ptr %i.cr, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ct = call i32 @__SCT__cond_resched() #31     ; 0 uses
  %i.cu = call i64 @_raw_spin_lock_irqsave(ptr noundef %.05083.i) #31 ; 3 uses
  %i.cv = getelementptr i8, ptr %.05083.i, i64 96
  %i.cw = load i64, ptr %i.cv, align 32
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3533), align 1
  %i.cz = zext i1 %i.cx to i8
  %i.da = or i8 %i.cy, %i.cz
  store i8 %i.da, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3533), align 1
  %i.db = getelementptr i8, ptr %.05083.i, i64 32 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 32           ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr i8, ptr %.05083.i, i64 160
  %i.df = load volatile ptr, ptr %i.de, align 32  ; 0 uses
  call void @_raw_spin_unlock_irqrestore(ptr noundef %.05083.i, i64 noundef %i.cu) #31
  br label %.loopexit.i

bb.ah:                                            ; preds = %bb.af
  %i.dg = getelementptr i8, ptr %.05083.i, i64 129 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = load i32, ptr @rcu_num_lvls, align 4
  %i.dk = add i32 %i.dj, -1
  %.not53.i = icmp eq i32 %i.dk, %i.di
  br i1 %.not53.i, label %.thread99.i, label %bb.ai, !prof !38

.thread99.i:                                      ; preds = %bb.ah
  %i.dl = getelementptr i8, ptr %.05083.i, i64 120 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void asm sideeffect "1090: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1090b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1090) #30, !srcloc !473
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2789, i32 2307, i64 16) #30, !srcloc !474
  call void asm sideeffect "1091: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1091b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1091) #30, !srcloc !475
  %.pre.i = load i64, ptr %i.db, align 32         ; 2 uses
  %i.dn = getelementptr i8, ptr %.05083.i, i64 120 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8            ; 2 uses
  %.not.i65.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i65.i, label %find_next_bit.exit67.i, label %bb.aj

bb.aj:                                            ; preds = %.thread99.i, %bb.ai
  %i.dp = phi i32 [ %i.dm, %.thread99.i ], [ %i.do, %bb.ai ]
  %i.dq = phi ptr [ %i.dl, %.thread99.i ], [ %i.dn, %bb.ai ]
  %i.dr = phi i64 [ %i.dc, %.thread99.i ], [ %.pre.i, %bb.ai ]
  %i.ds = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.dr) #32, !srcloc !76
  %i.dt = trunc i64 %i.ds to i32
  br label %find_next_bit.exit67.i

find_next_bit.exit67.i:                           ; preds = %bb.aj, %bb.ai
  %i.du = phi i32 [ %i.do, %bb.ai ], [ %i.dp, %bb.aj ]
  %i.dv = phi ptr [ %i.dn, %bb.ai ], [ %i.dq, %bb.aj ] ; 3 uses
  %.0.i66.i = phi i32 [ 64, %bb.ai ], [ %i.dt, %bb.aj ]
  %i.dw = add i32 %i.du, %.0.i66.i                ; 2 uses
  %i.dx = getelementptr i8, ptr %.05083.i, i64 124 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %.not5475.i = icmp sgt i32 %i.dw, %i.dy
  br i1 %.not5475.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %find_next_bit.exit67.i, %find_next_bit.exit64.i
  %.078.i = phi i32 [ %i.ez, %find_next_bit.exit64.i ], [ %i.dw, %find_next_bit.exit67.i ] ; 2 uses
  %.05177.i = phi i64 [ %.15273.i, %find_next_bit.exit64.i ], [ 0, %find_next_bit.exit67.i ] ; 3 uses
  %.07076.i = phi i64 [ %.171.i, %find_next_bit.exit64.i ], [ 0, %find_next_bit.exit67.i ] ; 3 uses
  %i.dz = sext i32 %.078.i to i64
  %i.ea = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = add i64 %i.eb, ptrtoint (ptr @rcu_data to i64)
  %i.ed = inttoptr i64 %i.ec to ptr               ; 5 uses
  %i.ee = call i32 %rcu_watching_snap_save.rcu_watching_snap_recheck.i(ptr noundef %i.ed) #31, !callees !476, !inline_history !465 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %.lr.ph.i
  %i.eg = getelementptr i8, ptr %i.ed, i64 40
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = or i64 %i.eh, %.05177.i
  %i.ej = getelementptr i8, ptr %i.ed, i64 285
  store volatile i8 0, ptr %i.ej, align 1
  %i.ek = getelementptr i8, ptr %i.ed, i64 284
  store volatile i8 0, ptr %i.ek, align 4
  br label %bb.am

bb.ak:                                            ; preds = %.lr.ph.i
  %i.el = icmp slt i32 %i.ee, 0
  br i1 %i.el, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.em = getelementptr i8, ptr %i.ed, i64 40
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = or i64 %i.en, %.07076.i
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.thread.i
  %.15273.i = phi i64 [ %.05177.i, %bb.al ], [ %.05177.i, %bb.ak ], [ %i.ei, %.thread.i ] ; 3 uses
  %.171.i = phi i64 [ %i.eo, %bb.al ], [ %.07076.i, %bb.ak ], [ %.07076.i, %.thread.i ] ; 3 uses
  %i.ep = load i32, ptr %i.dv, align 8            ; 2 uses
  %i.eq = add i32 %.078.i, 1
  %i.er = sub i32 %i.eq, %i.ep                    ; 2 uses
  %i.es = icmp ugt i32 %i.er, 63
  br i1 %i.es, label %find_next_bit.exit64.i, label %bb.an, !prof !31

bb.an:                                            ; preds = %bb.am
  %i.et = load i64, ptr %i.db, align 32
  %i.eu = zext nneg i32 %i.er to i64
  %i.ev = shl nsw i64 -1, %i.eu
  %i.ew = and i64 %i.et, %i.ev                    ; 2 uses
  %.not.i62.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i62.i, label %find_next_bit.exit64.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ex = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ew) #32, !srcloc !76
  %i.ey = trunc i64 %i.ex to i32
  br label %find_next_bit.exit64.i

find_next_bit.exit64.i:                           ; preds = %bb.ao, %bb.an, %bb.am
  %.0.i63.i = phi i32 [ 64, %bb.am ], [ %i.ey, %bb.ao ], [ 64, %bb.an ]
  %i.ez = add i32 %i.ep, %.0.i63.i                ; 2 uses
  %i.fa = load i32, ptr %i.dx, align 4
  %.not54.i = icmp sgt i32 %i.ez, %i.fa
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !466

._crit_edge.i:                                    ; preds = %find_next_bit.exit64.i
  %.not55.i = icmp eq i64 %.15273.i, 0
  br i1 %.not55.i, label %._crit_edge.thread.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i
  %i.fb = getelementptr i8, ptr %.05083.i, i64 8
  %i.fc = load i64, ptr %i.fb, align 8
  call fastcc void @rcu_report_qs_rnp(i64 noundef %.15273.i, ptr noundef %.05083.i, i64 noundef %i.fc, i64 noundef %i.cu) #33, !srcloc !477
  br label %bb.aq

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %find_next_bit.exit67.i
  %.070.lcssa105.i = phi i64 [ %.171.i, %._crit_edge.i ], [ 0, %find_next_bit.exit67.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %.05083.i, i64 noundef %i.cu) #31
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.thread.i, %bb.ap
  %.070.lcssa104.i = phi i64 [ %.070.lcssa105.i, %._crit_edge.thread.i ], [ %.171.i, %bb.ap ] ; 3 uses
  %i.fd = load i8, ptr %i.dg, align 1
  %i.fe = zext i8 %i.fd to i32
  %i.ff = load i32, ptr @rcu_num_lvls, align 4
  %i.fg = add i32 %i.ff, -1
  %.not56.i = icmp eq i32 %i.fg, %i.fe
  br i1 %.not56.i, label %bb.as, label %bb.ar, !prof !38

bb.ar:                                            ; preds = %bb.aq
  call void asm sideeffect "1092: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1092b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1092) #30, !srcloc !478
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2810, i32 2307, i64 16) #30, !srcloc !479
  call void asm sideeffect "1093: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1093b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1093) #30, !srcloc !480
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fh = load i32, ptr %i.dv, align 8
  %.not.i59.i = icmp eq i64 %.070.lcssa104.i, 0
  br i1 %.not.i59.i, label %find_next_bit.exit61.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fi = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %.070.lcssa104.i) #32, !srcloc !76
  %i.fj = trunc i64 %i.fi to i32
  br label %find_next_bit.exit61.i

find_next_bit.exit61.i:                           ; preds = %bb.at, %bb.as
  %.0.i60.i = phi i32 [ 64, %bb.as ], [ %i.fj, %bb.at ]
  %i.fk = add i32 %i.fh, %.0.i60.i                ; 2 uses
  %i.fl = load i32, ptr %i.dx, align 4
  %.not5780.i = icmp sgt i32 %i.fk, %i.fl
  br i1 %.not5780.i, label %.loopexit.i, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %find_next_bit.exit61.i, %find_next_bit.exit.i
end_hunk_0
