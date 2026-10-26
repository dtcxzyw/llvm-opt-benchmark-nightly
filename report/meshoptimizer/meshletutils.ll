Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletutils?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.c, ptr noundef nonnull %5, i64 noundef %4, i64 noundef %6, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 7, ptr noundef %3)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bv = load <2 x float>, ptr %i.c, align 16, !tbaa !12 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bu, align 4, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %.1, i64 noundef 16, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 3, ptr noundef null)
  %i.bx = load float, ptr %i.d, align 16, !tbaa !12 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !12 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !12 ; 3 uses
  %i.cc = fmul float %i.bz, %i.bz
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.cc)
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cd)
  %i.cf = tail call float @sqrtf(float noundef %i.ce) #8 ; 2 uses
  %i.cg = fcmp oeq float %i.cf, 0.000000e+00
  %i.ch = fdiv float 1.000000e+00, %i.cf
  %i.ci = select i1 %i.cg, float 0.000000e+00, float %i.ch ; 3 uses
  %i.cj = fmul float %i.bx, %i.ci                 ; 7 uses
  %i.ck = fmul float %i.bz, %i.ci                 ; 8 uses
  %i.cl = fmul float %i.cb, %i.ci                 ; 8 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.cm = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  store float %i.cm, ptr %0, align 4, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.bw, ptr %i.cn, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cp = load float, ptr %i.co, align 4, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.cp, ptr %i.cq, align 4, !tbaa !21
  %i.cr = fcmp ugt float %i.de, 1.000000e-01
  br i1 %i.cr, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.e
  %i.cs = extractelement <2 x float> %i.bw, i64 0
  %i.ct = extractelement <2 x float> %i.bw, i64 1
  br label %.preheader

bb.f:                                             ; preds = %bb.d, %bb.f
  %.0143149 = phi i64 [ 0, %bb.d ], [ %i.df, %bb.f ] ; 2 uses
  %.0144148 = phi float [ 1.000000e+00, %bb.d ], [ %i.de, %bb.f ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0143149 ; 3 uses
  %i.cv = load float, ptr %i.cu, align 16, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12
  %i.cy = fmul float %i.ck, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cj, float %i.cy)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.db = load float, ptr %i.da, align 8, !tbaa !12
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.cl, float %i.cz) ; 2 uses
  %i.dd = fcmp olt float %i.dc, %.0144148
  %i.de = select i1 %i.dd, float %i.dc, float %.0144148 ; 3 uses
  %i.df = add nuw nsw i64 %.0143149, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %.1
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.dg, align 4, !tbaa !22
  br label %bb.i

bb.h:                                             ; preds = %.preheader
  %i.dh = insertelement <4 x float> poison, float %i.cj, i64 0 ; 2 uses
  %i.di = insertelement <4 x float> %i.dh, float %i.ck, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.cl, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.de, i64 3 ; 2 uses
  %i.dl = fneg <4 x float> %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.cj, ptr %i.do, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ck, ptr %i.dp, align 4, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cl, ptr %i.dq, align 4, !tbaa !12
  %i.dr = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ds = insertelement <2 x float> %i.dr, float %i.gx, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.du = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float 1.000000e+00, i64 3
  %i.dw = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dt, <4 x float> %i.dx) ; 3 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.dz, ptr %i.dm, align 4, !tbaa !12
  %i.ea = extractelement <4 x float> %i.dy, i64 2
  store float %i.ea, ptr %i.dn, align 4, !tbaa !12
  %i.eb = extractelement <4 x float> %i.dy, i64 3
  %i.ec = tail call float @sqrtf(float noundef %i.eb) #8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ec, ptr %i.ed, align 4, !tbaa !22
  %i.ee = fcmp oge float %i.cj, -1.000000e+00
  %i.ef = select i1 %i.ee, float %i.cj, float -1.000000e+00
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eh = fcmp oge float %i.ck, -1.000000e+00
  %i.ei = select i1 %i.eh, float %i.ck, float -1.000000e+00
  %i.ej = insertelement <4 x float> %i.dh, float %i.ef, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.ck, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %i.ei, i64 3 ; 3 uses
  %i.em = fcmp oge <4 x float> %i.el, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.en = fcmp ole <4 x float> %i.el, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.eo = shufflevector <4 x i1> %i.em, <4 x i1> %i.en, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ep = shufflevector <4 x float> <float 5.000000e-01, float poison, float 5.000000e-01, float poison>, <4 x float> %i.el, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.eq = select <4 x i1> %i.eo, <4 x float> %i.ep, <4 x float> <float -5.000000e-01, float 1.000000e+00, float -5.000000e-01, float 1.000000e+00> ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.es = fcmp oge float %i.cl, 0.000000e+00
  %i.et = select i1 %i.es, float 5.000000e-01, float -5.000000e-01
  %i.eu = fcmp oge float %i.cl, -1.000000e+00
  %i.ev = select i1 %i.eu, float %i.cl, float -1.000000e+00 ; 2 uses
  %i.ew = fcmp ole float %i.ev, 1.000000e+00
  %i.ex = select i1 %i.ew, float %i.ev, float 1.000000e+00
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float 1.270000e+02, float %i.et)
  %i.ez = fptosi float %i.ey to i32               ; 2 uses
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %i.fa, ptr %i.fb, align 2, !tbaa !13
  %i.fc = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.fd = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> splat (float 1.270000e+02), <2 x float> %i.fd)
  %i.ff = fptosi <2 x float> %i.fe to <2 x i32>
  %i.fg = trunc <2 x i32> %i.ff to <2 x i8>       ; 3 uses
  %i.fh = extractelement <2 x i8> %i.fg, i64 0
  store i8 %i.fh, ptr %i.eg, align 4, !tbaa !13
  %i.fi = extractelement <2 x i8> %i.fg, i64 1
  store i8 %i.fi, ptr %i.er, align 1, !tbaa !13
  %i.fj = sitofp <2 x i8> %i.fg to <2 x float>    ; 2 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 0
  %i.fl = fdiv float %i.fk, 1.270000e+02
  %i.fm = fsub float %i.fl, %i.cj
  %i.fn = tail call float @llvm.fabs.f32(float %i.fm)
  %sext = shl i32 %i.ez, 24
  %i.fo = ashr exact i32 %sext, 24
  %i.fp = sitofp i32 %i.fo to float
  %i.fq = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fr = insertelement <2 x float> %i.fq, float %i.fp, i64 1
  %i.fs = fdiv <2 x float> %i.fr, splat (float 1.270000e+02) ; 2 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0
  %i.fu = fsub float %i.ft, %i.ck
  %i.fv = tail call float @llvm.fabs.f32(float %i.fu)
  %i.fw = extractelement <2 x float> %i.fs, i64 1
  %i.fx = fsub float %i.fw, %i.cl
  %i.fy = tail call float @llvm.fabs.f32(float %i.fx)
  %i.fz = fadd float %i.fn, %i.ec
  %i.ga = fadd float %i.fv, %i.fz
  %i.gb = fadd float %i.fy, %i.ga
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float 1.270000e+02, float 1.000000e+00)
  %i.gd = fptosi float %i.gc to i32
  %i.ge = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 127)
  %i.gf = trunc i32 %i.ge to i8
  br label %bb.i

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0141151 = phi i64 [ %i.gy, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0142150 = phi float [ %i.gx, %.preheader ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0141151 ; 4 uses
  %i.gh = load float, ptr %i.gg, align 16, !tbaa !12 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !12 ; 2 uses
  %i.gk = fmul float %i.cs, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.gh, float %i.gk)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !12 ; 2 uses
  %i.go = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.gn, float %i.gl)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !12
  %i.gr = fadd float %i.gq, %i.go
  %i.gs = fmul float %i.ck, %i.gj
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.gh, float %i.gs)
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.gn, float %i.gt)
  %i.gv = fdiv float %i.gr, %i.gu                 ; 2 uses
  %i.gw = fcmp ogt float %i.gv, %.0142150
  %i.gx = select i1 %i.gw, float %i.gv, float %.0142150 ; 2 uses
  %i.gy = add nuw nsw i64 %.0141151, 1            ; 2 uses
  %exitcond153.not = icmp eq i64 %i.gy, %.1
  br i1 %exitcond153.not, label %bb.h, label %.preheader, !llvm.loop !19

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i8 [ %i.gf, %bb.h ], [ 127, %bb.g ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %.sink, ptr %i.gz, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeMeshletBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1536 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = mul i64 %3, 3                            ; 4 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 1
  %i.c = icmp eq i64 %3, -6148914691236517205
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %.01719.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod23 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.01719.epil.init
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01719.epil.init
  store i32 %i.h, ptr %i.i, align 4, !tbaa !9
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = tail call i64 @llvm.umax.i64(i64 %.020.epil.init, i64 %i.j)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ]
  call fastcc void @_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef nonnull %i.a, i64 noundef %i.b, ptr noundef %1, i64 noundef %.0.lcssa, ptr noundef %4, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ]
  %.01719 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.01719
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01719
  store i32 %i.p, ptr %i.q, align 8, !tbaa !9
  %i.r = add nuw nsw i64 %i.n, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %.020, i64 %i.r)
  %i.t = or disjoint i64 %.01719, 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  store i32 %i.y, ptr %i.z, align 4, !tbaa !9
  %i.aa = add nuw nsw i64 %i.w, 1
  %i.ab = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.aa) ; 3 uses
  %i.ac = add nuw nsw i64 %.01719, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeSphereBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %i.d = select i1 %.not, ptr %i.a, ptr %4
  %i.e = select i1 %.not, i64 0, i64 %5
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef 7, ptr noundef null)
  %i.f = load <4 x float>, ptr %i.b, align 16, !tbaa !12
  store <4 x float> %i.f, ptr %0, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef range(i64 3, 8) %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #3 {
.preheader207:
  %i.a = alloca [7 x i32], align 16               ; 19 uses
  %i.b = alloca [7 x i32], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = shl nuw nsw i64 %6, 2                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.c, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.c, i1 false), !tbaa !9
  %i.d = lshr i64 %3, 2                           ; 18 uses
  %i.e = lshr i64 %5, 2                           ; 18 uses
  %.not223 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not223, label %.preheader, label %.lr.ph

.preheader.preheader.loopexit:                    ; preds = %bb.e
  store i32 %i.ba, ptr %i.a, align 16, !tbaa !9
  store i32 %i.bd, ptr %i.b, align 16, !tbaa !9
  store i32 %i.bj, ptr %i.f, align 4
  store i32 %i.bm, ptr %i.g, align 4
  store i32 %i.bt, ptr %i.h, align 8
  store i32 %i.bw, ptr %i.i, align 8
  store i32 %i.ce, ptr %i.j, align 4
  store i32 %i.cd, ptr %i.k, align 4
  store i32 %i.cc, ptr %i.l, align 16
  store i32 %i.cb, ptr %i.m, align 16
  store i32 %i.ca, ptr %i.n, align 4
  store i32 %i.bz, ptr %i.o, align 4
  store i32 %i.by, ptr %i.p, align 8
  store i32 %i.bx, ptr %i.q, align 8
  br label %.preheader

.lr.ph:                                           ; preds = %.preheader207
  %.not206 = icmp eq ptr %7, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %exitcond225.not.2 = icmp eq i64 %6, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %exitcond225.not.3 = icmp eq i64 %6, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %exitcond225.not.4 = icmp eq i64 %6, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %exitcond225.not.5 = icmp eq i64 %6, 6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 16
  %.promoted250 = load i32, ptr %i.b, align 16
  %.promoted252 = load i32, ptr %i.f, align 4
  %.promoted254 = load i32, ptr %i.g, align 4
  %.promoted256 = load i32, ptr %i.h, align 8
  %.promoted258 = load i32, ptr %i.i, align 8
  %.promoted260 = load i32, ptr %i.j, align 4
  %.promoted262 = load i32, ptr %i.k, align 4
  %.promoted264 = load i32, ptr %i.l, align 16
  %.promoted266 = load i32, ptr %i.m, align 16
  %.promoted268 = load i32, ptr %i.n, align 4
  %.promoted270 = load i32, ptr %i.o, align 4
  %.promoted272 = load i32, ptr %i.p, align 8
  %.promoted274 = load i32, ptr %i.q, align 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.e
  %i.r = phi i32 [ %.promoted274, %.lr.ph ], [ %i.bx, %bb.e ] ; 5 uses
  %i.s = phi i32 [ %.promoted272, %.lr.ph ], [ %i.by, %bb.e ] ; 5 uses
  %i.t = phi i32 [ %.promoted270, %.lr.ph ], [ %i.bz, %bb.e ] ; 4 uses
  %i.u = phi i32 [ %.promoted268, %.lr.ph ], [ %i.ca, %bb.e ] ; 4 uses
  %i.v = phi i32 [ %.promoted266, %.lr.ph ], [ %i.cb, %bb.e ] ; 3 uses
  %i.w = phi i32 [ %.promoted264, %.lr.ph ], [ %i.cc, %bb.e ] ; 3 uses
  %i.x = phi i32 [ %.promoted262, %.lr.ph ], [ %i.cd, %bb.e ] ; 2 uses
  %i.y = phi i32 [ %.promoted260, %.lr.ph ], [ %i.ce, %bb.e ] ; 2 uses
  %i.z = phi i32 [ %.promoted258, %.lr.ph ], [ %i.bw, %bb.e ]
  %i.aa = phi i32 [ %.promoted256, %.lr.ph ], [ %i.bt, %bb.e ]
  %i.ab = phi i32 [ %.promoted254, %.lr.ph ], [ %i.bm, %bb.e ]
  %i.ac = phi i32 [ %.promoted252, %.lr.ph ], [ %i.bj, %bb.e ]
  %i.ad = phi i32 [ %.promoted250, %.lr.ph ], [ %i.bd, %bb.e ]
  %i.ae = phi i32 [ %.promoted, %.lr.ph ], [ %i.ba, %bb.e ]
  %.sroa.20248.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.20248.2, %bb.e ] ; 6 uses
  %.sroa.17247.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.17247.2, %bb.e ] ; 5 uses
  %.sroa.14246.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.14246.2, %bb.e ] ; 4 uses
  %.sroa.11245.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.11245.2, %bb.e ] ; 3 uses
  %.sroa.8244.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %..2, %bb.e ] ; 2 uses
  %.sroa.5243.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %..1, %bb.e ] ; 2 uses
  %.sroa.0242.0 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %., %bb.e ] ; 2 uses
  %.sroa.20.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.20.2, %bb.e ] ; 6 uses
  %.sroa.17.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.17.2, %bb.e ] ; 5 uses
  %.sroa.14.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.14.2, %bb.e ] ; 4 uses
  %.sroa.11.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.11.2, %bb.e ] ; 3 uses
  %.sroa.8.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.bv, %bb.e ] ; 2 uses
  %.sroa.5.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.bl, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.bc, %bb.e ] ; 2 uses
  %.0192210 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %bb.e ] ; 3 uses
  br i1 %.not206, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0192210
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = trunc i64 %.0192210 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = phi i32 [ %i.ag, %bb.b ], [ %i.ah, %bb.c ] ; 15 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = mul i64 %i.d, %i.aj
end_hunk_0
