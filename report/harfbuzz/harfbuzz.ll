Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@hb_paint_sweep_gradient_tiles:bb.a
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1503 ; 2 uses
  tail call void %5(float noundef %4, i32 noundef %i.m, float noundef f0x40C90FDB, i32 noundef %i.m, ptr noundef %6) #63
  br label %bb.aj

bb.h:                                             ; preds = %bb.b
  %i.n = fcmp olt float %4, %3
  br i1 %i.n, label %.preheader313, label %.loopexit312

.preheader313:                                    ; preds = %bb.h
  %i.o = add i32 %1, -1                           ; 2 uses
  %.not342 = icmp eq i32 %i.o, 0
  br i1 %.not342, label %.preheader311, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader313
  %i.p = zext i32 %i.o to i64
  br label %.lr.ph

.preheader311:                                    ; preds = %.lr.ph, %.preheader313
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %1, 4
  br i1 %i.q, label %.epil.preheader, label %.preheader311.new

.preheader311.new:                                ; preds = %.preheader311
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv360 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next361, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv360 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !tbaa.struct !1502
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.t = and i64 %indvars.iv.next, 4294967295
  %i.u = icmp samesign ult i64 %indvars.iv.next361, %i.t
  br i1 %i.u, label %.lr.ph, label %.preheader311, !llvm.loop !3129

bb.i:                                             ; preds = %bb.i, %.preheader311.new
  %indvars.iv365 = phi i64 [ 0, %.preheader311.new ], [ %indvars.iv.next366.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader311.new ], [ %niter.next.3, %bb.i ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !1501
  %i.x = fsub float 1.000000e+00, %i.w
  store float %i.x, ptr %i.v, align 4, !tbaa !1501
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !1501
  %i.ab = fsub float 1.000000e+00, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !1501
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !1501
  %i.af = fsub float 1.000000e+00, %i.ae
  store float %i.af, ptr %i.ad, align 4, !tbaa !1501
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1501
  %i.aj = fsub float 1.000000e+00, %i.ai
  store float %i.aj, ptr %i.ah, align 4, !tbaa !1501
  %indvars.iv.next366.3 = add nuw nsw i64 %indvars.iv365, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit312.loopexit.unr-lcssa, label %bb.i, !llvm.loop !3130

.loopexit312.loopexit.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit312, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit312.loopexit.unr-lcssa, %.preheader311
  %indvars.iv365.epil.init = phi i64 [ 0, %.preheader311 ], [ %indvars.iv.next366.3, %.loopexit312.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod454)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv365.epil = phi i64 [ %indvars.iv365.epil.init, %.epil.preheader ], [ %indvars.iv.next366.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365.epil ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1501
  %i.am = fsub float 1.000000e+00, %i.al
  store float %i.am, ptr %i.ak, align 4, !tbaa !1501
  %indvars.iv.next366.epil = add nuw nsw i64 %indvars.iv365.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit312, label %bb.j, !llvm.loop !3131

.loopexit312:                                     ; preds = %.loopexit312.loopexit.unr-lcssa, %bb.j, %bb.h
  %.0252 = phi float [ %4, %bb.h ], [ %3, %bb.j ], [ %3, %.loopexit312.loopexit.unr-lcssa ]
  %.0 = phi float [ %3, %bb.h ], [ %4, %bb.j ], [ %4, %.loopexit312.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.an = icmp ugt i32 %1, 16                     ; 2 uses
  %i.ao = zext i32 %1 to i64                      ; 6 uses
  br i1 %i.an, label %bb.k, label %.loopexit312._crit_edge

bb.k:                                             ; preds = %.loopexit312
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #65 ; 3 uses
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #65 ; 3 uses
  %i.as = icmp ne ptr %i.aq, null
  %i.at = icmp ne ptr %i.ar, null
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %.loopexit312._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.aq) #63
  tail call void @free(ptr noundef %i.ar) #63
  br label %.loopexit306.thread

.loopexit312._crit_edge:                          ; preds = %.loopexit312, %bb.k
  %.0267 = phi ptr [ %i.ar, %bb.k ], [ %i.b, %.loopexit312 ] ; 15 uses
  %.0266 = phi ptr [ %i.aq, %bb.k ], [ %i.a, %.loopexit312 ] ; 17 uses
  %i.au = fsub float %.0252, %.0                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit312._crit_edge
  %n.vec = and i64 %i.ao, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert439 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat440 = shufflevector <4 x float> %broadcast.splatinsert439, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  %i.bc = load float, ptr %i.av, align 4, !tbaa !1501
  %i.bd = load float, ptr %i.ax, align 4, !tbaa !1501
  %i.be = load float, ptr %i.az, align 4, !tbaa !1501
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !1501
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat440)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %index
  store <4 x float> %i.bk, ptr %i.bl, align 4, !tbaa !304
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !1503
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !1503
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !1503
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !1503
  %i.bu = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bv = insertelement <4 x i32> %i.bu, i32 %i.br, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bs, i64 2
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 3
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %index
  store <4 x i32> %i.bx, ptr %i.by, align 4, !tbaa !324
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !3132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %.loopexit441, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit312._crit_edge, %middle.block
  %indvars.iv369.ph = phi i64 [ 0, %.loopexit312._crit_edge ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit441:                                     ; preds = %scalar.ph, %middle.block
  %i.ca = icmp eq i32 %2, 0
  br i1 %i.ca, label %bb.m, label %bb.u

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %scalar.ph ], [ %indvars.iv369.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv369 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !1501
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.au, float %.0)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv369
  store float %i.cd, ptr %i.ce, align 4, !tbaa !304
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !1503
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv369
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !324
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next370, %i.ao
  br i1 %exitcond375.not, label %.loopexit441, label %scalar.ph, !llvm.loop !3133

bb.m:                                             ; preds = %.loopexit441
  %i.ci = load i32, ptr %.0267, align 4, !tbaa !324
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.q
  %indvars.iv384 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next385, %bb.q ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv384
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !304 ; 2 uses
  %i.cl = fcmp ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not297 = icmp eq i64 %indvars.iv384, 0
  br i1 %.not297, label %.loopexit305, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = trunc nuw i64 %indvars.iv384 to i32
  %i.cn = add nuw i64 %indvars.iv384, 4294967295
  %i.co = and i64 %i.cn, 4294967295               ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !304 ; 2 uses
  %i.cr = fsub float 0.000000e+00, %i.cq
  %i.cs = fsub float %i.ck, %i.cq
  %i.ct = fdiv float %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.co
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv384
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !324
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !324
  %i.cy = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.da = lshr <4 x i32> %i.cz, <i32 8, i32 16, i32 24, i32 0>
  %i.db = and <4 x i32> %i.da, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.dc = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.dd = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.de = lshr <4 x i32> %i.dd, <i32 8, i32 16, i32 24, i32 0>
  %i.df = and <4 x i32> %i.de, <i32 255, i32 255, i32 -1, i32 255>
  %i.dg = uitofp <4 x i32> %i.db to <4 x float>
  %i.dh = sub nsw <4 x i32> %i.df, %i.db
  %i.di = sitofp <4 x i32> %i.dh to <4 x float>
  %i.dj = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.di, <4 x float> %i.dg)
  %i.dm = fadd <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.dn = fptoui <4 x float> %i.dm to <4 x i32>
  %i.do = shl <4 x i32> %i.dn, <i32 16, i32 8, i32 0, i32 24>
  %i.dp = and <4 x i32> %i.do, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.dq = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dp)
  br label %.loopexit305

bb.q:                                             ; preds = %bb.n
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next385, %i.ao
  br i1 %exitcond389.not, label %.loopexit305.thread, label %bb.n, !llvm.loop !3134

.loopexit305:                                     ; preds = %bb.o, %bb.p
  %.0269319 = phi i32 [ %i.cm, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %.0268 = phi i32 [ %i.dq, %bb.p ], [ %i.ci, %bb.o ]
  %i.dr = icmp eq i32 %.0269319, %1
  br i1 %i.dr, label %.loopexit305.thread, label %bb.r

.loopexit305.thread:                              ; preds = %bb.q, %.loopexit305
  %8 = add i32 %1, -1
  %9 = zext i32 %8 to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %9
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !324 ; 2 uses
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.dt, float noundef f0x40C90FDB, i32 noundef %i.dt, ptr noundef %6) #63
  br label %.loopexit306

bb.r:                                             ; preds = %.loopexit305
  %i.du = zext i32 %.0269319 to i64               ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !304
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.du
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !324
  tail call void %5(float noundef 0.000000e+00, i32 noundef %.0268, float noundef %i.dw, i32 noundef %i.dy, ptr noundef %6) #63
  %.1270336 = add i32 %.0269319, 1                ; 3 uses
  %i.dz = icmp ult i32 %.1270336, %1
  br i1 %i.dz, label %.lr.ph340.preheader, label %.loopexit

.lr.ph340.preheader:                              ; preds = %bb.r
  %i.ea = zext i32 %.1270336 to i64
  %i.eb = zext i32 %.0269319 to i64
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.s
  %indvars.iv390 = phi i64 [ %i.ea, %.lr.ph340.preheader ], [ %indvars.iv.next391, %bb.s ] ; 6 uses
  %.1270.in337 = phi i64 [ %i.eb, %.lr.ph340.preheader ], [ %indvars.iv390, %bb.s ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv390
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !304 ; 3 uses
  %i.ee = fcmp ugt float %i.ed, f0x40C90FDB
  br i1 %i.ee, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph340
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !304
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !324
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !324
  tail call void %5(float noundef %i.eg, i32 noundef %i.ei, float noundef %i.ed, i32 noundef %i.ek, ptr noundef %6) #63
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next391 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %.loopexit.thread, label %.lr.ph340, !llvm.loop !3135

bb.t:                                             ; preds = %.lr.ph340
  %i.el = trunc nuw i64 %indvars.iv390 to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.en = load float, ptr %i.em, align 4, !tbaa !304 ; 3 uses
  %i.eo = fsub float f0x40C90FDB, %i.en
  %i.ep = fsub float %i.ed, %i.en
  %i.eq = fdiv float %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.es = load i32, ptr %i.er, align 4, !tbaa !324 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !324
  %i.ev = tail call fastcc noundef i32 @_ZL13hb_color_lerpjjf(i32 noundef %i.es, i32 noundef %i.eu, float noundef %i.eq)
  tail call void %5(float noundef %i.en, i32 noundef %i.es, float noundef f0x40C90FDB, i32 noundef %i.ev, ptr noundef %6) #63
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.t
  %.1270315 = phi i32 [ %i.el, %bb.t ], [ %.1270336, %bb.r ]
  %i.ew = icmp eq i32 %.1270315, %1
  br i1 %i.ew, label %.loopexit.thread, label %.loopexit306

.loopexit.thread:                                 ; preds = %bb.s, %.loopexit
  %10 = add i32 %1, -1
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %11
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !324 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %11
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !304
  tail call void %5(float noundef %i.fa, i32 noundef %i.ey, float noundef f0x40C90FDB, i32 noundef %i.ey, ptr noundef %6) #63
  br label %.loopexit306

bb.u:                                             ; preds = %.loopexit441
  %i.fb = add i32 %1, -1
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.fc ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !304 ; 3 uses
  %i.ff = load float, ptr %.0266, align 4, !tbaa !304 ; 4 uses
  %i.fg = fsub float %i.fe, %i.ff                 ; 7 uses
  %i.fh = tail call float @llvm.fabs.f32(float %i.fg) ; 4 uses
  %i.fi = fcmp olt float %i.fh, f0x358637BD
  br i1 %i.fi, label %.loopexit306, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = fcmp ult float %i.ff, 0.000000e+00
  br i1 %i.fj, label %.preheader307, label %.preheader309

.preheader309:                                    ; preds = %bb.v
  %i.fk = fcmp ogt float %i.ff, 0.000000e+00
  br i1 %i.fk, label %.lr.ph327, label %.preheader.lr.ph

.lr.ph327:                                        ; preds = %.preheader309
  %i.fl = fcmp ogt float %i.fg, 0.000000e+00      ; 2 uses
  %.1264.v = select i1 %i.fl, i32 -1, i32 1
  %i.fm = fneg float %i.fg
  %.1262.p = select i1 %i.fl, float %i.fm, float %i.fg
  br label %bb.w

.preheader307:                                    ; preds = %bb.v
  %i.fn = fcmp olt float %i.fe, 0.000000e+00
  br i1 %i.fn, label %.lr.ph330, label %.preheader.lr.ph

.lr.ph330:                                        ; preds = %.preheader307
  %i.fo = fcmp ogt float %i.fg, 0.000000e+00      ; 2 uses
  %.3.v = select i1 %i.fo, i32 1, i32 -1
  %i.fp = fneg float %i.fg
  %.1.p = select i1 %i.fo, float %i.fg, float %i.fp
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph327, %bb.w
  %.0261326 = phi float [ %i.ff, %.lr.ph327 ], [ %.1262, %bb.w ]
  %.0263325 = phi i32 [ 0, %.lr.ph327 ], [ %.1264, %bb.w ]
  %.1264 = add nsw i32 %.0263325, %.1264.v        ; 2 uses
  %.1262 = fadd float %.1262.p, %.0261326         ; 2 uses
  %i.fq = fcmp ogt float %.1262, 0.000000e+00
  br i1 %i.fq, label %bb.w, label %.loopexit308, !llvm.loop !3136

bb.x:                                             ; preds = %.lr.ph330, %bb.x
  %.0260329 = phi float [ %i.fe, %.lr.ph330 ], [ %.1, %bb.x ]
  %.2328 = phi i32 [ 0, %.lr.ph330 ], [ %.3, %bb.x ]
  %.3 = add nsw i32 %.2328, %.3.v                 ; 2 uses
  %.1 = fadd float %.1.p, %.0260329               ; 2 uses
  %i.fr = fcmp olt float %.1, 0.000000e+00
  br i1 %i.fr, label %bb.x, label %.loopexit308, !llvm.loop !3137

.loopexit308:                                     ; preds = %bb.w, %bb.x
  %.4 = phi i32 [ %.3, %bb.x ], [ %.1264, %bb.w ] ; 2 uses
  %i.fs = icmp slt i32 %.4, 1000
  br i1 %i.fs, label %.preheader.lr.ph, label %.loopexit306

.preheader.lr.ph:                                 ; preds = %.preheader309, %.preheader307, %.loopexit308
  %.4415 = phi i32 [ %.4, %.loopexit308 ], [ 0, %.preheader307 ], [ 0, %.preheader309 ]
  %.not343 = icmp eq i32 %1, 1
  %i.ft = icmp eq i32 %2, 2
  br i1 %.not343, label %.loopexit306.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count381 = zext i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0259334 = phi i32 [ %i.ho, %._crit_edge ], [ %.4415, %.preheader.preheader ] ; 3 uses
  %i.fu = trunc i32 %.0259334 to i1
  %or.cond4 = and i1 %i.ft, %i.fu
  %i.fv = sitofp i32 %.0259334 to float           ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bb.ag
  %indvars.iv376 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next377, %bb.ag ] ; 6 uses
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fw = load float, ptr %.0266, align 4, !tbaa !304
  %i.fx = load float, ptr %i.fd, align 4, !tbaa !304
  %i.fy = fadd float %i.fw, %i.fx                 ; 2 uses
  %i.fz = sub nuw nsw i64 %i.ao, %indvars.iv376   ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !304
  %i.gc = fsub float %i.fy, %i.gb
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fh, float %i.gc)
  %i.ge = sub nuw nsw i64 %i.fc, %indvars.iv376   ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !304
  %i.gh = fsub float %i.fy, %i.gg
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gi = add nsw i64 %indvars.iv376, -1          ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !304
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fh, float %i.gk)
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv376
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !304
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink = phi float [ %i.gn, %bb.aa ], [ %i.gh, %bb.z ]
  %.0257 = phi float [ %i.gl, %bb.aa ], [ %i.gd, %bb.z ] ; 7 uses
  %.pn = phi i64 [ %i.gi, %bb.aa ], [ %i.fz, %bb.z ]
  %.pn296 = phi i64 [ %indvars.iv376, %bb.aa ], [ %i.ge, %bb.z ]
  %i.go = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fh, float %.sink) ; 6 uses
  %.0254.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn296
  %.0254 = load i32, ptr %.0254.in, align 4, !tbaa !324 ; 4 uses
  %.0255.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn
  %.0255 = load i32, ptr %.0255.in, align 4, !tbaa !324 ; 4 uses
  %i.gp = fcmp olt float %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = fcmp olt float %.0257, 0.000000e+00
  br i1 %i.gq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gr = fsub float 0.000000e+00, %.0257
  %i.gs = fsub float %i.go, %.0257
  %i.gt = fdiv float %i.gr, %i.gs
  %i.gu = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.gv = shufflevector <4 x i32> %i.gu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gw = lshr <4 x i32> %i.gv, <i32 8, i32 16, i32 24, i32 0>
  %i.gx = and <4 x i32> %i.gw, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.gy = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.gz = shufflevector <4 x i32> %i.gy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ha = lshr <4 x i32> %i.gz, <i32 8, i32 16, i32 24, i32 0>
  %i.hb = and <4 x i32> %i.ha, <i32 255, i32 255, i32 -1, i32 255>
  %i.hc = uitofp <4 x i32> %i.gx to <4 x float>
  %i.hd = sub nsw <4 x i32> %i.hb, %i.gx
  %i.he = sitofp <4 x i32> %i.hd to <4 x float>
  %i.hf = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.he, <4 x float> %i.hc)
  %i.hi = fadd <4 x float> %i.hh, splat (float 5.000000e-01)
  %i.hj = fptoui <4 x float> %i.hi to <4 x i32>
  %i.hk = shl <4 x i32> %i.hj, <i32 16, i32 8, i32 0, i32 24>
  %i.hl = and <4 x i32> %i.hk, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.hm = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hl)
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.hm, float noundef %i.go, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.hn = fcmp ult float %i.go, f0x40C90FDB
  br i1 %i.hn, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef %i.go, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ad
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.y, !llvm.loop !3138

._crit_edge:                                      ; preds = %bb.ag
  %i.ho = add nsw i32 %.0259334, 1                ; 2 uses
  %exitcond383.not = icmp eq i32 %i.ho, 1000
  br i1 %exitcond383.not, label %.loopexit306, label %.preheader, !llvm.loop !3139

bb.ah:                                            ; preds = %bb.ae
  %i.hp = fsub float f0x40C90FDB, %.0257
  %i.hq = fsub float %i.go, %.0257
  %i.hr = fdiv float %i.hp, %i.hq
  %i.hs = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.ht = shufflevector <4 x i32> %i.hs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hu = lshr <4 x i32> %i.ht, <i32 8, i32 16, i32 24, i32 0>
  %i.hv = and <4 x i32> %i.hu, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.hw = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.hx = shufflevector <4 x i32> %i.hw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hy = lshr <4 x i32> %i.hx, <i32 8, i32 16, i32 24, i32 0>
  %i.hz = and <4 x i32> %i.hy, <i32 255, i32 255, i32 -1, i32 255>
  %i.ia = uitofp <4 x i32> %i.hv to <4 x float>
  %i.ib = sub nsw <4 x i32> %i.hz, %i.hv
  %i.ic = sitofp <4 x i32> %i.ib to <4 x float>
  %i.id = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ic, <4 x float> %i.ia)
  %i.ig = fadd <4 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fptoui <4 x float> %i.ig to <4 x i32>
  %i.ii = shl <4 x i32> %i.ih, <i32 16, i32 8, i32 0, i32 24>
  %i.ij = and <4 x i32> %i.ii, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.ik = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ij)
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef f0x40C90FDB, i32 noundef %i.ik, ptr noundef %6) #63
  br label %.loopexit306

.loopexit306:                                     ; preds = %._crit_edge, %.loopexit308, %bb.u, %bb.ah, %.loopexit305.thread, %.loopexit.thread, %.loopexit
  br i1 %i.an, label %bb.ai, label %.loopexit306.thread

bb.ai:                                            ; preds = %.loopexit306
  call void @free(ptr noundef nonnull %.0266) #63
  call void @free(ptr noundef nonnull %.0267) #63
end_hunk_0
