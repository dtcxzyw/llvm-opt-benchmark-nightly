Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@hb_paint_sweep_gradient_tiles:bb.a
  %i.t = and i64 %indvars.iv.next, 4294967295
  %i.u = icmp samesign ult i64 %indvars.iv.next361, %i.t
  br i1 %i.u, label %.lr.ph, label %.preheader311, !llvm.loop !3129

bb.i:                                             ; preds = %bb.i, %.preheader311.new
  %indvars.iv365 = phi i64 [ 0, %.preheader311.new ], [ %indvars.iv.next366.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader311.new ], [ %niter.next.3, %bb.i ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !1503
  %i.x = fsub float 1.000000e+00, %i.w
  store float %i.x, ptr %i.v, align 4, !tbaa !1503
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !1503
  %i.ab = fsub float 1.000000e+00, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !1503
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !1503
  %i.af = fsub float 1.000000e+00, %i.ae
  store float %i.af, ptr %i.ad, align 4, !tbaa !1503
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1503
  %i.aj = fsub float 1.000000e+00, %i.ai
  store float %i.aj, ptr %i.ah, align 4, !tbaa !1503
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
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1503
  %i.am = fsub float 1.000000e+00, %i.al
  store float %i.am, ptr %i.ak, align 4, !tbaa !1503
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
  %i.bc = load float, ptr %i.av, align 4, !tbaa !1503
  %i.bd = load float, ptr %i.ax, align 4, !tbaa !1503
  %i.be = load float, ptr %i.az, align 4, !tbaa !1503
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !1503
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
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !1505
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !1505
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !1505
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !1505
  %i.bu = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bv = insertelement <4 x i32> %i.bu, i32 %i.br, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bs, i64 2
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 3
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %index
  store <4 x i32> %i.bx, ptr %i.by, align 4, !tbaa !326
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
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !1503
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.au, float %.0)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv369
  store float %i.cd, ptr %i.ce, align 4, !tbaa !304
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !1505
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv369
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !326
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next370, %i.ao
  br i1 %exitcond375.not, label %.loopexit441, label %scalar.ph, !llvm.loop !3133

bb.m:                                             ; preds = %.loopexit441
  %i.ci = load i32, ptr %.0267, align 4, !tbaa !326
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
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !326
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !326
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
  %8 = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %9 = trunc <4 x i32> %8 to <4 x i8>
  %10 = bitcast <4 x i8> %9 to i32
  br label %.loopexit305

bb.q:                                             ; preds = %bb.n
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next385, %i.ao
  br i1 %exitcond389.not, label %.loopexit305.thread, label %bb.n, !llvm.loop !3134

.loopexit305:                                     ; preds = %bb.o, %bb.p
  %.0269319 = phi i32 [ %i.cm, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %.0268 = phi i32 [ %10, %bb.p ], [ %i.ci, %bb.o ]
  %i.do = icmp eq i32 %.0269319, %1
  br i1 %i.do, label %.loopexit305.thread, label %bb.r

.loopexit305.thread:                              ; preds = %bb.q, %.loopexit305
  %i.dp = add i32 %1, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.ds, float noundef f0x40C90FDB, i32 noundef %i.ds, ptr noundef %6) #63
  br label %.loopexit306

bb.r:                                             ; preds = %.loopexit305
  %i.dt = zext i32 %.0269319 to i64               ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !304
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.dt
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !326
  tail call void %5(float noundef 0.000000e+00, i32 noundef %.0268, float noundef %i.dv, i32 noundef %i.dx, ptr noundef %6) #63
  %.1270336 = add i32 %.0269319, 1                ; 3 uses
  %i.dy = icmp ult i32 %.1270336, %1
  br i1 %i.dy, label %.lr.ph340.preheader, label %.loopexit

.lr.ph340.preheader:                              ; preds = %bb.r
  %i.dz = zext i32 %.1270336 to i64
  %i.ea = zext i32 %.0269319 to i64
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.s
  %indvars.iv390 = phi i64 [ %i.dz, %.lr.ph340.preheader ], [ %indvars.iv.next391, %bb.s ] ; 6 uses
  %.1270.in337 = phi i64 [ %i.ea, %.lr.ph340.preheader ], [ %indvars.iv390, %bb.s ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv390
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !304 ; 3 uses
  %i.ed = fcmp ugt float %i.ec, f0x40C90FDB
  br i1 %i.ed, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph340
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !304
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !326
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !326
  tail call void %5(float noundef %i.ef, i32 noundef %i.eh, float noundef %i.ec, i32 noundef %i.ej, ptr noundef %6) #63
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next391 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %.loopexit.thread, label %.lr.ph340, !llvm.loop !3135

bb.t:                                             ; preds = %.lr.ph340
  %i.ek = trunc nuw i64 %indvars.iv390 to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.em = load float, ptr %i.el, align 4, !tbaa !304 ; 3 uses
  %i.en = fsub float f0x40C90FDB, %i.em
  %i.eo = fsub float %i.ec, %i.em
  %i.ep = fdiv float %i.en, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !326 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.et = load i32, ptr %i.es, align 4, !tbaa !326
  %i.eu = tail call fastcc noundef i32 @_ZL13hb_color_lerpjjf(i32 noundef %i.er, i32 noundef %i.et, float noundef %i.ep)
  tail call void %5(float noundef %i.em, i32 noundef %i.er, float noundef f0x40C90FDB, i32 noundef %i.eu, ptr noundef %6) #63
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.t
  %.1270315 = phi i32 [ %i.ek, %bb.t ], [ %.1270336, %bb.r ]
  %i.ev = icmp eq i32 %.1270315, %1
  br i1 %i.ev, label %.loopexit.thread, label %.loopexit306

.loopexit.thread:                                 ; preds = %bb.s, %.loopexit
  %i.ew = add i32 %1, -1
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !326 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.ex
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !304
  tail call void %5(float noundef %i.fb, i32 noundef %i.ez, float noundef f0x40C90FDB, i32 noundef %i.ez, ptr noundef %6) #63
  br label %.loopexit306

bb.u:                                             ; preds = %.loopexit441
  %i.fc = add i32 %1, -1
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.fd ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !304 ; 3 uses
  %i.fg = load float, ptr %.0266, align 4, !tbaa !304 ; 4 uses
  %i.fh = fsub float %i.ff, %i.fg                 ; 7 uses
  %i.fi = tail call float @llvm.fabs.f32(float %i.fh) ; 4 uses
  %i.fj = fcmp olt float %i.fi, f0x358637BD
  br i1 %i.fj, label %.loopexit306, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = fcmp ult float %i.fg, 0.000000e+00
  br i1 %i.fk, label %.preheader307, label %.preheader309

.preheader309:                                    ; preds = %bb.v
  %i.fl = fcmp ogt float %i.fg, 0.000000e+00
  br i1 %i.fl, label %.lr.ph327, label %.preheader.lr.ph

.lr.ph327:                                        ; preds = %.preheader309
  %i.fm = fcmp ogt float %i.fh, 0.000000e+00      ; 2 uses
  %.1264.v = select i1 %i.fm, i32 -1, i32 1
  %i.fn = fneg float %i.fh
  %.1262.p = select i1 %i.fm, float %i.fn, float %i.fh
  br label %bb.w

.preheader307:                                    ; preds = %bb.v
  %i.fo = fcmp olt float %i.ff, 0.000000e+00
  br i1 %i.fo, label %.lr.ph330, label %.preheader.lr.ph

.lr.ph330:                                        ; preds = %.preheader307
  %i.fp = fcmp ogt float %i.fh, 0.000000e+00      ; 2 uses
  %.3.v = select i1 %i.fp, i32 1, i32 -1
  %i.fq = fneg float %i.fh
  %.1.p = select i1 %i.fp, float %i.fh, float %i.fq
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph327, %bb.w
  %.0261326 = phi float [ %i.fg, %.lr.ph327 ], [ %.1262, %bb.w ]
  %.0263325 = phi i32 [ 0, %.lr.ph327 ], [ %.1264, %bb.w ]
  %.1264 = add nsw i32 %.0263325, %.1264.v        ; 2 uses
  %.1262 = fadd float %.1262.p, %.0261326         ; 2 uses
  %i.fr = fcmp ogt float %.1262, 0.000000e+00
  br i1 %i.fr, label %bb.w, label %.loopexit308, !llvm.loop !3136

bb.x:                                             ; preds = %.lr.ph330, %bb.x
  %.0260329 = phi float [ %i.ff, %.lr.ph330 ], [ %.1, %bb.x ]
  %.2328 = phi i32 [ 0, %.lr.ph330 ], [ %.3, %bb.x ]
  %.3 = add nsw i32 %.2328, %.3.v                 ; 2 uses
  %.1 = fadd float %.1.p, %.0260329               ; 2 uses
  %i.fs = fcmp olt float %.1, 0.000000e+00
  br i1 %i.fs, label %bb.x, label %.loopexit308, !llvm.loop !3137

.loopexit308:                                     ; preds = %bb.w, %bb.x
  %.4 = phi i32 [ %.3, %bb.x ], [ %.1264, %bb.w ] ; 2 uses
  %i.ft = icmp slt i32 %.4, 1000
  br i1 %i.ft, label %.preheader.lr.ph, label %.loopexit306

.preheader.lr.ph:                                 ; preds = %.preheader309, %.preheader307, %.loopexit308
  %.4415 = phi i32 [ %.4, %.loopexit308 ], [ 0, %.preheader307 ], [ 0, %.preheader309 ]
  %.not343 = icmp eq i32 %1, 1
  %i.fu = icmp eq i32 %2, 2
  br i1 %.not343, label %.loopexit306.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count381 = zext i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0259334 = phi i32 [ %i.hm, %._crit_edge ], [ %.4415, %.preheader.preheader ] ; 3 uses
  %i.fv = trunc i32 %.0259334 to i1
  %or.cond4 = and i1 %i.fu, %i.fv
  %i.fw = sitofp i32 %.0259334 to float           ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bb.ag
  %indvars.iv376 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next377, %bb.ag ] ; 6 uses
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fx = load float, ptr %.0266, align 4, !tbaa !304
  %i.fy = load float, ptr %i.fe, align 4, !tbaa !304
  %i.fz = fadd float %i.fx, %i.fy                 ; 2 uses
  %i.ga = sub nuw nsw i64 %i.ao, %indvars.iv376   ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !304
  %i.gd = fsub float %i.fz, %i.gc
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fi, float %i.gd)
  %i.gf = sub nuw nsw i64 %i.fd, %indvars.iv376   ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !304
  %i.gi = fsub float %i.fz, %i.gh
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gj = add nsw i64 %indvars.iv376, -1          ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !304
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fi, float %i.gl)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv376
  %i.go = load float, ptr %i.gn, align 4, !tbaa !304
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink = phi float [ %i.go, %bb.aa ], [ %i.gi, %bb.z ]
  %.0257 = phi float [ %i.gm, %bb.aa ], [ %i.ge, %bb.z ] ; 7 uses
  %.pn = phi i64 [ %i.gj, %bb.aa ], [ %i.ga, %bb.z ]
  %.pn296 = phi i64 [ %indvars.iv376, %bb.aa ], [ %i.gf, %bb.z ]
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fi, float %.sink) ; 6 uses
  %.0254.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn296
  %.0254 = load i32, ptr %.0254.in, align 4, !tbaa !326 ; 4 uses
  %.0255.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn
  %.0255 = load i32, ptr %.0255.in, align 4, !tbaa !326 ; 4 uses
  %i.gq = fcmp olt float %i.gp, 0.000000e+00
  br i1 %i.gq, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gr = fcmp olt float %.0257, 0.000000e+00
  br i1 %i.gr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gs = fsub float 0.000000e+00, %.0257
  %i.gt = fsub float %i.gp, %.0257
  %i.gu = fdiv float %i.gs, %i.gt
  %i.gv = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.gw = shufflevector <4 x i32> %i.gv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gx = lshr <4 x i32> %i.gw, <i32 8, i32 16, i32 24, i32 0>
  %i.gy = and <4 x i32> %i.gx, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.gz = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.ha = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hb = lshr <4 x i32> %i.ha, <i32 8, i32 16, i32 24, i32 0>
  %i.hc = and <4 x i32> %i.hb, <i32 255, i32 255, i32 -1, i32 255>
  %i.hd = uitofp <4 x i32> %i.gy to <4 x float>
  %i.he = sub nsw <4 x i32> %i.hc, %i.gy
  %i.hf = sitofp <4 x i32> %i.he to <4 x float>
  %i.hg = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hf, <4 x float> %i.hd)
  %i.hj = fadd <4 x float> %i.hi, splat (float 5.000000e-01)
  %i.hk = fptoui <4 x float> %i.hj to <4 x i32>
  %11 = shufflevector <4 x i32> %i.hk, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %12 = trunc <4 x i32> %11 to <4 x i8>
  %13 = bitcast <4 x i8> %12 to i32
  tail call void %5(float noundef 0.000000e+00, i32 noundef %13, float noundef %i.gp, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.hl = fcmp ult float %i.gp, f0x40C90FDB
  br i1 %i.hl, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef %i.gp, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ad
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.y, !llvm.loop !3138

._crit_edge:                                      ; preds = %bb.ag
  %i.hm = add nsw i32 %.0259334, 1                ; 2 uses
  %exitcond383.not = icmp eq i32 %i.hm, 1000
  br i1 %exitcond383.not, label %.loopexit306, label %.preheader, !llvm.loop !3139

bb.ah:                                            ; preds = %bb.ae
  %i.hn = fsub float f0x40C90FDB, %.0257
  %i.ho = fsub float %i.gp, %.0257
  %i.hp = fdiv float %i.hn, %i.ho
  %i.hq = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.hr = shufflevector <4 x i32> %i.hq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hs = lshr <4 x i32> %i.hr, <i32 8, i32 16, i32 24, i32 0>
  %i.ht = and <4 x i32> %i.hs, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.hu = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hw = lshr <4 x i32> %i.hv, <i32 8, i32 16, i32 24, i32 0>
  %i.hx = and <4 x i32> %i.hw, <i32 255, i32 255, i32 -1, i32 255>
  %i.hy = uitofp <4 x i32> %i.ht to <4 x float>
  %i.hz = sub nsw <4 x i32> %i.hx, %i.ht
  %i.ia = sitofp <4 x i32> %i.hz to <4 x float>
  %i.ib = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> %i.ia, <4 x float> %i.hy)
  %i.ie = fadd <4 x float> %i.id, splat (float 5.000000e-01)
  %i.if = fptoui <4 x float> %i.ie to <4 x i32>
  %14 = shufflevector <4 x i32> %i.if, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %15 = trunc <4 x i32> %14 to <4 x i8>
  %16 = bitcast <4 x i8> %15 to i32
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef f0x40C90FDB, i32 noundef %16, ptr noundef %6) #63
  br label %.loopexit306

.loopexit306:                                     ; preds = %._crit_edge, %.loopexit308, %bb.u, %bb.ah, %.loopexit305.thread, %.loopexit.thread, %.loopexit
  br i1 %i.an, label %bb.ai, label %.loopexit306.thread

bb.ai:                                            ; preds = %.loopexit306
  call void @free(ptr noundef nonnull %.0266) #63
  call void @free(ptr noundef nonnull %.0267) #63
  br label %.loopexit306.thread

.loopexit306.thread:                              ; preds = %.preheader.lr.ph, %.loopexit306, %bb.ai, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.aj

bb.aj:                                            ; preds = %bb.c, %bb.g, %bb.f, %bb.a, %.loopexit306.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL13hb_color_lerpjjf(i32 noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #39 {
bb.a:
  %i.a = lshr i32 %0, 8
  %i.b = lshr i32 %0, 16
  %i.c = lshr i32 %0, 24                          ; 2 uses
  %i.d = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.e = insertelement <4 x i32> %i.d, i32 %i.c, i64 1
  %i.f = insertelement <4 x i32> %i.e, i32 %i.b, i64 2
  %i.g = insertelement <4 x i32> %i.f, i32 %i.a, i64 3
  %i.h = and <4 x i32> %i.g, <i32 255, i32 -1, i32 255, i32 255> ; 2 uses
  %i.i = lshr i32 %1, 8
  %i.j = lshr i32 %1, 16
  %i.k = lshr i32 %1, 24
  %i.l = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.m = insertelement <4 x i32> %i.l, i32 %i.k, i64 1
  %i.n = insertelement <4 x i32> %i.m, i32 %i.j, i64 2
  %i.o = insertelement <4 x i32> %i.n, i32 %i.i, i64 3
  %i.p = and <4 x i32> %i.o, <i32 255, i32 -1, i32 255, i32 255>
  %i.q = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 0>
  %i.r = insertelement <4 x i32> %i.q, i32 %i.c, i64 2
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = sub nsw <4 x i32> %i.p, %i.h
  %i.u = sitofp <4 x i32> %i.t to <4 x float>
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.w = insertelement <4 x float> poison, float %2, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> zeroinitializer
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.v, <4 x float> %i.s)
  %i.z = fadd <4 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fptoui <4 x float> %i.z to <4 x i32>
  %3 = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %4 = trunc <4 x i32> %3 to <4 x i8>
  %5 = bitcast <4 x i8> %4 to i32
  ret i32 %5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @hb_set_get_empty() local_unnamed_addr #4 {
bb.a:
  ret ptr @_hb_NullPool
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_set_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit

_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_set_set_user_data(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %.preheader.i, !prof !267

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not1923.i = icmp eq ptr %i.c, null
  br i1 %.not1923.i, label %.lr.ph.i, label %._crit_edge.i, !prof !265

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.d = tail call noalias noundef dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #64 ; 8 uses
  %.not20.i = icmp eq ptr %i.d, null
  br i1 %.not20.i, label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef null) #63 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = cmpxchg weak ptr %i.b, ptr null, ptr %i.d acq_rel monotonic, align 8
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %._crit_edge.i, label %bb.d, !prof !268

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %.preheader.i
  %.016.i = phi ptr [ %i.c, %.preheader.i ], [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %i.i = tail call noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %.016.i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %i.j = zext i1 %i.i to i32
  br label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.k = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.d) #63
  %i.l = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %.lr.ph.i, label %._crit_edge.i, !prof !269

_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %._crit_edge.i
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_set_get_user_data(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_get_user_dataIK8hb_set_tEPvPT_P18hb_user_data_key_t.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_get_user_dataIK8hb_set_tEPvPT_P18hb_user_data_key_t.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %_ZL23hb_object_get_user_dataIK8hb_set_tEPvPT_P18hb_user_data_key_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #63 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !625
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !626  ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %.val19.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !629
  %i.j = icmp eq ptr %.val19.i.i.i.i.i.i, %1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !332
  br label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i

_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i: ; preds = %bb.e, %bb.f, %bb.d
  %i.k = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #63 ; 0 uses
  br label %_ZL23hb_object_get_user_dataIK8hb_set_tEPvPT_P18hb_user_data_key_t.exit

_ZL23hb_object_get_user_dataIK8hb_set_tEPvPT_P18hb_user_data_key_t.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.k, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i ], [ null, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @hb_set_allocation_successful(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !552, !range !382, !noundef !293
  %i.c = zext nneg i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define nonnull ptr @hb_set_copy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #64 ; 12 uses
  %.not.i.i.not = icmp eq ptr %i.a, null
  br i1 %.not.i.i.not, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store atomic i32 1, ptr %i.a monotonic, align 4
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  store i8 1, ptr %i.d, align 8, !tbaa !552
  store atomic i32 0, ptr %i.e monotonic, align 8
  store atomic i32 1, ptr %i.a monotonic, align 8
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.f = load atomic i32, ptr %i.a monotonic, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(49) %i.h, i1 noundef zeroext false)
  %i.i = load i8, ptr %i.g, align 8, !tbaa !1506, !range !382, !noundef !293
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.k, align 8, !tbaa !948, !range !382, !noundef !293
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 %i.l, ptr %i.m, align 8, !tbaa !948
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.c ], [ %i.a, %bb.b ], [ @_hb_NullPool, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_set_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !548
  %.not.i.i.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not1.i.i.i = icmp eq i32 %i.e, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 4, !tbaa !549
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
end_hunk_0
begin_hunk_1_@_ZL16hb_ucd_decomposeP18hb_unicode_funcs_tjPjS1_Pv:bb.a

bb.e:                                             ; preds = %_ZL10_hb_ucd_dmj.exit
  %i.ai = zext i16 %i.ah to i64                   ; 4 uses
  %i.aj = icmp ult i16 %i.ah, 936
  br i1 %i.aj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i16 %i.ah, 826
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr [2 x i8], ptr @_ZL18_hb_ucd_dm1_p0_map, i64 %i.ai
  %i.am = getelementptr i8, ptr %i.al, i64 -2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !649
  %i.ao = zext i16 %i.an to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr [2 x i8], ptr @_ZL18_hb_ucd_dm1_p2_map, i64 %i.ai
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1652
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !649
  %i.as = zext i16 %i.ar to i32
  %i.at = or disjoint i32 %i.as, 131072
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i32 [ %i.at, %bb.h ], [ %i.ao, %bb.g ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !326
  br label %_ZL10_hb_ucd_dmj.exit.thread.sink.split

bb.j:                                             ; preds = %bb.e
  %i.au = icmp ult i16 %i.ah, 1574
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr [4 x i8], ptr @_ZL19_hb_ucd_dm2_u32_map, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.av, i64 -3744
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !326 ; 2 uses
  %i.ay = lshr i32 %i.ax, 21
  store i32 %i.ay, ptr %2, align 4, !tbaa !326
  %i.az = lshr i32 %i.ax, 14
  %i.ba = and i32 %i.az, 127
  %i.bb = or disjoint i32 %i.ba, 768
  br label %_ZL10_hb_ucd_dmj.exit.thread.sink.split

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr [8 x i8], ptr @_ZL19_hb_ucd_dm2_u64_map, i64 %i.ai
  %i.bd = getelementptr i8, ptr %i.bc, i64 -12592
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !359 ; 2 uses
  %i.bf = lshr i64 %i.be, 42
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %2, align 4, !tbaa !326
  %i.bh = lshr i64 %i.be, 21
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 2097151
  br label %_ZL10_hb_ucd_dmj.exit.thread.sink.split

_ZL10_hb_ucd_dmj.exit.thread.sink.split:          ; preds = %bb.l, %bb.k, %bb.i, %_ZL24_hb_ucd_decompose_hanguljPjS_.exit.thread
  %.sink.i.sink = phi i32 [ %.sink.i, %_ZL24_hb_ucd_decompose_hanguljPjS_.exit.thread ], [ 0, %bb.i ], [ %i.bb, %bb.k ], [ %i.bj, %bb.l ]
  store i32 %.sink.i.sink, ptr %3, align 4, !tbaa !326
  br label %_ZL10_hb_ucd_dmj.exit.thread

_ZL10_hb_ucd_dmj.exit.thread:                     ; preds = %_ZL10_hb_ucd_dmj.exit.thread.sink.split, %_ZL24_hb_ucd_decompose_hanguljPjS_.exit, %_ZL10_hb_ucd_dmj.exit
  %.1 = phi i32 [ 0, %_ZL10_hb_ucd_dmj.exit ], [ 0, %_ZL24_hb_ucd_decompose_hanguljPjS_.exit ], [ 1, %_ZL10_hb_ucd_dmj.exit.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL21free_static_ucd_funcsv() #16 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL16static_ucd_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL16static_ucd_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !268

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_hb_Null_hb_unicode_funcs_t
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_unicode_funcs_destroy(ptr noundef nonnull %i.a)
  br label %_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI18hb_unicode_funcs_t34hb_ucd_unicode_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #59

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #61

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #30

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nocallback nofree nosync nounwind willreturn }
attributes #43 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { hot mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { inlinehint mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { inlinehint mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nofree nounwind }
attributes #60 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #62 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #63 = { nounwind }
attributes #64 = { nounwind allocsize(0,1) }
attributes #65 = { nounwind allocsize(0) }
attributes #66 = { nounwind allocsize(1) }
attributes #67 = { nounwind willreturn memory(none) }
attributes #68 = { nounwind willreturn memory(read) }
attributes #69 = { cold }
attributes #70 = { cold nounwind }
attributes #71 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!219, !220}
!llvm.ident = !{!221}
!llvm.errno.tbaa = !{!226}

!0 = distinct !{!0, !305}
!1 = distinct !{null, null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !305}
!4 = distinct !{!4, !305}
!5 = distinct !{!5, !305}
!6 = distinct !{!6, !305}
!7 = distinct !{null}
!8 = distinct !{ptr @_ZN21hb_sanitize_context_t14end_processingEv, ptr @hb_blob_destroy, null, null, null, null}
!9 = distinct !{ptr @hb_blob_destroy, null, null, null, null}
!10 = distinct !{!10, !305}
!11 = distinct !{!11, !305}
!12 = distinct !{!12, !305}
!13 = distinct !{ptr @_ZN3AAT22hb_aat_apply_context_tD2Ev, ptr @_ZN21hb_sanitize_context_t14end_processingEv, ptr @hb_blob_destroy, null, null, null, null}
!14 = distinct !{!14, !305}
!15 = distinct !{!15, !305}
!16 = distinct !{!16, !305}
!17 = distinct !{!17, !305}
!18 = distinct !{!18, !305}
!19 = distinct !{!19, !305}
!20 = distinct !{ptr @_ZN9hb_blob_t17try_make_writableEv, null}
!21 = distinct !{!21, !305}
!22 = distinct !{!22, !305}
!23 = distinct !{!23, !305}
!24 = distinct !{!24, !305}
!25 = distinct !{!25, !305}
!26 = distinct !{!26, !305}
!27 = distinct !{null}
!28 = distinct !{!28, !305}
!29 = distinct !{!29, !305}
!30 = distinct !{!30, !305}
!31 = distinct !{!31, !305}
!32 = distinct !{null}
!33 = distinct !{null, null, null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{ptr @hb_draw_move_to, null}
!39 = distinct !{ptr @hb_draw_move_to, null}
!40 = distinct !{ptr @hb_draw_line_to, null}
!41 = distinct !{ptr @hb_draw_close_path, null}
!42 = distinct !{ptr @hb_draw_close_path, null}
!43 = distinct !{!43, !305}
!44 = distinct !{!44, !305}
!45 = distinct !{!45, !305}
!46 = distinct !{!46, !305}
!47 = distinct !{!47, !305}
!48 = distinct !{null, ptr @_ZN21hb_sanitize_context_t14end_processingEv, ptr @hb_blob_destroy, null, null, null, null}
!49 = distinct !{null}
!50 = distinct !{!50, !305}
!51 = distinct !{null}
!52 = distinct !{null, null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{!58, !305}
!59 = distinct !{null}
!60 = distinct !{null}
!61 = distinct !{!61, !305}
!62 = distinct !{null}
!63 = distinct !{null, null, null}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{null}
!67 = distinct !{null}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{null}
!71 = distinct !{null}
!72 = distinct !{null}
!73 = distinct !{null, ptr @hb_paint_push_transform, null}
!74 = distinct !{null}
!75 = distinct !{null, ptr @hb_paint_pop_transform, null}
!76 = distinct !{null}
!77 = distinct !{!77, !305}
!78 = distinct !{!78, !305}
!79 = distinct !{null}
!80 = distinct !{!80, !305}
!81 = distinct !{!81, !305}
!82 = distinct !{!82, !305}
!83 = distinct !{!83, !305}
!84 = distinct !{!84, !305}
!85 = distinct !{!85, !305}
!86 = distinct !{!86, !305}
!87 = distinct !{null, null}
end_hunk_1
