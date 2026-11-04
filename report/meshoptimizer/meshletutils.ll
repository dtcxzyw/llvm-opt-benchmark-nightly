Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletutils?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm:bb.a
  %i.ek = fcmp oge <4 x float> %i.ej, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.el = fcmp ole <4 x float> %i.ej, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.em = shufflevector <4 x i1> %i.ek, <4 x i1> %i.el, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.en = shufflevector <4 x float> <float 5.000000e-01, float poison, float 5.000000e-01, float poison>, <4 x float> %i.ej, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.eo = select <4 x i1> %i.em, <4 x float> %i.en, <4 x float> <float -5.000000e-01, float 1.000000e+00, float -5.000000e-01, float 1.000000e+00> ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.eq = fcmp oge float %i.cj, 0.000000e+00
  %i.er = select i1 %i.eq, float 5.000000e-01, float -5.000000e-01
  %i.es = fcmp oge float %i.cj, -1.000000e+00
  %i.et = select i1 %i.es, float %i.cj, float -1.000000e+00 ; 2 uses
  %i.eu = fcmp ole float %i.et, 1.000000e+00
  %i.ev = select i1 %i.eu, float %i.et, float 1.000000e+00
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float 1.270000e+02, float %i.er)
  %i.ex = fptosi float %i.ew to i32               ; 2 uses
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %i.ey, ptr %i.ez, align 2, !tbaa !13
  %i.fa = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.fb = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> splat (float 1.270000e+02), <2 x float> %i.fb)
  %i.fd = fptosi <2 x float> %i.fc to <2 x i32>
  %i.fe = trunc <2 x i32> %i.fd to <2 x i8>       ; 3 uses
  %i.ff = extractelement <2 x i8> %i.fe, i64 0
  store i8 %i.ff, ptr %i.ee, align 4, !tbaa !13
  %i.fg = extractelement <2 x i8> %i.fe, i64 1
  store i8 %i.fg, ptr %i.ep, align 1, !tbaa !13
  %i.fh = sitofp <2 x i8> %i.fe to <2 x float>    ; 2 uses
  %i.fi = extractelement <2 x float> %i.fh, i64 0
  %i.fj = fdiv float %i.fi, 1.270000e+02
  %i.fk = fsub float %i.fj, %i.ch
  %i.fl = tail call float @llvm.fabs.f32(float %i.fk)
  %sext = shl i32 %i.ex, 24
  %i.fm = ashr exact i32 %sext, 24
  %i.fn = sitofp i32 %i.fm to float
  %i.fo = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fp = insertelement <2 x float> %i.fo, float %i.fn, i64 1
  %i.fq = fdiv <2 x float> %i.fp, splat (float 1.270000e+02) ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = fsub float %i.fr, %i.ci
  %i.ft = tail call float @llvm.fabs.f32(float %i.fs)
  %i.fu = extractelement <2 x float> %i.fq, i64 1
  %i.fv = fsub float %i.fu, %i.cj
  %i.fw = tail call float @llvm.fabs.f32(float %i.fv)
  %i.fx = fadd float %i.fl, %i.ea
  %i.fy = fadd float %i.ft, %i.fx
  %i.fz = fadd float %i.fw, %i.fy
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float 1.270000e+02, float 1.000000e+00)
  %i.gb = fptosi float %i.ga to i32
  %i.gc = tail call i32 @llvm.smin.i32(i32 %i.gb, i32 127)
  %i.gd = trunc i32 %i.gc to i8
  br label %bb.i

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0141152 = phi i64 [ %i.gw, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0142151 = phi float [ %i.gv, %.preheader ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0141152 ; 4 uses
  %i.gf = load float, ptr %i.ge, align 16, !tbaa !12 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12 ; 2 uses
  %i.gi = fmul float %i.cq, %i.gh
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.gf, float %i.gi)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !12 ; 2 uses
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.gl, float %i.gj)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.go = load float, ptr %i.gn, align 4, !tbaa !12
  %i.gp = fadd float %i.go, %i.gm
  %i.gq = fmul float %i.ci, %i.gh
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.gf, float %i.gq)
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.gl, float %i.gr)
  %i.gt = fdiv float %i.gp, %i.gs                 ; 2 uses
  %i.gu = fcmp ogt float %i.gt, %.0142151
  %i.gv = select i1 %i.gu, float %i.gt, float %.0142151 ; 2 uses
  %i.gw = add nuw nsw i64 %.0141152, 1            ; 2 uses
  %exitcond154.not = icmp eq i64 %i.gw, %.1
  br i1 %exitcond154.not, label %bb.h, label %.preheader, !llvm.loop !19

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i8 [ %i.gd, %bb.h ], [ 127, %bb.g ]
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %.sink, ptr %i.gx, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeMeshletBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1536 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = mul i64 %3, 3                            ; 5 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 1
  %i.c = icmp eq i64 %i.b, 1
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %i.d = select i1 %.not, ptr %i.a, ptr %4
  %i.e = select i1 %.not, i64 0, i64 %5
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef 7, ptr noundef null)
  %i.f = load <4 x float>, ptr %i.b, align 16, !tbaa !12
  store <4 x float> %i.f, ptr %0, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef range(i64 3, 8) %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #3 {
.preheader209:
  %i.a = alloca [7 x i32], align 16               ; 19 uses
  %i.b = alloca [7 x i32], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = shl nuw nsw i64 %6, 2                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 range(i64 0, 29) %i.c, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 range(i64 0, 29) %i.c, i1 false), !tbaa !9
  %i.d = lshr i64 %3, 2                           ; 18 uses
  %i.e = lshr i64 %5, 2                           ; 18 uses
  %.not225 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not225, label %.preheader.2, label %.lr.ph

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
  br label %.preheader.2

.lr.ph:                                           ; preds = %.preheader209
  %.not206 = icmp eq ptr %7, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %exitcond227.not.2 = icmp eq i64 %6, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %6, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %exitcond227.not.4 = icmp eq i64 %6, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %exitcond227.not.5 = icmp eq i64 %6, 6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 16
  %.promoted252 = load i32, ptr %i.b, align 16
  %.promoted254 = load i32, ptr %i.f, align 4
  %.promoted256 = load i32, ptr %i.g, align 4
  %.promoted258 = load i32, ptr %i.h, align 8
  %.promoted260 = load i32, ptr %i.i, align 8
  %.promoted262 = load i32, ptr %i.j, align 4
  %.promoted264 = load i32, ptr %i.k, align 4
  %.promoted266 = load i32, ptr %i.l, align 16
  %.promoted268 = load i32, ptr %i.m, align 16
  %.promoted270 = load i32, ptr %i.n, align 4
  %.promoted272 = load i32, ptr %i.o, align 4
  %.promoted274 = load i32, ptr %i.p, align 8
  %.promoted276 = load i32, ptr %i.q, align 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.e
  %i.r = phi i32 [ %.promoted276, %.lr.ph ], [ %i.bx, %bb.e ] ; 5 uses
  %i.s = phi i32 [ %.promoted274, %.lr.ph ], [ %i.by, %bb.e ] ; 5 uses
  %i.t = phi i32 [ %.promoted272, %.lr.ph ], [ %i.bz, %bb.e ] ; 4 uses
  %i.u = phi i32 [ %.promoted270, %.lr.ph ], [ %i.ca, %bb.e ] ; 4 uses
  %i.v = phi i32 [ %.promoted268, %.lr.ph ], [ %i.cb, %bb.e ] ; 3 uses
  %i.w = phi i32 [ %.promoted266, %.lr.ph ], [ %i.cc, %bb.e ] ; 3 uses
  %i.x = phi i32 [ %.promoted264, %.lr.ph ], [ %i.cd, %bb.e ] ; 2 uses
  %i.y = phi i32 [ %.promoted262, %.lr.ph ], [ %i.ce, %bb.e ] ; 2 uses
  %i.z = phi i32 [ %.promoted260, %.lr.ph ], [ %i.bw, %bb.e ]
  %i.aa = phi i32 [ %.promoted258, %.lr.ph ], [ %i.bt, %bb.e ]
  %i.ab = phi i32 [ %.promoted256, %.lr.ph ], [ %i.bm, %bb.e ]
  %i.ac = phi i32 [ %.promoted254, %.lr.ph ], [ %i.bj, %bb.e ]
  %i.ad = phi i32 [ %.promoted252, %.lr.ph ], [ %i.bd, %bb.e ]
  %i.ae = phi i32 [ %.promoted, %.lr.ph ], [ %i.ba, %bb.e ]
  %.sroa.20250.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.20250.2, %bb.e ] ; 6 uses
  %.sroa.17249.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.17249.2, %bb.e ] ; 5 uses
  %.sroa.14248.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.14248.2, %bb.e ] ; 4 uses
  %.sroa.11247.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.11247.2, %bb.e ] ; 3 uses
  %.sroa.8246.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %..2, %bb.e ] ; 2 uses
  %.sroa.5245.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %..1, %bb.e ] ; 2 uses
  %.sroa.0244.0 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %., %bb.e ] ; 2 uses
  %.sroa.20.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.20.2, %bb.e ] ; 6 uses
  %.sroa.17.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.17.2, %bb.e ] ; 5 uses
  %.sroa.14.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.14.2, %bb.e ] ; 4 uses
  %.sroa.11.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.11.2, %bb.e ] ; 3 uses
  %.sroa.8.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.bv, %bb.e ] ; 2 uses
  %.sroa.5.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.bl, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.bc, %bb.e ] ; 2 uses
  %.0192212 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %bb.e ] ; 3 uses
  br i1 %.not206, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0192212
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = trunc i64 %.0192212 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = phi i32 [ %i.ag, %bb.b ], [ %i.ah, %bb.c ] ; 15 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = mul i64 %i.d, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak ; 3 uses
  %i.am = mul i64 %i.e, %i.aj
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 14 uses
  %i.ap = load float, ptr %i.al, align 4, !tbaa !12 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !12 ; 7 uses
  %i.au = fmul float %i.ar, 0.000000e+00
  %i.av = fadd float %i.ap, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.av) ; 2 uses
  %i.ax = fsub float %i.aw, %i.ao                 ; 2 uses
  %i.ay = fadd float %i.ao, %i.aw                 ; 2 uses
  %i.az = fcmp olt float %i.ax, %.sroa.0244.0     ; 2 uses
  %i.ba = select i1 %i.az, i32 %i.ai, i32 %i.ae   ; 2 uses
  %i.bb = fcmp ogt float %i.ay, %.sroa.0.0        ; 2 uses
  %i.bc = select i1 %i.bb, float %i.ay, float %.sroa.0.0
  %i.bd = select i1 %i.bb, i32 %i.ai, i32 %i.ad   ; 2 uses
  %. = select i1 %i.az, float %i.ax, float %.sroa.0244.0
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.ar)
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.be) ; 2 uses
  %i.bg = fsub float %i.bf, %i.ao                 ; 2 uses
  %i.bh = fadd float %i.ao, %i.bf                 ; 2 uses
  %i.bi = fcmp olt float %i.bg, %.sroa.5245.1     ; 2 uses
  %i.bj = select i1 %i.bi, i32 %i.ai, i32 %i.ac   ; 2 uses
  %i.bk = fcmp ogt float %i.bh, %.sroa.5.1        ; 2 uses
  %i.bl = select i1 %i.bk, float %i.bh, float %.sroa.5.1
  %i.bm = select i1 %i.bk, i32 %i.ai, i32 %i.ab   ; 2 uses
  %..1 = select i1 %i.bi, float %i.bg, float %.sroa.5245.1
  %i.bn = fmul float %i.ar, 0.000000e+00
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.bn)
  %i.bp = fadd float %i.at, %i.bo                 ; 2 uses
  %i.bq = fsub float %i.bp, %i.ao                 ; 2 uses
  %i.br = fadd float %i.ao, %i.bp                 ; 2 uses
  %i.bs = fcmp olt float %i.bq, %.sroa.8246.1     ; 2 uses
  %i.bt = select i1 %i.bs, i32 %i.ai, i32 %i.aa   ; 2 uses
  %i.bu = fcmp ogt float %i.br, %.sroa.8.1        ; 2 uses
  %i.bv = select i1 %i.bu, float %i.br, float %.sroa.8.1
  %i.bw = select i1 %i.bu, i32 %i.ai, i32 %i.z    ; 2 uses
  %..2 = select i1 %i.bs, float %i.bq, float %.sroa.8246.1
  br i1 %exitcond227.not.2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %i.bx = phi i32 [ %i.dp, %bb.i ], [ %i.r, %bb.h ], [ %i.r, %bb.d ], [ %i.r, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %i.by = phi i32 [ %spec.select280, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.d ], [ %i.s, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.bz = phi i32 [ %i.dg, %bb.i ], [ %i.dg, %bb.h ], [ %i.t, %bb.d ], [ %i.t, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.ca = phi i32 [ %spec.select279, %bb.i ], [ %spec.select279, %bb.h ], [ %i.u, %bb.d ], [ %i.u, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %i.cb = phi i32 [ %i.cx, %bb.i ], [ %i.cx, %bb.h ], [ %i.v, %bb.d ], [ %i.v, %bb.f ], [ %i.cx, %bb.g ] ; 2 uses
  %i.cc = phi i32 [ %spec.select278, %bb.i ], [ %spec.select278, %bb.h ], [ %i.w, %bb.d ], [ %i.w, %bb.f ], [ %spec.select278, %bb.g ] ; 2 uses
  %i.cd = phi i32 [ %i.co, %bb.i ], [ %i.co, %bb.h ], [ %i.x, %bb.d ], [ %i.co, %bb.f ], [ %i.co, %bb.g ] ; 2 uses
  %i.ce = phi i32 [ %spec.select, %bb.i ], [ %spec.select, %bb.h ], [ %i.y, %bb.d ], [ %spec.select, %bb.f ], [ %spec.select, %bb.g ] ; 2 uses
  %.sroa.20250.2 = phi float [ %..6, %bb.i ], [ %.sroa.20250.1, %bb.h ], [ %.sroa.20250.1, %bb.d ], [ %.sroa.20250.1, %bb.f ], [ %.sroa.20250.1, %bb.g ]
  %.sroa.17249.2 = phi float [ %..5, %bb.i ], [ %..5, %bb.h ], [ %.sroa.17249.1, %bb.d ], [ %.sroa.17249.1, %bb.f ], [ %.sroa.17249.1, %bb.g ]
  %.sroa.14248.2 = phi float [ %..4, %bb.i ], [ %..4, %bb.h ], [ %.sroa.14248.1, %bb.d ], [ %.sroa.14248.1, %bb.f ], [ %..4, %bb.g ]
  %.sroa.11247.2 = phi float [ %..3, %bb.i ], [ %..3, %bb.h ], [ %.sroa.11247.1, %bb.d ], [ %..3, %bb.f ], [ %..3, %bb.g ]
  %.sroa.20.2 = phi float [ %i.do, %bb.i ], [ %.sroa.20.1, %bb.h ], [ %.sroa.20.1, %bb.d ], [ %.sroa.20.1, %bb.f ], [ %.sroa.20.1, %bb.g ]
  %.sroa.17.2 = phi float [ %i.df, %bb.i ], [ %i.df, %bb.h ], [ %.sroa.17.1, %bb.d ], [ %.sroa.17.1, %bb.f ], [ %.sroa.17.1, %bb.g ]
  %.sroa.14.2 = phi float [ %i.cw, %bb.i ], [ %i.cw, %bb.h ], [ %.sroa.14.1, %bb.d ], [ %.sroa.14.1, %bb.f ], [ %i.cw, %bb.g ]
  %.sroa.11.2 = phi float [ %i.cn, %bb.i ], [ %i.cn, %bb.h ], [ %.sroa.11.1, %bb.d ], [ %i.cn, %bb.f ], [ %i.cn, %bb.g ]
  %i.cf = add nuw i64 %.0192212, 1                ; 2 uses
  %exitcond228.not = icmp eq i64 %i.cf, %2
  br i1 %exitcond228.not, label %.preheader.preheader.loopexit, label %bb.a, !llvm.loop !25

bb.f:                                             ; preds = %bb.d
  %i.cg = fmul float %i.ar, f0x3F13CD3A
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ap, float f0x3F13CD3A, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.at, float f0x3F13CD3A, float %i.ch) ; 2 uses
  %i.cj = fsub float %i.ci, %i.ao                 ; 2 uses
  %i.ck = fadd float %i.ao, %i.ci                 ; 2 uses
  %i.cl = fcmp olt float %i.cj, %.sroa.11247.1    ; 2 uses
  %spec.select = select i1 %i.cl, i32 %i.ai, i32 %i.y ; 4 uses
  %i.cm = fcmp ogt float %i.ck, %.sroa.11.1       ; 2 uses
  %i.cn = select i1 %i.cm, float %i.ck, float %.sroa.11.1 ; 4 uses
  %i.co = select i1 %i.cm, i32 %i.ai, i32 %i.x    ; 4 uses
  %..3 = select i1 %i.cl, float %i.cj, float %.sroa.11247.1 ; 4 uses
  br i1 %exitcond227.not.3, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = fmul float %i.ar, f0x3F13CD3A
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ap, float f0xBF13CD3A, float %i.cp)
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.at, float f0x3F13CD3A, float %i.cq) ; 2 uses
  %i.cs = fsub float %i.cr, %i.ao                 ; 2 uses
  %i.ct = fadd float %i.ao, %i.cr                 ; 2 uses
  %i.cu = fcmp olt float %i.cs, %.sroa.14248.1    ; 2 uses
  %spec.select278 = select i1 %i.cu, i32 %i.ai, i32 %i.w ; 3 uses
  %i.cv = fcmp ogt float %i.ct, %.sroa.14.1       ; 2 uses
  %i.cw = select i1 %i.cv, float %i.ct, float %.sroa.14.1 ; 3 uses
  %i.cx = select i1 %i.cv, i32 %i.ai, i32 %i.v    ; 3 uses
  %..4 = select i1 %i.cu, float %i.cs, float %.sroa.14248.1 ; 3 uses
  br i1 %exitcond227.not.4, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = fmul float %i.ar, f0xBF13CD3A
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.ap, float f0x3F13CD3A, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.at, float f0x3F13CD3A, float %i.cz) ; 2 uses
  %i.db = fsub float %i.da, %i.ao                 ; 2 uses
  %i.dc = fadd float %i.ao, %i.da                 ; 2 uses
  %i.dd = fcmp olt float %i.db, %.sroa.17249.1    ; 2 uses
end_hunk_0
