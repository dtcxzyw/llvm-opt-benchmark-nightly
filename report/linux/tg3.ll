inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_set_pauseparam:bb.a
  %i.ba = getelementptr [832 x i8], ptr %i.a, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 1192
  %i.bc = load i32, ptr %i.bb, align 8
  tail call void @synchronize_irq(i32 noundef %i.bc) #27
  %i.bd = add nuw i32 %.08.i.i, 1                 ; 2 uses
  %i.be = load i32, ptr %i.ax, align 4
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i.i, label %tg3_irq_quiesce.exit.i, !llvm.loop !33

tg3_irq_quiesce.exit.i:                           ; preds = %.lr.ph.i.i, %bb.t
  tail call void @_raw_spin_lock_bh(ptr noundef %i.av) #27
  br label %tg3_full_lock.exit

tg3_full_lock.exit:                               ; preds = %bb.q, %tg3_irq_quiesce.exit.i
  %i.bg = getelementptr i8, ptr %1, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %.not61 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr i8, ptr %0, i64 8011      ; 4 uses
  br i1 %.not61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %tg3_full_lock.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bi, i32 4, ptr elementtype(i8) %i.bi) #28, !srcloc !12
  br label %netif_running.exit78

bb.v:                                             ; preds = %tg3_full_lock.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bi, i32 -5, ptr elementtype(i8) %i.bi) #28, !srcloc !25
  br label %netif_running.exit78

netif_running.exit78:                             ; preds = %bb.v, %bb.u
  %i.bj = getelementptr i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 4
  %.not62 = icmp eq i32 %i.bk, 0
  %i.bl = getelementptr i8, ptr %0, i64 8098      ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = and i8 %i.bm, -3
  %masksel = select i1 %.not62, i8 0, i8 2
  %.sink85 = or disjoint i8 %i.bn, %masksel       ; 2 uses
  store i8 %.sink85, ptr %i.bl, align 2
  %i.bo = getelementptr i8, ptr %1, i64 12
  %i.bp = load i32, ptr %i.bo, align 4
  %.not63 = icmp ne i32 %i.bp, 0
  %i.bq = getelementptr i8, ptr %0, i64 8098
  %i.br = and i8 %.sink85, -2
  %masksel87 = zext i1 %.not63 to i8
  %.sink86 = or disjoint i8 %i.br, %masksel87
  store i8 %.sink86, ptr %i.bq, align 2
  %i.bs = load volatile i64, ptr %i.as, align 8
  %.in.i77 = trunc i64 %i.bs to i1
  br i1 %.in.i77, label %bb.w, label %bb.y

bb.w:                                             ; preds = %netif_running.exit78
  tail call fastcc void @tg3_halt(ptr noundef %i.a, i32 noundef 0, i1 noundef zeroext true) #30
  %i.bt = getelementptr i8, ptr %0, i64 8188
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = lshr i32 %i.bu, 12
  %switch.tableidx = add nsw i32 %i.bv, -22295    ; 2 uses
  %i.bw = icmp ult i32 %switch.tableidx, 10
  %switch.cast = trunc i32 %switch.tableidx to i10
  %switch.downshift = lshr i10 -507, %switch.cast
  %switch.masked = trunc i10 %switch.downshift to i1
  %.054 = select i1 %i.bw, i1 %switch.masked, i1 false
  %i.bx = tail call fastcc i32 @tg3_restart_hw(ptr noundef %i.a, i1 noundef zeroext %.054) #30, !srcloc !354 ; 2 uses
  %.not64 = icmp eq i32 %i.bx, 0
  br i1 %.not64, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @tg3_netif_start(ptr noundef %i.a) #30, !srcloc !355
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %netif_running.exit78
  %.055 = phi i32 [ %i.bx, %bb.w ], [ 0, %bb.x ], [ 0, %netif_running.exit78 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %i.av) #27
  tail call void @mutex_unlock(ptr noundef %i.au) #27
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.o, %bb.n, %bb.y
  %.1 = phi i32 [ %.055, %bb.y ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ]
  %i.by = getelementptr i8, ptr %0, i64 8236      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = or i32 %i.bz, 8
  store i32 %i.ca, ptr %i.by, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %bb.m, %.thread
  %.157 = phi i32 [ %.1, %.thread ], [ -22, %bb.c ], [ 0, %bb.m ]
  ret i32 %.157
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tg3_self_test(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) initializes((0, 64)) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca [28 x i8], align 16               ; 5 uses
  %i.f = alloca [28 x i8], align 16               ; 25 uses
  %i.g = getelementptr i8, ptr %0, i64 2624       ; 94 uses
  %i.h = getelementptr i8, ptr %1, i64 4          ; 18 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 4
  %.not168 = icmp eq i32 %i.j, 0                  ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 8236       ; 18 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_tg3_flag.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 2696       ; 2 uses
  %.val.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 8160
  %.val5.i = load i32, ptr %i.o, align 32
  %i.p = tail call i32 @pci_write_config_dword(ptr noundef %.val.i, i32 noundef 104, i32 noundef %.val5.i) #27 ; 0 uses
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = tail call i32 @pci_set_power_state(ptr noundef %i.q, i32 noundef 0) #27
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %0, i64 2688
  %i.t = load ptr, ptr %i.s, align 64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %i.t, ptr noundef nonnull @.str.54) #29
  %i.u = load i32, ptr %i.h, align 4
  %i.v = or i32 %i.u, 2
  store i32 %i.v, ptr %i.h, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %2, i8 1, i64 64, i1 false)
  br label %bb.dr

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @tg3_pwrsrc_switch_to_vmain(ptr noundef %i.g) #30
  tail call fastcc void @tg3_ape_driver_state_change(ptr noundef %i.g, i32 noundef 1) #30, !srcloc !356
  br label %_tg3_flag.exit.i

_tg3_flag.exit.i:                                 ; preds = %bb.d, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.w = getelementptr i8, ptr %0, i64 8008       ; 24 uses
  %i.x = load volatile i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 576460752303423488
  %.not.i77 = icmp eq i64 %i.y, 0
  br i1 %.not.i77, label %bb.e, label %tg3_test_nvram.exit.thread145

bb.e:                                             ; preds = %_tg3_flag.exit.i
  store i32 0, ptr %i.c, align 4, !annotation !11
  store i32 0, ptr %i.d, align 4, !annotation !11
  %i.z = call fastcc i32 @tg3_nvram_read(ptr noundef %i.g, i32 noundef 0, ptr noundef nonnull %i.c) #30, !srcloc !357
  %.not140.i = icmp eq i32 %i.z, 0
  br i1 %.not140.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.c, align 4             ; 5 uses
  %.not159.i = icmp eq i32 %i.aa, 1721324970
  br i1 %.not159.i, label %_kmalloc_noprof.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = and i32 %i.aa, -16777216
  %i.ac = icmp eq i32 %i.ab, -1526726656
  br i1 %i.ac, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ad = and i32 %i.aa, 14680064
  %i.ae = icmp eq i32 %i.ad, 2097152
  br i1 %i.ae, label %bb.i, label %tg3_test_nvram.exit.thread145

bb.i:                                             ; preds = %bb.h
  %i.af = lshr i32 %i.aa, 16
  %i.ag = and i32 %i.af, 31
  switch i32 %i.ag, label %.sink.split [
    i32 0, label %_kmalloc_noprof.exit.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  br label %_kmalloc_noprof.exit.i

bb.k:                                             ; preds = %bb.i
  br label %_kmalloc_noprof.exit.i

bb.l:                                             ; preds = %bb.i
  br label %_kmalloc_noprof.exit.i

bb.m:                                             ; preds = %bb.i
  br label %_kmalloc_noprof.exit.i

bb.n:                                             ; preds = %bb.i
  br label %_kmalloc_noprof.exit.i

bb.o:                                             ; preds = %bb.g
  %i.ah = and i32 %i.aa, 65535
  %i.ai = icmp eq i32 %i.ah, 43981
  br i1 %i.ai, label %_kmalloc_noprof.exit.i, label %.sink.split

_kmalloc_noprof.exit.i:                           ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f
  %i.aj = phi i1 [ false, %bb.i ], [ true, %bb.f ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ]
  %.0119.i = phi i32 [ 20, %bb.i ], [ 256, %bb.f ], [ 24, %bb.j ], [ 28, %bb.k ], [ 32, %bb.l ], [ 36, %bb.m ], [ 80, %bb.n ], [ 32, %bb.o ] ; 3 uses
  %i.ak = zext nneg i32 %.0119.i to i64           ; 3 uses
  %i.al = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 4294967296) %i.ak, i32 noundef 3264) #33 ; 45 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.sink.split, label %.preheader169.preheader.i

.preheader169.preheader.i:                        ; preds = %_kmalloc_noprof.exit.i
  %i.an = add nsw i32 %.0119.i, -4
  %i.ao = lshr exact i32 %i.an, 2
  %i.ap = add nuw nsw i32 %i.ao, 1
  %wide.trip.count.i = zext nneg i32 %i.ap to i64
  br label %.preheader169.i

.preheader169.i:                                  ; preds = %bb.p, %.preheader169.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader169.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %.0131170.i = phi i32 [ 0, %.preheader169.preheader.i ], [ %i.au, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !annotation !11
  %i.aq = call fastcc i32 @tg3_nvram_read(ptr noundef %i.g, i32 noundef %.0131170.i, ptr noundef nonnull %i.b) #30, !srcloc !101
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %.preheader169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %tg3_test_nvram.exit.thread150

bb.p:                                             ; preds = %.preheader169.i
  %i.ar = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.b, align 4
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %i.at, ptr %i.ar, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.au = add nuw nsw i32 %.0131170.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.q, label %.preheader169.i, !llvm.loop !358

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.al, align 8            ; 5 uses
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av) ; 4 uses
  store i32 %i.aw, ptr %i.c, align 4
  %i.ax = and i32 %i.aw, -16777216
  %i.ay = icmp eq i32 %i.ax, -1526726656
  %i.az = trunc i32 %i.av to i8
  %i.ba = lshr i32 %i.av, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = lshr i32 %i.av, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = lshr i32 %i.av, 24
  %i.bf = trunc nuw i32 %i.be to i8
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = and i32 %i.aw, 2031616
  %i.bh = icmp eq i32 %i.bg, 131072
  br i1 %i.bh, label %.preheader161.preheader.i, label %.preheader162.i.preheader

.preheader162.i.preheader:                        ; preds = %bb.r
  %xtraiter = and i64 %i.ak, 4                    ; 2 uses
  %unroll_iter = and i64 %i.ak, 376
  br label %.preheader162.i

.preheader161.preheader.i:                        ; preds = %bb.r
  %i.bi = add i8 %i.bb, %i.az
  %i.bj = add i8 %i.bi, %i.bd
  %i.bk = add i8 %i.bj, %i.bf
  %i.bl = getelementptr i8, ptr %i.al, i64 4
  %i.bm = load i8, ptr %i.bl, align 4
  %i.bn = add i8 %i.bk, %i.bm
  %i.bo = getelementptr i8, ptr %i.al, i64 5
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = add i8 %i.bn, %i.bp
  %i.br = getelementptr i8, ptr %i.al, i64 6
  %i.bs = load i8, ptr %i.br, align 2
  %i.bt = add i8 %i.bq, %i.bs
  %i.bu = getelementptr i8, ptr %i.al, i64 7
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = add i8 %i.bt, %i.bv
  %i.bx = getelementptr i8, ptr %i.al, i64 8
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = add i8 %i.bw, %i.by
  %i.ca = getelementptr i8, ptr %i.al, i64 9
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = add i8 %i.bz, %i.cb
  %i.cd = getelementptr i8, ptr %i.al, i64 10
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = add i8 %i.cc, %i.ce
  %i.cg = getelementptr i8, ptr %i.al, i64 11
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = add i8 %i.cf, %i.ch
  %i.cj = getelementptr i8, ptr %i.al, i64 12
  %i.ck = load i8, ptr %i.cj, align 4
  %i.cl = add i8 %i.ci, %i.ck
  %i.cm = getelementptr i8, ptr %i.al, i64 13
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = add i8 %i.cl, %i.cn
  %i.cp = getelementptr i8, ptr %i.al, i64 14
  %i.cq = load i8, ptr %i.cp, align 2
  %i.cr = add i8 %i.co, %i.cq
  %i.cs = getelementptr i8, ptr %i.al, i64 15
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = add i8 %i.cr, %i.ct                     ; 3 uses
  br i1 %i.aj, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader161.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %.0119.i, i32 21) ; 2 uses
  %wide.trip.count216.i = zext nneg i32 %umax.i to i64
  %i.cv = add nsw i64 %wide.trip.count216.i, -20  ; 2 uses
  %xtraiter225 = and i64 %i.cv, 5                 ; 3 uses
  %3 = add nsw i32 %umax.i, -21
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter230 = and i64 %i.cv, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv214.i = phi i64 [ 20, %.lr.ph.preheader.i.new ], [ %indvars.iv.next215.i.7, %.lr.ph.i ] ; 9 uses
  %.1112190.i = phi i8 [ %i.cu, %.lr.ph.preheader.i.new ], [ %i.ea, %.lr.ph.i ]
  %niter231 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter231.next.7, %.lr.ph.i ]
  %i.cw = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.cx = load i8, ptr %i.cw, align 4
  %i.cy = add i8 %i.cx, %.1112190.i
  %i.cz = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.da = getelementptr i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = add i8 %i.db, %i.cy
  %i.dd = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.de = getelementptr i8, ptr %i.dd, i64 2
  %i.df = load i8, ptr %i.de, align 2
  %i.dg = add i8 %i.df, %i.dc
  %i.dh = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.di = getelementptr i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = add i8 %i.dj, %i.dg
  %i.dl = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %i.dn = load i8, ptr %i.dm, align 4
  %i.do = add i8 %i.dn, %i.dk
  %i.dp = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 5
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = add i8 %i.dr, %i.do
  %i.dt = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.du = getelementptr i8, ptr %i.dt, i64 6
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = add i8 %i.dv, %i.ds
  %i.dx = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 7
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = add i8 %i.dz, %i.dw                     ; 3 uses
  %indvars.iv.next215.i.7 = add nuw nsw i64 %indvars.iv214.i, 8 ; 2 uses
  %niter231.next.7 = add i64 %niter231, 8         ; 2 uses
  %niter231.ncmp.7 = icmp eq i64 %niter231.next.7, %unroll_iter230
  br i1 %niter231.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !359

.preheader162.i:                                  ; preds = %.preheader162.i, %.preheader162.i.preheader
  %indvars.iv207.i = phi i64 [ 0, %.preheader162.i.preheader ], [ %indvars.iv.next208.i.7, %.preheader162.i ] ; 9 uses
  %.2186.i = phi i8 [ 0, %.preheader162.i.preheader ], [ %i.ff, %.preheader162.i ]
  %niter = phi i64 [ 0, %.preheader162.i.preheader ], [ %niter.next.7, %.preheader162.i ]
  %i.eb = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.ec = load i8, ptr %i.eb, align 8
  %i.ed = add i8 %i.ec, %.2186.i
  %i.ee = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = add i8 %i.eg, %i.ed
  %i.ei = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 2
  %i.ek = load i8, ptr %i.ej, align 2
  %i.el = add i8 %i.ek, %i.eh
  %i.em = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.en = getelementptr i8, ptr %i.em, i64 3
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = add i8 %i.eo, %i.el
  %i.eq = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %i.es = load i8, ptr %i.er, align 4
  %i.et = add i8 %i.es, %i.ep
  %i.eu = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 5
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = add i8 %i.ew, %i.et
  %i.ey = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.ez = getelementptr i8, ptr %i.ey, i64 6
  %i.fa = load i8, ptr %i.ez, align 2
  %i.fb = add i8 %i.fa, %i.ex
  %i.fc = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i
  %i.fd = getelementptr i8, ptr %i.fc, i64 7
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = add i8 %i.fe, %i.fb                     ; 3 uses
  %indvars.iv.next208.i.7 = add nuw nsw i64 %indvars.iv207.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit221.unr-lcssa, label %.preheader162.i, !llvm.loop !360

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod227.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod227.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv214.i.epil.init = phi i64 [ 20, %.lr.ph.preheader.i ], [ %indvars.iv.next215.i.7, %.loopexit.i.loopexit.unr-lcssa ]
  %.1112190.i.epil.init = phi i8 [ %i.cu, %.lr.ph.preheader.i ], [ %i.ea, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod229 = icmp ne i64 %xtraiter225, 0
  tail call void @llvm.assume(i1 %lcmp.mod229)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv214.i.epil = phi i64 [ %indvars.iv214.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next215.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.1112190.i.epil = phi i8 [ %.1112190.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.fi, %.lr.ph.i.epil ]
  %epil.iter226 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter226.next, %.lr.ph.i.epil ]
  %i.fg = getelementptr i8, ptr %i.al, i64 %indvars.iv214.i.epil
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = add i8 %i.fh, %.1112190.i.epil          ; 2 uses
  %indvars.iv.next215.i.epil = add nuw nsw i64 %indvars.iv214.i.epil, 1
  %epil.iter226.next = add i64 %epil.iter226, 1   ; 2 uses
  %epil.iter226.cmp.not = icmp eq i64 %epil.iter226.next, %xtraiter225
  br i1 %epil.iter226.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !361

.loopexit.i.loopexit221.unr-lcssa:                ; preds = %.preheader162.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader162.i.epil.preheader

.preheader162.i.epil.preheader:                   ; preds = %.loopexit.i.loopexit221.unr-lcssa
  %lcmp.mod224 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.preheader162.i.epil

.preheader162.i.epil:                             ; preds = %.preheader162.i.epil, %.preheader162.i.epil.preheader
  %indvars.iv207.i.epil = phi i64 [ %indvars.iv.next208.i.epil, %.preheader162.i.epil ], [ %indvars.iv.next208.i.7, %.preheader162.i.epil.preheader ] ; 2 uses
  %.2186.i.epil = phi i8 [ %i.fl, %.preheader162.i.epil ], [ %i.ff, %.preheader162.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader162.i.epil ], [ 0, %.preheader162.i.epil.preheader ]
  %i.fj = getelementptr i8, ptr %i.al, i64 %indvars.iv207.i.epil
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = add i8 %i.fk, %.2186.i.epil             ; 2 uses
  %indvars.iv.next208.i.epil = add nuw nsw i64 %indvars.iv207.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.preheader162.i.epil, !llvm.loop !362

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit221.unr-lcssa, %.preheader162.i.epil, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader161.preheader.i
  %.3.i = phi i8 [ %i.fi, %.lr.ph.i.epil ], [ %i.cu, %.preheader161.preheader.i ], [ %i.ea, %.loopexit.i.loopexit.unr-lcssa ], [ %i.ff, %.loopexit.i.loopexit221.unr-lcssa ], [ %i.fl, %.preheader162.i.epil ]
  %i.fm = icmp eq i8 %.3.i, 0
  br i1 %i.fm, label %tg3_test_nvram.exit.thread155, label %tg3_test_nvram.exit.thread150

bb.s:                                             ; preds = %bb.q
  %i.fn = and i32 %i.aw, 65535
  %i.fo = icmp eq i32 %i.fn, 43981
  br i1 %i.fo, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 0, i64 28, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.f, i8 0, i64 28, i1 false), !annotation !11
  %i.fp = getelementptr i8, ptr %i.al, i64 16
  %i.fq = getelementptr i8, ptr %i.al, i64 17
  br label %bb.u

bb.u:                                             ; preds = %.loopexit167.i, %bb.t
  %.0124183.i = phi i32 [ 0, %bb.t ], [ %.4128.i, %.loopexit167.i ] ; 24 uses
  %.1130182.i = phi i32 [ 0, %bb.t ], [ %i.ji, %.loopexit167.i ] ; 2 uses
  %.4135181.i = phi i32 [ 0, %bb.t ], [ %i.jl, %.loopexit167.i ] ; 5 uses
  %i.fr = and i32 %.4135181.i, -9
  %or.cond.i = icmp eq i32 %i.fr, 0
  br i1 %or.cond.i, label %.preheader165.i, label %bb.v

.preheader165.i:                                  ; preds = %bb.u
  %i.fs = zext nneg i32 %.4135181.i to i64
  %i.ft = getelementptr i8, ptr %i.al, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1             ; 7 uses
  %i.fv = and i8 %i.fu, -128
  %i.fw = add i32 %.0124183.i, 1
  %i.fx = sext i32 %.0124183.i to i64
  %i.fy = getelementptr i8, ptr %i.f, i64 %i.fx
  store i8 %i.fv, ptr %i.fy, align 1
  %i.fz = and i8 %i.fu, 64
  %i.ga = add i32 %.0124183.i, 2
  %i.gb = sext i32 %i.fw to i64
  %i.gc = getelementptr i8, ptr %i.f, i64 %i.gb
  store i8 %i.fz, ptr %i.gc, align 1
  %i.gd = and i8 %i.fu, 32
  %i.ge = add i32 %.0124183.i, 3
  %i.gf = sext i32 %i.ga to i64
  %i.gg = getelementptr i8, ptr %i.f, i64 %i.gf
  store i8 %i.gd, ptr %i.gg, align 1
  %i.gh = and i8 %i.fu, 16
  %i.gi = add i32 %.0124183.i, 4
  %i.gj = sext i32 %i.ge to i64
  %i.gk = getelementptr i8, ptr %i.f, i64 %i.gj
  store i8 %i.gh, ptr %i.gk, align 1
  %i.gl = and i8 %i.fu, 8
  %i.gm = add i32 %.0124183.i, 5
  %i.gn = sext i32 %i.gi to i64
  %i.go = getelementptr i8, ptr %i.f, i64 %i.gn
  store i8 %i.gl, ptr %i.go, align 1
  %i.gp = and i8 %i.fu, 4
  %i.gq = add i32 %.0124183.i, 6
  %i.gr = sext i32 %i.gm to i64
  %i.gs = getelementptr i8, ptr %i.f, i64 %i.gr
  store i8 %i.gp, ptr %i.gs, align 1
  %i.gt = and i8 %i.fu, 2
  %i.gu = add i32 %.0124183.i, 7
  %i.gv = sext i32 %i.gq to i64
  %i.gw = getelementptr i8, ptr %i.f, i64 %i.gv
  store i8 %i.gt, ptr %i.gw, align 1
  %i.gx = or disjoint i32 %.4135181.i, 1
  br label %.loopexit167.i

bb.v:                                             ; preds = %bb.u
  %i.gy = icmp eq i32 %.4135181.i, 16
end_hunk_0
