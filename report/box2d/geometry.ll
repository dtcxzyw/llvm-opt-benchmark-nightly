Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/geometry?download=true
inline.NumInlined: 139
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2IsValidRay:bb.a
  %i.d = load <2 x float>, ptr %i.c, align 4
  %i.e = tail call zeroext i1 @b2IsValidVec2(<2 x float> %i.d) #19
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = tail call zeroext i1 @b2IsValidFloat(float noundef %i.g) #19
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load float, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %i.j = fcmp ult float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call float @b2GetLengthUnitsPerMeter() #19
  %i.l = fmul float %i.k, 1.000000e+05
  %i.m = fcmp olt float %i.i, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.m, %bb.e ]
  ret i1 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @b2IsValidVec2(<2 x float>) local_unnamed_addr #2

declare zeroext i1 @b2IsValidFloat(float noundef) local_unnamed_addr #2

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @b2MakePolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 5 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !alias.scope !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.e, align 4, !tbaa !19, !alias.scope !58
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01>, ptr %0, align 4, !tbaa !20, !alias.scope !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>, ptr %i.f, align 4, !tbaa !20, !alias.scope !58
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !58
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !21, !alias.scope !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 4, !tbaa !20, !alias.scope !58
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %0, i8 0, i64 136, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.b, ptr %i.i, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %2, ptr %i.j, align 4, !tbaa !21
  %i.k = zext nneg i32 %i.b to i64                ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %1, i64 %i.l, i1 false), !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = zext nneg i32 %i.b to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %b2Normalize.exit
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.o = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load <2 x float>, ptr %.phi.trans.insert.i, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.p = phi <2 x float> [ %.pre.i, %.lr.ph.i ], [ %i.r, %bb.c ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ]
  %.sroa.022.053.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.ad, %bb.c ]
  %.052.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ae, %bb.c ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 2 uses
  %i.s = fsub <2 x float> %i.p, %.sroa.013.0.copyload.i ; 2 uses
  %i.t = fsub <2 x float> %i.r, %.sroa.013.0.copyload.i ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.v = fmul <2 x float> %i.s, %i.u              ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = fmul float %i.w, 5.000000e-01            ; 2 uses
  %i.y = fmul float %i.x, f0x3EAAAAAB
  %i.z = fadd <2 x float> %i.s, %i.t
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = fadd <2 x float> %.sroa.022.053.i, %i.ac ; 2 uses
  %i.ae = fadd float %.052.i, %i.x                ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b2ComputePolygonCentroid.exit, label %bb.c, !llvm.loop !0

b2ComputePolygonCentroid.exit:                    ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = fdiv float 1.000000e+00, %i.ae
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ai, %i.ad
  %i.ak = fadd <2 x float> %.sroa.013.0.copyload.i, %i.aj
  store <2 x float> %i.ak, ptr %i.af, align 4, !tbaa !20
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph, %b2Normalize.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %b2Normalize.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.n
  %i.am = select i1 %i.al, i64 %indvars.iv.next, i64 0
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ap = load <2 x float>, ptr %i.an, align 4
  %i.aq = load <2 x float>, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.as = fsub <2 x float> %i.ap, %i.aq           ; 4 uses
  %i.at = fmul <2 x float> %i.as, %i.as
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at) ; 2 uses
  %i.av = fcmp ogt float %i.au, f0x057A0000
  br i1 %i.av, label %bb.e, label %b2Normalize.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = extractelement <2 x float> %i.as, i64 0
  %i.ax = fneg float %i.aw
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.au)
  %i.ay = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.az = extractelement <2 x float> %i.as, i64 1
  %i.ba = fmul float %i.az, %i.ay
  %.sroa.012.0.vec.insert.i = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bb = fmul float %i.ay, %i.ax
  %.sroa.012.4.vec.insert.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i, float %i.bb, i64 1
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.d, %bb.e
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i, %bb.e ], [ zeroinitializer, %bb.d ]
  store <2 x float> %.sroa.012.0.i, ptr %i.ar, align 4, !tbaa !20
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %.lr.ph.i, label %bb.d, !llvm.loop !57

bb.f:                                             ; preds = %b2ComputePolygonCentroid.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeSquare(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !alias.scope !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19, !alias.scope !61
  %i.c = fneg float %1                            ; 4 uses
  store float %i.c, ptr %0, align 4, !tbaa !20, !alias.scope !61
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %.sroa.214.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %1, ptr %i.d, align 4, !tbaa !20, !alias.scope !61
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.c, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.e, align 4, !tbaa !20, !alias.scope !61
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %1, ptr %.sroa.210.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.f, align 4, !tbaa !20, !alias.scope !61
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %1, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !21, !alias.scope !61
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 4, !tbaa !20, !alias.scope !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @b2MakeOffsetPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Polygon) align 4 captures(none) initializes((8, 144)) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17, !noalias !68 ; 5 uses
  %i.c = icmp slt i32 %i.b, 3
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  br i1 %i.c, label %bb.b, label %.new

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !alias.scope !69
  store i32 4, ptr %4, align 4, !tbaa !19, !alias.scope !69
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01>, ptr %0, align 4, !tbaa !20, !alias.scope !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>, ptr %i.e, align 4, !tbaa !20, !alias.scope !69
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !20, !alias.scope !69
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i.i.i, align 4, !tbaa !20, !alias.scope !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !21, !alias.scope !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.g, align 4, !tbaa !20, !alias.scope !69
  br label %b2MakeOffsetRoundedPolygon.exit

.new:                                             ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %5, i8 0, i64 128, i1 false), !alias.scope !68
  store i32 %i.b, ptr %4, align 4, !tbaa !19, !alias.scope !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !21, !alias.scope !68
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %i.i = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.c

.lr.ph.i.unr-lcssa:                               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.unr-lcssa
  %lcmp.mod13 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.m = load <2 x float>, ptr %i.l, align 4, !noalias !68 ; 2 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %3, %i.n                ; 2 uses
  %i.p = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = fmul <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = fsub <2 x float> %i.o, %i.r
  %i.t = fadd <2 x float> %i.o, %i.r
  %i.u = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 3>
  %i.v = fadd <2 x float> %2, %i.u
  store <2 x float> %i.v, ptr %i.k, align 4, !tbaa !20, !alias.scope !68
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.epil.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.z = load <2 x float>, ptr %i.y, align 4, !noalias !68 ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %3, %i.aa              ; 2 uses
  %i.ac = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x float> %i.i, %i.ac            ; 2 uses
  %i.ae = fsub <2 x float> %i.ab, %i.ad
  %i.af = fadd <2 x float> %i.ab, %i.ad
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ah = fadd <2 x float> %2, %i.ag
  store <2 x float> %i.ah, ptr %i.x, align 4, !tbaa !20, !alias.scope !68
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !noalias !68 ; 2 uses
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %3, %i.al              ; 2 uses
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fmul <2 x float> %i.j, %i.an            ; 2 uses
  %i.ap = fsub <2 x float> %i.am, %i.ao
  %i.aq = fadd <2 x float> %i.am, %i.ao
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 0, i32 3>
  %i.as = fadd <2 x float> %2, %i.ar
  store <2 x float> %i.as, ptr %i.ai, align 4, !tbaa !20, !alias.scope !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %bb.c, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %b2Normalize.exit.i
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %0, align 4, !tbaa !20, !alias.scope !68 ; 3 uses
  %i.at = add nsw i32 %i.b, -1
  %wide.trip.count.i.i = zext nneg i32 %i.at to i64
  %.pre.i.i = load <2 x float>, ptr %5, align 4, !alias.scope !68
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.au = phi <2 x float> [ %.pre.i.i, %.lr.ph.i.i ], [ %i.aw, %bb.d ]
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ]
  %.sroa.022.053.i.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i.i ], [ %i.bi, %bb.d ]
  %.052.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.bj, %bb.d ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.i
  %i.aw = load <2 x float>, ptr %i.av, align 4, !alias.scope !68 ; 2 uses
  %i.ax = fsub <2 x float> %i.au, %.sroa.013.0.copyload.i.i ; 2 uses
  %i.ay = fsub <2 x float> %i.aw, %.sroa.013.0.copyload.i.i ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fmul <2 x float> %i.ax, %i.az           ; 2 uses
  %shift = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ba, %shift
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bc = fmul float %i.bb, 5.000000e-01          ; 2 uses
  %i.bd = fmul float %i.bc, f0x3EAAAAAB
  %i.be = fadd <2 x float> %i.ax, %i.ay
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.be, %i.bg
  %i.bi = fadd <2 x float> %.sroa.022.053.i.i, %i.bh ; 2 uses
  %i.bj = fadd float %.052.i.i, %i.bc             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %b2ComputePolygonCentroid.exit.i, label %bb.d, !llvm.loop !0

b2ComputePolygonCentroid.exit.i:                  ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = fdiv float 1.000000e+00, %i.bj
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bi
  %i.bp = fadd <2 x float> %.sroa.013.0.copyload.i.i, %i.bo
  store <2 x float> %i.bp, ptr %i.bk, align 4, !tbaa !20, !alias.scope !68
  br label %b2MakeOffsetRoundedPolygon.exit

bb.e:                                             ; preds = %b2Normalize.exit.i, %.lr.ph.i
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next38.i, %b2Normalize.exit.i ] ; 3 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 4 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next38.i, %wide.trip.count.i
  %i.br = select i1 %i.bq, i64 %indvars.iv.next38.i, i64 0
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv37.i
  %i.bu = load <2 x float>, ptr %i.bs, align 4, !alias.scope !68
  %i.bv = load <2 x float>, ptr %i.bt, align 4, !alias.scope !68
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv37.i
  %i.bx = fsub <2 x float> %i.bu, %i.bv           ; 4 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx
  %i.bz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by) ; 2 uses
  %i.ca = fcmp ogt float %i.bz, f0x057A0000
  br i1 %i.ca, label %bb.f, label %b2Normalize.exit.i

bb.f:                                             ; preds = %bb.e
  %i.cb = extractelement <2 x float> %i.bx, i64 0
  %i.cc = fneg float %i.cb
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.bz)
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ce = extractelement <2 x float> %i.bx, i64 1
  %i.cf = fmul float %i.ce, %i.cd
  %.sroa.012.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cg = fmul float %i.cd, %i.cc
  %.sroa.012.4.vec.insert.i.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i.i, float %i.cg, i64 1
  br label %b2Normalize.exit.i

b2Normalize.exit.i:                               ; preds = %bb.f, %bb.e
  %.sroa.012.0.i.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i.i, %bb.f ], [ zeroinitializer, %bb.e ]
  store <2 x float> %.sroa.012.0.i.i, ptr %i.bw, align 4, !tbaa !20, !alias.scope !68
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i
  br i1 %exitcond41.not.i, label %.lr.ph.i.i, label %bb.e, !llvm.loop !2

b2MakeOffsetRoundedPolygon.exit:                  ; preds = %bb.b, %b2ComputePolygonCentroid.exit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @b2MakeOffsetRoundedPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Polygon) align 4 captures(none) initializes((8, 144)) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  br i1 %i.c, label %bb.b, label %.new

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !alias.scope !74
  store i32 4, ptr %5, align 4, !tbaa !19, !alias.scope !74
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01>, ptr %0, align 4, !tbaa !20, !alias.scope !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>, ptr %i.e, align 4, !tbaa !20, !alias.scope !74
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !74
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !21, !alias.scope !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.g, align 4, !tbaa !20, !alias.scope !74
  br label %bb.g

.new:                                             ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %6, i8 0, i64 128, i1 false)
  store i32 %i.b, ptr %5, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %4, ptr %i.h, align 4, !tbaa !21
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.i = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.c

.lr.ph.unr-lcssa:                                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.unr-lcssa
  %lcmp.mod49 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 2 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %3, %i.n                ; 2 uses
  %i.p = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = fmul <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = fsub <2 x float> %i.o, %i.r
  %i.t = fadd <2 x float> %i.o, %i.r
  %i.u = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 3>
  %i.v = fadd <2 x float> %2, %i.u
  store <2 x float> %i.v, ptr %i.k, align 4, !tbaa !20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.unr-lcssa, %.epil.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = zext nneg i32 %i.b to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %3, %i.ab              ; 2 uses
  %i.ad = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ae = fmul <2 x float> %i.i, %i.ad            ; 2 uses
  %i.af = fsub <2 x float> %i.ac, %i.ae
  %i.ag = fadd <2 x float> %i.ac, %i.ae
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.ai = fadd <2 x float> %2, %i.ah
  store <2 x float> %i.ai, ptr %i.y, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.al = load <2 x float>, ptr %i.ak, align 4    ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %3, %i.am              ; 2 uses
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fmul <2 x float> %i.j, %i.ao            ; 2 uses
  %i.aq = fsub <2 x float> %i.an, %i.ap
  %i.ar = fadd <2 x float> %i.an, %i.ap
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = fadd <2 x float> %2, %i.as
  store <2 x float> %i.at, ptr %i.aj, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.unr-lcssa, label %bb.c, !llvm.loop !1

.lr.ph.i:                                         ; preds = %b2Normalize.exit
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.au = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext nneg i32 %i.au to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load <2 x float>, ptr %.phi.trans.insert.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.av = phi <2 x float> [ %.pre.i, %.lr.ph.i ], [ %i.ax, %bb.d ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ]
  %.sroa.022.053.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bj, %bb.d ]
  %.052.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bk, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.ax = load <2 x float>, ptr %i.aw, align 4    ; 2 uses
  %i.ay = fsub <2 x float> %i.av, %.sroa.013.0.copyload.i ; 2 uses
  %i.az = fsub <2 x float> %i.ax, %.sroa.013.0.copyload.i ; 2 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = fmul <2 x float> %i.ay, %i.ba           ; 2 uses
  %shift = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bb, %shift
  %i.bc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bd = fmul float %i.bc, 5.000000e-01          ; 2 uses
  %i.be = fmul float %i.bd, f0x3EAAAAAB
  %i.bf = fadd <2 x float> %i.ay, %i.az
  %i.bg = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bf, %i.bh
  %i.bj = fadd <2 x float> %.sroa.022.053.i, %i.bi ; 2 uses
  %i.bk = fadd float %.052.i, %i.bd               ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b2ComputePolygonCentroid.exit, label %bb.d, !llvm.loop !0

b2ComputePolygonCentroid.exit:                    ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = fdiv float 1.000000e+00, %i.bk
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bj
  %i.bq = fadd <2 x float> %.sroa.013.0.copyload.i, %i.bp
  store <2 x float> %i.bq, ptr %i.bl, align 4, !tbaa !20
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %b2Normalize.exit
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %b2Normalize.exit ] ; 3 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 4 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next38, %i.x
  %i.bs = select i1 %i.br, i64 %indvars.iv.next38, i64 0
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv37
  %i.bv = load <2 x float>, ptr %i.bt, align 4
  %i.bw = load <2 x float>, ptr %i.bu, align 4
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv37
  %i.by = fsub <2 x float> %i.bv, %i.bw           ; 4 uses
  %i.bz = fmul <2 x float> %i.by, %i.by
  %i.ca = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bz) ; 2 uses
  %i.cb = fcmp ogt float %i.ca, f0x057A0000
  br i1 %i.cb, label %bb.f, label %b2Normalize.exit

bb.f:                                             ; preds = %bb.e
  %i.cc = extractelement <2 x float> %i.by, i64 0
  %i.cd = fneg float %i.cc
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ca)
  %i.ce = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.cf = extractelement <2 x float> %i.by, i64 1
  %i.cg = fmul float %i.cf, %i.ce
  %.sroa.012.0.vec.insert.i = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ch = fmul float %i.ce, %i.cd
  %.sroa.012.4.vec.insert.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i, float %i.ch, i64 1
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.e, %bb.f
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i, %bb.f ], [ zeroinitializer, %bb.e ]
  store <2 x float> %.sroa.012.0.i, ptr %i.bx, align 4, !tbaa !20
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
end_hunk_0
