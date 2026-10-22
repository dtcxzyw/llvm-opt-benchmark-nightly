Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tg3?download=true
inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_self_test:bb.a
.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %i.lw, %.lr.ph.i.i ], [ 0, %bb.aj ] ; 2 uses
  %i.ls = sext i32 %.08.i.i to i64
  %i.lt = getelementptr [832 x i8], ptr %i.g, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 1192
  %i.lv = load i32, ptr %i.lu, align 8
  call void @synchronize_irq(i32 noundef %i.lv) #27
  %i.lw = add nuw i32 %.08.i.i, 1                 ; 2 uses
  %i.lx = load i32, ptr %i.lq, align 4
  %i.ly = icmp ult i32 %i.lw, %i.lx
  br i1 %i.ly, label %.lr.ph.i.i, label %tg3_full_lock.exit, !llvm.loop !0

tg3_full_lock.exit:                               ; preds = %.lr.ph.i.i, %bb.aj, %.split62
  %.sink = phi ptr [ %i.lf, %.split62 ], [ %i.lo, %bb.aj ], [ %i.lo, %.lr.ph.i.i ]
  call void @_raw_spin_lock_bh(ptr noundef %.sink) #27
  call fastcc void @tg3_halt(ptr noundef %i.g, i32 noundef 2, i1 noundef zeroext true) #30
  %i.lz = load volatile i64, ptr %i.w, align 8
  %i.ma = and i64 %i.lz, 8192
  %.not.i90 = icmp eq i64 %i.ma, 0
  br i1 %.not.i90, label %tg3_nvram_lock.exit, label %bb.ak

bb.ak:                                            ; preds = %tg3_full_lock.exit
  %i.mb = getelementptr i8, ptr %0, i64 8520      ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 8            ; 2 uses
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.al, label %.thread16.i

bb.al:                                            ; preds = %bb.ak
  %i.me = getelementptr i8, ptr %0, i64 2648      ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef %i.g, i32 noundef 28704, i32 noundef 2) #27, !inline_history !5
  %i.mg = getelementptr i8, ptr %0, i64 2640
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.01318.i = phi i32 [ 0, %bb.al ], [ %i.mk, %bb.an ]
  %i.mh = load ptr, ptr %i.mg, align 16
  %i.mi = call i32 %i.mh(ptr noundef %i.g, i32 noundef 28704) #27, !inline_history !5
  %i.mj = and i32 %i.mi, 512
  %.not15.i = icmp eq i32 %i.mj, 0
  br i1 %.not15.i, label %bb.an, label %.thread16.loopexit.i

bb.an:                                            ; preds = %bb.am
  call void @__const_udelay(i64 noundef 85900) #27
  %i.mk = add nuw nsw i32 %.01318.i, 1            ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.mk, 8000
  br i1 %exitcond.not.i91, label %bb.ao, label %bb.am, !llvm.loop !4

.thread16.loopexit.i:                             ; preds = %bb.am
  %.pre.i = load i32, ptr %i.mb, align 8
  br label %.thread16.i

.thread16.i:                                      ; preds = %.thread16.loopexit.i, %bb.ak
  %i.ml = phi i32 [ %.pre.i, %.thread16.loopexit.i ], [ %i.mc, %bb.ak ]
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mb, align 8
  br label %tg3_nvram_lock.exit

bb.ao:                                            ; preds = %bb.an
  %i.mn = load ptr, ptr %i.me, align 8
  call void %i.mn(ptr noundef %i.g, i32 noundef 28704, i32 noundef 32) #27, !inline_history !5
  br label %tg3_nvram_lock.exit

tg3_nvram_lock.exit:                              ; preds = %tg3_full_lock.exit, %.thread16.i, %bb.ao
  %.not69 = phi i1 [ false, %bb.ao ], [ true, %.thread16.i ], [ true, %tg3_full_lock.exit ]
  %i.mo = getelementptr i8, ptr %0, i64 8188      ; 6 uses
  %i.mp = load i32, ptr %i.mo, align 4
  %.mask.i = and i32 %i.mp, -4096
  %i.mq = icmp eq i32 %.mask.i, 49152
  br i1 %i.mq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %tg3_nvram_lock.exit
  %i.mr = getelementptr i8, ptr %0, i64 2640
  %i.ms = load ptr, ptr %i.mr, align 16
  %i.mt = call i32 %i.ms(ptr noundef %i.g, i32 noundef 26768) #27, !inline_history !69
  %i.mu = getelementptr i8, ptr %0, i64 2648
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = or i32 %i.mt, 4194304
  call void %i.mv(ptr noundef %i.g, i32 noundef 26768, i32 noundef %i.mw) #27, !inline_history !69
  br label %tg3_halt_cpu.exit

bb.aq:                                            ; preds = %tg3_nvram_lock.exit
  %i.mx = call fastcc i32 @tg3_rxcpu_pause(ptr noundef %i.g) #30, !srcloc !70
  %.not19.i = icmp eq i32 %i.mx, 0
  br i1 %.not19.i, label %tg3_txcpu_pause.exit.thread.i, label %tg3_txcpu_pause.exit.thread30.i

tg3_txcpu_pause.exit.thread30.i:                  ; preds = %bb.aq
  %i.my = getelementptr i8, ptr %0, i64 2688
  %i.mz = load ptr, ptr %i.my, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %i.mz, ptr noundef @.str.38, ptr noundef @__func__.tg3_halt_cpu, ptr noundef nonnull @.str.39) #29
  br label %tg3_halt_cpu.exit

tg3_txcpu_pause.exit.thread.i:                    ; preds = %bb.aq
  %i.na = load volatile i64, ptr %i.w, align 8
  %i.nb = and i64 %i.na, 8192
  %.not20.i = icmp eq i64 %i.nb, 0
  br i1 %.not20.i, label %tg3_halt_cpu.exit, label %bb.ar

bb.ar:                                            ; preds = %tg3_txcpu_pause.exit.thread.i
  %i.nc = getelementptr i8, ptr %0, i64 2648
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef %i.g, i32 noundef 28704, i32 noundef 16) #27, !inline_history !69
  br label %tg3_halt_cpu.exit

tg3_halt_cpu.exit:                                ; preds = %bb.ar, %tg3_txcpu_pause.exit.thread.i, %tg3_txcpu_pause.exit.thread30.i, %bb.ap
  %i.ne = getelementptr i8, ptr %0, i64 8016
  %i.nf = load volatile i64, ptr %i.ne, align 8
  %i.ng = and i64 %i.nf, 128
  %.not68 = icmp eq i64 %i.ng, 0
  br i1 %.not68, label %bb.as, label %bb.at

bb.as:                                            ; preds = %tg3_halt_cpu.exit
  %i.nh = call fastcc i32 @tg3_halt_cpu(ptr noundef %i.g, i32 noundef 21504) #30, !srcloc !385 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %tg3_halt_cpu.exit
  br i1 %.not69, label %_tg3_flag.exit.i96, label %tg3_nvram_unlock.exit

_tg3_flag.exit.i96:                               ; preds = %bb.at
  %i.ni = load volatile i64, ptr %i.w, align 8
  %i.nj = and i64 %i.ni, 8192
  %.not.i97 = icmp eq i64 %i.nj, 0
  br i1 %.not.i97, label %tg3_nvram_unlock.exit, label %bb.au

bb.au:                                            ; preds = %_tg3_flag.exit.i96
  %i.nk = getelementptr i8, ptr %0, i64 8520      ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 8            ; 3 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.nn = add nsw i32 %i.nl, -1                   ; 2 uses
  store i32 %i.nn, ptr %i.nk, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.no = phi i32 [ %i.nn, %bb.av ], [ %i.nl, %bb.au ]
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %_tg3_flag.exit.i.i, label %tg3_nvram_unlock.exit

_tg3_flag.exit.i.i:                               ; preds = %bb.aw
  %i.nq = load volatile i64, ptr %i.w, align 8
  %i.nr = and i64 %i.nq, 512
  %.not.i.i98 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i98, label %_tg3_flag.exit21.i.i, label %bb.ax

_tg3_flag.exit21.i.i:                             ; preds = %_tg3_flag.exit.i.i
  %i.ns = load volatile i64, ptr %i.w, align 8
  %i.nt = and i64 %i.ns, 35184372088832
  %.not15.i.i = icmp eq i64 %i.nt, 0
  br i1 %.not15.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_tg3_flag.exit21.i.i, %_tg3_flag.exit.i.i
  %i.nu = getelementptr i8, ptr %0, i64 2648
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef %i.g, i32 noundef 28704, i32 noundef 32) #27, !inline_history !6
  br label %tg3_nvram_unlock.exit

bb.ay:                                            ; preds = %_tg3_flag.exit21.i.i
  %i.nw = getelementptr i8, ptr %0, i64 2672
  %i.nx = load ptr, ptr %i.nw, align 16
  %i.ny = getelementptr i8, ptr %i.nx, i64 28704
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr elementtype(i32) %i.ny) #28, !srcloc !56
  %i.nz = getelementptr i8, ptr %0, i64 2640
  %i.oa = load ptr, ptr %i.nz, align 16
  %i.ob = call i32 %i.oa(ptr noundef %i.g, i32 noundef 28704) #27, !inline_history !6 ; 0 uses
  br label %tg3_nvram_unlock.exit

tg3_nvram_unlock.exit:                            ; preds = %bb.ay, %bb.ax, %bb.aw, %_tg3_flag.exit.i96, %bb.at
  %i.oc = load i32, ptr %i.k, align 4
  %i.od = and i32 %i.oc, 32
  %.not70 = icmp eq i32 %i.od, 0
  br i1 %.not70, label %_tg3_flag.exit.i100, label %bb.az

bb.az:                                            ; preds = %tg3_nvram_unlock.exit
  %i.oe = call fastcc i32 @tg3_phy_reset(ptr noundef %i.g) #30, !srcloc !386 ; 0 uses
  br label %_tg3_flag.exit.i100

_tg3_flag.exit.i100:                              ; preds = %tg3_nvram_unlock.exit, %bb.az
  %i.of = getelementptr i8, ptr %0, i64 8016
  %i.og = load volatile i64, ptr %i.of, align 8
  %i.oh = and i64 %i.og, 128
  %.not.i101 = icmp eq i64 %i.oh, 0               ; 2 uses
  br i1 %.not.i101, label %bb.ba, label %_tg3_flag.exit78.i

_tg3_flag.exit78.i:                               ; preds = %_tg3_flag.exit.i100
  %i.oi = getelementptr i8, ptr %0, i64 8016
  %i.oj = load volatile i64, ptr %i.oi, align 8
  %i.ok = and i64 %i.oj, 512
  %.not60.i = icmp eq i64 %i.ok, 0
  br label %bb.ba

bb.ba:                                            ; preds = %_tg3_flag.exit78.i, %_tg3_flag.exit.i100
  %.not67.i = phi i1 [ true, %_tg3_flag.exit.i100 ], [ %.not60.i, %_tg3_flag.exit78.i ]
  %i.ol = getelementptr i8, ptr %0, i64 8016      ; 7 uses
  %i.om = getelementptr i8, ptr %0, i64 2640      ; 10 uses
  %i.on = getelementptr i8, ptr %0, i64 2648      ; 42 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bh, %bb.ba
  %indvars.iv.i102 = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next.i104, %bb.bh ] ; 4 uses
  %i.oo = getelementptr [12 x i8], ptr @tg3_test_registers.reg_tbl, i64 %indvars.iv.i102 ; 3 uses
  %3 = shl nuw i64 1, %indvars.iv.i102            ; 3 uses
  br i1 %.not.i101, label %.critedge.i106, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %4 = and i64 %3, 2107652235809291770
  %.not63.not.i = icmp eq i64 %4, 0
  br i1 %.not63.not.i, label %bb.bh, label %_tg3_flag.exit81.i

.critedge.i106:                                   ; preds = %bb.bb
  %5 = and i64 %3, 2305840214649601013
  %.not64.not.i = icmp eq i64 %5, 0
  br i1 %.not64.not.i, label %bb.bh, label %_tg3_flag.exit81.i

_tg3_flag.exit81.i:                               ; preds = %bb.bc, %.critedge.i106
  %i.op = load volatile i64, ptr %i.ol, align 8
  %i.oq = and i64 %i.op, 256
  %.not65.i = icmp ne i64 %i.oq, 0
  %6 = and i64 %3, 2305840217484951551
  %.not66.not.i = icmp eq i64 %6, 0
  %or.cond = select i1 %.not65.i, i1 %.not66.not.i, i1 false
  br i1 %or.cond, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %_tg3_flag.exit81.i
  %7 = trunc i64 %indvars.iv.i102 to i32
  %8 = add i32 %7, -51
  %.not68.i = icmp ult i32 %8, -2
  %or.cond.i103 = or i1 %.not67.i, %.not68.i
  br i1 %or.cond.i103, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %9 = load i16, ptr %i.oo, align 4
  %i.or = zext i16 %9 to i32                      ; 8 uses
  %i.os = getelementptr i8, ptr %i.oo, i64 4
  %i.ot = load i32, ptr %i.os, align 4            ; 4 uses
  %i.ou = getelementptr i8, ptr %i.oo, i64 8
  %i.ov = load i32, ptr %i.ou, align 4            ; 4 uses
  %i.ow = load ptr, ptr %i.om, align 16
  %i.ox = call i32 %i.ow(ptr noundef %i.g, i32 noundef %i.or) #27, !inline_history !371 ; 3 uses
  %i.oy = and i32 %i.ox, %i.ot                    ; 2 uses
  %i.oz = load ptr, ptr %i.on, align 8
  call void %i.oz(ptr noundef %i.g, i32 noundef %i.or, i32 noundef 0) #27, !inline_history !371
  %i.pa = load ptr, ptr %i.om, align 16
  %i.pb = call i32 %i.pa(ptr noundef %i.g, i32 noundef %i.or) #27, !inline_history !371 ; 2 uses
  %i.pc = and i32 %i.pb, %i.ot
  %.not69.i = icmp eq i32 %i.pc, %i.oy
  %i.pd = and i32 %i.pb, %i.ov
  %.not70.i = icmp eq i32 %i.pd, 0
  %or.cond74.i.a = select i1 %.not69.i, i1 %.not70.i, i1 false
  br i1 %or.cond74.i.a, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.pe = load ptr, ptr %i.on, align 8
  %i.pf = or i32 %i.ov, %i.ot
  call void %i.pe(ptr noundef %i.g, i32 noundef %i.or, i32 noundef %i.pf) #27, !inline_history !371
  %i.pg = load ptr, ptr %i.om, align 16
  %i.ph = call i32 %i.pg(ptr noundef %i.g, i32 noundef %i.or) #27, !inline_history !371 ; 2 uses
  %i.pi = and i32 %i.ph, %i.ot
  %.not71.i = icmp eq i32 %i.pi, %i.oy
  %i.pj = and i32 %i.ph, %i.ov
  %.not72.i = icmp eq i32 %i.pj, %i.ov
  %or.cond75.i = select i1 %.not71.i, i1 %.not72.i, i1 false
  br i1 %or.cond75.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.pk = load ptr, ptr %i.on, align 8
  call void %i.pk(ptr noundef %i.g, i32 noundef %i.or, i32 noundef %i.ox) #27, !inline_history !371
  br label %bb.bh

bb.bh:                                            ; preds = %_tg3_flag.exit81.i, %bb.bg, %bb.bd, %.critedge.i106, %bb.bc
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %.not61.i = icmp eq i64 %indvars.iv.next.i104, 60
  br i1 %.not61.i, label %tg3_test_registers.exit.thread, label %bb.bb, !llvm.loop !372

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %i.pl = getelementptr i8, ptr %0, i64 2708
  %i.pm = load i32, ptr %i.pl, align 4
  %i.pn = and i32 %i.pm, 8192
  %.not73.i = icmp eq i32 %i.pn, 0
  br i1 %.not73.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.po = getelementptr i8, ptr %0, i64 2688
  %i.pp = load ptr, ptr %i.po, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %i.pp, ptr noundef @.str.55, i32 noundef %i.or) #29
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.pq = load ptr, ptr %i.on, align 8
  call void %i.pq(ptr noundef %i.g, i32 noundef %i.or, i32 noundef %i.ox) #27, !inline_history !371
  %i.pr = load i32, ptr %i.h, align 4
  %i.ps = or i32 %i.pr, 2
  store i32 %i.ps, ptr %i.h, align 4
  %i.pt = getelementptr i8, ptr %2, i64 16
  store i64 1, ptr %i.pt, align 8
  br label %tg3_test_registers.exit.thread

tg3_test_registers.exit.thread:                   ; preds = %bb.bh, %bb.bk
  %i.pu = load volatile i64, ptr %i.ol, align 8
  %i.pv = and i64 %i.pu, 16384
  %.not.i109 = icmp eq i64 %i.pv, 0
  br i1 %.not.i109, label %_tg3_flag.exit28.i, label %bb.bn

_tg3_flag.exit28.i:                               ; preds = %tg3_test_registers.exit.thread
  %i.pw = load volatile i64, ptr %i.ol, align 8
  %i.px = and i64 %i.pw, 8192
  %.not20.i116 = icmp eq i64 %i.px, 0
  br i1 %.not20.i116, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %_tg3_flag.exit28.i
  %i.py = load i32, ptr %i.mo, align 4
  %.mask.i117 = and i32 %i.py, -4096              ; 2 uses
  %i.pz = icmp eq i32 %.mask.i117, 91627520
  br i1 %i.pz, label %bb.bn, label %_tg3_flag.exit31.i

_tg3_flag.exit31.i:                               ; preds = %bb.bl
  %i.qa = load volatile i64, ptr %i.ol, align 8
  %i.qb = and i64 %i.qa, 2048
  %.not21.i = icmp eq i64 %i.qb, 0
  br i1 %.not21.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_tg3_flag.exit31.i
  %i.qc = icmp eq i32 %.mask.i117, 49152
  br i1 %i.qc, label %bb.bn, label %_tg3_flag.exit34.i

_tg3_flag.exit34.i:                               ; preds = %bb.bm
  %i.qd = load volatile i64, ptr %i.ol, align 8
  %i.qe = and i64 %i.qd, 128
  %.not23.i = icmp eq i64 %i.qe, 0
  %tg3_test_memory.mem_tbl_570x.tg3_test_memory.mem_tbl_5705.i = select i1 %.not23.i, ptr @tg3_test_memory.mem_tbl_570x, ptr @tg3_test_memory.mem_tbl_5705
  br label %bb.bn

bb.bn:                                            ; preds = %_tg3_flag.exit34.i, %bb.bm, %_tg3_flag.exit31.i, %bb.bl, %_tg3_flag.exit28.i, %tg3_test_registers.exit.thread
  %.016.i = phi ptr [ @tg3_test_memory.mem_tbl_5906, %bb.bm ], [ @tg3_test_memory.mem_tbl_5717, %tg3_test_registers.exit.thread ], [ @tg3_test_memory.mem_tbl_57765, %_tg3_flag.exit28.i ], [ @tg3_test_memory.mem_tbl_5755, %_tg3_flag.exit31.i ], [ %tg3_test_memory.mem_tbl_570x.tg3_test_memory.mem_tbl_5705.i, %_tg3_flag.exit34.i ], [ @tg3_test_memory.mem_tbl_57765, %bb.bl ] ; 3 uses
  %i.qf = load i32, ptr %.016.i, align 4          ; 2 uses
  %.not2467.i = icmp eq i32 %i.qf, -1
  br i1 %.not2467.i, label %tg3_test_memory.exit, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.bn
  %i.qg = getelementptr i8, ptr %0, i64 2632      ; 4 uses
  %i.qh = getelementptr i8, ptr %0, i64 2696      ; 6 uses
  %i.qi = getelementptr i8, ptr %0, i64 2672      ; 4 uses
  br label %bb.bo

bb.bo:                                            ; preds = %tg3_do_mem_test.exit.i, %.lr.ph.i110
  %i.qj = phi i32 [ %i.qf, %.lr.ph.i110 ], [ %i.to, %tg3_do_mem_test.exit.i ] ; 3 uses
  %i.qk = phi ptr [ %.016.i, %.lr.ph.i110 ], [ %i.tn, %tg3_do_mem_test.exit.i ]
  %.068.i = phi i32 [ 0, %.lr.ph.i110 ], [ %i.tl, %tg3_do_mem_test.exit.i ]
  %i.ql = getelementptr i8, ptr %i.qk, i64 4
  %i.qm = load i32, ptr %i.ql, align 4            ; 4 uses
  %.not21.i.i = icmp eq i32 %i.qm, 0
  br i1 %.not21.i.i, label %tg3_do_mem_test.exit.i, label %.preheader.preheader.i.i

bb.bp:                                            ; preds = %tg3_read_mem.exit57.i, %tg3_read_mem.exit57.thread.i
  %i.qn = add i32 %.01419.i.i, 4                  ; 2 uses
  %i.qo = icmp ult i32 %i.qn, %i.qm
  br i1 %i.qo, label %.preheader.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !373

.preheader.preheader.i.i:                         ; preds = %bb.bo, %bb.bp
  %.01419.i.i = phi i32 [ %i.qn, %bb.bp ], [ 0, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !annotation !40
  %i.qp = add i32 %.01419.i.i, %i.qj              ; 5 uses
  call void @tg3_write_mem(ptr noundef %i.g, i32 noundef %i.qp, i32 noundef 0) #30, !srcloc !387
  %i.qq = load i32, ptr %i.mo, align 4
  %.mask.i36.i = and i32 %i.qq, -4096
  %i.qr = icmp eq i32 %.mask.i36.i, 49152
  %i.qs = add i32 %i.qp, -768
  %i.qt = icmp ult i32 %i.qs, 15616
  %or.cond3.i37.i = and i1 %i.qt, %i.qr
  br i1 %or.cond3.i37.i, label %tg3_read_mem.exit57.thread.i, label %_tg3_flag.exit.i39.i

tg3_read_mem.exit57.thread.i:                     ; preds = %.preheader.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.bp

_tg3_flag.exit.i39.i:                             ; preds = %.preheader.preheader.i.i
  %i.qu = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.qg) #27
  %i.qv = load volatile i64, ptr %i.w, align 8
  %i.qw = and i64 %i.qv, 4194304
  %.not.i40.i = icmp eq i64 %i.qw, 0
  br i1 %.not.i40.i, label %_tg3_flag.exit.i.i43.i, label %bb.bq

bb.bq:                                            ; preds = %_tg3_flag.exit.i39.i
  %i.qx = load ptr, ptr %i.qh, align 8
  %i.qy = call i32 @pci_write_config_dword(ptr noundef %i.qx, i32 noundef 124, i32 noundef %i.qp) #27 ; 0 uses
  %i.qz = load ptr, ptr %i.qh, align 8
  %i.ra = call i32 @pci_read_config_dword(ptr noundef %i.qz, i32 noundef 132, ptr noundef nonnull %i.a) #27 ; 0 uses
  %i.rb = load ptr, ptr %i.qh, align 8
  %i.rc = call i32 @pci_write_config_dword(ptr noundef %i.rb, i32 noundef 124, i32 noundef 0) #27 ; 0 uses
  br label %tg3_read_mem.exit57.i

_tg3_flag.exit.i.i43.i:                           ; preds = %_tg3_flag.exit.i39.i
  %i.rd = load volatile i64, ptr %i.w, align 8
  %i.re = and i64 %i.rd, 512
  %.not.i.i44.i = icmp eq i64 %i.re, 0
  br i1 %.not.i.i44.i, label %_tg3_flag.exit21.i.i54.i, label %bb.br

_tg3_flag.exit21.i.i54.i:                         ; preds = %_tg3_flag.exit.i.i43.i
  %i.rf = load volatile i64, ptr %i.w, align 8
  %i.rg = and i64 %i.rf, 35184372088832
  %.not15.i.i56.i = icmp eq i64 %i.rg, 0
  br i1 %.not15.i.i56.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_tg3_flag.exit21.i.i54.i, %_tg3_flag.exit.i.i43.i
  %i.rh = load ptr, ptr %i.on, align 8
  call void %i.rh(ptr noundef %i.g, i32 noundef 124, i32 noundef %i.qp) #27, !inline_history !374
  br label %_tw32_flush.exit.i45.i

bb.bs:                                            ; preds = %_tg3_flag.exit21.i.i54.i
  %i.ri = load ptr, ptr %i.qi, align 16
  %i.rj = getelementptr i8, ptr %i.ri, i64 124
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.qp, ptr elementtype(i32) %i.rj) #28, !srcloc !56
  %i.rk = load ptr, ptr %i.om, align 16
  %i.rl = call i32 %i.rk(ptr noundef %i.g, i32 noundef 124) #27, !inline_history !374 ; 0 uses
  br label %_tw32_flush.exit.i45.i

_tw32_flush.exit.i45.i:                           ; preds = %bb.bs, %bb.br
  %i.rm = load ptr, ptr %i.om, align 16
  %i.rn = call i32 %i.rm(ptr noundef %i.g, i32 noundef 132) #27, !inline_history !375
  store i32 %i.rn, ptr %i.a, align 4
  %i.ro = load volatile i64, ptr %i.w, align 8
  %i.rp = and i64 %i.ro, 512
  %.not.i23.i48.i = icmp eq i64 %i.rp, 0
  br i1 %.not.i23.i48.i, label %_tg3_flag.exit21.i25.i50.i, label %bb.bt

_tg3_flag.exit21.i25.i50.i:                       ; preds = %_tw32_flush.exit.i45.i
  %i.rq = load volatile i64, ptr %i.w, align 8
  %i.rr = and i64 %i.rq, 35184372088832
  %.not15.i27.i52.i = icmp eq i64 %i.rr, 0
  br i1 %.not15.i27.i52.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_tg3_flag.exit21.i25.i50.i, %_tw32_flush.exit.i45.i
  %i.rs = load ptr, ptr %i.on, align 8
  call void %i.rs(ptr noundef %i.g, i32 noundef 124, i32 noundef 0) #27, !inline_history !374
  br label %tg3_read_mem.exit57.i

bb.bu:                                            ; preds = %_tg3_flag.exit21.i25.i50.i
  %i.rt = load ptr, ptr %i.qi, align 16
  %i.ru = getelementptr i8, ptr %i.rt, i64 124
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ru) #28, !srcloc !56
  %i.rv = load ptr, ptr %i.om, align 16
  %i.rw = call i32 %i.rv(ptr noundef %i.g, i32 noundef 124) #27, !inline_history !374 ; 0 uses
  br label %tg3_read_mem.exit57.i

tg3_read_mem.exit57.i:                            ; preds = %bb.bu, %bb.bt, %bb.bq
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.qg, i64 noundef %i.qu) #27
  %.pr.i = load i32, ptr %i.a, align 4
  %.not.i.i111 = icmp eq i32 %.pr.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %.not.i.i111, label %bb.bp, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.bp, %bb.ca
  %.01419.1.i.i = phi i32 [ %i.tf, %bb.ca ], [ 0, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !annotation !40
  %i.rx = add i32 %.01419.1.i.i, %i.qj            ; 5 uses
  call void @tg3_write_mem(ptr noundef %i.g, i32 noundef %i.rx, i32 noundef -1) #30, !srcloc !387
  %i.ry = load i32, ptr %i.mo, align 4
  %.mask.i.i = and i32 %i.ry, -4096
  %i.rz = icmp eq i32 %.mask.i.i, 49152
  %i.sa = add i32 %i.rx, -768
  %i.sb = icmp ult i32 %i.sa, 15616
  %or.cond3.i.i113 = and i1 %i.sb, %i.rz
  br i1 %or.cond3.i.i113, label %tg3_read_mem.exit.thread.i, label %_tg3_flag.exit.i.i115

tg3_read_mem.exit.thread.i:                       ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.loopexit

_tg3_flag.exit.i.i115:                            ; preds = %._crit_edge.i.i
end_hunk_0
