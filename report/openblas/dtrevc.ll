loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dtrevc_:bb.a
  %i.ae = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i32 %i.ad, 0                    ; 2 uses
  %i.ah = select i1 %i.af, i1 true, i1 %i.ag      ; 3 uses
  %i.ai = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = select i1 %i.aj, i1 true, i1 %i.ag      ; 3 uses
  %i.al = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %i.am = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.an = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #7 ; 3 uses
  store i32 0, ptr %13, align 4, !tbaa !8
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.ao = icmp ne i32 %i.al, 0
  %i.ap = icmp ne i32 %i.am, 0
  %or.cond3 = select i1 %i.ao, i1 true, i1 %i.ap
  %i.aq = icmp ne i32 %i.an, 0                    ; 2 uses
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.aq
  br i1 %or.cond5, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.ar = load i32, ptr %3, align 4, !tbaa !8     ; 6 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %5, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 1)
  %i.au = icmp slt i32 %i.at, %spec.select
  br i1 %i.au, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  %i.ax = icmp samesign ult i32 %i.av, %i.ar
  %or.cond1219 = select i1 %i.ak, i1 %i.ax, i1 false
  %or.cond1224 = select i1 %i.aw, i1 true, i1 %or.cond1219
  br i1 %or.cond1224, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %9, align 4, !tbaa !8     ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  %i.ba = icmp samesign ult i32 %i.ay, %i.ar
  %or.cond1220 = select i1 %i.ah, i1 %i.ba, i1 false
  %or.cond1225 = select i1 %i.az, i1 true, i1 %or.cond1220
  br i1 %or.cond1225, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.aq, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %11, align 4, !tbaa !8
  %i.bb = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  store i32 %i.bb, ptr %i.c, align 4, !tbaa !8
  %.not1257 = icmp slt i32 %i.bb, 1
  br i1 %.not1257, label %.loopexit1256, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bc = sext i32 %i.t to i64
  %i.bd = add nuw i32 %i.bb, 1
  %wide.trip.count = zext i32 %i.bd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.s ] ; 7 uses
  %.010981258 = phi i32 [ 0, %.lr.ph.preheader ], [ %.11099, %bb.s ]
  %.not1121 = icmp eq i32 %.010981258, 0
  br i1 %.not1121, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 0, ptr %i.be, align 4, !tbaa !8
  br label %bb.s

bb.j:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr %3, align 4, !tbaa !8
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bi = mul nsw i64 %indvars.iv, %i.bc
  %i.bj = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !9
  %i.bn = fcmp oeq double %i.bm, 0.000000e+00
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %.not1125 = icmp eq i32 %i.bp, 0                ; 2 uses
  br i1 %i.bn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.not1125, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %11, align 4, !tbaa !8
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %11, align 4, !tbaa !8
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  br i1 %.not1125, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %.not1124 = icmp eq i32 %i.bt, 0
  br i1 %.not1124, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 1, ptr %i.bo, align 4, !tbaa !8
  %i.bu = load i32, ptr %11, align 4, !tbaa !8
  %i.bv = add nsw i32 %i.bu, 2
  store i32 %i.bv, ptr %11, align 4, !tbaa !8
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bg
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %.not1122 = icmp eq i32 %i.bx, 0
  br i1 %.not1122, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %11, align 4, !tbaa !8
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %11, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.q, %bb.r, %bb.m, %bb.l, %bb.p, %bb.o
  %.11099 = phi i32 [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.l ], [ 1, %bb.p ], [ 1, %bb.o ], [ 0, %bb.r ], [ 0, %bb.q ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1256.loopexit, label %.lr.ph, !llvm.loop !11

bb.t:                                             ; preds = %bb.g
  store i32 %i.ar, ptr %11, align 4, !tbaa !8
  br label %.loopexit1256

.loopexit1256.loopexit:                           ; preds = %bb.s
  %.pre = load i32, ptr %11, align 4, !tbaa !8
  br label %.loopexit1256

.loopexit1256:                                    ; preds = %.loopexit1256.loopexit, %bb.h, %bb.t
  %i.ca = phi i32 [ %.pre, %.loopexit1256.loopexit ], [ 0, %bb.h ], [ %i.ar, %bb.t ]
  %i.cb = load i32, ptr %10, align 4, !tbaa !8
  %i.cc = icmp slt i32 %i.cb, %i.ca
  br i1 %i.cc, label %.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %.loopexit1256
  %.pr = load i32, ptr %13, align 4, !tbaa !8     ; 2 uses
  %.not1126 = icmp eq i32 %.pr, 0
  br i1 %.not1126, label %bb.v, label %.thread

.thread.sink.split:                               ; preds = %.loopexit1256, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -6, %bb.d ], [ -10, %bb.f ], [ -8, %bb.e ], [ -4, %bb.c ], [ -11, %.loopexit1256 ] ; 2 uses
  store i32 %.sink, ptr %13, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.u
  %i.cd = phi i32 [ %.pr, %bb.u ], [ %.sink, %.thread.sink.split ]
  %i.ce = sub nsw i32 0, %i.cd
  store i32 %i.ce, ptr %i.c, align 4, !tbaa !8
  %i.cf = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit1251

bb.v:                                             ; preds = %bb.u
  %i.cg = load i32, ptr %3, align 4, !tbaa !8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit1251, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = tail call double @dlamch_(ptr noundef nonnull @.str.6) #7 ; 2 uses
  store double %i.ci, ptr %i.h, align 8, !tbaa !9
  %i.cj = fdiv double 1.000000e+00, %i.ci
  store double %i.cj, ptr %i.i, align 8, !tbaa !9
  call void @dlabad_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #7
  %i.ck = call double @dlamch_(ptr noundef nonnull @.str.7) #7 ; 4 uses
  %i.cl = load double, ptr %i.h, align 8, !tbaa !9
  %i.cm = load i32, ptr %3, align 4, !tbaa !8     ; 8 uses
  %i.cn = sitofp i32 %i.cm to double
  %i.co = fdiv double %i.cn, %i.ck
  %i.cp = fmul double %i.cl, %i.co                ; 5 uses
  %i.cq = fsub double 1.000000e+00, %i.ck
  %i.cr = fdiv double %i.cq, %i.cp                ; 10 uses
  store double 0.000000e+00, ptr %12, align 8, !tbaa !9
  %.not11271261 = icmp slt i32 %i.cm, 2
  br i1 %.not11271261, label %bb.z, label %.lr.ph1263.preheader

.lr.ph1263.preheader:                             ; preds = %bb.w
  %i.cs = sext i32 %i.t to i64
  %i.ct = add nuw i32 %i.cm, 1
  %wide.trip.count1387 = zext i32 %i.ct to i64
  br label %.lr.ph1263

.lr.ph1263:                                       ; preds = %.lr.ph1263.preheader, %.epilog-lcssa
  %indvar = phi i64 [ 0, %.lr.ph1263.preheader ], [ %indvar.next, %.epilog-lcssa ] ; 3 uses
  %indvars.iv1384 = phi i64 [ 2, %.lr.ph1263.preheader ], [ %indvars.iv.next1385, %.epilog-lcssa ] ; 3 uses
  %i.cu = add i64 %indvar, 1                      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv1384 ; 6 uses
  store double 0.000000e+00, ptr %i.cv, align 8, !tbaa !9
  %i.cw = mul nsw i64 %indvars.iv1384, %i.cs
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.cw ; 5 uses
  %xtraiter = and i64 %i.cu, 3                    ; 3 uses
  %i.cx = icmp ult i64 %indvar, 3
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph1263.new

.lr.ph1263.new:                                   ; preds = %.lr.ph1263
  %unroll_iter = and i64 %i.cu, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph1263.new
  %indvars.iv1379 = phi i64 [ 1, %.lr.ph1263.new ], [ %indvars.iv.next1380.3, %bb.x ] ; 5 uses
  %i.cy = phi double [ 0.000000e+00, %.lr.ph1263.new ], [ %i.dv, %bb.x ]
  %niter = phi i64 [ 0, %.lr.ph1263.new ], [ %niter.next.3, %bb.x ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1379
  %i.cz = load double, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %i.da = fcmp oge double %i.cz, 0.000000e+00
  %i.db = fneg double %i.cz
  %i.dc = select i1 %i.da, double %i.cz, double %i.db
  %i.dd = fadd double %i.cy, %i.dc                ; 2 uses
  store double %i.dd, ptr %i.cv, align 8, !tbaa !9
  %i.de = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1379
  %gep.1 = getelementptr i8, ptr %i.de, i64 8
  %i.df = load double, ptr %gep.1, align 8, !tbaa !9 ; 3 uses
  %i.dg = fcmp oge double %i.df, 0.000000e+00
  %i.dh = fneg double %i.df
  %i.di = select i1 %i.dg, double %i.df, double %i.dh
  %i.dj = fadd double %i.dd, %i.di                ; 2 uses
  store double %i.dj, ptr %i.cv, align 8, !tbaa !9
  %i.dk = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1379
  %gep.2 = getelementptr i8, ptr %i.dk, i64 16
  %i.dl = load double, ptr %gep.2, align 8, !tbaa !9 ; 3 uses
  %i.dm = fcmp oge double %i.dl, 0.000000e+00
  %i.dn = fneg double %i.dl
  %i.do = select i1 %i.dm, double %i.dl, double %i.dn
  %i.dp = fadd double %i.dj, %i.do                ; 2 uses
  store double %i.dp, ptr %i.cv, align 8, !tbaa !9
  %i.dq = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1379
  %gep.3 = getelementptr i8, ptr %i.dq, i64 24
  %i.dr = load double, ptr %gep.3, align 8, !tbaa !9 ; 4 uses
  %i.ds = fcmp oge double %i.dr, 0.000000e+00
  %i.dt = fneg double %i.dr
  %i.du = select i1 %i.ds, double %i.dr, double %i.dt
  %i.dv = fadd double %i.dp, %i.du                ; 3 uses
  store double %i.dv, ptr %i.cv, align 8, !tbaa !9
  %indvars.iv.next1380.3 = add nuw nsw i64 %indvars.iv1379, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.x, !llvm.loop !13

.unr-lcssa:                                       ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph1263
  %indvars.iv1379.epil.init = phi i64 [ 1, %.lr.ph1263 ], [ %indvars.iv.next1380.3, %.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph1263 ], [ %i.dv, %.unr-lcssa ]
  %lcmp.mod1839 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1839)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv1379.epil = phi i64 [ %indvars.iv1379.epil.init, %.epil.preheader ], [ %indvars.iv.next1380.epil, %bb.y ] ; 2 uses
  %i.dw = phi double [ %.epil.init, %.epil.preheader ], [ %i.eb, %bb.y ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1379.epil
  %i.dx = load double, ptr %gep.epil, align 8, !tbaa !9 ; 4 uses
  %i.dy = fcmp oge double %i.dx, 0.000000e+00
  %i.dz = fneg double %i.dx
  %i.ea = select i1 %i.dy, double %i.dx, double %i.dz
  %i.eb = fadd double %i.dw, %i.ea                ; 2 uses
  store double %i.eb, ptr %i.cv, align 8, !tbaa !9
  %indvars.iv.next1380.epil = add nuw nsw i64 %indvars.iv1379.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.y, !llvm.loop !14

.epilog-lcssa:                                    ; preds = %bb.y, %.unr-lcssa
  %.lcssa1837 = phi double [ %i.dr, %.unr-lcssa ], [ %i.dx, %bb.y ]
  %indvars.iv.next1385 = add nuw nsw i64 %indvars.iv1384, 1 ; 2 uses
  %exitcond1388.not = icmp eq i64 %indvars.iv.next1385, %wide.trip.count1387
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1388.not, label %._crit_edge, label %.lr.ph1263, !llvm.loop !16

._crit_edge:                                      ; preds = %.epilog-lcssa
  %i.ec = add nsw i32 %i.cm, -1
  store i32 %i.ec, ptr %i.d, align 4, !tbaa !8
  store double %.lcssa1837, ptr %i.f, align 8, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.w
  %i.ed = shl i32 %i.cm, 1                        ; 21 uses
  br i1 %i.ah, label %bb.aa, label %.loopexit1255

bb.aa:                                            ; preds = %bb.z
  %i.ee = load i32, ptr %11, align 4, !tbaa !8
  store i32 %i.cm, ptr %i.o, align 4, !tbaa !8
  %i.ef = icmp sgt i32 %i.cm, 0
  br i1 %i.ef, label %.lr.ph1308, label %.loopexit1255

.lr.ph1308:                                       ; preds = %bb.aa
  %.not11431166 = icmp eq i32 %i.an, 0            ; 2 uses
  %i.eg = add i32 %i.t, 1                         ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ek = sext i32 %i.ed to i64                   ; 5 uses
  %i.el = getelementptr [8 x i8], ptr %i.ac, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 8      ; 6 uses
  %.not1148 = icmp eq i32 %i.am, 0                ; 2 uses
  %i.en = sext i32 %i.t to i64                    ; 5 uses
  %i.eo = shl nsw i64 %i.aa, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.eo  ; 3 uses
  %invariant.gep1573 = getelementptr [8 x i8], ptr %i.ac, i64 %i.ek ; 4 uses
  %invariant.gep1575 = getelementptr [8 x i8], ptr %i.ac, i64 %i.ek
  %invariant.gep1579 = getelementptr [8 x i8], ptr %i.ac, i64 %i.ek
  %i.ep = add i64 %i.b, -8
  %scevgep1658 = getelementptr i8, ptr %12, i64 -8
  %i.eq = shl nsw i64 %i.ek, 3                    ; 2 uses
  %scevgep1660 = getelementptr i8, ptr %12, i64 %i.eq ; 5 uses
  %i.er = getelementptr i8, ptr %12, i64 %i.eq
  %scevgep1661 = getelementptr i8, ptr %i.er, i64 -8
  %i.es = shl nsw i64 %i.u, 3                     ; 3 uses
  %i.et = add nsw i64 %i.es, 8                    ; 2 uses
  %scevgep1664 = getelementptr i8, ptr %4, i64 %i.et
  %scevgep1666 = getelementptr i8, ptr %4, i64 %i.es
  %scevgep1668 = getelementptr i8, ptr %4, i64 %i.et
  %scevgep1670 = getelementptr i8, ptr %4, i64 %i.es
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1308, %bb.cd
  %.01306 = phi i32 [ %i.ee, %.lr.ph1308 ], [ %.1, %bb.cd ] ; 7 uses
  %.010531305 = phi i32 [ 0, %.lr.ph1308 ], [ %spec.store.select7, %bb.cd ]
  %storemerge1304 = phi i32 [ %i.cm, %.lr.ph1308 ], [ %i.aes, %bb.cd ] ; 28 uses
  %i.eu = icmp eq i32 %.010531305, 1
  br i1 %i.eu, label %bb.cd, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ev = icmp eq i32 %storemerge1304, 1
  br i1 %i.ev, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ew = add nsw i32 %storemerge1304, -1
  %i.ex = mul nsw i32 %i.ew, %i.t
  %i.ey = add nsw i32 %i.ex, %storemerge1304
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !9
  %i.fc = fcmp oeq double %i.fb, 0.000000e+00
  br i1 %i.fc, label %bb.ae, label %.thread1164

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %.not11431166, label %.thread1554, label %bb.af

.thread1164:                                      ; preds = %bb.ad
  br i1 %.not11431166, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fd = zext nneg i32 %storemerge1304 to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !8
  %.not1145 = icmp eq i32 %i.ff, 0
  br i1 %.not1145, label %bb.cd, label %.thread1554

bb.ag:                                            ; preds = %.thread1164
  %i.fg = zext nneg i32 %storemerge1304 to i64
  %i.fh = getelementptr [4 x i8], ptr %i.s, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !8
  %.not1144 = icmp eq i32 %i.fj, 0
  br i1 %.not1144, label %bb.cd, label %bb.ah

.thread1554:                                      ; preds = %bb.af, %bb.ae
  %i.fk = mul i32 %storemerge1304, %i.eg
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !9 ; 2 uses
  store double %i.fn, ptr %i.q, align 8, !tbaa !9
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.thread1164
  %i.fo = mul i32 %storemerge1304, %i.eg
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !9 ; 2 uses
  store double %i.fr, ptr %i.q, align 8, !tbaa !9
  %i.fs = add nsw i32 %storemerge1304, -1         ; 2 uses
  %i.ft = mul nsw i32 %i.fs, %i.t
  %i.fu = add nsw i32 %i.ft, %storemerge1304
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !9 ; 3 uses
  %i.fy = fcmp oge double %i.fx, 0.000000e+00
  %i.fz = fneg double %i.fx
  %i.ga = select i1 %i.fy, double %i.fx, double %i.fz
  %i.gb = call double @sqrt(double noundef %i.ga) #7
  %i.gc = mul nsw i32 %storemerge1304, %i.t
  %i.gd = add nsw i32 %i.fs, %i.gc
end_hunk_0
begin_hunk_1_@dtrevc_:bb.a
  %i.aox = extractelement <2 x double> %i.aov, i64 1 ; 2 uses
  %i.aoy = fcmp oge double %i.aow, %i.aox
  %i.aoz = select i1 %i.aoy, double %i.aow, double %i.aox ; 2 uses
  %i.apa = fcmp oge double %i.aoz, %.21092
  %i.apb = select i1 %i.apa, double %i.aoz, double %.21092 ; 2 uses
  %i.apc = fdiv double %i.cr, %i.apb
  %i.apd = trunc i64 %indvars.iv1431 to i32
  %i.ape = add i32 %i.apd, 3
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph1322, %bb.da, %bb.cv
  %i.apf = phi i32 [ %i.ajs, %.lr.ph1322 ], [ %i.alt, %bb.cv ], [ %i.aon, %bb.da ] ; 2 uses
  %.31093 = phi double [ %.010901316, %.lr.ph1322 ], [ %i.amb, %bb.cv ], [ %i.apb, %bb.da ]
  %.81086 = phi i32 [ %.610841317, %.lr.ph1322 ], [ %i.ajw, %bb.cv ], [ %i.ape, %bb.da ]
  %.11062 = phi double [ %.010611319, %.lr.ph1322 ], [ %i.amc, %bb.cv ], [ %i.apc, %bb.da ]
  %i.apg = load i32, ptr %i.d, align 4, !tbaa !8
  %i.aph = sext i32 %i.apg to i64
  %.not1140.not = icmp slt i64 %indvars.iv.next1432, %i.aph
  br i1 %.not1140.not, label %.lr.ph1322, label %._crit_edge1323, !llvm.loop !52

._crit_edge1323:                                  ; preds = %bb.db, %._crit_edge1313
  %i.api = phi i32 [ %i.ahc, %._crit_edge1313 ], [ %i.apf, %bb.db ] ; 6 uses
  %i.apj = load i32, ptr %i.o, align 4, !tbaa !8  ; 9 uses
  br i1 %.not1141, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %._crit_edge1323
  %i.apk = add i32 %i.api, 1
  %i.apl = sub i32 %i.apk, %i.apj
  store i32 %i.apl, ptr %i.d, align 4, !tbaa !8
  %i.apm = add nsw i32 %i.apj, %i.api
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.apn
  %i.app = mul nsw i32 %.21364, %i.w              ; 4 uses
  %i.apq = add nsw i32 %i.apj, %i.app
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.apr
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.apo, ptr noundef nonnull @c__1, ptr noundef %i.aps, ptr noundef nonnull @c__1) #7
  %i.apt = load i32, ptr %3, align 4, !tbaa !8
  %i.apu = load i32, ptr %i.o, align 4, !tbaa !8  ; 2 uses
  %i.apv = add i32 %i.apt, 1
  %i.apw = sub i32 %i.apv, %i.apu
  store i32 %i.apw, ptr %i.d, align 4, !tbaa !8
  %i.apx = add nsw i32 %i.apu, %i.app
  %i.apy = sext i32 %i.apx to i64
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.apy
  %i.aqa = call i32 @idamax_(ptr noundef nonnull %i.d, ptr noundef %i.apz, ptr noundef nonnull @c__1) #7
  %i.aqb = load i32, ptr %i.o, align 4, !tbaa !8  ; 2 uses
  %i.aqc = add i32 %i.aqb, %i.app                 ; 2 uses
  %i.aqd = add i32 %i.aqc, -1
  %i.aqe = add i32 %i.aqd, %i.aqa
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aqf
  %i.aqh = load double, ptr %i.aqg, align 8, !tbaa !9 ; 4 uses
  store double %i.aqh, ptr %i.f, align 8, !tbaa !9
  %i.aqi = fcmp oge double %i.aqh, 0.000000e+00
  %i.aqj = fneg double %i.aqh
  %i.aqk = select i1 %i.aqi, double %i.aqh, double %i.aqj
  %i.aql = fdiv double 1.000000e+00, %i.aqk
  store double %i.aql, ptr %i.m, align 8, !tbaa !9
  %i.aqm = load i32, ptr %3, align 4, !tbaa !8
  %reass.sub = sub i32 %i.aqm, %i.aqb
  %i.aqn = add i32 %reass.sub, 1
  store i32 %i.aqn, ptr %i.d, align 4, !tbaa !8
  %i.aqo = sext i32 %i.aqc to i64
  %i.aqp = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aqo
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.m, ptr noundef %i.aqp, ptr noundef nonnull @c__1) #7
  %i.aqq = load i32, ptr %i.o, align 4, !tbaa !8  ; 2 uses
  %i.aqr = add i32 %i.aqq, -1                     ; 2 uses
  store i32 %i.aqr, ptr %i.d, align 4, !tbaa !8
  %.not1142.not1324 = icmp sgt i32 %i.aqq, 1
  br i1 %.not1142.not1324, label %.lr.ph1327.preheader, label %.loopexit

.lr.ph1327.preheader:                             ; preds = %bb.dc
  %i.aqs = add i32 %i.app, 1
  %i.aqt = sext i32 %i.aqs to i64
  %i.aqu = shl nsw i64 %i.aqt, 3
  %scevgep1435 = getelementptr i8, ptr %scevgep1434, i64 %i.aqu
  %i.aqv = zext nneg i32 %i.aqr to i64
  %i.aqw = shl nuw nsw i64 %i.aqv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1435, i8 0, i64 %i.aqw, i1 false), !tbaa !9
  br label %.loopexit

bb.dd:                                            ; preds = %._crit_edge1323
  %i.aqx = icmp slt i32 %i.apj, %i.api
  br i1 %i.aqx, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aqy = sub nsw i32 %i.api, %i.apj
  store i32 %i.aqy, ptr %i.d, align 4, !tbaa !8
  %i.aqz = add nsw i32 %i.apj, 1                  ; 2 uses
  %i.ara = mul nsw i32 %i.aqz, %i.w
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr [8 x i8], ptr %i.y, i64 %i.arb
  %i.ard = getelementptr i8, ptr %i.arc, i64 8
  %i.are = add nsw i32 %i.aqz, %i.api
  %i.arf = sext i32 %i.are to i64
  %i.arg = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.arf
  %i.arh = add nsw i32 %i.api, %i.apj
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ari
  %i.ark = mul nsw i32 %i.apj, %i.w
  %i.arl = sext i32 %i.ark to i64
  %i.arm = getelementptr [8 x i8], ptr %i.y, i64 %i.arl
  %i.arn = getelementptr i8, ptr %i.arm, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b22, ptr noundef %i.ard, ptr noundef nonnull %7, ptr noundef nonnull %i.arg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.arj, ptr noundef %i.arn, ptr noundef nonnull @c__1) #7
  %.pre1484 = load i32, ptr %i.o, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.aro = phi i32 [ %.pre1484, %bb.de ], [ %i.apj, %bb.dd ]
  %i.arp = mul nsw i32 %i.aro, %i.w
  %i.arq = sext i32 %i.arp to i64
  %i.arr = getelementptr [8 x i8], ptr %i.y, i64 %i.arq
  %i.ars = getelementptr i8, ptr %i.arr, i64 8
  %i.art = call i32 @idamax_(ptr noundef nonnull %3, ptr noundef %i.ars, ptr noundef nonnull @c__1) #7
  %i.aru = load i32, ptr %i.o, align 4, !tbaa !8
  %i.arv = mul nsw i32 %i.aru, %i.w               ; 2 uses
  %i.arw = add nsw i32 %i.arv, %i.art
  %i.arx = sext i32 %i.arw to i64
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.arx
  %i.arz = load double, ptr %i.ary, align 8, !tbaa !9 ; 4 uses
  store double %i.arz, ptr %i.f, align 8, !tbaa !9
  %i.asa = fcmp oge double %i.arz, 0.000000e+00
  %i.asb = fneg double %i.arz
  %i.asc = select i1 %i.asa, double %i.arz, double %i.asb
  %i.asd = fdiv double 1.000000e+00, %i.asc
  store double %i.asd, ptr %i.m, align 8, !tbaa !9
  %i.ase = sext i32 %i.arv to i64
  %i.asf = getelementptr [8 x i8], ptr %i.y, i64 %i.ase
  %i.asg = getelementptr i8, ptr %i.asf, i64 8
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %i.m, ptr noundef %i.asg, ptr noundef nonnull @c__1) #7
  br label %.loopexit

bb.dg:                                            ; preds = %bb.cn
  %i.ash = add nsw i32 %storemerge11281362, 1     ; 6 uses
  %i.asi = mul nsw i32 %i.ash, %i.t
  %i.asj = add nsw i32 %i.asi, %storemerge11281362
  %i.ask = sext i32 %i.asj to i64
  %i.asl = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ask
  %i.asm = load double, ptr %i.asl, align 8, !tbaa !9 ; 3 uses
  store double %i.asm, ptr %i.f, align 8, !tbaa !9
  %i.asn = call double @llvm.fabs.f64(double %i.asm)
  %i.aso = mul nsw i32 %storemerge11281362, %i.t
  %i.asp = add nsw i32 %i.ash, %i.aso
  %i.asq = sext i32 %i.asp to i64
  %i.asr = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.asq ; 2 uses
  %i.ass = load double, ptr %i.asr, align 8, !tbaa !9
  %i.ast = call double @llvm.fabs.f64(double %i.ass)
  %i.asu = fcmp ult double %i.asn, %i.ast
  br i1 %i.asu, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.asv = fdiv double %i.agr, %i.asm
  %i.asw = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.asx = add nsw i32 %i.asw, %storemerge11281362
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.asy
  store double %i.asv, ptr %i.asz, align 8, !tbaa !9
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.ata = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.atb = add nsw i32 %i.ata, %storemerge11281362
  %i.atc = sext i32 %i.atb to i64
  %i.atd = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.atc
  store double 1.000000e+00, ptr %i.atd, align 8, !tbaa !9
  %i.ate = load double, ptr %i.asr, align 8, !tbaa !9
  %i.atf = fdiv double %i.agw, %i.ate
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.sink1631 = phi double [ %i.atf, %bb.di ], [ 1.000000e+00, %bb.dh ]
  %i.atg = phi i32 [ %i.ata, %bb.di ], [ %i.asw, %bb.dh ] ; 13 uses
  %i.ath = add nsw i32 %i.ash, %i.ed
  %i.ati = sext i32 %i.ath to i64
  %i.atj = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ati
  store double %.sink1631, ptr %i.atj, align 8, !tbaa !9
  %i.atk = add nsw i32 %i.atg, %i.ash
  %i.atl = sext i32 %i.atk to i64
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.atl
  store double 0.000000e+00, ptr %i.atm, align 8, !tbaa !9
  %i.atn = add nsw i32 %storemerge11281362, %i.ed
  %i.ato = sext i32 %i.atn to i64
  %i.atp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ato
  store double 0.000000e+00, ptr %i.atp, align 8, !tbaa !9
  %i.atq = add nsw i32 %storemerge11281362, 2     ; 4 uses
  %.not11331328 = icmp sgt i32 %i.atq, %i.atg
  br i1 %.not11331328, label %._crit_edge1332.thread, label %.lr.ph1331

._crit_edge1332.thread:                           ; preds = %bb.dj
  store i32 %i.atg, ptr %i.d, align 4, !tbaa !8
  br label %._crit_edge1340

.lr.ph1331:                                       ; preds = %bb.dj
  %i.atr = add nsw i32 %i.atg, %storemerge11281362
  %i.ats = sext i32 %i.atr to i64                 ; 2 uses
  %i.att = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ats ; 6 uses
  %i.atu = add i32 %i.ash, %i.ed
  %i.atv = sext i32 %i.atu to i64                 ; 2 uses
  %i.atw = getelementptr [8 x i8], ptr %i.ac, i64 %i.atv ; 6 uses
  %i.atx = sext i32 %i.atq to i64                 ; 8 uses
  %i.aty = sext i32 %storemerge11281362 to i64    ; 2 uses
  %i.atz = sext i32 %i.ash to i64                 ; 2 uses
  %i.aua = sext i32 %i.atg to i64                 ; 2 uses
  %i.aub = add i32 %i.atg, 1
  %invariant.gep1597 = getelementptr [8 x i8], ptr %i.v, i64 %i.aty ; 4 uses
  %invariant.gep1599 = getelementptr [8 x i8], ptr %i.ac, i64 %i.aua ; 4 uses
  %invariant.gep1601 = getelementptr [8 x i8], ptr %i.v, i64 %i.atz ; 4 uses
  %i.auc = add i32 %i.atg, -2
  %i.aud = sub i32 %i.auc, %storemerge11281362    ; 2 uses
  %i.aue = zext i32 %i.aud to i64
  %i.auf = add nuw nsw i64 %i.aue, 1              ; 2 uses
  %min.iters.check1772 = icmp ugt i32 %i.aud, 22
  %or.cond1824 = select i1 %min.iters.check1772, i1 %ident.check.not, i1 false
  br i1 %or.cond1824, label %vector.memcheck1718, label %scalar.ph1771.preheader

vector.memcheck1718:                              ; preds = %.lr.ph1331
  %i.aug = shl nsw i64 %i.atx, 3                  ; 2 uses
  %14 = add nsw i64 %i.aua, %i.atx
  %15 = shl nsw i64 %14, 3                        ; 2 uses
  %scevgep1720 = getelementptr i8, ptr %scevgep1719, i64 %15 ; 5 uses
  %i.auh = add i32 %i.atg, -2
  %i.aui = sub i32 %i.auh, %storemerge11281362
  %i.auj = zext i32 %i.aui to i64
  %i.auk = shl nuw nsw i64 %i.auj, 3              ; 4 uses
  %i.aul = getelementptr i8, ptr %12, i64 %15
  %scevgep1721 = getelementptr i8, ptr %i.aul, i64 %i.auk ; 5 uses
  %scevgep1723 = getelementptr i8, ptr %scevgep1722, i64 %i.aug ; 5 uses
  %i.aum = getelementptr i8, ptr %scevgep1724, i64 %i.aug
  %scevgep1725 = getelementptr i8, ptr %i.aum, i64 %i.auk ; 5 uses
  %i.aun = shl nsw i64 %i.ats, 3
  %scevgep1726 = getelementptr i8, ptr %12, i64 %i.aun ; 2 uses
  %16 = add nsw i64 %i.atx, %i.atz
  %17 = shl nsw i64 %16, 3                        ; 2 uses
  %scevgep1728 = getelementptr i8, ptr %scevgep1727, i64 %17 ; 2 uses
  %i.auo = getelementptr i8, ptr %scevgep1729, i64 %17
  %scevgep1730.a = getelementptr i8, ptr %i.auo, i64 %i.auk ; 2 uses
  %18 = add nsw i64 %i.aty, %i.atx
  %i.aup = shl nsw i64 %18, 3                     ; 2 uses
  %scevgep1732.a = getelementptr i8, ptr %scevgep1731, i64 %i.aup ; 2 uses
  %i.auq = getelementptr i8, ptr %scevgep1733, i64 %i.aup
  %scevgep1734 = getelementptr i8, ptr %i.auq, i64 %i.auk ; 2 uses
  %i.aur = shl nsw i64 %i.atv, 3
  %scevgep1735 = getelementptr i8, ptr %12, i64 %i.aur ; 2 uses
  %bound01736 = icmp ult ptr %scevgep1720, %scevgep1725
  %bound11737 = icmp ult ptr %scevgep1723, %scevgep1721
  %found.conflict1738 = and i1 %bound01736, %bound11737
  %bound01739 = icmp ult ptr %scevgep1720, %scevgep1726
  %bound11740 = icmp ult ptr %i.att, %scevgep1721
  %found.conflict1741 = and i1 %bound01739, %bound11740
  %conflict.rdx1742 = or i1 %found.conflict1738, %found.conflict1741
  %bound01743 = icmp ult ptr %scevgep1720, %scevgep1730.a
  %bound11744 = icmp ult ptr %scevgep1728, %scevgep1721
  %found.conflict1745 = and i1 %bound01743, %bound11744
  %conflict.rdx1746 = or i1 %conflict.rdx1742, %found.conflict1745
  %bound01747 = icmp ult ptr %scevgep1720, %scevgep1734
  %bound11748 = icmp ult ptr %scevgep1732.a, %scevgep1721
  %found.conflict1749 = and i1 %bound01747, %bound11748
  %conflict.rdx1750 = or i1 %conflict.rdx1746, %found.conflict1749
  %bound01751 = icmp ult ptr %scevgep1720, %scevgep1735
  %bound11752 = icmp ult ptr %i.atw, %scevgep1721
  %found.conflict1753 = and i1 %bound01751, %bound11752
  %conflict.rdx1754 = or i1 %conflict.rdx1750, %found.conflict1753
  %bound01755 = icmp ult ptr %scevgep1723, %scevgep1726
  %bound11756 = icmp ult ptr %i.att, %scevgep1725
  %found.conflict1757 = and i1 %bound01755, %bound11756
  %conflict.rdx1758 = or i1 %conflict.rdx1754, %found.conflict1757
  %bound01759 = icmp ult ptr %scevgep1723, %scevgep1730.a
  %bound11760 = icmp ult ptr %scevgep1728, %scevgep1725
  %found.conflict1761 = and i1 %bound01759, %bound11760
  %conflict.rdx1762 = or i1 %conflict.rdx1758, %found.conflict1761
  %bound01763 = icmp ult ptr %scevgep1723, %scevgep1734
  %bound11764 = icmp ult ptr %scevgep1732.a, %scevgep1725
  %found.conflict1765 = and i1 %bound01763, %bound11764
  %conflict.rdx1766 = or i1 %conflict.rdx1762, %found.conflict1765
  %bound01767 = icmp ult ptr %scevgep1723, %scevgep1735
  %bound11768 = icmp ult ptr %i.atw, %scevgep1725
  %found.conflict1769 = and i1 %bound01767, %bound11768
  %conflict.rdx1770 = or i1 %conflict.rdx1766, %found.conflict1769
  br i1 %conflict.rdx1770, label %scalar.ph1771.preheader, label %vector.ph1773

vector.ph1773:                                    ; preds = %vector.memcheck1718
  %n.vec1774 = and i64 %i.auf, 8589934584         ; 3 uses
  %i.aus = add nsw i64 %n.vec1774, %i.atx
  %i.aut = load double, ptr %i.att, align 8, !tbaa !9, !alias.scope !53
  %.scalar1826 = fneg double %i.aut
  %i.auu = insertelement <4 x double> poison, double %.scalar1826, i64 0
  %i.auv = shufflevector <4 x double> %i.auu, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.auw = load double, ptr %i.atw, align 8, !tbaa !9, !alias.scope !56
  %.scalar1827 = fneg double %i.auw
  %i.aux = insertelement <4 x double> poison, double %.scalar1827, i64 0
  %i.auy = shufflevector <4 x double> %i.aux, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1779

vector.body1779:                                  ; preds = %vector.body1779, %vector.ph1773
  %index1780 = phi i64 [ 0, %vector.ph1773 ], [ %index.next1785, %vector.body1779 ] ; 2 uses
  %i.auz = add i64 %index1780, %i.atx             ; 4 uses
  %i.ava = getelementptr [8 x i8], ptr %invariant.gep1597, i64 %i.auz ; 2 uses
  %i.avb = getelementptr i8, ptr %i.ava, i64 32
  %wide.load1781 = load <4 x double>, ptr %i.ava, align 8, !tbaa !9, !alias.scope !58
  %wide.load1782 = load <4 x double>, ptr %i.avb, align 8, !tbaa !9, !alias.scope !58
  %i.avc = fmul <4 x double> %wide.load1781, %i.auv
  %i.avd = fmul <4 x double> %wide.load1782, %i.auv
  %i.ave = getelementptr [8 x i8], ptr %invariant.gep1599, i64 %i.auz ; 2 uses
  %i.avf = getelementptr i8, ptr %i.ave, i64 32
  store <4 x double> %i.avc, ptr %i.ave, align 8, !tbaa !9, !alias.scope !60, !noalias !62
  store <4 x double> %i.avd, ptr %i.avf, align 8, !tbaa !9, !alias.scope !60, !noalias !62
  %i.avg = getelementptr [8 x i8], ptr %invariant.gep1601, i64 %i.auz ; 2 uses
  %i.avh = getelementptr i8, ptr %i.avg, i64 32
  %wide.load1783 = load <4 x double>, ptr %i.avg, align 8, !tbaa !9, !alias.scope !65
  %wide.load1784 = load <4 x double>, ptr %i.avh, align 8, !tbaa !9, !alias.scope !65
  %i.avi = fmul <4 x double> %wide.load1783, %i.auy
  %i.avj = fmul <4 x double> %wide.load1784, %i.auy
  %i.avk = getelementptr [8 x i8], ptr %invariant.gep1603, i64 %i.auz ; 2 uses
  %i.avl = getelementptr i8, ptr %i.avk, i64 32
  store <4 x double> %i.avi, ptr %i.avk, align 8, !tbaa !9, !alias.scope !66, !noalias !67
  store <4 x double> %i.avj, ptr %i.avl, align 8, !tbaa !9, !alias.scope !66, !noalias !67
  %index.next1785 = add nuw i64 %index1780, 8     ; 2 uses
  %i.avm = icmp eq i64 %index.next1785, %n.vec1774
  br i1 %i.avm, label %middle.block1786, label %vector.body1779, !llvm.loop !68

middle.block1786:                                 ; preds = %vector.body1779
  %cmp.n1787 = icmp eq i64 %i.auf, %n.vec1774
  br i1 %cmp.n1787, label %.lr.ph1339.preheader, label %scalar.ph1771.preheader

scalar.ph1771.preheader:                          ; preds = %vector.memcheck1718, %.lr.ph1331, %middle.block1786
  %indvars.iv1440.ph = phi i64 [ %i.atx, %vector.memcheck1718 ], [ %i.atx, %.lr.ph1331 ], [ %i.aus, %middle.block1786 ] ; 6 uses
  %i.avn = trunc i64 %indvars.iv1440.ph to i32    ; 2 uses
  %i.avo = add i32 %i.atg, %i.avn
  %i.avp = and i32 %i.avo, 1
  %lcmp.mod1865.not.not = icmp eq i32 %i.avp, 0
  br i1 %lcmp.mod1865.not.not, label %scalar.ph1771.prol, label %scalar.ph1771.prol.loopexit

scalar.ph1771.prol:                               ; preds = %scalar.ph1771.preheader
  %i.avq = load double, ptr %i.att, align 8, !tbaa !9
  %i.avr = fneg double %i.avq
  %i.avs = mul nsw i64 %indvars.iv1440.ph, %i.aez ; 2 uses
  %gep1598.prol = getelementptr [8 x i8], ptr %invariant.gep1597, i64 %i.avs
  %i.avt = load double, ptr %gep1598.prol, align 8, !tbaa !9
  %i.avu = fmul double %i.avt, %i.avr
  %gep1600.prol = getelementptr [8 x i8], ptr %invariant.gep1599, i64 %indvars.iv1440.ph
  store double %i.avu, ptr %gep1600.prol, align 8, !tbaa !9
  %i.avv = load double, ptr %i.atw, align 8, !tbaa !9
  %i.avw = fneg double %i.avv
  %gep1602.prol = getelementptr [8 x i8], ptr %invariant.gep1601, i64 %i.avs
  %i.avx = load double, ptr %gep1602.prol, align 8, !tbaa !9
  %i.avy = fmul double %i.avx, %i.avw
  %gep1604.prol = getelementptr [8 x i8], ptr %invariant.gep1603, i64 %indvars.iv1440.ph
  store double %i.avy, ptr %gep1604.prol, align 8, !tbaa !9
  %indvars.iv.next1441.prol = add nsw i64 %indvars.iv1440.ph, 1
  br label %scalar.ph1771.prol.loopexit

scalar.ph1771.prol.loopexit:                      ; preds = %scalar.ph1771.prol, %scalar.ph1771.preheader
  %indvars.iv1440.unr = phi i64 [ %indvars.iv1440.ph, %scalar.ph1771.preheader ], [ %indvars.iv.next1441.prol, %scalar.ph1771.prol ]
  %i.avz = icmp eq i32 %i.atg, %i.avn
  br i1 %i.avz, label %.lr.ph1339.preheader, label %scalar.ph1771

scalar.ph1771:                                    ; preds = %scalar.ph1771.prol.loopexit, %scalar.ph1771
  %indvars.iv1440 = phi i64 [ %indvars.iv.next1441.1, %scalar.ph1771 ], [ %indvars.iv1440.unr, %scalar.ph1771.prol.loopexit ] ; 5 uses
  %i.awa = load double, ptr %i.att, align 8, !tbaa !9
  %i.awb = fneg double %i.awa
  %i.awc = mul nsw i64 %indvars.iv1440, %i.aez    ; 2 uses
  %gep1598 = getelementptr [8 x i8], ptr %invariant.gep1597, i64 %i.awc
  %i.awd = load double, ptr %gep1598, align 8, !tbaa !9
  %i.awe = fmul double %i.awd, %i.awb
  %gep1600 = getelementptr [8 x i8], ptr %invariant.gep1599, i64 %indvars.iv1440
  store double %i.awe, ptr %gep1600, align 8, !tbaa !9
  %i.awf = load double, ptr %i.atw, align 8, !tbaa !9
  %i.awg = fneg double %i.awf
  %gep1602 = getelementptr [8 x i8], ptr %invariant.gep1601, i64 %i.awc
  %i.awh = load double, ptr %gep1602, align 8, !tbaa !9
  %i.awi = fmul double %i.awh, %i.awg
  %gep1604 = getelementptr [8 x i8], ptr %invariant.gep1603, i64 %indvars.iv1440
  store double %i.awi, ptr %gep1604, align 8, !tbaa !9
  %indvars.iv.next1441 = add nsw i64 %indvars.iv1440, 1 ; 3 uses
  %i.awj = load double, ptr %i.att, align 8, !tbaa !9
  %i.awk = fneg double %i.awj
  %i.awl = mul nsw i64 %indvars.iv.next1441, %i.aez ; 2 uses
  %gep1598.1 = getelementptr [8 x i8], ptr %invariant.gep1597, i64 %i.awl
  %i.awm = load double, ptr %gep1598.1, align 8, !tbaa !9
  %i.awn = fmul double %i.awm, %i.awk
  %gep1600.1 = getelementptr [8 x i8], ptr %invariant.gep1599, i64 %indvars.iv.next1441
  store double %i.awn, ptr %gep1600.1, align 8, !tbaa !9
  %i.awo = load double, ptr %i.atw, align 8, !tbaa !9
  %i.awp = fneg double %i.awo
  %gep1602.1 = getelementptr [8 x i8], ptr %invariant.gep1601, i64 %i.awl
  %i.awq = load double, ptr %gep1602.1, align 8, !tbaa !9
  %i.awr = fmul double %i.awq, %i.awp
  %gep1604.1 = getelementptr [8 x i8], ptr %invariant.gep1603, i64 %indvars.iv.next1441
  store double %i.awr, ptr %gep1604.1, align 8, !tbaa !9
  %indvars.iv.next1441.1 = add nsw i64 %indvars.iv1440, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1441.1 to i32
  %exitcond1444.not.1 = icmp eq i32 %i.aub, %lftr.wideiv.1
  br i1 %exitcond1444.not.1, label %.lr.ph1339.preheader, label %scalar.ph1771, !llvm.loop !69

.lr.ph1339.preheader:                             ; preds = %scalar.ph1771.prol.loopexit, %scalar.ph1771, %middle.block1786
  store i32 %i.atg, ptr %i.d, align 4, !tbaa !8
  %i.aws = sext i32 %i.atq to i64
  br label %.lr.ph1339

.lr.ph1339:                                       ; preds = %.lr.ph1339.preheader, %.lr.ph1339._crit_edge
  %i.awt = phi i32 [ %i.atg, %.lr.ph1339.preheader ], [ %i.bga, %.lr.ph1339._crit_edge ] ; 8 uses
  %indvars.iv1445 = phi i64 [ %i.aws, %.lr.ph1339.preheader ], [ %.pre1508, %.lr.ph1339._crit_edge ] ; 24 uses
  %.210631337 = phi double [ %i.cr, %.lr.ph1339.preheader ], [ %.31064, %.lr.ph1339._crit_edge ] ; 3 uses
  %.910871335 = phi i32 [ %i.atq, %.lr.ph1339.preheader ], [ %.111089, %.lr.ph1339._crit_edge ] ; 2 uses
  %.410941334 = phi double [ 1.000000e+00, %.lr.ph1339.preheader ], [ %.71097, %.lr.ph1339._crit_edge ] ; 5 uses
  %indvars1448 = trunc i64 %indvars.iv1445 to i32 ; 5 uses
  %i.awu = sext i32 %.910871335 to i64
  %i.awv = icmp slt i64 %indvars.iv1445, %i.awu
  %.pre1508 = add nsw i64 %indvars.iv1445, 1      ; 3 uses
  br i1 %i.awv, label %.lr.ph1339._crit_edge, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph1339
  %i.aww = add nsw i32 %indvars1448, 1
  %i.awx = sext i32 %i.awt to i64
  %i.awy = icmp slt i64 %indvars.iv1445, %i.awx
  br i1 %i.awy, label %bb.dl, label %._crit_edge1497

._crit_edge1497:                                  ; preds = %bb.dk
  %.pre1486.pre = load i32, ptr %i.o, align 4, !tbaa !8
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.awz = mul nsw i64 %indvars.iv1445, %i.aez    ; 3 uses
  %i.axa = getelementptr [8 x i8], ptr %i.v, i64 %.pre1508
  %i.axb = getelementptr [8 x i8], ptr %i.axa, i64 %i.awz
  %i.axc = load double, ptr %i.axb, align 8, !tbaa !9
  %i.axd = fcmp une double %i.axc, 0.000000e+00
  %.pre1486.pre1498 = load i32, ptr %i.o, align 4, !tbaa !8 ; 4 uses
  br i1 %i.axd, label %bb.dr, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge1497, %bb.dl
  %.pre1486 = phi i32 [ %.pre1486.pre, %._crit_edge1497 ], [ %.pre1486.pre1498, %bb.dl ] ; 3 uses
  %i.axe = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv1445
  %i.axf = load double, ptr %i.axe, align 8, !tbaa !9
  %i.axg = fcmp ogt double %i.axf, %.210631337
  br i1 %i.axg, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.axh = fdiv double 1.000000e+00, %.410941334
  store double %i.axh, ptr %i.r, align 8, !tbaa !9
  %i.axi = add i32 %i.awt, 1
  %i.axj = sub i32 %i.axi, %.pre1486
  store i32 %i.axj, ptr %i.e, align 4, !tbaa !8
  %i.axk = add nsw i32 %.pre1486, %i.awt
  %i.axl = sext i32 %i.axk to i64
  %i.axm = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.axl
  call void @dscal_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.r, ptr noundef nonnull %i.axm, ptr noundef nonnull @c__1) #7
  %i.axn = load i32, ptr %3, align 4, !tbaa !8
  %i.axo = load i32, ptr %i.o, align 4, !tbaa !8  ; 2 uses
  %i.axp = add i32 %i.axn, 1
  %i.axq = sub i32 %i.axp, %i.axo
  store i32 %i.axq, ptr %i.e, align 4, !tbaa !8
  %i.axr = add nsw i32 %i.axo, %i.ed
  %i.axs = sext i32 %i.axr to i64
  %i.axt = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.axs
  call void @dscal_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.r, ptr noundef nonnull %i.axt, ptr noundef nonnull @c__1) #7
  %.pre1485 = load i32, ptr %i.o, align 4, !tbaa !8
  %.pre1487 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.axu = phi i32 [ %.pre1487, %bb.dn ], [ %i.awt, %bb.dm ]
  %i.axv = phi i32 [ %.pre1485, %bb.dn ], [ %.pre1486, %bb.dm ] ; 2 uses
  %.51095 = phi double [ 1.000000e+00, %bb.dn ], [ %.410941334, %bb.dm ] ; 2 uses
  %i.axw = add i32 %indvars1448, -2               ; 2 uses
  %i.axx = sub i32 %i.axw, %i.axv
  store i32 %i.axx, ptr %i.e, align 4, !tbaa !8
  %i.axy = add nsw i32 %i.axv, 2                  ; 2 uses
  %i.axz = mul nsw i64 %indvars.iv1445, %i.aez    ; 2 uses
  %i.aya = mul nsw i32 %i.t, %indvars1448
  %i.ayb = sext i32 %i.axy to i64
  %i.ayc = getelementptr [8 x i8], ptr %i.v, i64 %i.axz
end_hunk_1
