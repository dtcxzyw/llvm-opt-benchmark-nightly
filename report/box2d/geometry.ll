Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/geometry?download=true
inline.NumInlined: 138
inline.NumDeleted: 27
begin_hunk_0_@b2RayCastCapsule:bb.a
  %.sroa.01.0.vec.insert.i = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.hw = shufflevector <2 x float> %.sroa.01.0.vec.insert.i, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.039.0 = phi <2 x float> [ %i.hw, %bb.ag ], [ %.sroa.039.4.vec.insert, %bb.af ] ; 2 uses
  %.0 = phi float [ %i.ht, %bb.ag ], [ %i.hp, %bb.af ] ; 3 uses
  %.sroa.5.0 = phi float [ %i.hk, %bb.ag ], [ %i.hi, %bb.af ]
  %.sroa.07.0 = phi float [ %i.hj, %bb.ag ], [ %i.hg, %bb.af ]
  %i.hx = fcmp olt float %.0, 0.000000e+00
  br i1 %i.hx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !13
  %i.ia = fmul float %.sink.i208, %i.hz
  %i.ib = fcmp olt float %i.ia, %.0
  br i1 %i.ib, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %b2RayCastCircle.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ic = fmul float %.sroa.034.0.vec.extract, %.sroa.5.0
  %i.id = fmul float %.sroa.034.4.vec.extract, %.sroa.07.0
  %i.ie = fsub float %i.ic, %i.id
  %i.if = fmul float %i.hl, %i.ie                 ; 3 uses
  %i.ig = fcmp olt float %i.if, 0.000000e+00
  br i1 %i.ig, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store <2 x float> %.sroa.079.0.copyload, ptr %3, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.bv, ptr %i.ih, align 8, !tbaa !24
  call void @b2RayCastCircle(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %3, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %b2RayCastCircle.exit

bb.am:                                            ; preds = %bb.ak
  %i.ii = fcmp olt float %sqrt.i, %i.if
  br i1 %i.ii, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <2 x float> %.sroa.075.0.copyload, ptr %4, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.bv, ptr %i.ij, align 8, !tbaa !24
  call void @b2RayCastCircle(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %4, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %b2RayCastCircle.exit

bb.ao:                                            ; preds = %bb.am
  %i.ik = fdiv float %.0, %.sink.i208
  %i.il = fdiv float %i.if, %sqrt.i               ; 2 uses
  %i.im = fsub float 1.000000e+00, %i.il
  %i.in = insertelement <2 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %.sroa.079.0.copyload, %i.io
  %i.iq = insertelement <2 x float> poison, float %i.il, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %.sroa.075.0.copyload, %i.ir
  %i.it = fadd <2 x float> %i.is, %i.ip
  %i.iu = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x float> %i.iv, %.sroa.039.0
  %i.ix = fadd <2 x float> %i.iw, %i.it
  store <2 x float> %.sroa.039.0, ptr %0, align 4
  %.sroa.8.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.ix, ptr %.sroa.8.0..sroa_idx93, align 4
  %.sroa.10.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ik, ptr %.sroa.10.0..sroa_idx99, align 4, !tbaa !18
  %.sroa.11.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.11.0..sroa_idx105, align 4, !tbaa !22
  %.sroa.11107.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %.sroa.11107.0..sroa_idx112, align 4, !tbaa !96
  %.sroa.13.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %0, i64 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13.0..sroa_idx116, i8 0, i64 3, i1 false)
  br label %b2RayCastCircle.exit

b2RayCastCircle.exit:                             ; preds = %bb.ae, %bb.al, %bb.an, %bb.ao, %bb.aj, %.sink.split.i193, %bb.x, %b2GetLengthAndNormalize.exit.thread.i192, %b2GetLengthAndNormalize.exit.i194, %.sink.split.i172, %bb.o, %b2GetLengthAndNormalize.exit.thread.i171, %b2GetLengthAndNormalize.exit.i173, %.sink.split.i, %bb.e, %b2GetLengthAndNormalize.exit.thread.i, %b2GetLengthAndNormalize.exit.i, %bb.ab
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @b2RayCastSegment(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.025.0.copyload.pre = load <2 x float>, ptr %2, align 4 ; 3 uses
  %.sroa.020.0.copyload.pre = load <2 x float>, ptr %1, align 4 ; 5 uses
  br i1 %3, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.019.0.copyload.pre = load <2 x float>, ptr %.phi.trans.insert, align 4
  %i.a = fsub <2 x float> %.sroa.019.0.copyload.pre, %.sroa.020.0.copyload.pre
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4
  %i.d = fsub <2 x float> %i.c, %.sroa.020.0.copyload.pre ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fsub <2 x float> %.sroa.025.0.copyload.pre, %.sroa.020.0.copyload.pre
  %i.g = fmul <2 x float> %i.f, %i.e              ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = fcmp olt float %i.h, %i.i
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %b2GetLengthAndNormalize.exit.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.k = phi <2 x float> [ %i.a, %..thread_crit_edge ], [ %i.d, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.l, align 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.m = fmul <2 x float> %i.k, %i.k
  %i.n = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.m) ; 2 uses
  %i.o = fcmp ogt float %i.n, f0x057A0000
  br i1 %i.o, label %b2GetLengthAndNormalize.exit, label %b2GetLengthAndNormalize.exit.thread

b2GetLengthAndNormalize.exit:                     ; preds = %.thread
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.n) ; 2 uses
  %i.p = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.k, %i.r              ; 6 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = fneg <2 x float> %i.s
  %.sroa.01.4.vec.insert.i = shufflevector <2 x float> %i.s, <2 x float> %i.u, <2 x i32> <i32 1, i32 2>
  %i.v = fsub <2 x float> %.sroa.020.0.copyload.pre, %.sroa.025.0.copyload.pre
  %i.w = fmul <2 x float> %i.v, %i.t              ; 2 uses
  %shift = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.w, %shift
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.y = fmul <2 x float> %.sroa.023.0.copyload, %i.t ; 2 uses
  %shift107 = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop108 = fsub <2 x float> %i.y, %shift107
  %i.z = extractelement <2 x float> %foldExtExtBinop108, i64 0 ; 2 uses
  %i.aa = fcmp oeq float %i.z, 0.000000e+00
  br i1 %i.aa, label %b2GetLengthAndNormalize.exit.thread, label %bb.d

bb.d:                                             ; preds = %b2GetLengthAndNormalize.exit
  %i.ab = fdiv float %i.x, %i.z                   ; 4 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %b2GetLengthAndNormalize.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !13
  %i.af = fcmp olt float %i.ae, %i.ab
  br i1 %i.af, label %b2GetLengthAndNormalize.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %.sroa.023.0.copyload, %i.ah
  %i.aj = fadd <2 x float> %.sroa.025.0.copyload.pre, %i.ai ; 2 uses
  %i.ak = fsub <2 x float> %i.aj, %.sroa.020.0.copyload.pre
  %i.al = fmul <2 x float> %i.s, %i.ak
  %i.am = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.al) ; 2 uses
  %i.an = fcmp olt float %i.am, 0.000000e+00
  %i.ao = fcmp olt float %sqrt.i, %i.am
  %or.cond = or i1 %i.an, %i.ao
  br i1 %or.cond, label %b2GetLengthAndNormalize.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fcmp ogt float %i.x, 0.000000e+00
  %i.aq = extractelement <2 x float> %i.s, i64 1
  %i.ar = fneg float %i.aq
  %.sroa.01.0.vec.insert.i91 = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.as = shufflevector <2 x float> %.sroa.01.0.vec.insert.i91, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %.sroa.013.0 = select i1 %i.ap, <2 x float> %i.as, <2 x float> %.sroa.01.4.vec.insert.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ab, ptr %i.at, align 4, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.aj, ptr %i.au, align 4
  store <2 x float> %.sroa.013.0, ptr %0, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.av, align 4, !tbaa !34
  br label %b2GetLengthAndNormalize.exit.thread

b2GetLengthAndNormalize.exit.thread:              ; preds = %.thread, %bb.e, %bb.d, %bb.f, %bb.g, %b2GetLengthAndNormalize.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2RayCastPolygon(ptr dead_on_unwind noalias writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b2ShapeCastPairInput, align 4 ; 9 uses
  %4 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load float, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.sroa.033.0.copyload = load <2 x float>, ptr %1, align 4 ; 2 uses
  %i.d = load <2 x float>, ptr %2, align 4        ; 3 uses
  %i.e = fsub <2 x float> %i.d, %.sroa.033.0.copyload
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.030.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17   ; 2 uses
  %.not100 = icmp sgt i32 %i.j, 0
  br i1 %.not100, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !97

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.054103 = phi i32 [ -1, %.lr.ph ], [ %.155, %bb.c ] ; 3 uses
  %.056102 = phi float [ %i.h, %.lr.ph ], [ %.157, %bb.c ] ; 4 uses
  %.059101 = phi float [ 0.000000e+00, %.lr.ph ], [ %.160, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.m = load <2 x float>, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %foldExtExtBinop115.a = fsub <2 x float> %i.m, %.sroa.033.0.copyload
  %foldExtExtBinop117 = fsub <2 x float> %foldExtExtBinop115.a, %i.e ; 2 uses
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 3 uses
  %foldExtExtBinop119 = fmul <2 x float> %i.o, %foldExtExtBinop117
  %foldExtExtBinop121 = fmul <2 x float> %i.o, %foldExtExtBinop117
  %shift = shufflevector <2 x float> %foldExtExtBinop121, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop123 = fadd <2 x float> %foldExtExtBinop119, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop123, i64 0 ; 5 uses
  %i.q = fmul <2 x float> %.sroa.030.0.copyload, %i.o
  %i.r = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.q) ; 7 uses
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = fcmp olt float %i.p, 0.000000e+00
  br i1 %i.t, label %.thread95, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = fcmp olt float %i.r, 0.000000e+00
  %i.v = fmul float %.059101, %i.r
  %i.w = fcmp olt float %i.p, %i.v
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = fdiv float %i.p, %i.r
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = fcmp ogt float %i.r, 0.000000e+00
  %i.aa = fmul float %.056102, %i.r
  %i.ab = fcmp olt float %i.p, %i.aa
  %or.cond68 = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond68, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = fdiv float %i.p, %i.r
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.i, %bb.g
  %.160 = phi float [ %.059101, %bb.e ], [ %i.x, %bb.g ], [ %.059101, %bb.i ], [ %.059101, %bb.h ] ; 4 uses
  %.157 = phi float [ %.056102, %bb.e ], [ %.056102, %bb.g ], [ %i.ac, %bb.i ], [ %.056102, %bb.h ] ; 2 uses
  %.155 = phi i32 [ %.054103, %bb.e ], [ %i.y, %bb.g ], [ %.054103, %bb.i ], [ %.054103, %bb.h ] ; 3 uses
  %i.ad = fcmp uge float %.157, %.160
  br i1 %i.ad, label %bb.c, label %.thread95

._crit_edge:                                      ; preds = %bb.c
  %i.ae = icmp sgt i32 %.155, -1
  br i1 %i.ae, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.160, ptr %i.af, align 4, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = zext nneg i32 %.155 to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 4
  store i64 %i.aj, ptr %0, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = insertelement <2 x float> poison, float %.160, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %.sroa.030.0.copyload, %i.am
  %i.ao = fadd <2 x float> %i.d, %i.an
  store <2 x float> %i.ao, ptr %i.ak, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ap, align 4, !tbaa !34
  br label %.thread95

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.d, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ar, align 4, !tbaa !34
  br label %.thread95

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.at = load i32, ptr %i.as, align 4, !tbaa !17
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef nonnull %1, i32 noundef %i.at, float noundef %i.b) #17
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef %2, i32 noundef 1, float noundef 0.000000e+00) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.au, ptr noundef nonnull align 4 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !29
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load i64, ptr %i.ax, align 4
  store i64 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 168
  store float %i.ba, ptr %i.bb, align 4, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i8 0, ptr %i.bc, align 4, !tbaa !40
  call void @b2ShapeCast(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.thread95

.thread95:                                        ; preds = %bb.e, %bb.j, %._crit_edge.thread, %bb.k, %bb.l
  ret void
}

declare void @b2ShapeCast(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b2ShapeCastCircle(ptr dead_on_unwind noalias writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %3 = alloca %struct.b2ShapeCastPairInput, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !24
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef %1, i32 noundef 1, float noundef %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.c, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !29
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = load i64, ptr %i.f, align 4
  store i64 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load float, ptr %i.h, align 4, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 168
  store float %i.i, ptr %i.j, align 4, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.l = load i8, ptr %i.k, align 4, !tbaa !43, !range !44, !noundef !45
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i8 %i.l, ptr %i.m, align 4, !tbaa !40
  call void @b2ShapeCast(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2ShapeCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %3 = alloca %struct.b2ShapeCastPairInput, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !26
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef %1, i32 noundef 2, float noundef %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.c, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !29
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = load i64, ptr %i.f, align 4
  store i64 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load float, ptr %i.h, align 4, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 168
  store float %i.i, ptr %i.j, align 4, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.l = load i8, ptr %i.k, align 4, !tbaa !43, !range !44, !noundef !45
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i8 %i.l, ptr %i.m, align 4, !tbaa !40
  call void @b2ShapeCast(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2ShapeCastSegment(ptr dead_on_unwind noalias writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %3 = alloca %struct.b2ShapeCastPairInput, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef %1, i32 noundef 2, float noundef 0.000000e+00) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.a, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.e = load i64, ptr %i.d, align 4
  store i64 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load float, ptr %i.f, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 168
  store float %i.g, ptr %i.h, align 4, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.j = load i8, ptr %i.i, align 4, !tbaa !43, !range !44, !noundef !45
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i8 %i.j, ptr %i.k, align 4, !tbaa !40
  call void @b2ShapeCast(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2ShapeCastPolygon(ptr dead_on_unwind noalias writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %3 = alloca %struct.b2ShapeCastPairInput, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load float, ptr %i.c, align 4, !tbaa !19
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef %1, i32 noundef %i.b, float noundef %i.d) #17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72
end_hunk_0
