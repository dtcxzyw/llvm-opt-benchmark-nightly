Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
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
  br i1 %i.u, label %.lr.ph, label %.preheader311, !llvm.loop !3128

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
  br i1 %niter.ncmp.3, label %.loopexit312.loopexit.unr-lcssa, label %bb.i, !llvm.loop !3129

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
  br i1 %epil.iter.cmp.not, label %.loopexit312, label %bb.j, !llvm.loop !3130

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
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !3131

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
  br i1 %exitcond375.not, label %.loopexit441, label %scalar.ph, !llvm.loop !3132

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
  br i1 %exitcond389.not, label %.loopexit305.thread, label %bb.n, !llvm.loop !3133

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
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.eg, float noundef f0x40C90FDB, i32 noundef %i.eg, ptr noundef %6) #63
  br label %.loopexit306

bb.r:                                             ; preds = %.loopexit305
  %i.eh = zext i32 %.0269319 to i64               ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !304
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.eh
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !324
  tail call void %5(float noundef 0.000000e+00, i32 noundef %.0268, float noundef %i.ej, i32 noundef %i.el, ptr noundef %6) #63
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
  tail call void %5(float noundef %i.et, i32 noundef %i.ev, float noundef %i.eq, i32 noundef %i.ex, ptr noundef %6) #63
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next391 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %.loopexit.thread, label %.lr.ph340, !llvm.loop !3134

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
  tail call void %5(float noundef %i.fa, i32 noundef %i.ff, float noundef f0x40C90FDB, i32 noundef %i.fi, ptr noundef %6) #63
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
  tail call void %5(float noundef %i.fn, i32 noundef %i.fl, float noundef f0x40C90FDB, i32 noundef %i.fl, ptr noundef %6) #63
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
  br i1 %i.gd, label %bb.w, label %.loopexit308, !llvm.loop !3135

bb.x:                                             ; preds = %.lr.ph330, %bb.x
  %.0260329 = phi float [ %i.fr, %.lr.ph330 ], [ %.1, %bb.x ]
  %.2328 = phi i32 [ 0, %.lr.ph330 ], [ %.3, %bb.x ]
  %.3 = add nsw i32 %.2328, %.3.v                 ; 2 uses
  %.1 = fadd float %.1.p, %.0260329               ; 2 uses
  %i.ge = fcmp olt float %.1, 0.000000e+00
  br i1 %i.ge, label %bb.x, label %.loopexit308, !llvm.loop !3136

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
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.im, float noundef %i.hb, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.in = fcmp ult float %i.hb, f0x40C90FDB
  br i1 %i.in, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef %i.hb, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ad
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.y, !llvm.loop !3137

._crit_edge:                                      ; preds = %bb.ag
  %i.io = add nsw i32 %.0259334, 1                ; 2 uses
  %exitcond383.not = icmp eq i32 %i.io, 1000
  br i1 %exitcond383.not, label %.loopexit306, label %.preheader, !llvm.loop !3138

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
