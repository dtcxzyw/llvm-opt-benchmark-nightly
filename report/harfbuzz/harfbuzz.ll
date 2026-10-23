Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@hb_paint_sweep_gradient_tiles:bb.a
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1503 ; 2 uses
  tail call void %5(float noundef %4, i32 noundef %i.m, float noundef f0x40C90FDB, i32 noundef %i.m, ptr noundef %6) #59
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
  br i1 %i.u, label %.lr.ph, label %.preheader311, !llvm.loop !3127

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
  br i1 %niter.ncmp.3, label %.loopexit312.loopexit.unr-lcssa, label %bb.i, !llvm.loop !3128

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
  br i1 %epil.iter.cmp.not, label %.loopexit312, label %bb.j, !llvm.loop !3129

.loopexit312:                                     ; preds = %.loopexit312.loopexit.unr-lcssa, %bb.j, %bb.h
  %.0252 = phi float [ %4, %bb.h ], [ %3, %bb.j ], [ %3, %.loopexit312.loopexit.unr-lcssa ]
  %.0 = phi float [ %3, %bb.h ], [ %4, %bb.j ], [ %4, %.loopexit312.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.an = icmp ugt i32 %1, 16                     ; 2 uses
  %i.ao = zext i32 %1 to i64                      ; 6 uses
  br i1 %i.an, label %bb.k, label %.loopexit312._crit_edge

bb.k:                                             ; preds = %.loopexit312
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #61 ; 3 uses
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #61 ; 3 uses
  %i.as = icmp ne ptr %i.aq, null
  %i.at = icmp ne ptr %i.ar, null
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %.loopexit312._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.aq) #59
  tail call void @free(ptr noundef %i.ar) #59
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
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !3130

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
  br i1 %exitcond375.not, label %.loopexit441, label %scalar.ph, !llvm.loop !3131

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
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !324 ; 5 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv384
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !324 ; 4 uses
  %i.cy = and i32 %i.cv, 255
  %i.cz = and i32 %i.cx, 255
  %i.da = lshr i32 %i.cv, 8
  %i.db = and i32 %i.da, 255
  %i.dc = lshr i32 %i.cx, 8
  %i.dd = and i32 %i.dc, 255
  %i.de = lshr i32 %i.cv, 16
  %i.df = and i32 %i.de, 255
  %i.dg = lshr i32 %i.cx, 16
  %i.dh = and i32 %i.dg, 255
  %i.di = sub nsw i32 %i.cz, %i.cy
  %i.dj = sub nsw i32 %i.dd, %i.db
  %i.dk = sub nsw i32 %i.dh, %i.df
  %i.dl = lshr i32 %i.cv, 24
  %i.dm = lshr i32 %i.cx, 24
  %i.dn = bitcast i32 %i.cv to <4 x i8>
  %i.do = shufflevector <4 x i8> %i.dn, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dp = uitofp <4 x i8> %i.do to <4 x float>
  %i.dq = sub nsw i32 %i.dm, %i.dl
  %i.dr = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.dk, i64 1
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dq, i64 2
  %i.du = insertelement <4 x i32> %i.dt, i32 %i.di, i64 3
  %i.dv = sitofp <4 x i32> %i.du to <4 x float>
  %i.dw = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dv, <4 x float> %i.dp)
  %i.dz = fadd <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ea = fptoui <4 x float> %i.dz to <4 x i32>
  %i.eb = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ec = trunc <4 x i32> %i.eb to <4 x i8>
  %i.ed = bitcast <4 x i8> %i.ec to i32
  br label %.loopexit305

bb.q:                                             ; preds = %bb.n
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next385, %i.ao
  br i1 %exitcond389.not, label %.loopexit305.thread, label %bb.n, !llvm.loop !3132

.loopexit305:                                     ; preds = %bb.o, %bb.p
  %.0269319 = phi i32 [ %i.cm, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %.0268 = phi i32 [ %i.ed, %bb.p ], [ %i.ci, %bb.o ]
  %i.ee = icmp eq i32 %.0269319, %1
  br i1 %i.ee, label %.loopexit305.thread, label %bb.r

.loopexit305.thread:                              ; preds = %bb.q, %.loopexit305
  %8 = add i32 %1, -1
  %9 = zext i32 %8 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %9
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !324 ; 2 uses
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.eg, float noundef f0x40C90FDB, i32 noundef %i.eg, ptr noundef %6) #59
  br label %.loopexit306

bb.r:                                             ; preds = %.loopexit305
  %i.eh = zext i32 %.0269319 to i64               ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !304
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.eh
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !324
  tail call void %5(float noundef 0.000000e+00, i32 noundef %.0268, float noundef %i.ej, i32 noundef %i.el, ptr noundef %6) #59
  %.1270336 = add i32 %.0269319, 1                ; 3 uses
  %i.em = icmp ult i32 %.1270336, %1
  br i1 %i.em, label %.lr.ph340.preheader, label %.loopexit

.lr.ph340.preheader:                              ; preds = %bb.r
  %i.en = zext i32 %.1270336 to i64
  %i.eo = zext i32 %.0269319 to i64
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.s
  %indvars.iv390 = phi i64 [ %i.en, %.lr.ph340.preheader ], [ %indvars.iv.next391, %bb.s ] ; 6 uses
  %.1270.in337 = phi i64 [ %i.eo, %.lr.ph340.preheader ], [ %indvars.iv390, %bb.s ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv390
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !304 ; 3 uses
  %i.er = fcmp ugt float %i.eq, f0x40C90FDB
  br i1 %i.er, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph340
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.et = load float, ptr %i.es, align 4, !tbaa !304
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !324
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !324
  tail call void %5(float noundef %i.et, i32 noundef %i.ev, float noundef %i.eq, i32 noundef %i.ex, ptr noundef %6) #59
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next391 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %.loopexit.thread, label %.lr.ph340, !llvm.loop !3133

bb.t:                                             ; preds = %.lr.ph340
  %i.ey = trunc nuw i64 %indvars.iv390 to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !304 ; 3 uses
  %i.fb = fsub float f0x40C90FDB, %i.fa
  %i.fc = fsub float %i.eq, %i.fa
  %i.fd = fdiv float %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !324 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !324
  %i.fi = tail call fastcc noundef i32 @_ZL13hb_color_lerpjjf(i32 noundef %i.ff, i32 noundef %i.fh, float noundef %i.fd)
  tail call void %5(float noundef %i.fa, i32 noundef %i.ff, float noundef f0x40C90FDB, i32 noundef %i.fi, ptr noundef %6) #59
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.t
  %.1270315 = phi i32 [ %i.ey, %bb.t ], [ %.1270336, %bb.r ]
  %i.fj = icmp eq i32 %.1270315, %1
  br i1 %i.fj, label %.loopexit.thread, label %.loopexit306

.loopexit.thread:                                 ; preds = %bb.s, %.loopexit
  %10 = add i32 %1, -1
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %11
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !324 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %11
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !304
  tail call void %5(float noundef %i.fn, i32 noundef %i.fl, float noundef f0x40C90FDB, i32 noundef %i.fl, ptr noundef %6) #59
  br label %.loopexit306

bb.u:                                             ; preds = %.loopexit441
  %i.fo = add i32 %1, -1
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.fp ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !304 ; 3 uses
  %i.fs = load float, ptr %.0266, align 4, !tbaa !304 ; 4 uses
  %i.ft = fsub float %i.fr, %i.fs                 ; 7 uses
  %i.fu = tail call float @llvm.fabs.f32(float %i.ft) ; 4 uses
  %i.fv = fcmp olt float %i.fu, f0x358637BD
  br i1 %i.fv, label %.loopexit306, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fw = fcmp ult float %i.fs, 0.000000e+00
  br i1 %i.fw, label %.preheader307, label %.preheader309

.preheader309:                                    ; preds = %bb.v
  %i.fx = fcmp ogt float %i.fs, 0.000000e+00
  br i1 %i.fx, label %.lr.ph327, label %.preheader.lr.ph

.lr.ph327:                                        ; preds = %.preheader309
  %i.fy = fcmp ogt float %i.ft, 0.000000e+00      ; 2 uses
  %.1264.v = select i1 %i.fy, i32 -1, i32 1
  %i.fz = fneg float %i.ft
  %.1262.p = select i1 %i.fy, float %i.fz, float %i.ft
  br label %bb.w

.preheader307:                                    ; preds = %bb.v
  %i.ga = fcmp olt float %i.fr, 0.000000e+00
  br i1 %i.ga, label %.lr.ph330, label %.preheader.lr.ph

.lr.ph330:                                        ; preds = %.preheader307
  %i.gb = fcmp ogt float %i.ft, 0.000000e+00      ; 2 uses
  %.3.v = select i1 %i.gb, i32 1, i32 -1
  %i.gc = fneg float %i.ft
  %.1.p = select i1 %i.gb, float %i.ft, float %i.gc
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph327, %bb.w
  %.0261326 = phi float [ %i.fs, %.lr.ph327 ], [ %.1262, %bb.w ]
  %.0263325 = phi i32 [ 0, %.lr.ph327 ], [ %.1264, %bb.w ]
  %.1264 = add nsw i32 %.0263325, %.1264.v        ; 2 uses
  %.1262 = fadd float %.1262.p, %.0261326         ; 2 uses
  %i.gd = fcmp ogt float %.1262, 0.000000e+00
  br i1 %i.gd, label %bb.w, label %.loopexit308, !llvm.loop !3134

bb.x:                                             ; preds = %.lr.ph330, %bb.x
  %.0260329 = phi float [ %i.fr, %.lr.ph330 ], [ %.1, %bb.x ]
  %.2328 = phi i32 [ 0, %.lr.ph330 ], [ %.3, %bb.x ]
  %.3 = add nsw i32 %.2328, %.3.v                 ; 2 uses
  %.1 = fadd float %.1.p, %.0260329               ; 2 uses
  %i.ge = fcmp olt float %.1, 0.000000e+00
  br i1 %i.ge, label %bb.x, label %.loopexit308, !llvm.loop !3135

.loopexit308:                                     ; preds = %bb.w, %bb.x
  %.4 = phi i32 [ %.3, %bb.x ], [ %.1264, %bb.w ] ; 2 uses
  %i.gf = icmp slt i32 %.4, 1000
  br i1 %i.gf, label %.preheader.lr.ph, label %.loopexit306

.preheader.lr.ph:                                 ; preds = %.preheader309, %.preheader307, %.loopexit308
  %.4415 = phi i32 [ %.4, %.loopexit308 ], [ 0, %.preheader307 ], [ 0, %.preheader309 ]
  %.not343 = icmp eq i32 %1, 1
  %i.gg = icmp eq i32 %2, 2
  br i1 %.not343, label %.loopexit306.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count381 = zext i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0259334 = phi i32 [ %i.io, %._crit_edge ], [ %.4415, %.preheader.preheader ] ; 3 uses
  %i.gh = trunc i32 %.0259334 to i1
  %or.cond4 = and i1 %i.gg, %i.gh
  %i.gi = sitofp i32 %.0259334 to float           ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bb.ag
  %indvars.iv376 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next377, %bb.ag ] ; 6 uses
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gj = load float, ptr %.0266, align 4, !tbaa !304
  %i.gk = load float, ptr %i.fq, align 4, !tbaa !304
  %i.gl = fadd float %i.gj, %i.gk                 ; 2 uses
  %i.gm = sub nuw nsw i64 %i.ao, %indvars.iv376   ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !304
  %i.gp = fsub float %i.gl, %i.go
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.fu, float %i.gp)
  %i.gr = sub nuw nsw i64 %i.fp, %indvars.iv376   ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !304
  %i.gu = fsub float %i.gl, %i.gt
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gv = add nsw i64 %indvars.iv376, -1          ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !304
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.fu, float %i.gx)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv376
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !304
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink = phi float [ %i.ha, %bb.aa ], [ %i.gu, %bb.z ]
  %.0257 = phi float [ %i.gy, %bb.aa ], [ %i.gq, %bb.z ] ; 7 uses
  %.pn = phi i64 [ %i.gv, %bb.aa ], [ %i.gm, %bb.z ]
  %.pn296 = phi i64 [ %indvars.iv376, %bb.aa ], [ %i.gr, %bb.z ]
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.fu, float %.sink) ; 6 uses
  %.0254.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn296
  %.0254 = load i32, ptr %.0254.in, align 4, !tbaa !324 ; 10 uses
  %.0255.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn
  %.0255 = load i32, ptr %.0255.in, align 4, !tbaa !324 ; 12 uses
  %i.hc = fcmp olt float %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hd = fcmp olt float %.0257, 0.000000e+00
  br i1 %i.hd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.he = fsub float 0.000000e+00, %.0257
  %i.hf = fsub float %i.hb, %.0257
  %i.hg = fdiv float %i.he, %i.hf
  %i.hh = and i32 %.0255, 255
  %i.hi = and i32 %.0254, 255
  %i.hj = lshr i32 %.0255, 8
  %i.hk = and i32 %i.hj, 255
  %i.hl = lshr i32 %.0254, 8
  %i.hm = and i32 %i.hl, 255
  %i.hn = lshr i32 %.0255, 16
  %i.ho = and i32 %i.hn, 255
  %i.hp = lshr i32 %.0254, 16
  %i.hq = and i32 %i.hp, 255
  %i.hr = sub nsw i32 %i.hi, %i.hh
  %i.hs = sub nsw i32 %i.hm, %i.hk
  %i.ht = sub nsw i32 %i.hq, %i.ho
  %i.hu = lshr i32 %.0255, 24
  %i.hv = lshr i32 %.0254, 24
  %i.hw = bitcast i32 %.0255 to <4 x i8>
  %i.hx = shufflevector <4 x i8> %i.hw, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.hy = uitofp <4 x i8> %i.hx to <4 x float>
  %i.hz = sub nsw i32 %i.hv, %i.hu
  %i.ia = insertelement <4 x i32> poison, i32 %i.hs, i64 0
  %i.ib = insertelement <4 x i32> %i.ia, i32 %i.ht, i64 1
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hz, i64 2
  %i.id = insertelement <4 x i32> %i.ic, i32 %i.hr, i64 3
  %i.ie = sitofp <4 x i32> %i.id to <4 x float>
  %i.if = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.ie, <4 x float> %i.hy)
  %i.ii = fadd <4 x float> %i.ih, splat (float 5.000000e-01)
  %i.ij = fptoui <4 x float> %i.ii to <4 x i32>
  %i.ik = shufflevector <4 x i32> %i.ij, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.il = trunc <4 x i32> %i.ik to <4 x i8>
  %i.im = bitcast <4 x i8> %i.il to i32
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.im, float noundef %i.hb, i32 noundef %.0254, ptr noundef %6) #59
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.in = fcmp ult float %i.hb, f0x40C90FDB
  br i1 %i.in, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef %i.hb, i32 noundef %.0254, ptr noundef %6) #59
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ad
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.y, !llvm.loop !3136

._crit_edge:                                      ; preds = %bb.ag
  %i.io = add nsw i32 %.0259334, 1                ; 2 uses
  %exitcond383.not = icmp eq i32 %i.io, 1000
  br i1 %exitcond383.not, label %.loopexit306, label %.preheader, !llvm.loop !3137

bb.ah:                                            ; preds = %bb.ae
  %i.ip = fsub float f0x40C90FDB, %.0257
  %i.iq = fsub float %i.hb, %.0257
  %i.ir = fdiv float %i.ip, %i.iq
  %i.is = and i32 %.0255, 255
  %i.it = and i32 %.0254, 255
  %i.iu = lshr i32 %.0255, 8
  %i.iv = and i32 %i.iu, 255
  %i.iw = lshr i32 %.0254, 8
  %i.ix = and i32 %i.iw, 255
  %i.iy = lshr i32 %.0255, 16
  %i.iz = and i32 %i.iy, 255
  %i.ja = lshr i32 %.0254, 16
  %i.jb = and i32 %i.ja, 255
  %i.jc = sub nsw i32 %i.it, %i.is
  %i.jd = sub nsw i32 %i.ix, %i.iv
  %i.je = sub nsw i32 %i.jb, %i.iz
  %i.jf = lshr i32 %.0255, 24
  %i.jg = lshr i32 %.0254, 24
end_hunk_0
begin_hunk_1_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %i.fa = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check1051 = icmp ult i64 %i.fa, 5
  %i.fb = and i64 %i.fa, 3                        ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = select i1 %i.fc, i64 4, i64 %i.fb
  %n.vec1053 = sub nsw i64 %i.fa, %i.fd           ; 2 uses
  %i.fe = add nsw i64 %n.vec1053, %i.et
  %i.ff = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ff, 5
  %i.fg = and i64 %i.ff, 3                        ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = select i1 %i.fh, i64 4, i64 %i.fg
  %n.vec = sub nsw i64 %i.ff, %i.fi               ; 2 uses
  %i.fj = add nsw i64 %n.vec, %i.et
  br label %bb.o

bb.o:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403, %bb.n
  %i.fk = phi i16 [ %i.ch, %bb.n ], [ %i.any, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.43.0 = phi ptr [ %i.bn, %bb.n ], [ %i.anr, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.22.0.in = phi i64 [ %.0.i.i.i, %bb.n ], [ %.0.i.i401, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.16.0 = phi i32 [ %.sroa.16.1, %bb.n ], [ %i.anq, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.0439.0 = phi i32 [ %i.bl, %bb.n ], [ %i.ans, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.6436.0 = phi i64 [ 0, %bb.n ], [ %.sroa.6436.5589, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 8 uses
  %.sroa.0435.0 = phi ptr [ %i.cv, %bb.n ], [ %.sroa.0435.5590, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.18.0 = phi i64 [ 0, %bb.n ], [ %.sroa.18.3591, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.0417.0 = phi ptr [ %i.cz, %bb.n ], [ %.sroa.0417.3592, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0284 = phi i8 [ 0, %bb.n ], [ %.4288593, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.0264 = phi i1 [ false, %bb.n ], [ %.2266594, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0260 = phi i1 [ false, %bb.n ], [ %.3263595, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 2 ; 2 uses
  %i.fm = call noundef i16 @llvm.bswap.i16(i16 %i.fk) ; 3 uses
  %i.fn = zext i16 %i.fm to i32                   ; 4 uses
  %i.fo = and i32 %i.fn, 4095                     ; 10 uses
  %i.fp = and i32 %i.fn, 57343
  %i.fq = load i32, ptr %spec.select, align 4, !tbaa !480 ; 4 uses
  %i.fr = icmp ult i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.p, label %.thread512, !prof !268

bb.p:                                             ; preds = %bb.o
  %.not.i138.i = icmp ult i32 %i.fo, %i.fq
  br i1 %.not.i138.i, label %bb.q, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.q:                                             ; preds = %bb.p
  %i.fs = zext nneg i32 %i.fo to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fs
  %i.fu = load atomic i32, ptr %i.ft monotonic, align 4 ; 2 uses
  switch i32 %i.fu, label %bb.r [
    i32 0, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
    i32 -2147483648, label %bb.s
  ], !prof !649

bb.r:                                             ; preds = %bb.q
  %i.fv = sitofp i32 %i.fu to float
  %i.fw = fmul nnan float %i.fv, f0x30800000
  %i.fx = fpext float %i.fw to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

bb.s:                                             ; preds = %bb.q
  %i.fy = and i32 %i.fn, 16384
  %i.fz = icmp ne i32 %i.fy, 0                    ; 2 uses
  %.not.i = icmp sgt i16 %i.fm, -1
  br i1 %.not.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.split, !prof !268

.thread512:                                       ; preds = %bb.o
  %i.ga = and i32 %i.fn, 16384
  %i.gb = icmp ne i32 %i.ga, 0                    ; 4 uses
  %.not.i514 = icmp sgt i16 %i.fm, -1
  br i1 %.not.i514, label %bb.t, label %.split, !prof !268

.split:                                           ; preds = %.thread512, %bb.s
  %i.gc = phi i1 [ %i.gb, %.thread512 ], [ %i.fz, %bb.s ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4 ; 2 uses
  br i1 %i.gc, label %bb.x, label %bb.y

bb.t:                                             ; preds = %.thread512
  %.not127.i = icmp eq i32 %i.fq, 0
  br i1 %.not127.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.thread517

.thread517:                                       ; preds = %bb.t
  %.not.i.i = icmp samesign ult i32 %i.fo, %i.fq
  br i1 %.not.i.i, label %bb.u, label %.thread522, !prof !268

bb.u:                                             ; preds = %.thread517
  %i.ge = zext nneg i32 %i.fo to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ge
  %i.gg = load atomic i32, ptr %i.gf monotonic, align 4 ; 2 uses
  switch i32 %i.gg, label %bb.v [
    i32 0, label %.thread522
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  ], !prof !649

bb.v:                                             ; preds = %bb.u
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = fmul nnan float %i.gh, f0x30800000      ; 3 uses
  %i.gj = fcmp une float %i.gi, 0.000000e+00
  %i.gk = fcmp une float %i.gi, 1.000000e+00
  %i.gl = and i1 %i.gj, %i.gk
  %or.cond5.i = select i1 %i.gb, i1 %i.gl, i1 false
  br i1 %or.cond5.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, label %.thread522

.thread522:                                       ; preds = %bb.u, %.thread517, %bb.v
  %.0502.ph525 = phi float [ %i.gi, %bb.v ], [ 0.000000e+00, %.thread517 ], [ 0.000000e+00, %bb.u ]
  %i.gm = fpext float %.0502.ph525 to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i:        ; preds = %bb.s, %bb.u, %bb.t
  %i.gn = phi i1 [ %i.gb, %bb.u ], [ %i.gb, %bb.t ], [ %i.fz, %bb.s ]
  %i.go = add nuw nsw i32 %i.fo, 1
  %i.gp = mul nuw nsw i32 %i.go, %i.dj
  %i.gq = icmp ugt i32 %i.gp, %i.dt
  br i1 %i.gq, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.w, !prof !267

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread: ; preds = %bb.v
  %i.gr = add nuw nsw i32 %i.fo, 1
  %i.gs = mul nuw nsw i32 %i.gr, %i.dj
  %i.gt = icmp ugt i32 %i.gs, %i.dt
  br i1 %i.gt, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %.thread, !prof !267

.thread:                                          ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread
  %i.gu = mul nuw nsw i32 %i.fo, %i.dj
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gv
  br label %bb.x

bb.w:                                             ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  %i.gx = mul nuw nsw i32 %i.fo, %i.dj
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gy ; 2 uses
  br i1 %i.gn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread, %.split, %bb.w
  %.199.i535 = phi ptr [ %i.gd, %.split ], [ %i.gz, %bb.w ], [ %i.gw, %.thread ]
  %.2107.i533 = phi ptr [ null, %.split ], [ %spec.select, %bb.w ], [ null, %.thread ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4
  %.mask.i.i = and i16 %i.fk, 128
  %.not.i352 = icmp eq i16 %.mask.i.i, 0
  %i.hb = select i1 %.not.i352, i64 0, i64 %i.dy
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.dy
  br label %bb.y

bb.y:                                             ; preds = %.split, %bb.x, %bb.w
  %.199.i534 = phi ptr [ %.199.i535, %bb.x ], [ %i.gz, %bb.w ], [ %i.gd, %.split ] ; 3 uses
  %.2107.i532 = phi ptr [ %.2107.i533, %bb.x ], [ %spec.select, %bb.w ], [ null, %.split ] ; 2 uses
  %i.he = phi i1 [ true, %bb.x ], [ false, %bb.w ], [ false, %.split ]
  %.097.i = phi ptr [ %i.hc, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  %.096.i = phi ptr [ %i.hd, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  br i1 %.not763, label %.critedge7.i, label %.lr.ph668

.lr.ph668:                                        ; preds = %bb.y, %bb.an
  %.0.i667 = phi i32 [ %i.jh, %bb.an ], [ 0, %bb.y ] ; 6 uses
  %.092.i666 = phi double [ %.5.i.ph, %bb.an ], [ 1.000000e+00, %bb.y ] ; 11 uses
  %.3108.i665 = phi ptr [ %.6111.i.ph, %bb.an ], [ %.2107.i532, %bb.y ] ; 7 uses
  br i1 %i.dz, label %.preheader636.preheader, label %.critedge7.i.thread

.preheader636.preheader:                          ; preds = %.lr.ph668
  %i.hf = add i32 %.0.i667, 4                     ; 2 uses
  %.not128.i1045 = icmp ugt i32 %i.hf, %i.dj
  br i1 %.not128.i1045, label %.critedge.i, label %.lr.ph1047

.preheader636:                                    ; preds = %.lr.ph1047
  %i.hg = add i32 %i.hh, 4                        ; 2 uses
  %.not128.i = icmp ugt i32 %i.hg, %i.dj
  br i1 %.not128.i, label %.critedge.i, label %.lr.ph1047, !llvm.loop !3255

.lr.ph1047:                                       ; preds = %.preheader636.preheader, %.preheader636
  %i.hh = phi i32 [ %i.hg, %.preheader636 ], [ %i.hf, %.preheader636.preheader ] ; 3 uses
  %.1.i1046 = phi i32 [ %i.hh, %.preheader636 ], [ %.0.i667, %.preheader636.preheader ] ; 2 uses
  %i.hi = zext i32 %.1.i1046 to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 1, !tbaa !3296
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %.preheader636, label %..critedge.i_crit_edge, !llvm.loop !3255

..critedge.i_crit_edge:                           ; preds = %.lr.ph1047
  br label %.critedge.i, !llvm.loop !3255

.critedge.i:                                      ; preds = %.preheader636, %..critedge.i_crit_edge, %.preheader636.preheader
  %.1.i.lcssa = phi i32 [ %.1.i1046, %..critedge.i_crit_edge ], [ %.0.i667, %.preheader636.preheader ], [ %i.hh, %.preheader636 ] ; 2 uses
  %i.hm = icmp ult i32 %.1.i.lcssa, %i.dj
  br i1 %i.hm, label %.lr.ph.preheader, label %.critedge7.i

.lr.ph.preheader:                                 ; preds = %.critedge.i
  %i.hn = zext nneg i32 %.1.i.lcssa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %indvars.iv = phi i64 [ %i.hn, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 1, !tbaa !283 ; 3 uses
  %i.hq = icmp eq i16 %i.hp, 0
  br i1 %i.hq, label %bb.z, label %.critedge7.i.thread.thread

bb.z:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.dj
  br i1 %exitcond.not, label %.critedge7.i, label %.lr.ph, !llvm.loop !3256

.critedge7.i.thread.thread:                       ; preds = %.lr.ph
  %i.hr = trunc nuw i64 %indvars.iv to i32
  %i.hs = call noundef i16 @llvm.bswap.i16(i16 %i.hp)
  br label %bb.aa

.critedge7.i.thread:                              ; preds = %.lr.ph668
  %.phi.trans.insert876 = zext nneg i32 %.0.i667 to i64 ; 2 uses
  %.phi.trans.insert877 = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %.phi.trans.insert876
  %.pre878 = load i16, ptr %.phi.trans.insert877, align 1, !tbaa !283 ; 3 uses
  %i.ht = call noundef i16 @llvm.bswap.i16(i16 %.pre878)
  %.not130.i = icmp eq i16 %.pre878, 0
  br i1 %.not130.i, label %bb.an, label %bb.aa

bb.aa:                                            ; preds = %.critedge7.i.thread.thread, %.critedge7.i.thread
  %i.hu = phi i16 [ %i.hs, %.critedge7.i.thread.thread ], [ %i.ht, %.critedge7.i.thread ] ; 4 uses
  %.3.i963 = phi i32 [ %i.hr, %.critedge7.i.thread.thread ], [ %.0.i667, %.critedge7.i.thread ] ; 9 uses
  %i.hv = phi i16 [ %i.hp, %.critedge7.i.thread.thread ], [ %.pre878, %.critedge7.i.thread ] ; 2 uses
  %.pre-phi962 = phi i64 [ %indvars.iv, %.critedge7.i.thread.thread ], [ %.phi.trans.insert876, %.critedge7.i.thread ] ; 3 uses
  %i.hw = sext i16 %i.hu to i32                   ; 6 uses
  %.not.i.i355 = icmp ult i32 %.3.i963, %.sroa.4.8.extract.trunc
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.pre-phi962
  %.0.i.i356 = select i1 %.not.i.i355, ptr %i.hx, ptr @_hb_NullPool, !prof !268
  %i.hy = load i32, ptr %.0.i.i356, align 4, !tbaa !324 ; 10 uses
  %.not131.i = icmp eq i32 %i.hy, 0
  br i1 %.not131.i, label %.critedge7.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hz = icmp eq i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.he, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.097.i, i64 %.pre-phi962
  %i.ib = load i16, ptr %i.ia, align 1, !tbaa !283 ; 2 uses
  %i.ic = call noundef i16 @llvm.bswap.i16(i16 %i.ib) ; 3 uses
  %i.id = sext i16 %i.ic to i32                   ; 3 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.096.i, i64 %.pre-phi962
  %i.if = load i16, ptr %i.ie, align 1, !tbaa !283 ; 2 uses
  %i.ig = call noundef i16 @llvm.bswap.i16(i16 %i.if) ; 3 uses
  %i.ih = sext i16 %i.ig to i32                   ; 3 uses
  %i.ii = icmp slt i16 %i.hu, %i.ic
  %i.ij = icmp sgt i16 %i.hu, %i.ig
  %or.cond.i = or i1 %i.ii, %i.ij
  br i1 %or.cond.i, label %bb.an, label %bb.ae, !prof !408

bb.ae:                                            ; preds = %bb.ad
  %i.ik = icmp slt i16 %i.ic, 0
  %i.il = icmp sgt i16 %i.ig, 0
  %or.cond9.i = and i1 %i.ik, %i.il
  br i1 %or.cond9.i, label %bb.an, label %bb.af, !prof !267

bb.af:                                            ; preds = %bb.ae
  %i.im = icmp slt i32 %i.hy, %i.id
  %i.in = icmp sgt i32 %i.hy, %i.ih
  %or.cond137.i = or i1 %i.im, %i.in
  br i1 %or.cond137.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.io = icmp slt i32 %i.hy, %i.hw
  br i1 %i.io, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.not133.i = icmp eq i16 %i.hv, %i.ib
  br i1 %.not133.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ip = sub nsw i32 %i.hy, %i.id
  %i.iq = sitofp i32 %i.ip to double
  %i.ir = sub nsw i32 %i.hw, %i.id
  %i.is = sitofp i32 %i.ir to double
  %i.it = fdiv double %i.iq, %i.is
  %i.iu = fmul double %.092.i666, %i.it
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %.not132.i = icmp eq i16 %i.hv, %i.if
  br i1 %.not132.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iv = sub nsw i32 %i.ih, %i.hy
  %i.iw = sitofp i32 %i.iv to double
  %i.ix = sub nsw i32 %i.ih, %i.hw
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fdiv double %i.iw, %i.iy
  %i.ja = fmul double %.092.i666, %i.iz
  br label %bb.an

bb.al:                                            ; preds = %bb.ac
  %.sroa.speculated469 = call i32 @llvm.smin.i32(i32 %i.hw, i32 0)
  %i.jb = icmp slt i32 %i.hy, %.sroa.speculated469
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.hw, i32 0)
  %i.jc = icmp sgt i32 %i.hy, %.sroa.speculated
  %or.cond624 = or i1 %i.jb, %i.jc
  br i1 %or.cond624, label %.critedge7.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jd = sitofp i32 %i.hy to double
  %i.je = sitofp i16 %i.hu to double
  %i.jf = fdiv double %i.jd, %i.je
  %i.jg = fmul double %.092.i666, %i.jf
  br label %bb.an

bb.an:                                            ; preds = %.critedge7.i.thread, %bb.am, %bb.ab, %bb.ah, %bb.ad, %bb.ae, %bb.ai, %bb.aj, %bb.ak
  %.3.i964 = phi i32 [ %.3.i963, %bb.ae ], [ %.3.i963, %bb.ad ], [ %.3.i963, %bb.ai ], [ %.3.i963, %bb.aj ], [ %.3.i963, %bb.ak ], [ %.3.i963, %bb.ah ], [ %.3.i963, %bb.ab ], [ %.3.i963, %bb.am ], [ %.0.i667, %.critedge7.i.thread ]
  %.6111.i.ph = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.ah ], [ %.3108.i665, %bb.ab ], [ %.3108.i665, %bb.am ], [ %.3108.i665, %.critedge7.i.thread ] ; 2 uses
  %.5.i.ph = phi double [ %.092.i666, %bb.ae ], [ %.092.i666, %bb.ad ], [ %i.iu, %bb.ai ], [ %.092.i666, %bb.aj ], [ %i.ja, %bb.ak ], [ %.092.i666, %bb.ah ], [ %.092.i666, %bb.ab ], [ %i.jg, %bb.am ], [ %.092.i666, %.critedge7.i.thread ] ; 2 uses
  %i.jh = add nuw i32 %.3.i964, 1                 ; 2 uses
  %i.ji = icmp ult i32 %i.jh, %i.dj
  br i1 %i.ji, label %.lr.ph668, label %.critedge7.i, !llvm.loop !3257

.critedge7.i:                                     ; preds = %bb.an, %bb.al, %bb.aa, %.critedge.i, %bb.z, %bb.y
  %.3108.i654 = phi ptr [ %.2107.i532, %bb.y ], [ %.3108.i665, %bb.z ], [ %.3108.i665, %.critedge.i ], [ %.6111.i.ph, %bb.an ], [ %.3108.i665, %bb.al ], [ %.3108.i665, %bb.aa ] ; 3 uses
  %.6.i = phi double [ 1.000000e+00, %bb.y ], [ %.092.i666, %bb.z ], [ %.092.i666, %.critedge.i ], [ %.5.i.ph, %bb.an ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.aa ] ; 4 uses
  %.not134.i = icmp eq ptr %.3108.i654, null
  br i1 %.not134.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge7.i
  %i.jj = load i32, ptr %.3108.i654, align 4, !tbaa !480
  %.not.i141.i = icmp ult i32 %i.fo, %i.jj
  br i1 %.not.i141.i, label %bb.ap, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.ap:                                            ; preds = %bb.ao
  %i.jk = fptrunc double %.6.i to float
  %i.jl = getelementptr inbounds nuw i8, ptr %.3108.i654, i64 4
  %i.jm = zext nneg i32 %i.fo to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jm
  %i.jo = fmul float %i.jk, f0x4E800000
  %i.jp = fadd float %i.jo, 5.000000e-01
  %i.jq = call noundef float @llvm.floor.f32(float %i.jp)
  %i.jr = fptosi float %i.jq to i32
  store atomic i32 %i.jr, ptr %i.jn monotonic, align 4
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.af, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, %bb.q, %bb.r, %bb.p, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, %.thread522, %bb.ao, %bb.ap, %.critedge7.i
  %.4116.i = phi double [ 0.000000e+00, %bb.q ], [ %.6.i, %bb.ao ], [ %i.gm, %.thread522 ], [ %.6.i, %.critedge7.i ], [ %.6.i, %bb.ap ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i ], [ 0.000000e+00, %bb.p ], [ %i.fx, %bb.r ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread ], [ 0.000000e+00, %bb.af ]
  %i.js = fptrunc double %.4116.i to float        ; 8 uses
  %i.jt = fcmp oeq float %i.js, 0.000000e+00
  br i1 %i.jt, label %.thread580, label %bb.aq

bb.aq:                                            ; preds = %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
  br i1 %.0264, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646.preheader

.preheader646.preheader:                          ; preds = %bb.aq
  %.pre879 = load i16, ptr %i.fl, align 1, !tbaa !283
  br label %.preheader646

.preheader646:                                    ; preds = %.preheader646.preheader, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit
  %i.ju = phi i16 [ %i.kd, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.pre879, %.preheader646.preheader ]
  %.sroa.14413.0 = phi ptr [ %i.jw, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.43.0, %.preheader646.preheader ]
  %.sroa.9.0 = phi i64 [ %.0.i.i361, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.22.0.in, %.preheader646.preheader ]
  %.sroa.0409.0 = phi i32 [ %i.jx, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.0439.0, %.preheader646.preheader ] ; 2 uses
  %i.jv = and i16 %i.ju, 32
  %.not615 = icmp eq i16 %i.jv, 0
  br i1 %.not615, label %bb.ar, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread

bb.ar:                                            ; preds = %.preheader646
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.14413.0, i64 %.sroa.9.0 ; 4 uses
  %i.jx = add nsw i32 %.sroa.0409.0, -1
  %i.jy = icmp slt i32 %.sroa.0409.0, 2
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = sub i64 %i.ka, %i.ce
  %.not.i359 = icmp ugt i64 %i.kb, %.sroa.6.0.i952
  %or.cond755 = select i1 %i.jy, i1 true, i1 %.not.i359, !prof !408
  br i1 %or.cond755, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.as, !prof !408

bb.as:                                            ; preds = %bb.ar
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kd = load i16, ptr %i.kc, align 1, !tbaa !283 ; 2 uses
  %i.ke = call noundef i16 @llvm.bswap.i16(i16 %i.kd) ; 2 uses
  %.not.i.i360 = icmp ult i16 %i.ke, 16384
  br i1 %.not.i.i360, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, label %bb.at, !prof !268

bb.at:                                            ; preds = %bb.as
  %i.kf = zext i16 %i.ke to i32                   ; 2 uses
  %i.kg = lshr i32 %i.kf, 15
  %i.kh = lshr i32 %i.kf, 13
  %i.ki = and i32 %i.kh, 2
  %i.kj = or disjoint i32 %i.ki, %i.kg
  %narrow616 = mul nuw nsw i32 %i.kj, %i.bm
  %narrow617 = add nuw nsw i32 %narrow616, 4
  %i.kk = zext nneg i32 %narrow617 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit: ; preds = %bb.as, %bb.at
  %.0.i.i361 = phi i64 [ %i.kk, %bb.at ], [ 4, %bb.as ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.0.i.i361
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.km, %i.ce
  %.not618 = icmp ugt i64 %i.kn, %.sroa.6.0.i952
  br i1 %.not618, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646, !llvm.loop !3258

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread: ; preds = %bb.ar, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, %.preheader646, %bb.aq
  %.2262 = phi i1 [ %.0260, %bb.aq ], [ %.0260, %bb.ar ], [ %.0260, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ true, %.preheader646 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ko = load i16, ptr %i.ea, align 1, !tbaa !283 ; 2 uses
  %i.kp = icmp eq i16 %i.ko, 0
  %i.kq = call i16 @llvm.bswap.i16(i16 %i.ko)
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i954, i64 %i.kr
end_hunk_1
