Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tg3?download=true
inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_start:_tg3_flag.exit.i
  %i.bz = getelementptr [8 x i8], ptr %5, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 16
  %i.cb = getelementptr [832 x i8], ptr %0, i64 %i.by
  %i.cc = getelementptr i8, ptr %i.cb, i64 1192
  store i32 %i.ca, ptr %i.cc, align 8
  %i.cd = or disjoint i32 %.173.i.i, 1
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %5, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = getelementptr [832 x i8], ptr %0, i64 %i.ce
  %i.ci = getelementptr i8, ptr %i.ch, i64 1192
  store i32 %i.cg, ptr %i.ci, align 8
  %i.cj = or disjoint i32 %.173.i.i, 2
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %5, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 16
  %i.cn = getelementptr [832 x i8], ptr %0, i64 %i.ck
  %i.co = getelementptr i8, ptr %i.cn, i64 1192
  store i32 %i.cm, ptr %i.co, align 8
  %i.cp = or disjoint i32 %.173.i.i, 3
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %5, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr [832 x i8], ptr %0, i64 %i.cq
  %i.cu = getelementptr i8, ptr %i.ct, i64 1192
  store i32 %i.cs, ptr %i.cu, align 8
  %i.cv = add nuw i32 %.173.i.i, 4                ; 2 uses
  %niter264.next.3 = add nuw i32 %niter264, 4     ; 2 uses
  %niter264.ncmp.3 = icmp eq i32 %niter264.next.3, %unroll_iter263
  br i1 %niter264.ncmp.3, label %._crit_edge76.i.i.loopexit.unr-lcssa, label %.lr.ph75.i.i, !llvm.loop !464

._crit_edge76.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph75.i.i
  %lcmp.mod261.not = icmp eq i32 %xtraiter259, 0
  br i1 %lcmp.mod261.not, label %._crit_edge76.i.i, label %.lr.ph75.i.i.epil.preheader

.lr.ph75.i.i.epil.preheader:                      ; preds = %._crit_edge76.i.i.loopexit.unr-lcssa, %.lr.ph75.i.i.preheader
  %.173.i.i.epil.init = phi i32 [ 0, %.lr.ph75.i.i.preheader ], [ %i.cv, %._crit_edge76.i.i.loopexit.unr-lcssa ]
  %lcmp.mod262 = icmp ne i32 %xtraiter259, 0
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %.lr.ph75.i.i.epil

.lr.ph75.i.i.epil:                                ; preds = %.lr.ph75.i.i.epil, %.lr.ph75.i.i.epil.preheader
  %.173.i.i.epil = phi i32 [ %i.db, %.lr.ph75.i.i.epil ], [ %.173.i.i.epil.init, %.lr.ph75.i.i.epil.preheader ] ; 2 uses
  %epil.iter260 = phi i32 [ %epil.iter260.next, %.lr.ph75.i.i.epil ], [ 0, %.lr.ph75.i.i.epil.preheader ]
  %i.cw = sext i32 %.173.i.i.epil to i64          ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %5, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = getelementptr [832 x i8], ptr %0, i64 %i.cw
  %i.da = getelementptr i8, ptr %i.cz, i64 1192
  store i32 %i.cy, ptr %i.da, align 8
  %i.db = add nuw i32 %.173.i.i.epil, 1
  %epil.iter260.next = add i32 %epil.iter260, 1   ; 2 uses
  %epil.iter260.cmp.not = icmp eq i32 %epil.iter260.next, %xtraiter259
  br i1 %epil.iter260.cmp.not, label %._crit_edge76.i.i, label %.lr.ph75.i.i.epil, !llvm.loop !465

._crit_edge76.i.i:                                ; preds = %._crit_edge76.i.i.loopexit.unr-lcssa, %.lr.ph75.i.i.epil, %bb.m
  %i.dc = load ptr, ptr %i.b, align 64
  %i.dd = load i32, ptr %i.r, align 16
  %i.de = call i32 @netif_set_real_num_rx_queues(ptr noundef %i.dc, i32 noundef %i.dd) #27
  %.not71.i.i = icmp eq i32 %i.de, 0
  br i1 %.not71.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge76.i.i
  %i.df = load ptr, ptr %i.bj, align 8
  call void @pci_disable_msix(ptr noundef %i.df) #27
  br label %tg3_enable_msix.exit.i

bb.o:                                             ; preds = %._crit_edge76.i.i
  %i.dg = load i32, ptr %i.ah, align 4
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr i8, ptr %0, i64 5391      ; 4 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.di, i32 16, ptr elementtype(i8) %i.di) #28, !srcloc !41
  %i.dj = load i32, ptr %i.o, align 16            ; 2 uses
  %i.dk = icmp ugt i32 %i.dj, 1
  br i1 %i.dk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.di, i32 32, ptr elementtype(i8) %i.di) #28, !srcloc !41
  %.pre82.i.i = load i32, ptr %i.o, align 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dl = phi i32 [ %.pre82.i.i, %bb.q ], [ %i.dj, %bb.p ]
  %i.dm = load ptr, ptr %i.b, align 64
  %i.dn = call i32 @netif_set_real_num_tx_queues(ptr noundef %i.dm, i32 noundef %i.dl) #27 ; 0 uses
  br label %bb.s

tg3_enable_msix.exit.i:                           ; preds = %bb.n, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_tg3_flag.exit51.i

bb.s:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.do = getelementptr i8, ptr %0, i64 5386      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.do, i32 4, ptr elementtype(i8) %i.do) #28, !srcloc !41
  br label %_tg3_flag.exit54.i

_tg3_flag.exit51.i:                               ; preds = %_tg3_flag.exit48.i, %tg3_enable_msix.exit.i
  %i.dp = load volatile i64, ptr %i.d, align 8
  %i.dq = and i64 %i.dp, 32768
  %.not33.i = icmp eq i64 %i.dq, 0
  br i1 %.not33.i, label %_tg3_flag.exit54.i, label %bb.t

bb.t:                                             ; preds = %_tg3_flag.exit51.i
  %i.dr = getelementptr i8, ptr %0, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i32 @pci_enable_msi(ptr noundef %i.ds) #27
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.u, label %_tg3_flag.exit54.i

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr i8, ptr %0, i64 5386      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.dv, i32 2, ptr elementtype(i8) %i.dv) #28, !srcloc !41
  br label %_tg3_flag.exit54.i

_tg3_flag.exit54.i:                               ; preds = %bb.s, %_tg3_flag.exit51.i, %bb.t, %bb.u
  %i.dw = load volatile i64, ptr %i.d, align 8
  %i.dx = and i64 %i.dw, 131072
  %.not34.i = icmp eq i64 %i.dx, 0
  br i1 %.not34.i, label %_tg3_flag.exit57.i, label %_tg3_flag.exit60.i

_tg3_flag.exit57.i:                               ; preds = %_tg3_flag.exit54.i
  %i.dy = load volatile i64, ptr %i.d, align 8
  %i.dz = and i64 %i.dy, 262144
  %.not35.i = icmp eq i64 %i.dz, 0
  br i1 %.not35.i, label %_tg3_flag.exit66.i, label %_tg3_flag.exit60.i

_tg3_flag.exit60.i:                               ; preds = %_tg3_flag.exit57.i, %_tg3_flag.exit54.i
  %i.ea = getelementptr i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 16
  %i.ec = call i32 %i.eb(ptr noundef %0, i32 noundef 24576) #27, !inline_history !466 ; 3 uses
  %i.ed = load volatile i64, ptr %i.d, align 8
  %i.ee = and i64 %i.ed, 262144
  %.not36.i = icmp eq i64 %i.ee, 0
  br i1 %.not36.i, label %_tg3_flag.exit63.i, label %bb.v

bb.v:                                             ; preds = %_tg3_flag.exit60.i
  %i.ef = getelementptr i8, ptr %0, i64 5916
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = icmp ugt i32 %i.eg, 1
  %i.ei = or i32 %i.ec, 128
  %spec.select.i = select i1 %i.eh, i32 %i.ei, i32 %i.ec
  br label %_tg3_flag.exit63.i

_tg3_flag.exit63.i:                               ; preds = %_tg3_flag.exit60.i, %bb.v
  %.0.i = phi i32 [ %i.ec, %_tg3_flag.exit60.i ], [ %spec.select.i, %bb.v ]
  %i.ej = load volatile i64, ptr %i.d, align 8
  %i.ek = and i64 %i.ej, 70368744177664
  %.not37.i = icmp eq i64 %i.ek, 0
  %i.el = getelementptr i8, ptr %0, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = select i1 %.not37.i, i32 34, i32 2
  %i.eo = or i32 %i.en, %.0.i
  call void %i.em(ptr noundef %0, i32 noundef 24576, i32 noundef %i.eo) #27, !inline_history !466
  br label %_tg3_flag.exit66.i

_tg3_flag.exit66.i:                               ; preds = %bb.a, %_tg3_flag.exit57.i, %_tg3_flag.exit63.i
  %i.ep = load volatile i64, ptr %i.d, align 8
  %i.eq = and i64 %i.ep, 262144
  %.not38.i = icmp eq i64 %i.eq, 0
  %i.er = getelementptr i8, ptr %0, i64 5916      ; 14 uses
  br i1 %.not38.i, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %_tg3_flag.exit66.i
  store i32 1, ptr %i.er, align 4
  %i.es = getelementptr i8, ptr %0, i64 72
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr i8, ptr %i.et, i64 964
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr i8, ptr %0, i64 1192
  store i32 %i.ev, ptr %i.ew, align 8
  br label %bb.x

bb.w:                                             ; preds = %_tg3_flag.exit66.i
  %.pre.i = load i32, ptr %i.er, align 4
  %i.ex = icmp eq i32 %.pre.i, 1
  br i1 %i.ex, label %bb.x, label %tg3_ints_init.exit

bb.x:                                             ; preds = %bb.w, %.thread.i
  %i.ey = getelementptr i8, ptr %0, i64 336
  store i32 1, ptr %i.ey, align 16
  %i.ez = getelementptr i8, ptr %0, i64 4592
  store i32 1, ptr %i.ez, align 16
  %i.fa = load ptr, ptr %i.b, align 64
  %i.fb = call i32 @netif_set_real_num_tx_queues(ptr noundef %i.fa, i32 noundef 1) #27 ; 0 uses
  %i.fc = load ptr, ptr %i.b, align 64
  %i.fd = call i32 @netif_set_real_num_rx_queues(ptr noundef %i.fc, i32 noundef 1) #27 ; 0 uses
  br label %tg3_ints_init.exit

tg3_ints_init.exit:                               ; preds = %bb.x, %bb.w
  %i.fe = load volatile i64, ptr %i.d, align 8
  %i.ff = and i64 %i.fe, 65536
  %.not.i87 = icmp eq i64 %i.ff, 0
  br i1 %.not.i87, label %tg3_rss_check_indir_tbl.exit, label %bb.y

bb.y:                                             ; preds = %tg3_ints_init.exit
  %i.fg = getelementptr i8, ptr %0, i64 4592
  %i.fh = load i32, ptr %i.fg, align 16           ; 7 uses
  %i.fi = icmp eq i32 %i.fh, 1
  %i.fj = getelementptr i8, ptr %0, i64 5628      ; 7 uses
  br i1 %i.fi, label %bb.z, label %.preheader.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(128) %i.fj, i8 0, i64 128, i1 false)
  br label %tg3_rss_check_indir_tbl.exit

.preheader.i:                                     ; preds = %bb.y, %bb.aa
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %bb.aa ], [ 0, %bb.y ] ; 5 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 %indvars.iv.i
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i32
  %.not10.i = icmp ugt i32 %i.fh, %i.fm
  br i1 %.not10.i, label %.preheader.i.1, label %.thread.i88.preheader

.thread.i88.preheader:                            ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  br label %.thread.i88

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.fn = getelementptr i8, ptr %i.fj, i64 %indvars.iv.i
  %i.fo = getelementptr i8, ptr %i.fn, i64 1
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %.not10.i.1 = icmp ugt i32 %i.fh, %i.fq
  br i1 %.not10.i.1, label %.preheader.i.2, label %.thread.i88.preheader

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.fr = getelementptr i8, ptr %i.fj, i64 %indvars.iv.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 2
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i32
  %.not10.i.2 = icmp ugt i32 %i.fh, %i.fu
  br i1 %.not10.i.2, label %.preheader.i.3, label %.thread.i88.preheader

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.fv = getelementptr i8, ptr %i.fj, i64 %indvars.iv.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 3
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i32
  %.not10.i.3 = icmp ugt i32 %i.fh, %i.fy
  br i1 %.not10.i.3, label %bb.aa, label %.thread.i88.preheader

bb.aa:                                            ; preds = %.preheader.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 128
  br i1 %exitcond.not.i.3, label %tg3_rss_check_indir_tbl.exit, label %.preheader.i, !llvm.loop !467

.thread.i88:                                      ; preds = %.thread.i88, %.thread.i88.preheader
  %indvars.iv.i.i = phi i64 [ 0, %.thread.i88.preheader ], [ %indvars.iv.next.i.i.1.a, %.thread.i88 ] ; 4 uses
  %i.fz = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ga = urem i32 %i.fz, %i.fh
  %i.gb = trunc nuw nsw i32 %i.ga to i8
  %i.gc = getelementptr i8, ptr %i.fj, i64 %indvars.iv.i.i
  store i8 %i.gb, ptr %i.gc, align 1
  %indvars.iv.next.i.i.a = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv.next.i.i.a to i32
  %i.ge = urem i32 %i.gd, %i.fh
  %i.gf = trunc nuw nsw i32 %i.ge to i8
  %i.gg = getelementptr i8, ptr %i.fj, i64 %indvars.iv.next.i.i.a
  store i8 %i.gf, ptr %i.gg, align 1
  %indvars.iv.next.i.i.1.a = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i89.1 = icmp eq i64 %indvars.iv.next.i.i.1.a, 128
  br i1 %exitcond.not.i.i89.1, label %tg3_rss_check_indir_tbl.exit, label %.thread.i88, !llvm.loop !2

tg3_rss_check_indir_tbl.exit:                     ; preds = %bb.aa, %.thread.i88, %tg3_ints_init.exit, %bb.z
  %i.gh = getelementptr i8, ptr %0, i64 72        ; 20 uses
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr i8, ptr %i.gi, i64 200
  %i.gk = getelementptr i8, ptr %0, i64 5840
  %i.gl = call ptr @dma_alloc_attrs(ptr noundef %i.gj, i64 noundef 2048, ptr noundef %i.gk, i32 noundef 3264, i64 noundef 0) #27 ; 2 uses
  %i.gm = getelementptr i8, ptr %0, i64 5832
  store ptr %i.gl, ptr %i.gm, align 8
  %.not.i90 = icmp eq ptr %i.gl, null
  br i1 %.not.i90, label %tg3_alloc_consistent.exit, label %.preheader.i91

.preheader.i91:                                   ; preds = %tg3_rss_check_indir_tbl.exit
  %i.gn = load i32, ptr %i.er, align 4
  %.not53.i = icmp eq i32 %i.gn, 0
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i91
  %i.go = getelementptr i8, ptr %0, i64 384
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ai, %.lr.ph.i
  %.02952.i = phi i32 [ 0, %.lr.ph.i ], [ %i.he, %bb.ai ] ; 3 uses
  %i.gp = sext i32 %.02952.i to i64
  %i.gq = getelementptr [832 x i8], ptr %i.go, i64 %i.gp ; 3 uses
  %i.gr = load ptr, ptr %i.gh, align 8
  %i.gs = getelementptr i8, ptr %i.gr, i64 200
  %i.gt = getelementptr i8, ptr %i.gq, i64 752
  %i.gu = call ptr @dma_alloc_attrs(ptr noundef %i.gs, i64 noundef 80, ptr noundef %i.gt, i32 noundef 3264, i64 noundef 0) #27 ; 7 uses
  %i.gv = getelementptr i8, ptr %i.gq, i64 520
  store ptr %i.gu, ptr %i.gv, align 8
  %.not34.i92 = icmp eq ptr %i.gu, null
  br i1 %.not34.i92, label %tg3_alloc_consistent.exit, label %_tg3_flag.exit.i94

_tg3_flag.exit.i94:                               ; preds = %bb.ab
  %i.gw = load volatile i64, ptr %i.d, align 8
  %i.gx = and i64 %i.gw, 1152921504606846976
  %.not35.i96 = icmp eq i64 %i.gx, 0
  br i1 %.not35.i96, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %_tg3_flag.exit.i94
  switch i32 %.02952.i, label %bb.ai [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gy = getelementptr i8, ptr %i.gu, i64 16
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.gz = getelementptr i8, ptr %i.gu, i64 8
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.ha = getelementptr i8, ptr %i.gu, i64 14
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac
  %i.hb = getelementptr i8, ptr %i.gu, i64 12
  br label %bb.ai

bb.ah:                                            ; preds = %_tg3_flag.exit.i94
  %i.hc = getelementptr i8, ptr %i.gu, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.hc, %bb.ah ], [ null, %bb.ac ], [ %i.gy, %bb.ad ], [ %i.gz, %bb.ae ], [ %i.ha, %bb.af ], [ %i.hb, %bb.ag ]
  %i.hd = getelementptr i8, ptr %i.gq, i64 592
  store ptr %.sink.i, ptr %i.hd, align 16
  %i.he = add nuw i32 %.02952.i, 1                ; 2 uses
  %i.hf = load i32, ptr %i.er, align 4
  %i.hg = icmp ult i32 %i.he, %i.hf
  br i1 %i.hg, label %bb.ab, label %._crit_edge.i, !llvm.loop !468

._crit_edge.i:                                    ; preds = %bb.ai, %.preheader.i91
  %i.hh = getelementptr i8, ptr %0, i64 384       ; 17 uses
  %i.hi = load volatile i64, ptr %i.d, align 8
  %i.hj = getelementptr i8, ptr %0, i64 336       ; 3 uses
  %i.hk = load i32, ptr %i.hj, align 16
  %.not28.i.i = icmp eq i32 %i.hk, 0
  br i1 %.not28.i.i, label %.loopexit.i, label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %._crit_edge.i
  %i.hl = and i64 %i.hi, 2305843009213693952
  %.not.i.i98 = icmp eq i64 %i.hl, 0
  %i.hm = getelementptr i8, ptr %0, i64 1216
  %spec.select.i.i = select i1 %.not.i.i98, ptr %i.hh, ptr %i.hm
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i.i97
  %.02027.i.i = phi i32 [ 0, %.lr.ph.i.i97 ], [ %i.hu, %bb.al ]
  %.126.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i97 ], [ %i.hv, %bb.al ] ; 4 uses
  %i.hn = call noalias align 4096 dereferenceable_or_null(12288) ptr @__kmalloc_large_noprof(i64 noundef range(i64 -2147483648, 4294967296) 12288, i32 noundef range(i32 2080, 3584) 3520) #33 ; 2 uses
  %i.ho = getelementptr i8, ptr %.126.i.i, i64 736
  store ptr %i.hn, ptr %i.ho, align 32
  %.not23.i.i = icmp eq ptr %i.hn, null
  br i1 %.not23.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hp = load ptr, ptr %i.gh, align 8
  %i.hq = getelementptr i8, ptr %i.hp, i64 200
  %i.hr = getelementptr i8, ptr %.126.i.i, i64 768
  %i.hs = call ptr @dma_alloc_attrs(ptr noundef %i.hq, i64 noundef 8192, ptr noundef %i.hr, i32 noundef 3264, i64 noundef 0) #27 ; 2 uses
  %i.ht = getelementptr i8, ptr %.126.i.i, i64 728
  store ptr %i.hs, ptr %i.ht, align 8
  %.not24.i.i = icmp eq ptr %i.hs, null
  br i1 %.not24.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hu = add nuw i32 %.02027.i.i, 1              ; 2 uses
  %i.hv = getelementptr i8, ptr %.126.i.i, i64 832
  %i.hw = load i32, ptr %i.hj, align 16
  %i.hx = icmp ult i32 %i.hu, %i.hw
  br i1 %i.hx, label %bb.aj, label %.loopexit.i, !llvm.loop !469

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.hy = getelementptr i8, ptr %0, i64 5912      ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8
  %.not13.i.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not13.i.i.i, label %tg3_alloc_consistent.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am, %bb.ao
  %.012.i.i.i = phi i32 [ %i.ik, %bb.ao ], [ 0, %bb.am ] ; 2 uses
  %i.ia = sext i32 %.012.i.i.i to i64
  %i.ib = getelementptr [832 x i8], ptr %i.hh, i64 %i.ia ; 3 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 728    ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.ie = load ptr, ptr %i.gh, align 8
  %i.if = getelementptr i8, ptr %i.ie, i64 200
  %i.ig = getelementptr i8, ptr %i.ib, i64 768
  %i.ih = load i64, ptr %i.ig, align 64
  call void @dma_free_attrs(ptr noundef %i.if, i64 noundef 8192, ptr noundef nonnull %i.id, i64 noundef %i.ih, i64 noundef 0) #27
  store ptr null, ptr %i.ic, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i.i.i
  %i.ii = getelementptr i8, ptr %i.ib, i64 736    ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 32
  call void @kfree(ptr noundef %i.ij) #27
  store ptr null, ptr %i.ii, align 32
  %i.ik = add nuw i32 %.012.i.i.i, 1              ; 2 uses
  %i.il = load i32, ptr %i.hy, align 8
  %i.im = icmp ult i32 %i.ik, %i.il
  br i1 %i.im, label %.lr.ph.i.i.i, label %tg3_alloc_consistent.exit, !llvm.loop !26

.loopexit.i:                                      ; preds = %bb.al, %._crit_edge.i
  %i.in = getelementptr i8, ptr %0, i64 4592      ; 2 uses
  %i.io = load i32, ptr %i.in, align 16
  %i.ip = load volatile i64, ptr %i.d, align 8
  %i.iq = lshr i64 %i.ip, 60
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = and i32 %i.ir, 1
  %spec.select.i38.i = add i32 %i.is, %i.io       ; 3 uses
  %.not.i39.i = icmp eq i32 %spec.select.i38.i, 0
  br i1 %.not.i39.i, label %.loopexit157, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.loopexit.i
  %i.it = getelementptr i8, ptr %0, i64 5392      ; 2 uses
  %i.iu = getelementptr i8, ptr %0, i64 4564      ; 3 uses
  %wide.trip.count.i.i = zext i32 %spec.select.i38.i to i64
  %i.iv = load volatile i64, ptr %i.d, align 8
  %i.iw = and i64 %i.iv, 18014398509481984
  %.not.not.i.peel.i.i = icmp eq i64 %i.iw, 0
  %i.ix = select i1 %.not.not.i.peel.i.i, i64 8192, i64 32768
  %i.iy = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 4096, 32769) %i.ix, i32 noundef range(i32 2080, 3584) 3520) #33 ; 2 uses
  %i.iz = getelementptr i8, ptr %0, i64 1016
  store ptr %i.iy, ptr %i.iz, align 8
  %.not30.i.peel.i.i = icmp eq ptr %i.iy, null
  br i1 %.not30.i.peel.i.i, label %select.unfold.i.i, label %_tg3_flag.exit41.i.peel.i.i

_tg3_flag.exit41.i.peel.i.i:                      ; preds = %.lr.ph.i40.i
  %i.ja = load ptr, ptr %i.gh, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 200
  %i.jc = load volatile i64, ptr %i.d, align 8
  %i.jd = and i64 %i.jc, 18014398509481984
  %.not31.i.peel.i.i = icmp eq i64 %i.jd, 0
  %i.je = select i1 %.not31.i.peel.i.i, i64 16384, i64 65536
  %i.jf = getelementptr i8, ptr %0, i64 1032
  %i.jg = call ptr @dma_alloc_attrs(ptr noundef %i.jb, i64 noundef range(i64 0, 137438953441) %i.je, ptr noundef %i.jf, i32 noundef 3264, i64 noundef 0) #27 ; 2 uses
  %i.jh = getelementptr i8, ptr %0, i64 1000
  store ptr %i.jg, ptr %i.jh, align 8
  %.not32.i.peel.i.i = icmp eq ptr %i.jg, null
  br i1 %.not32.i.peel.i.i, label %.loopexit.i.i, label %_tg3_flag.exit44.i.peel.i.i

_tg3_flag.exit44.i.peel.i.i:                      ; preds = %_tg3_flag.exit41.i.peel.i.i
  %i.ji = load volatile i64, ptr %i.d, align 8
  %i.jj = and i64 %i.ji, 1073741824
  %.not33.i.peel.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not33.i.peel.i.i, label %_tg3_flag.exit28.peel.i.i, label %_tg3_flag.exit47.i.peel.i.i

_tg3_flag.exit47.i.peel.i.i:                      ; preds = %_tg3_flag.exit44.i.peel.i.i
end_hunk_0
