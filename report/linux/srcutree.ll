Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/srcutree?download=true
inline.NumInlined: 199
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@srcu_gp_start_if_needed:bb.a
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = load volatile i32, ptr %i.t, align 8     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !103
  %i.v = icmp slt i32 %i.u, 3
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %check_init_srcu_struct.exit
  %i.w = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #20, !srcloc !104
  %i.x = tail call zeroext i1 @rcu_cpu_beenfullyonline(i32 noundef %i.w) #16
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %check_init_srcu_struct.exit, %bb.d
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = load i32, ptr @__boot_cpu_id, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, %i.z
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #19, !srcloc !105
  %i.ag = load ptr, ptr %i.r, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %i.af, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.057.in = phi i64 [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  store i64 0, ptr %i.a, align 8, !annotation !26
  %.057 = inttoptr i64 %.057.in to ptr            ; 12 uses
  call fastcc void @raw_spin_lock_irqsave_sdp_contention(ptr noundef %.057, ptr noundef nonnull %i.a) #14, !srcloc !106
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %.057, i64 72
  tail call void @rcu_segcblist_enqueue(ptr noundef %i.aj, ptr noundef nonnull %1) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 96
  %i.am = load volatile i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, 7                        ; 2 uses
  %i.ao = and i64 %i.an, -4                       ; 22 uses
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !29
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %.057, i64 72     ; 2 uses
  %i.aq = load ptr, ptr %i.b, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 96
  %i.as = load volatile i64, ptr %i.ar, align 8
  tail call void @rcu_segcblist_advance(ptr noundef %i.ap, i64 noundef %i.as) #16
  %i.at = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %i.ap, i64 noundef %i.ao) #16
  br i1 %i.at, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "728: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 728b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 728) #20, !srcloc !107
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1379, i32 2307, i64 16) #20, !srcloc !108
  tail call void asm sideeffect "729: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 729b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 729) #20, !srcloc !109
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.au = getelementptr i8, ptr %.057, i64 192    ; 2 uses
  %i.av = load i64, ptr %i.au, align 64
  %i.aw = sub i64 %i.av, %i.ao
  %i.ax = icmp slt i64 %i.aw, 0                   ; 2 uses
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.ao, ptr %i.au, align 64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %.057, i64 200    ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = sub i64 %i.az, %i.ao
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.ao, ptr %i.ay, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.p ], [ false, %bb.o ]
  %i.bc = getelementptr i8, ptr %.057, i64 64
  %i.bd = load i64, ptr %i.a, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bc, i64 noundef %i.bd) #16
  %i.be = icmp slt i32 %i.u, 2
  br i1 %i.be, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %.057, i64 328
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.058 = phi ptr [ %i.bg, %bb.r ], [ null, %bb.q ]
  br i1 %i.ax, label %bb.t, label %bb.bj

bb.t:                                             ; preds = %bb.s
  %i.bh = lshr i64 %i.an, 2
  %i.bi = and i64 %i.bh, 3                        ; 5 uses
  %i.bj = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = load volatile i32, ptr %i.bk, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !110
  %i.bm = icmp slt i32 %i.bl, 2
  br i1 %i.bm, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr i8, ptr %.057, i64 328
  %i.bo = load ptr, ptr %i.bn, align 8            ; 8 uses
  %.not.i60 = icmp eq ptr %i.bo, null
  br i1 %.not.i60, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u
  %i.bp = getelementptr i8, ptr %i.bj, i64 96     ; 2 uses
  %i.bq = getelementptr i8, ptr %.057, i64 336    ; 3 uses
  br i1 %2, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %bb.y
  %.0107.us.i = phi ptr [ %i.ci, %bb.y ], [ %i.bo, %.preheader.i ] ; 8 uses
  %i.br = load volatile i64, ptr %i.bp, align 8
  %i.bs = sub i64 %i.br, %i.ao
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.v, label %.critedge.us.i, !prof !20

bb.v:                                             ; preds = %.preheader.split.us.i
  tail call void asm sideeffect "715: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 715b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 715) #20, !srcloc !111
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1080, i32 2307, i64 16) #20, !srcloc !112
  tail call void asm sideeffect "716: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 716b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 716) #20, !srcloc !113
  %.not83.us.i = icmp eq ptr %.0107.us.i, %i.bo
  br i1 %.not83.us.i, label %.critedge.us.i, label %srcu_funnel_gp_start.exit

.critedge.us.i:                                   ; preds = %bb.v, %.preheader.split.us.i
  %i.bu = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull %.0107.us.i) #16 ; 2 uses
  %i.bv = getelementptr i8, ptr %.0107.us.i, i64 8
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.bi ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %i.by = icmp ne i64 %i.bx, 2
  %i.bz = sub i64 %i.bx, %i.ao
  %i.ca = icmp sgt i64 %i.bz, -1
  %or.cond88.us.i = and i1 %i.by, %i.ca
  br i1 %or.cond88.us.i, label %.split.us.i, label %bb.w

bb.w:                                             ; preds = %.critedge.us.i
  store i64 %i.ao, ptr %i.bw, align 8
  %i.cb = icmp eq ptr %.0107.us.i, %i.bo
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = load i64, ptr %i.bq, align 16
  %i.cd = getelementptr i8, ptr %.0107.us.i, i64 40
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.bi ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = or i64 %i.cf, %i.cc
  store i64 %i.cg, ptr %i.ce, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %.0107.us.i, i64 noundef %i.bu) #16
  %i.ch = getelementptr i8, ptr %.0107.us.i, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not81.us.i = icmp eq ptr %i.ci, null
  br i1 %.not81.us.i, label %.thread.i, label %.preheader.split.us.i, !llvm.loop !102

.preheader.split.i:                               ; preds = %.preheader.i, %bb.al
  %.0107.i = phi ptr [ %i.dv, %bb.al ], [ %i.bo, %.preheader.i ] ; 9 uses
  %i.cj = load volatile i64, ptr %i.bp, align 8
  %i.ck = sub i64 %i.cj, %i.ao
  %i.cl = icmp sgt i64 %i.ck, -1
  br i1 %i.cl, label %bb.z, label %.critedge.i, !prof !20

bb.z:                                             ; preds = %.preheader.split.i
  tail call void asm sideeffect "715: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 715b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 715) #20, !srcloc !111
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1080, i32 2307, i64 16) #20, !srcloc !112
  tail call void asm sideeffect "716: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 716b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 716) #20, !srcloc !113
  %.not83.i = icmp eq ptr %.0107.i, %i.bo
  br i1 %.not83.i, label %.critedge.i, label %srcu_funnel_gp_start.exit

.critedge.i:                                      ; preds = %bb.z, %.preheader.split.i
  %i.cm = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull %.0107.i) #16 ; 2 uses
  %i.cn = getelementptr i8, ptr %.0107.i, i64 8
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.bi ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8            ; 3 uses
  %i.cq = icmp ne i64 %i.cp, 2
  %i.cr = sub i64 %i.cp, %i.ao
  %i.cs = icmp sgt i64 %i.cr, -1
  %or.cond88.i = and i1 %i.cq, %i.cs
  br i1 %or.cond88.i, label %.split.us.i, label %bb.ah

.split.us.i:                                      ; preds = %.critedge.i, %.critedge.us.i
  %.us-phi.i = phi i64 [ %i.bu, %.critedge.us.i ], [ %i.cm, %.critedge.i ]
  %.us-phi108.i = phi i64 [ %i.bx, %.critedge.us.i ], [ %i.cp, %.critedge.i ]
  %.us-phi109.i = phi ptr [ %.0107.us.i, %.critedge.us.i ], [ %.0107.i, %.critedge.i ] ; 4 uses
  %i.ct = icmp eq ptr %.us-phi109.i, %i.bo        ; 2 uses
  %i.cu = icmp eq i64 %.us-phi108.i, %i.ao        ; 2 uses
  %or.cond89.i = and i1 %i.cu, %i.ct
  br i1 %or.cond89.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split.us.i
  %i.cv = load i64, ptr %i.bq, align 16
  %i.cw = getelementptr i8, ptr %.us-phi109.i, i64 40
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.bi ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = or i64 %i.cy, %i.cv
  store i64 %i.cz, ptr %i.cx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %.us-phi109.i, i64 noundef %.us-phi.i) #16
  %.not90.i = xor i1 %i.ct, true
  %or.cond91.i = or i1 %i.cu, %.not90.i
  br i1 %or.cond91.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %2, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr i8, ptr %.057, i64 344
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = load ptr, ptr @rcu_gp_wq, align 8
  %i.dd = getelementptr i8, ptr %.057, i64 256
  %i.de = tail call zeroext i1 @queue_work_on(i32 noundef %i.db, ptr noundef %i.dc, ptr noundef %i.dd) #16 ; 0 uses
  br label %srcu_funnel_gp_start.exit

bb.ae:                                            ; preds = %bb.ac
  %i.df = getelementptr i8, ptr %.057, i64 216
  %i.dg = load volatile i64, ptr @jiffies, align 64
  %i.dh = add i64 %i.dg, 1
  %i.di = tail call i32 @timer_reduce(ptr noundef %i.df, i64 noundef %i.dh) #16 ; 0 uses
  br label %srcu_funnel_gp_start.exit

bb.af:                                            ; preds = %bb.ab
  br i1 %2, label %srcu_funnel_gp_start.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @srcu_funnel_exp_start(ptr noundef readonly %0, ptr noundef nonnull %.us-phi109.i, i64 noundef range(i64 0, -3) %i.ao) #14, !srcloc !114
  br label %srcu_funnel_gp_start.exit

bb.ah:                                            ; preds = %.critedge.i
  store i64 %i.ao, ptr %i.co, align 8
  %i.dj = icmp eq ptr %.0107.i, %i.bo
  br i1 %i.dj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load i64, ptr %i.bq, align 16
  %i.dl = getelementptr i8, ptr %.0107.i, i64 40
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.bi ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = or i64 %i.dn, %i.dk
  store i64 %i.do, ptr %i.dm, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dp = getelementptr i8, ptr %.0107.i, i64 72  ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 2
  %i.ds = sub i64 %i.dq, %i.ao
  %i.dt = icmp slt i64 %i.ds, 0
  %or.cond93.i = or i1 %i.dr, %i.dt
  br i1 %or.cond93.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store volatile i64 %i.ao, ptr %i.dp, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %.0107.i, i64 noundef %i.cm) #16
  %i.du = getelementptr i8, ptr %.0107.i, i64 80
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not81.i = icmp eq ptr %i.dv, null
  br i1 %.not81.i, label %.thread.i, label %.preheader.split.i, !llvm.loop !102

.thread.i:                                        ; preds = %bb.al, %bb.y, %bb.u, %bb.t
  %i.dw = load ptr, ptr %i.b, align 8
  %i.dx = getelementptr i8, ptr %i.dw, i64 64
  %i.dy = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !16 ; 2 uses
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !30
  %i.dz = tail call i32 @_raw_spin_trylock(ptr noundef %i.dx) #16
  %.not.i.not.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.not.i.i, label %bb.am, label %raw_spin_lock_irqsave_ssp_contention.exit.i

bb.am:                                            ; preds = %.thread.i
  %i.ea = and i64 %i.dy, 512
  %.not.i.i.not.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eb = load ptr, ptr %i.b, align 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 64
  %i.ed = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ec) #16 ; 4 uses
  %i.ee = load i32, ptr @convert_to_big, align 4
  %i.ef = and i32 %i.ee, 16
  %.not.i8.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i8.i.i, label %raw_spin_lock_irqsave_ssp_contention.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 32
  %i.ei = load i32, ptr %i.eh, align 8
  %.not7.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not7.i.i.i, label %bb.aq, label %raw_spin_lock_irqsave_ssp_contention.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ej = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.eg, i64 136    ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %.not8.i.i.i = icmp eq i64 %i.el, %i.ej
  br i1 %.not8.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.ej, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.b, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 144
  store i64 0, ptr %i.en, align 8
  %.pre.i.i.i = load ptr, ptr %i.b, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.eo = phi ptr [ %.pre.i.i.i, %bb.ar ], [ %i.eg, %bb.aq ]
  %i.ep = getelementptr i8, ptr %i.eo, i64 144    ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = add i64 %i.eq, 1                        ; 2 uses
  store i64 %i.er, ptr %i.ep, align 8
  %i.es = load i32, ptr @small_contention_lim, align 4
  %i.et = sext i32 %i.es to i64
  %.not9.i.i.i = icmp ugt i64 %i.er, %i.et
  br i1 %.not9.i.i.i, label %bb.at, label %raw_spin_lock_irqsave_ssp_contention.exit.i

bb.at:                                            ; preds = %bb.as
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !32
  %i.eu = load ptr, ptr %i.b, align 8
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  store volatile i32 1, ptr %i.ev, align 8
  br label %raw_spin_lock_irqsave_ssp_contention.exit.i

raw_spin_lock_irqsave_ssp_contention.exit.i:      ; preds = %bb.at, %bb.as, %bb.ap, %bb.ao, %.thread.i
  %.0100.i = phi i64 [ %i.ed, %bb.ao ], [ %i.ed, %bb.at ], [ %i.ed, %bb.as ], [ %i.ed, %bb.ap ], [ %i.dy, %.thread.i ]
  %i.ew = getelementptr i8, ptr %i.bj, i64 104    ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = sub i64 %i.ex, %i.ao
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.au, label %bb.av

bb.au:                                            ; preds = %raw_spin_lock_irqsave_ssp_contention.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !115
  store volatile i64 %i.ao, ptr %i.ew, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %raw_spin_lock_irqsave_ssp_contention.exit.i
  br i1 %2, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr i8, ptr %i.bj, i64 112    ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = sub i64 %i.fb, %i.ao
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store volatile i64 %i.ao, ptr %i.fa, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.fe = getelementptr i8, ptr %i.bj, i64 96
  %i.ff = load volatile i64, ptr %i.fe, align 8   ; 2 uses
  %i.fg = sub i64 %i.ff, %i.ao
  %i.fh = icmp sgt i64 %i.fg, -1
  br i1 %i.fh, label %bb.az, label %.critedge95.i, !prof !20

bb.az:                                            ; preds = %bb.ay
  tail call void asm sideeffect "721: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 721b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 721) #20, !srcloc !116
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1118, i32 2307, i64 16) #20, !srcloc !117
  tail call void asm sideeffect "722: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 722b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 722) #20, !srcloc !118
  br label %bb.bi

.critedge95.i:                                    ; preds = %bb.ay
  %i.fi = and i64 %i.ff, 3
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %.critedge95.i
  %i.fk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 96
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr i8, ptr %i.fk, i64 104
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = sub i64 %i.fm, %i.fo
  %i.fq = icmp sgt i64 %i.fp, -1
  br i1 %i.fq, label %bb.bb, label %bb.bc, !prof !20

bb.bb:                                            ; preds = %bb.ba
  tail call void asm sideeffect "693: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 693b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 693) #20, !srcloc !33
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 852, i32 2307, i64 16) #20, !srcloc !34
  tail call void asm sideeffect "694: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 694b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 694) #20, !srcloc !35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fr = load volatile i64, ptr @jiffies, align 64
  %i.fs = load ptr, ptr %i.b, align 8
  %i.ft = getelementptr i8, ptr %i.fs, i64 120
  store volatile i64 %i.fr, ptr %i.ft, align 8
  %i.fu = load ptr, ptr %i.b, align 8
  %i.fv = getelementptr i8, ptr %i.fu, i64 152
  store volatile i64 0, ptr %i.fv, align 8
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !36
  %i.fw = load ptr, ptr %i.b, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 96     ; 3 uses
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = add i64 %i.fy, 1
  store volatile i64 %i.fz, ptr %i.fx, align 8
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !37
  %i.ga = load i64, ptr %i.fx, align 8
  %i.gb = and i64 %i.ga, 3
  %.not.i.i96.i = icmp eq i64 %i.gb, 1
  br i1 %.not.i.i96.i, label %rcu_seq_start.exit.i.i, label %bb.bd, !prof !17

bb.bd:                                            ; preds = %bb.bc
  tail call void asm sideeffect "606: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 606b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 606) #20, !srcloc !38
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.20, i32 98, i32 2307, i64 16) #20, !srcloc !39
  tail call void asm sideeffect "607: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 607b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 607) #20, !srcloc !40
  br label %rcu_seq_start.exit.i.i

rcu_seq_start.exit.i.i:                           ; preds = %bb.bd, %bb.bc
  %i.gc = load ptr, ptr %i.b, align 8
  %i.gd = getelementptr i8, ptr %i.gc, i64 96
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = and i64 %i.ge, 3
  %.not.i.i = icmp eq i64 %i.gf, 1
end_hunk_0
