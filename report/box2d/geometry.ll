Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/geometry?download=true
inline.NumInlined: 139
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2MakeOffsetRoundedPolygon:bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %3, %i.ad              ; 2 uses
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.k, %i.af            ; 2 uses
  %i.ah = fsub <2 x float> %i.ae, %i.ag
  %i.ai = fadd <2 x float> %i.ae, %i.ag
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %2, %i.aj
  store <2 x float> %i.ak, ptr %i.aa, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.an = load <2 x float>, ptr %i.am, align 4    ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %3, %i.ao              ; 2 uses
  %i.aq = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.l, %i.aq            ; 2 uses
  %i.as = fsub <2 x float> %i.ap, %i.ar
  %i.at = fadd <2 x float> %i.ap, %i.ar
  %i.au = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 0, i32 3>
  %i.av = fadd <2 x float> %2, %i.au
  store <2 x float> %i.av, ptr %i.al, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.unr-lcssa, label %bb.c, !llvm.loop !1

.lr.ph.i:                                         ; preds = %b2Normalize.exit
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.aw = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load <2 x float>, ptr %.phi.trans.insert.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.ax = phi <2 x float> [ %.pre.i, %.lr.ph.i ], [ %i.az, %bb.d ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ]
  %.sroa.022.053.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bl, %bb.d ]
  %.052.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bm, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.az = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.ba = fsub <2 x float> %i.ax, %.sroa.013.0.copyload.i ; 2 uses
  %i.bb = fsub <2 x float> %i.az, %.sroa.013.0.copyload.i ; 2 uses
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bd = fmul <2 x float> %i.ba, %i.bc           ; 2 uses
  %shift = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bd, %shift
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = fmul float %i.be, 5.000000e-01          ; 2 uses
  %i.bg = fmul float %i.bf, f0x3EAAAAAB
  %i.bh = fadd <2 x float> %i.ba, %i.bb
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = fadd <2 x float> %.sroa.022.053.i, %i.bk ; 2 uses
  %i.bm = fadd float %.052.i, %i.bf               ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b2ComputePolygonCentroid.exit, label %bb.d, !llvm.loop !0

b2ComputePolygonCentroid.exit:                    ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = fdiv float 1.000000e+00, %i.bm
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bl
  %i.bs = fadd <2 x float> %.sroa.013.0.copyload.i, %i.br
  store <2 x float> %i.bs, ptr %i.bn, align 4, !tbaa !20
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %b2Normalize.exit
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %b2Normalize.exit ] ; 3 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 4 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next38, %i.z
  %i.bu = select i1 %i.bt, i64 %indvars.iv.next38, i64 0
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv37
  %i.bx = load <2 x float>, ptr %i.bv, align 4
  %i.by = load <2 x float>, ptr %i.bw, align 4
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv37
  %i.ca = fsub <2 x float> %i.bx, %i.by           ; 4 uses
  %i.cb = fmul <2 x float> %i.ca, %i.ca
  %i.cc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cb) ; 2 uses
  %i.cd = fcmp ogt float %i.cc, f0x057A0000
  br i1 %i.cd, label %bb.f, label %b2Normalize.exit

bb.f:                                             ; preds = %bb.e
  %i.ce = tail call float @sqrtf(float noundef %i.cc) #20
  %i.cf = fdiv float 1.000000e+00, %i.ce
  %i.cg = fneg <2 x float> %i.ca
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> %i.cg, <2 x i32> <i32 1, i32 2>
  %i.ci = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.ch, %i.cj
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.e, %bb.f
  %.sroa.012.0.i = phi <2 x float> [ %i.ck, %bb.f ], [ zeroinitializer, %bb.e ]
  store <2 x float> %.sroa.012.0.i, ptr %i.bz, align 4, !tbaa !20
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond41.not, label %.lr.ph.i, label %bb.e, !llvm.loop !2

bb.g:                                             ; preds = %b2ComputePolygonCentroid.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  store float %i.c, ptr %0, align 4, !tbaa !20
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.d, ptr %.sroa.214.0..sroa_idx, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %1, ptr %i.e, align 4, !tbaa !20
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.d, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.f, align 4, !tbaa !20
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %.sroa.210.0..sroa_idx, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.g, align 4, !tbaa !20
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %2, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !20
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.h, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float -1.000000e+00, ptr %i.i, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.k, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeRoundedBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !alias.scope !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19, !alias.scope !77
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  store float %i.c, ptr %0, align 4, !tbaa !20, !alias.scope !77
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.d, ptr %.sroa.214.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %1, ptr %i.e, align 4, !tbaa !20, !alias.scope !77
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.d, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.f, align 4, !tbaa !20, !alias.scope !77
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %.sroa.210.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.g, align 4, !tbaa !20, !alias.scope !77
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %2, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.i, align 4, !tbaa !20, !alias.scope !77
  store float %3, ptr %i.h, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeOffsetBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %4, i64 0 ; 4 uses
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 4 uses
  %i.e = fmul float %.sroa.3.8.vec.extract.i, %i.d ; 2 uses
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = fmul float %2, %.sroa.3.8.vec.extract.i  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = fmul float %.sroa.3.8.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.j = fneg float %.sroa.3.8.vec.extract.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %4, i64 1 ; 3 uses
  %i.l = fmul float %.sroa.3.12.vec.extract.i, %i.c ; 2 uses
  %i.m = fadd float %i.l, %i.e
  %i.n = fadd float %.sroa.06.4.vec.extract.i, %i.m
  %i.o = fmul float %1, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.p = fadd float %i.o, %i.e
  %i.q = fadd float %.sroa.06.4.vec.extract.i, %i.p
  %i.r = fadd float %i.o, %i.g
  %i.s = fadd float %.sroa.06.4.vec.extract.i, %i.r
  %i.t = insertelement <2 x float> poison, float %i.c, i64 0
  %i.u = insertelement <2 x float> %i.t, float %1, i64 1
  %i.v = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.x = fmul <4 x float> %i.v, %i.w
  %i.y = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.d, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %2, i64 1
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ad = fsub <4 x float> %i.x, %i.ac            ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fadd float %.sroa.06.0.vec.extract.i, %i.ae
  %.sroa.011.0.vec.insert.i = insertelement <2 x float> poison, float %i.af, i64 0
  %.sroa.011.4.vec.insert.i = insertelement <2 x float> %.sroa.011.0.vec.insert.i, float %i.n, i64 1
  %i.ag = extractelement <4 x float> %i.ad, i64 1
  %i.ah = fadd float %.sroa.06.0.vec.extract.i, %i.ag
  %.sroa.011.0.vec.insert.i49 = insertelement <2 x float> poison, float %i.ah, i64 0
  %.sroa.011.4.vec.insert.i50 = insertelement <2 x float> %.sroa.011.0.vec.insert.i49, float %i.q, i64 1
  %5 = shufflevector <2 x float> %.sroa.011.4.vec.insert.i, <2 x float> %.sroa.011.4.vec.insert.i50, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %0, align 4, !tbaa !20
  %i.ai = extractelement <4 x float> %i.ad, i64 3
  %i.aj = fadd float %.sroa.06.0.vec.extract.i, %i.ai
  %.sroa.011.0.vec.insert.i55 = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.011.4.vec.insert.i56 = insertelement <2 x float> %.sroa.011.0.vec.insert.i55, float %i.s, i64 1
  %i.ak = extractelement <4 x float> %i.ad, i64 2
  %i.al = fadd float %.sroa.06.0.vec.extract.i, %i.ak
  %i.am = fadd float %i.l, %i.g
  %i.an = fadd float %.sroa.06.4.vec.extract.i, %i.am
  %.sroa.011.0.vec.insert.i61 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.011.4.vec.insert.i62 = insertelement <2 x float> %.sroa.011.0.vec.insert.i61, float %i.an, i64 1
  %6 = shufflevector <2 x float> %.sroa.011.4.vec.insert.i56, <2 x float> %.sroa.011.4.vec.insert.i62, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %i.f, align 4, !tbaa !20
  %i.ao = fadd float %.sroa.3.12.vec.extract.i, %i.i ; 2 uses
  %.sroa.010.0.vec.insert.i = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ap = fmul <2 x float> %i.y, <float 0.000000e+00, float 1.000000e+00> ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.ap, %4
  %.sroa.010.4.vec.insert.i = shufflevector <2 x float> %.sroa.010.0.vec.insert.i, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %foldExtExtBinop76 = fsub <2 x float> %4, %i.ap
  %.sroa.010.4.vec.insert.i66 = insertelement <2 x float> %foldExtExtBinop76, float %i.ao, i64 1
  %7 = shufflevector <2 x float> %.sroa.010.4.vec.insert.i, <2 x float> %.sroa.010.4.vec.insert.i66, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.h, align 4, !tbaa !20
  %i.aq = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.i, i64 1
  %i.as = fsub <2 x float> %i.ar, %i.ap
  %foldExtExtBinop78 = fadd <2 x float> %4, %i.ap
  %8 = shufflevector <2 x float> %i.as, <2 x float> %foldExtExtBinop78, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  store <4 x float> %8, ptr %i.k, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.at, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %3, ptr %i.au, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeOffsetRoundedBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2, <2 x float> %3, <2 x float> %4, float noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %4, i64 0 ; 4 uses
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 4 uses
  %i.e = fmul float %.sroa.3.8.vec.extract.i, %i.d ; 2 uses
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = fmul float %2, %.sroa.3.8.vec.extract.i  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = fmul float %.sroa.3.8.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.j = fneg float %.sroa.3.8.vec.extract.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %4, i64 1 ; 3 uses
  %i.l = fmul float %.sroa.3.12.vec.extract.i, %i.c ; 2 uses
  %i.m = fadd float %i.l, %i.e
  %i.n = fadd float %.sroa.06.4.vec.extract.i, %i.m
  %i.o = fmul float %1, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.p = fadd float %i.o, %i.e
  %i.q = fadd float %.sroa.06.4.vec.extract.i, %i.p
  %i.r = fadd float %i.o, %i.g
  %i.s = fadd float %.sroa.06.4.vec.extract.i, %i.r
  %i.t = insertelement <2 x float> poison, float %i.c, i64 0
  %i.u = insertelement <2 x float> %i.t, float %1, i64 1
  %i.v = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.x = fmul <4 x float> %i.v, %i.w
  %i.y = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.d, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %2, i64 1
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ad = fsub <4 x float> %i.x, %i.ac            ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fadd float %.sroa.06.0.vec.extract.i, %i.ae
  %.sroa.011.0.vec.insert.i = insertelement <2 x float> poison, float %i.af, i64 0
  %.sroa.011.4.vec.insert.i = insertelement <2 x float> %.sroa.011.0.vec.insert.i, float %i.n, i64 1
  %i.ag = extractelement <4 x float> %i.ad, i64 1
  %i.ah = fadd float %.sroa.06.0.vec.extract.i, %i.ag
  %.sroa.011.0.vec.insert.i50 = insertelement <2 x float> poison, float %i.ah, i64 0
  %.sroa.011.4.vec.insert.i51 = insertelement <2 x float> %.sroa.011.0.vec.insert.i50, float %i.q, i64 1
  %6 = shufflevector <2 x float> %.sroa.011.4.vec.insert.i, <2 x float> %.sroa.011.4.vec.insert.i51, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %0, align 4, !tbaa !20
  %i.ai = extractelement <4 x float> %i.ad, i64 3
  %i.aj = fadd float %.sroa.06.0.vec.extract.i, %i.ai
  %.sroa.011.0.vec.insert.i56 = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.011.4.vec.insert.i57 = insertelement <2 x float> %.sroa.011.0.vec.insert.i56, float %i.s, i64 1
  %i.ak = extractelement <4 x float> %i.ad, i64 2
  %i.al = fadd float %.sroa.06.0.vec.extract.i, %i.ak
  %i.am = fadd float %i.l, %i.g
  %i.an = fadd float %.sroa.06.4.vec.extract.i, %i.am
  %.sroa.011.0.vec.insert.i62 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.011.4.vec.insert.i63 = insertelement <2 x float> %.sroa.011.0.vec.insert.i62, float %i.an, i64 1
  %7 = shufflevector <2 x float> %.sroa.011.4.vec.insert.i57, <2 x float> %.sroa.011.4.vec.insert.i63, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.f, align 4, !tbaa !20
  %i.ao = fadd float %.sroa.3.12.vec.extract.i, %i.i ; 2 uses
  %.sroa.010.0.vec.insert.i = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ap = fmul <2 x float> %i.y, <float 0.000000e+00, float 1.000000e+00> ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.ap, %4
  %.sroa.010.4.vec.insert.i = shufflevector <2 x float> %.sroa.010.0.vec.insert.i, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %foldExtExtBinop77 = fsub <2 x float> %4, %i.ap
  %.sroa.010.4.vec.insert.i67 = insertelement <2 x float> %foldExtExtBinop77, float %i.ao, i64 1
  %8 = shufflevector <2 x float> %.sroa.010.4.vec.insert.i, <2 x float> %.sroa.010.4.vec.insert.i67, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %i.h, align 4, !tbaa !20
  %i.aq = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.i, i64 1
  %i.as = fsub <2 x float> %i.ar, %i.ap
  %foldExtExtBinop79 = fadd <2 x float> %4, %i.ap
  %9 = shufflevector <2 x float> %i.as, <2 x float> %foldExtExtBinop79, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  store <4 x float> %9, ptr %i.k, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %5, ptr %i.at, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %3, ptr %i.au, align 4, !tbaa !20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @b2TransformPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, <2 x float> %1, <2 x float> %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(144) %3, i64 144, i1 false), !tbaa.struct !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.e = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 2 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %2, %i.i                ; 2 uses
  %i.k = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %i.k, %i.l              ; 2 uses
  %i.n = fsub <2 x float> %i.j, %i.m
  %i.o = fadd <2 x float> %i.j, %i.m
  %i.p = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.q = fadd <2 x float> %1, %i.p
  store <2 x float> %i.q, ptr %i.g, align 4, !tbaa !20
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 2 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %2, %i.t                ; 2 uses
  %i.v = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = fmul <2 x float> %i.e, %i.v              ; 2 uses
  %i.x = fsub <2 x float> %i.u, %i.w
  %i.y = fadd <2 x float> %i.u, %i.w
  %i.z = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 0, i32 3>
  %i.aa = fadd <2 x float> %1, %i.z
  store <2 x float> %i.aa, ptr %i.r, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %2, %i.ad              ; 2 uses
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.f, %i.af            ; 2 uses
  %i.ah = fsub <2 x float> %i.ae, %i.ag
  %i.ai = fadd <2 x float> %i.ae, %i.ag
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.aj, ptr %i.ab, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCircleMass(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !26 ; 2 uses
  %i.c = fmul float %i.b, %i.b                    ; 2 uses
  %i.d = fmul float %1, f0x40490FDB
  %i.e = fmul float %i.d, %i.c                    ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.e, i64 0
  %.sroa.0.4.copyload = load float, ptr %0, align 4, !tbaa !20
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.sroa.0.4.copyload, i64 1
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.4.copyload = load float, ptr %.sroa.4.4..sroa_idx, align 4, !tbaa !20
  %.sroa.4.4.vec.insert = insertelement <2 x float> poison, float %.sroa.4.4.copyload, i64 0
  %i.f = fmul float %i.e, 5.000000e-01
  %i.g = fmul float %i.c, %i.f
  %.sroa.4.12.vec.insert = insertelement <2 x float> %.sroa.4.4.vec.insert, float %i.g, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCapsuleMass(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !28 ; 6 uses
  %i.c = fmul float %i.b, %i.b                    ; 2 uses
  %.sroa.017.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.d, align 4, !tbaa !20 ; 3 uses
  %i.e = fsub <2 x float> %.sroa.015.0.copyload, %.sroa.017.0.copyload ; 2 uses
  %i.f = fmul <2 x float> %i.e, %i.e
  %i.g = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.f)
  %i.h = tail call float @sqrtf(float noundef %i.g) #20 ; 4 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = fmul float %i.b, f0x40490FDB
  %i.k = fmul float %i.b, %i.j
  %i.l = fmul float %1, %i.k                      ; 2 uses
  %i.m = fmul float %i.b, 2.000000e+00
  %i.n = fmul float %i.m, %i.h
  %i.o = fmul float %1, %i.n                      ; 2 uses
  %i.p = fadd float %i.l, %i.o
  %.sroa.032.0.vec.insert = insertelement <2 x float> poison, float %i.p, i64 0
  %foldExtExtBinop = fadd <2 x float> %.sroa.017.0.copyload, %.sroa.015.0.copyload
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.r = fmul float %i.q, 5.000000e-01
  %.sroa.032.4.vec.insert = insertelement <2 x float> %.sroa.032.0.vec.insert, float %i.r, i64 1
  %foldExtExtBinop38 = fadd <2 x float> %.sroa.017.0.copyload, %.sroa.015.0.copyload
  %i.s = extractelement <2 x float> %foldExtExtBinop38, i64 1
  %i.t = fmul float %i.s, 5.000000e-01
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.t, i64 0
  %i.u = fmul float %i.h, 5.000000e-01            ; 3 uses
  %i.v = fmul float %i.c, 5.000000e-01
  %i.w = fmul float %i.u, %i.u
  %i.x = fadd float %i.v, %i.w
  %i.y = fmul float %i.u, 2.000000e+00
  %i.z = fmul float %i.c, 4.000000e+00
  %i.aa = fadd float %i.z, %i.i
  %i.ab = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.o, i64 1
  %i.ad = insertelement <2 x float> <float 4.000000e+00, float poison>, float %i.aa, i64 1
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = fdiv <2 x float> %i.ae, <float f0x4116CBE4, float 1.200000e+01> ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = fmul float %i.ag, %i.y
  %i.ai = fadd float %i.x, %i.ah
  %i.aj = fmul float %i.l, %i.ai
  %i.ak = extractelement <2 x float> %i.af, i64 1
  %i.al = fadd float %i.ak, %i.aj
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.al, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.032.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define { <2 x float>, <2 x float> } @b2ComputePolygonMass(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2MassData, align 8         ; 5 uses
  %3 = alloca [8 x %struct.b2Vec2], align 16      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 6 uses
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 4
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %.sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load float, ptr %i.e, align 4, !tbaa !21 ; 2 uses
  %i.g = fmul float %i.f, %i.f                    ; 2 uses
  %i.h = fmul float %1, f0x40490FDB
  %i.i = fmul float %i.h, %i.g                    ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.i, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.c, i64 1
  %.sroa.4.4.vec.insert.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = fmul float %i.i, 5.000000e-01
  %i.k = fmul float %i.g, %i.j
  %.sroa.4.12.vec.insert.i = insertelement <2 x float> %.sroa.4.4.vec.insert.i, float %i.k, i64 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load float, ptr %i.o, align 4, !tbaa !21 ; 6 uses
  %i.q = fmul float %i.p, %i.p                    ; 2 uses
  %i.r = fsub <2 x float> %i.n, %i.l              ; 2 uses
  %i.s = fmul <2 x float> %i.r, %i.r
  %i.t = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.s)
  %i.u = tail call float @sqrtf(float noundef %i.t) #20 ; 4 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = fmul float %i.p, f0x40490FDB
  %i.x = fmul float %i.p, %i.w
  %i.y = fmul float %1, %i.x                      ; 2 uses
  %i.z = fmul float %i.p, 2.000000e+00
  %i.aa = fmul float %i.z, %i.u
  %i.ab = fmul float %1, %i.aa                    ; 2 uses
  %i.ac = fadd float %i.y, %i.ab
  %.sroa.032.0.vec.insert.i = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ad = fadd <2 x float> %i.l, %i.n
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = shufflevector <2 x float> %.sroa.032.0.vec.insert.i, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = fmul float %i.u, 5.000000e-01           ; 3 uses
  %i.ai = fmul float %i.q, 5.000000e-01
  %i.aj = fmul float %i.ah, %i.ah
  %i.ak = fadd float %i.ai, %i.aj
  %i.al = fmul float %i.ah, 2.000000e+00
end_hunk_0
begin_hunk_1_@b2ComputeFatShapeAABB:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @b2PointInCircle(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !20
  %i.a = fsub <2 x float> %.sroa.0.0.copyload, %1 ; 2 uses
  %i.b = fmul <2 x float> %i.a, %i.a
  %i.c = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !26 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = fcmp ole float %i.c, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @b2PointInCapsule(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !28 ; 2 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.c, align 4, !tbaa !20
  %i.d = fsub <2 x float> %.sroa.09.0.copyload, %.sroa.010.0.copyload ; 4 uses
  %i.e = fmul <2 x float> %i.d, %i.d
  %i.f = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.e) ; 2 uses
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fsub <2 x float> %1, %.sroa.010.0.copyload
  %i.i = fmul <2 x float> %i.h, %i.d
  %i.j = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.i)
  %i.k = fdiv float %i.j, %i.f                    ; 3 uses
  %i.l = fcmp olt float %i.k, 0.000000e+00
  %i.m = fcmp ogt float %i.k, 1.000000e+00
  %i.n = select i1 %i.m, float 1.000000e+00, float %i.k
  %i.o = select i1 %i.l, float 0.000000e+00, float %i.n
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.d, %i.q
  %i.s = fadd <2 x float> %.sroa.010.0.copyload, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = phi <2 x float> [ %i.s, %bb.b ], [ %.sroa.010.0.copyload, %bb.a ]
  %i.u = fsub <2 x float> %i.t, %1                ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.u
  %i.w = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.v)
  %i.x = fmul float %i.b, %i.b
  %.0 = fcmp ole float %i.w, %i.x
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b2PointInPolygon(ptr noundef %0, <2 x float> %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2Vec2, align 8             ; 2 uses
  %3 = alloca %struct.b2DistanceInput, align 4    ; 7 uses
  %4 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %5 = alloca %struct.b2SimplexCache, align 8     ; 4 uses
  %6 = alloca %struct.b2DistanceOutput, align 4   ; 4 uses
  store <2 x float> %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef %0, i32 noundef %i.b, float noundef 0.000000e+00) #20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef nonnull %2, i32 noundef 1, float noundef 0.000000e+00) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.c, ptr noundef nonnull align 4 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 0, ptr %i.e, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %6, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #20
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load float, ptr %i.h, align 4, !tbaa !21
  %i.j = fcmp ole float %i.g, %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %i.j
}

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @b2RayCastCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %.sroa.027.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.a = load <2 x float>, ptr %2, align 4        ; 3 uses
  %i.b = fsub <2 x float> %i.a, %.sroa.027.0.copyload ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !26 ; 3 uses
  %i.e = fmul float %i.d, %i.d                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 4 uses
  %.sroa.0.0.vec.extract.i39 = extractelement <2 x float> %i.g, i64 0
  %.sroa.0.4.vec.extract.i40 = extractelement <2 x float> %i.g, i64 1
  %i.h = fmul <2 x float> %i.g, %i.g
  %i.i = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.h) ; 2 uses
  %i.j = fcmp ogt float %i.i, f0x057A0000
  br i1 %i.j, label %b2GetLengthAndNormalize.exit, label %b2GetLengthAndNormalize.exit.thread

b2GetLengthAndNormalize.exit:                     ; preds = %bb.a
  %i.k = tail call float @sqrtf(float noundef %i.i) #20 ; 4 uses
  %i.l = fcmp oeq float %i.k, 0.000000e+00
  br i1 %i.l, label %b2GetLengthAndNormalize.exit.thread, label %bb.c

b2GetLengthAndNormalize.exit.thread:              ; preds = %bb.a, %b2GetLengthAndNormalize.exit
  %i.m = fmul <2 x float> %i.b, %i.b
  %i.n = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.m)
  %i.o = fcmp olt float %i.n, %i.e
  br i1 %i.o, label %bb.b, label %bb.j

bb.b:                                             ; preds = %b2GetLengthAndNormalize.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.a, ptr %i.p, align 4, !tbaa !20
  br label %.sink.split

bb.c:                                             ; preds = %b2GetLengthAndNormalize.exit
  %i.q = fdiv float 1.000000e+00, %i.k            ; 2 uses
  %i.r = fmul float %.sroa.0.0.vec.extract.i39, %i.q ; 3 uses
  %i.s = fmul float %.sroa.0.4.vec.extract.i40, %i.q ; 3 uses
  %i.t = extractelement <2 x float> %i.b, i64 0   ; 3 uses
  %i.u = fmul float %i.t, %i.r
  %i.v = extractelement <2 x float> %i.b, i64 1   ; 3 uses
  %i.w = fmul float %i.v, %i.s
  %i.x = fadd float %i.u, %i.w                    ; 3 uses
  %i.y = fmul float %i.r, %i.x
  %i.z = fsub float %i.t, %i.y                    ; 2 uses
  %i.aa = fmul float %i.s, %i.x
  %i.ab = fsub float %i.v, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.z, %i.z
  %i.ad = fmul float %i.ab, %i.ab
  %i.ae = fadd float %i.ac, %i.ad                 ; 2 uses
  %i.af = fcmp ogt float %i.ae, %i.e
  br i1 %i.af, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = fneg float %i.x
  %i.ah = fsub float %i.e, %i.ae
  %i.ai = tail call float @sqrtf(float noundef %i.ah) #20
  %i.aj = fsub float %i.ag, %i.ai                 ; 5 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !15
  %i.an = fmul float %i.k, %i.am
  %i.ao = fcmp olt float %i.an, %i.aj
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = fmul <2 x float> %i.b, %i.b
  %i.aq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ap)
  %i.ar = fcmp olt float %i.aq, %i.e
  br i1 %i.ar, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.a, ptr %i.as, align 4, !tbaa !20
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.at = fmul float %i.r, %i.aj
  %i.au = fadd float %i.t, %i.at                  ; 3 uses
  %i.av = fmul float %i.s, %i.aj
  %i.aw = fadd float %i.v, %i.av                  ; 3 uses
  %i.ax = fdiv float %i.aj, %i.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ax, ptr %i.ay, align 4, !tbaa !35
  %i.az = fmul float %i.au, %i.au
  %i.ba = fmul float %i.aw, %i.aw
  %i.bb = fadd float %i.az, %i.ba                 ; 2 uses
  %i.bc = fcmp ogt float %i.bb, f0x057A0000
  br i1 %i.bc, label %bb.i, label %b2Normalize.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call float @sqrtf(float noundef %i.bb) #20
  %i.be = fdiv float 1.000000e+00, %i.bd          ; 2 uses
  %i.bf = fmul float %i.au, %i.be
  %.sroa.012.0.vec.insert.i = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bg = fmul float %i.aw, %i.be
  %.sroa.012.4.vec.insert.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i, float %i.bg, i64 1
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.h, %bb.i
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.d, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bi, %.sroa.012.0.i
  %i.bk = fadd <2 x float> %.sroa.027.0.copyload, %i.bj
  %3 = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %0, align 4, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %b2Normalize.exit, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bl, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.c, %bb.f, %b2GetLengthAndNormalize.exit.thread
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @b2RayCastCapsule(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #15 {
bb.a:
  %3 = alloca %struct.b2Circle, align 8           ; 5 uses
  %4 = alloca %struct.b2Circle, align 8           ; 5 uses
  %.sroa.079.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !20 ; 5 uses
  %i.b = fsub <2 x float> %.sroa.075.0.copyload, %.sroa.079.0.copyload ; 3 uses
  %i.c = fmul <2 x float> %i.b, %i.b
  %i.d = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.c) ; 2 uses
  %i.e = fcmp ogt float %i.d, f0x057A0000
  br i1 %i.e, label %b2GetLengthAndNormalize.exit, label %b2GetLengthAndNormalize.exit.thread

b2GetLengthAndNormalize.exit:                     ; preds = %bb.a
  %i.f = tail call float @sqrtf(float noundef %i.d) #20 ; 5 uses
  %i.g = fcmp olt float %i.f, f0x34000000
  br i1 %i.g, label %b2GetLengthAndNormalize.exit.thread, label %bb.j

b2GetLengthAndNormalize.exit.thread:              ; preds = %bb.a, %b2GetLengthAndNormalize.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false), !alias.scope !100
  %i.j = load <2 x float>, ptr %2, align 4, !noalias !100 ; 3 uses
  %i.k = fsub <2 x float> %i.j, %.sroa.079.0.copyload ; 6 uses
  %i.l = fmul float %i.i, %i.i                    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4, !noalias !100 ; 4 uses
  %.sroa.0.0.vec.extract.i39.i = extractelement <2 x float> %i.n, i64 0
  %.sroa.0.4.vec.extract.i40.i = extractelement <2 x float> %i.n, i64 1
  %i.o = fmul <2 x float> %i.n, %i.n
  %i.p = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.o) ; 2 uses
  %i.q = fcmp ogt float %i.p, f0x057A0000
  br i1 %i.q, label %b2GetLengthAndNormalize.exit.i, label %b2GetLengthAndNormalize.exit.thread.i

b2GetLengthAndNormalize.exit.i:                   ; preds = %b2GetLengthAndNormalize.exit.thread
  %i.r = tail call float @sqrtf(float noundef %i.p) #20, !noalias !100 ; 4 uses
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %b2GetLengthAndNormalize.exit.thread.i, label %bb.c

b2GetLengthAndNormalize.exit.thread.i:            ; preds = %b2GetLengthAndNormalize.exit.i, %b2GetLengthAndNormalize.exit.thread
  %i.t = fmul <2 x float> %i.k, %i.k
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = fcmp olt float %i.u, %i.l
  br i1 %i.v, label %bb.b, label %b2RayCastCircle.exit

bb.b:                                             ; preds = %b2GetLengthAndNormalize.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.j, ptr %i.w, align 4, !tbaa !20, !alias.scope !100
  br label %.sink.split.i

bb.c:                                             ; preds = %b2GetLengthAndNormalize.exit.i
  %i.x = fdiv float 1.000000e+00, %i.r            ; 2 uses
  %i.y = fmul float %.sroa.0.0.vec.extract.i39.i, %i.x ; 3 uses
  %i.z = fmul float %.sroa.0.4.vec.extract.i40.i, %i.x ; 3 uses
  %i.aa = extractelement <2 x float> %i.k, i64 0  ; 3 uses
  %i.ab = fmul float %i.aa, %i.y
  %i.ac = extractelement <2 x float> %i.k, i64 1  ; 3 uses
  %i.ad = fmul float %i.ac, %i.z
  %i.ae = fadd float %i.ab, %i.ad                 ; 3 uses
  %i.af = fmul float %i.y, %i.ae
  %i.ag = fsub float %i.aa, %i.af                 ; 2 uses
  %i.ah = fmul float %i.z, %i.ae
  %i.ai = fsub float %i.ac, %i.ah                 ; 2 uses
  %i.aj = fmul float %i.ag, %i.ag
  %i.ak = fmul float %i.ai, %i.ai
  %i.al = fadd float %i.aj, %i.ak                 ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.l
  br i1 %i.am, label %b2RayCastCircle.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = fneg float %i.ae
  %i.ao = fsub float %i.l, %i.al
  %i.ap = tail call float @sqrtf(float noundef %i.ao) #20, !noalias !100
  %i.aq = fsub float %i.an, %i.ap                 ; 5 uses
  %i.ar = fcmp olt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load float, ptr %i.as, align 4, !tbaa !15, !noalias !100
  %i.au = fmul float %i.r, %i.at
  %i.av = fcmp olt float %i.au, %i.aq
  br i1 %i.av, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aw = fmul <2 x float> %i.k, %i.k
  %i.ax = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aw)
  %i.ay = fcmp olt float %i.ax, %i.l
  br i1 %i.ay, label %bb.g, label %b2RayCastCircle.exit

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.j, ptr %i.az, align 4, !tbaa !20, !alias.scope !100
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.e
  %i.ba = fmul float %i.y, %i.aq
  %i.bb = fadd float %i.aa, %i.ba                 ; 3 uses
  %i.bc = fmul float %i.z, %i.aq
  %i.bd = fadd float %i.ac, %i.bc                 ; 3 uses
  %i.be = fdiv float %i.aq, %i.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.be, ptr %i.bf, align 4, !tbaa !35, !alias.scope !100
  %i.bg = fmul float %i.bb, %i.bb
  %i.bh = fmul float %i.bd, %i.bd
  %i.bi = fadd float %i.bg, %i.bh                 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, f0x057A0000
  br i1 %i.bj, label %bb.i, label %b2Normalize.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bk = tail call float @sqrtf(float noundef %i.bi) #20, !noalias !100
  %i.bl = fdiv float 1.000000e+00, %i.bk          ; 2 uses
  %i.bm = fmul float %i.bb, %i.bl
  %.sroa.012.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bn = fmul float %i.bd, %i.bl
  %.sroa.012.4.vec.insert.i.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i.i, float %i.bn, i64 1
  br label %b2Normalize.exit.i

b2Normalize.exit.i:                               ; preds = %bb.i, %bb.h
  %.sroa.012.0.i.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i.i, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  store <2 x float> %.sroa.012.0.i.i, ptr %0, align 4, !tbaa !20, !alias.scope !100
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %.sroa.012.0.i.i
  %i.bs = fadd <2 x float> %.sroa.079.0.copyload, %i.br
  store <2 x float> %i.bs, ptr %i.bo, align 4, !tbaa !20, !alias.scope !100
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %b2Normalize.exit.i, %bb.g, %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bt, align 4, !tbaa !36, !alias.scope !100
  br label %b2RayCastCircle.exit

bb.j:                                             ; preds = %b2GetLengthAndNormalize.exit
  %.sroa.058.0.copyload = load <2 x float>, ptr %2, align 4, !tbaa !20 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.bu, align 4, !tbaa !20 ; 11 uses
  %i.bv = fsub <2 x float> %.sroa.058.0.copyload, %.sroa.079.0.copyload ; 8 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1 ; 5 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 0 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load float, ptr %i.by, align 4, !tbaa !28 ; 9 uses
  %i.ca = fdiv float 1.000000e+00, %i.f
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.b, %i.cc            ; 6 uses
  %i.ce = fmul <2 x float> %i.cd, %i.bv           ; 2 uses
  %shift = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ce, %shift ; 2 uses
  %i.cf = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cg = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.cd, %i.cg
  %i.ci = fsub <2 x float> %i.bv, %i.ch           ; 2 uses
  %i.cj = fmul <2 x float> %i.ci, %i.ci
  %i.ck = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cj)
  %i.cl = fmul float %i.bz, %i.bz                 ; 9 uses
  %i.cm = fcmp olt float %i.ck, %i.cl
  br i1 %i.cm, label %bb.k, label %bb.af

bb.k:                                             ; preds = %bb.j
  %i.cn = fcmp olt float %i.cf, 0.000000e+00
  br i1 %i.cn, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false), !alias.scope !101
  %.sroa.0.0.vec.extract.i39.i169 = extractelement <2 x float> %.sroa.057.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i40.i170 = extractelement <2 x float> %.sroa.057.0.copyload, i64 1
  %i.co = fmul <2 x float> %.sroa.057.0.copyload, %.sroa.057.0.copyload
  %i.cp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.co) ; 2 uses
  %i.cq = fcmp ogt float %i.cp, f0x057A0000
  br i1 %i.cq, label %b2GetLengthAndNormalize.exit.i173, label %b2GetLengthAndNormalize.exit.thread.i171

b2GetLengthAndNormalize.exit.i173:                ; preds = %bb.l
  %i.cr = tail call float @sqrtf(float noundef %i.cp) #20, !noalias !101 ; 4 uses
  %i.cs = fcmp oeq float %i.cr, 0.000000e+00
  br i1 %i.cs, label %b2GetLengthAndNormalize.exit.thread.i171, label %bb.n

b2GetLengthAndNormalize.exit.thread.i171:         ; preds = %b2GetLengthAndNormalize.exit.i173, %bb.l
  %i.ct = fmul <2 x float> %i.bv, %i.bv
  %i.cu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ct)
  %i.cv = fcmp olt float %i.cu, %i.cl
  br i1 %i.cv, label %bb.m, label %b2RayCastCircle.exit
end_hunk_1
