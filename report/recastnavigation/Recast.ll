Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Recast?download=true
inline.NumInlined: 69
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12rcContourSetD2Ev:bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147
  tail call void @_Z6rcFreePv(ptr noundef %i.k) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !143
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nounwind uwtable
define noundef ptr @_Z15rcAllocPolyMeshv() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 96, i32 noundef 0) #18 ; 2 uses
  tail call void @_ZN10rcPolyMeshC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #18
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @_Z14rcFreePolyMeshP10rcPolyMesh(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_18rcDeleteI10rcPolyMeshEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10rcPolyMeshD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #18
  tail call void @_Z6rcFreePv(ptr noundef nonnull %0) #18
  br label %_ZN12_GLOBAL__N_18rcDeleteI10rcPolyMeshEEvPT_.exit

_ZN12_GLOBAL__N_18rcDeleteI10rcPolyMeshEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN10rcPolyMeshC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN10rcPolyMeshD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !149
  tail call void @_Z6rcFreePv(ptr noundef %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150
  tail call void @_Z6rcFreePv(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  tail call void @_Z6rcFreePv(ptr noundef %i.e) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  tail call void @_Z6rcFreePv(ptr noundef %i.g) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  tail call void @_Z6rcFreePv(ptr noundef %i.i) #18
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @_Z21rcAllocPolyMeshDetailv() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 40, i32 noundef 0) #18 ; 2 uses
  tail call void @_ZN16rcPolyMeshDetailC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.a) #18
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @_Z20rcFreePolyMeshDetailP16rcPolyMeshDetail(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !156
  tail call void @_Z6rcFreePv(ptr noundef %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  tail call void @_Z6rcFreePv(ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158
  tail call void @_Z6rcFreePv(ptr noundef %i.f) #18
  tail call void @_Z6rcFreePv(ptr noundef nonnull %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN16rcPolyMeshDetailC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z12rcCalcBoundsPKfiPfS1_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 12)) %2, ptr nofree noundef captures(none) initializes((0, 12)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !126
  store float %i.a, ptr %2, align 4, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store float %i.c, ptr %i.d, align 4, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float %i.f, ptr %i.g, align 4, !tbaa !126
  %i.h = load float, ptr %0, align 4, !tbaa !126
  store float %i.h, ptr %3, align 4, !tbaa !126
  %i.i = load float, ptr %i.b, align 4, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !126
  %i.k = load float, ptr %i.e, align 4, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store float %i.k, ptr %i.l, align 4, !tbaa !126
  %i.m = icmp sgt i32 %1, 1
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.o = load float, ptr %2, align 4, !tbaa !126  ; 2 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !126 ; 2 uses
  %i.q = fcmp olt float %i.o, %i.p
  %i.r = select i1 %i.q, float %i.o, float %i.p
  store float %i.r, ptr %2, align 4, !tbaa !126
  %i.s = load float, ptr %i.d, align 4, !tbaa !126 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !126 ; 2 uses
  %i.v = fcmp olt float %i.s, %i.u
  %i.w = select i1 %i.v, float %i.s, float %i.u
  store float %i.w, ptr %i.d, align 4, !tbaa !126
  %i.x = load float, ptr %i.g, align 4, !tbaa !126 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !126 ; 2 uses
  %i.aa = fcmp olt float %i.x, %i.z
  %i.ab = select i1 %i.aa, float %i.x, float %i.z
  store float %i.ab, ptr %i.g, align 4, !tbaa !126
  %i.ac = load float, ptr %3, align 4, !tbaa !126 ; 2 uses
  %i.ad = load float, ptr %i.n, align 4, !tbaa !126 ; 2 uses
  %i.ae = fcmp ogt float %i.ac, %i.ad
  %i.af = select i1 %i.ae, float %i.ac, float %i.ad
  store float %i.af, ptr %3, align 4, !tbaa !126
  %i.ag = load float, ptr %i.j, align 4, !tbaa !126 ; 2 uses
  %i.ah = load float, ptr %i.t, align 4, !tbaa !126 ; 2 uses
  %i.ai = fcmp ogt float %i.ag, %i.ah
  %i.aj = select i1 %i.ai, float %i.ag, float %i.ah
  store float %i.aj, ptr %i.j, align 4, !tbaa !126
  %i.ak = load float, ptr %i.l, align 4, !tbaa !126 ; 2 uses
  %i.al = load float, ptr %i.y, align 4, !tbaa !126 ; 2 uses
  %i.am = fcmp ogt float %i.ak, %i.al
  %i.an = select i1 %i.am, float %i.ak, float %i.al
  store float %i.an, ptr %i.l, align 4, !tbaa !126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z14rcCalcGridSizePKfS0_fPiS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #11 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !126
  %i.b = load float, ptr %0, align 4, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !126
  %i.g = insertelement <2 x float> poison, float %i.a, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.d, i64 1
  %i.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.f, i64 1
  %i.k = fsub <2 x float> %i.h, %i.j
  %i.l = insertelement <2 x float> poison, float %2, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.k, %i.m
  %i.o = fadd <2 x float> %i.n, splat (float 5.000000e-01)
  %i.p = fptosi <2 x float> %i.o to <2 x i32>     ; 2 uses
  %i.q = extractelement <2 x i32> %i.p, i64 0
  store i32 %i.q, ptr %3, align 4, !tbaa !127
  %i.r = extractelement <2 x i32> %i.p, i64 1
  store i32 %i.r, ptr %4, align 4, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z19rcCreateHeightfieldP9rcContextR13rcHeightfieldiiPKfS4_ff(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 48)) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, float noundef %6, float noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = zext i32 %2 to i64
  %9 = zext i32 %3 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or disjoint i64 %10, %8
  store i64 %11, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %4, align 4, !tbaa !126
  store float %i.b, ptr %i.a, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.d, ptr %i.e, align 4, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.g, ptr %i.h, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load float, ptr %5, align 4, !tbaa !126
  store float %i.j, ptr %i.i, align 4, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.l, ptr %i.m, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !126
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.o, ptr %i.p, align 4, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %6, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %7, ptr %i.r, align 4, !tbaa !128
  %i.s = sext i32 %2 to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = sext i32 %3 to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.v, i32 noundef 0) #18 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.w, ptr %i.x, align 8, !tbaa !111
  %.not = icmp ne ptr %i.w, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %1, align 8, !tbaa !129
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = load i32, ptr %12, align 4, !tbaa !130
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %i.aa, %i.ac
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.ad, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

declare noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @_Z23rcMarkWalkableTrianglesP9rcContextfPKfiPKiiPh(ptr nofree noundef readnone captures(none) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #12 {
bb.a:
  %i.a = fdiv float %1, 1.800000e+02
  %i.b = fmul float %i.a, f0x40490FDB
  %i.c = tail call float @cosf(float noundef %i.b) #18
  %i.d = icmp sgt i32 %5, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !127
  %i.g = mul nsw i32 %i.f, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !127
  %i.l = mul nsw i32 %i.k, 3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !127
  %i.q = mul nsw i32 %i.p, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load <2 x float>, ptr %i.n, align 4, !tbaa !126
  %i.x = load <2 x float>, ptr %i.i, align 4, !tbaa !126 ; 2 uses
  %i.y = load <2 x float>, ptr %i.t, align 4, !tbaa !126
  %i.z = load <2 x float>, ptr %i.u, align 4, !tbaa !126 ; 2 uses
  %i.aa = fsub <2 x float> %i.w, %i.x             ; 2 uses
  %i.ab = fsub <2 x float> %i.y, %i.z             ; 2 uses
  %i.ac = load <2 x float>, ptr %i.s, align 4, !tbaa !126
  %i.ad = load <2 x float>, ptr %i.v, align 4, !tbaa !126
  %i.ae = fsub <2 x float> %i.ac, %i.x            ; 2 uses
  %i.af = fsub <2 x float> %i.ad, %i.z            ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1
  %i.ah = fneg float %i.ag
  %i.ai = extractelement <2 x float> %i.aa, i64 0
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = extractelement <2 x float> %i.ab, i64 1
  %i.al = extractelement <2 x float> %i.ae, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.aj) ; 3 uses
  %i.an = fneg <2 x float> %i.ae
  %i.ao = fmul <2 x float> %i.ab, %i.an
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.af, <2 x float> %i.ao) ; 2 uses
  %i.aq = fmul float %i.am, %i.am
  %i.ar = fmul <2 x float> %i.ap, %i.ap           ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = fadd float %i.as, %i.aq
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = fadd float %i.au, %i.at
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ax = fmul float %i.am, %i.aw
  %i.ay = fcmp ogt float %i.ax, %i.c
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv
  store i8 63, ptr %i.az, align 1, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @_Z26rcClearUnwalkableTrianglesP9rcContextfPKfiPKiiPh(ptr nofree noundef readnone captures(none) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #12 {
bb.a:
  %i.a = fdiv float %1, 1.800000e+02
  %i.b = fmul float %i.a, f0x40490FDB
  %i.c = tail call float @cosf(float noundef %i.b) #18
  %i.d = icmp sgt i32 %5, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !127
  %i.g = mul nsw i32 %i.f, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !127
  %i.l = mul nsw i32 %i.k, 3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !127
  %i.q = mul nsw i32 %i.p, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load <2 x float>, ptr %i.n, align 4, !tbaa !126
  %i.x = load <2 x float>, ptr %i.i, align 4, !tbaa !126 ; 2 uses
  %i.y = load <2 x float>, ptr %i.t, align 4, !tbaa !126
  %i.z = load <2 x float>, ptr %i.u, align 4, !tbaa !126 ; 2 uses
  %i.aa = fsub <2 x float> %i.w, %i.x             ; 2 uses
  %i.ab = fsub <2 x float> %i.y, %i.z             ; 2 uses
  %i.ac = load <2 x float>, ptr %i.s, align 4, !tbaa !126
  %i.ad = load <2 x float>, ptr %i.v, align 4, !tbaa !126
  %i.ae = fsub <2 x float> %i.ac, %i.x            ; 2 uses
  %i.af = fsub <2 x float> %i.ad, %i.z            ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1
  %i.ah = fneg float %i.ag
  %i.ai = extractelement <2 x float> %i.aa, i64 0
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = extractelement <2 x float> %i.ab, i64 1
  %i.al = extractelement <2 x float> %i.ae, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.aj) ; 3 uses
  %i.an = fneg <2 x float> %i.ae
  %i.ao = fmul <2 x float> %i.ab, %i.an
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.af, <2 x float> %i.ao) ; 2 uses
  %i.aq = fmul float %i.am, %i.am
  %i.ar = fmul <2 x float> %i.ap, %i.ap           ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = fadd float %i.as, %i.aq
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = fadd float %i.au, %i.at
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ax = fmul float %i.am, %i.aw
  %i.ay = fcmp ugt float %i.ax, %i.c
  br i1 %i.ay, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv
  store i8 0, ptr %i.az, align 1, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !130
  %i.d = mul nsw i32 %i.c, %i.a                   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %i.d, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph21.new

.lr.ph21.new:                                     ; preds = %.lr.ph21
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge22.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge22, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge22.loopexit.unr-lcssa, %.lr.ph21
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next.1, %._crit_edge22.loopexit.unr-lcssa ]
  %.01218.epil.init = phi i32 [ 0, %.lr.ph21 ], [ %.1.lcssa.1, %._crit_edge22.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %.014.epil = load ptr, ptr %i.i, align 8, !tbaa !131 ; 2 uses
  %.not15.epil = icmp eq ptr %.014.epil, null
  br i1 %.not15.epil, label %._crit_edge22, label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.epil.preheader, %.lr.ph.epil
  %.017.epil = phi ptr [ %.0.epil, %.lr.ph.epil ], [ %.014.epil, %.epil.preheader ] ; 2 uses
  %.116.epil = phi i32 [ %spec.select.epil, %.lr.ph.epil ], [ %.01218.epil.init, %.epil.preheader ]
  %i.j = load i32, ptr %.017.epil, align 8
  %.not13.epil = icmp ugt i32 %i.j, 67108863
  %i.k = zext i1 %.not13.epil to i32
  %spec.select.epil = add nsw i32 %.116.epil, %i.k ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.017.epil, i64 8
  %.0.epil = load ptr, ptr %i.l, align 8, !tbaa !131 ; 2 uses
  %.not.epil = icmp eq ptr %.0.epil, null
  br i1 %.not.epil, label %._crit_edge22, label %.lr.ph.epil

._crit_edge22:                                    ; preds = %._crit_edge22.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa.1, %._crit_edge22.loopexit.unr-lcssa ], [ %.01218.epil.init, %.epil.preheader ], [ %spec.select.epil, %.lr.ph.epil ]
  ret i32 %.012.lcssa

bb.b:                                             ; preds = %._crit_edge.1, %.lr.ph21.new
  %indvars.iv = phi i64 [ 0, %.lr.ph21.new ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 3 uses
  %.01218 = phi i32 [ 0, %.lr.ph21.new ], [ %.1.lcssa.1, %._crit_edge.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph21.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %.014 = load ptr, ptr %i.m, align 8, !tbaa !131 ; 2 uses
  %.not15 = icmp eq ptr %.014, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.1.lcssa = phi i32 [ %.01218, %bb.b ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.014.1 = load ptr, ptr %i.o, align 8, !tbaa !131 ; 2 uses
  %.not15.1 = icmp eq ptr %.014.1, null
  br i1 %.not15.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.017.1 = phi ptr [ %.0.1, %.lr.ph.1 ], [ %.014.1, %._crit_edge ] ; 2 uses
  %.116.1 = phi i32 [ %spec.select.1, %.lr.ph.1 ], [ %.1.lcssa, %._crit_edge ]
  %i.p = load i32, ptr %.017.1, align 8
  %.not13.1 = icmp ugt i32 %i.p, 67108863
  %i.q = zext i1 %.not13.1 to i32
  %spec.select.1 = add nsw i32 %.116.1, %i.q      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.017.1, i64 8
  %.0.1 = load ptr, ptr %i.r, align 8, !tbaa !131 ; 2 uses
  %.not.1 = icmp eq ptr %.0.1, null
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %spec.select.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge22.loopexit.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.017 = phi ptr [ %.0, %.lr.ph ], [ %.014, %bb.b ] ; 2 uses
  %.116 = phi i32 [ %spec.select, %.lr.ph ], [ %.01218, %bb.b ]
  %i.s = load i32, ptr %.017, align 8
  %.not13 = icmp ugt i32 %i.s, 67108863
  %i.t = zext i1 %.not13 to i32
  %spec.select = add nsw i32 %.116, %i.t          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %.0 = load ptr, ptr %i.u, align 8, !tbaa !131   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z25rcBuildCompactHeightfieldP9rcContextiiRK13rcHeightfieldR20rcCompactHeightfield(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !162, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3) #18, !call_target !70, !inline_history !160
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %3, align 8, !tbaa !129    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !130  ; 6 uses
  %i.j = mul nsw i32 %i.i, %i.g                   ; 6 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %i.k, label %.lr.ph21.i, label %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit

.lr.ph21.i:                                       ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !111  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.n = icmp eq i32 %i.j, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph21.i.new

.lr.ph21.i.new:                                   ; preds = %.lr.ph21.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.1, %.lr.ph21.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph21.i.new ], [ %indvars.iv.next.i.1, %._crit_edge.i.1 ] ; 3 uses
  %.01218.i = phi i32 [ 0, %.lr.ph21.i.new ], [ %.1.lcssa.i.1, %._crit_edge.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph21.i.new ], [ %niter.next.1, %._crit_edge.i.1 ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %.014.i = load ptr, ptr %i.o, align 8, !tbaa !131 ; 2 uses
  %.not15.i = icmp eq ptr %.014.i, null
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.1.lcssa.i = phi i32 [ %.01218.i, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.014.i.1 = load ptr, ptr %i.q, align 8, !tbaa !131 ; 2 uses
  %.not15.i.1 = icmp eq ptr %.014.i.1, null
  br i1 %.not15.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %.lr.ph.i.1
  %.017.i.1 = phi ptr [ %.0.i.1, %.lr.ph.i.1 ], [ %.014.i.1, %._crit_edge.i ] ; 2 uses
  %.116.i.1 = phi i32 [ %spec.select.i.1, %.lr.ph.i.1 ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.r = load i32, ptr %.017.i.1, align 8
  %.not13.i.1 = icmp ugt i32 %i.r, 67108863
  %i.s = zext i1 %.not13.i.1 to i32
  %spec.select.i.1 = add nsw i32 %.116.i.1, %i.s  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.017.i.1, i64 8
  %.0.i.1 = load ptr, ptr %i.t, align 8, !tbaa !131 ; 2 uses
  %.not.i.1 = icmp eq ptr %.0.i.1, null
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %.1.lcssa.i.1 = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %spec.select.i.1, %.lr.ph.i.1 ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit.loopexit.unr-lcssa, label %bb.c

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.017.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.014.i, %bb.c ] ; 2 uses
  %.116.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.01218.i, %bb.c ]
  %i.u = load i32, ptr %.017.i, align 8
  %.not13.i = icmp ugt i32 %i.u, 67108863
  %i.v = zext i1 %.not13.i to i32
  %spec.select.i = add nsw i32 %.116.i, %i.v      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %.0.i = load ptr, ptr %i.w, align 8, !tbaa !131 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit.loopexit.unr-lcssa, %.lr.ph21.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph21.i ], [ %indvars.iv.next.i.1, %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit.loopexit.unr-lcssa ]
  %.01218.i.epil.init = phi i32 [ 0, %.lr.ph21.i ], [ %.1.lcssa.i.1, %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod290 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod290)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.epil.init
  %.014.i.epil = load ptr, ptr %i.x, align 8, !tbaa !131 ; 2 uses
  %.not15.i.epil = icmp eq ptr %.014.i.epil, null
  br i1 %.not15.i.epil, label %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit, label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.epil.preheader, %.lr.ph.i.epil
  %.017.i.epil = phi ptr [ %.0.i.epil, %.lr.ph.i.epil ], [ %.014.i.epil, %.epil.preheader ] ; 2 uses
  %.116.i.epil = phi i32 [ %spec.select.i.epil, %.lr.ph.i.epil ], [ %.01218.i.epil.init, %.epil.preheader ]
  %i.y = load i32, ptr %.017.i.epil, align 8
  %.not13.i.epil = icmp ugt i32 %i.y, 67108863
  %i.z = zext i1 %.not13.i.epil to i32
  %spec.select.i.epil = add nsw i32 %.116.i.epil, %i.z ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.017.i.epil, i64 8
  %.0.i.epil = load ptr, ptr %i.aa, align 8, !tbaa !131 ; 2 uses
  %.not.i.epil = icmp eq ptr %.0.i.epil, null
  br i1 %.not.i.epil, label %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit, label %.lr.ph.i.epil

_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit: ; preds = %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.epil.preheader, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %.012.lcssa.i = phi i32 [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %.1.lcssa.i.1, %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit.loopexit.unr-lcssa ], [ %.01218.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %.lr.ph.i.epil ] ; 4 uses
  store i32 %i.g, ptr %4, align 8, !tbaa !163
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.i, ptr %i.ab, align 4, !tbaa !164
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.012.lcssa.i, ptr %i.ac, align 8, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %1, ptr %i.ad, align 4, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %2, ptr %i.ae, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 0, ptr %i.af, align 2, !tbaa !168
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !126
  store float %i.ai, ptr %i.ag, align 4, !tbaa !126
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !126
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.ak, ptr %i.al, align 8, !tbaa !126
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load float, ptr %i.am, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.an, ptr %i.ao, align 4, !tbaa !126
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !126
  store float %i.ar, ptr %i.ap, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load float, ptr %i.as, align 8, !tbaa !126 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  store float %i.at, ptr %i.au, align 4, !tbaa !126
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aw = load float, ptr %i.av, align 4, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %i.aw, ptr %i.ax, align 8, !tbaa !126
  %i.ay = sitofp i32 %1 to float
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !128
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ba, float %i.at)
  store float %i.bb, ptr %i.au, align 4, !tbaa !126
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.be = load <2 x float>, ptr %i.bc, align 8, !tbaa !126
  store <2 x float> %i.be, ptr %i.bd, align 4, !tbaa !126
  %i.bf = sext i32 %i.g to i64                    ; 2 uses
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = sext i32 %i.i to i64
  %i.bi = mul i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bi, i32 noundef 0) #18 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !118
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %i.j)
  br label %._crit_edge220.thread

bb.e:                                             ; preds = %_Z25rcGetHeightFieldSpanCountP9rcContextRK13rcHeightfield.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bj, i8 0, i64 %i.bi, i1 false)
  %i.bl = sext i32 %.012.lcssa.i to i64           ; 3 uses
  %i.bm = shl nsw i64 %i.bl, 3                    ; 2 uses
  %i.bn = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bm, i32 noundef 0) #18 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 7 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !119
  %.not179 = icmp eq ptr %i.bn, null
  br i1 %.not179, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %.012.lcssa.i)
  br label %._crit_edge220.thread

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bn, i8 0, i64 %i.bm, i1 false)
  %i.bp = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bl, i32 noundef 0) #18 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !120
  %.not180 = icmp eq ptr %i.bp, null
  br i1 %.not180, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %.012.lcssa.i)
  br label %._crit_edge220.thread

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bp, i8 0, i64 %i.bl, i1 false)
  br i1 %i.k, label %.lr.ph, label %.preheader196

.lr.ph:                                           ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.am

.preheader196:                                    ; preds = %.loopexit197, %bb.i
  %i.bs = icmp sgt i32 %i.i, 0
  %i.bt = icmp sgt i32 %i.g, 0
  %or.cond = and i1 %i.bs, %i.bt
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge220.thread

.preheader.us.preheader:                          ; preds = %.preheader196
  %i.bu = zext nneg i32 %i.g to i64               ; 2 uses
  %i.bv = zext nneg i32 %i.i to i64               ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge216.us
  %indvars.iv242 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next243, %._crit_edge216.us ] ; 4 uses
  %.0159218.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.lcssa.us, %._crit_edge216.us ]
  %i.bw = mul nuw nsw i64 %indvars.iv242, %i.bf   ; 2 uses
  %i.bx = and i64 %i.bw, 4294967295               ; 2 uses
  %i.by = add nuw nsw i64 %indvars.iv242, 1       ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, %i.bv
  %i.ca = trunc i64 %i.by to i32
  %i.cb = mul i32 %i.g, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nsw i64 %indvars.iv242, -1          ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = icmp ugt i32 %i.i, %i.ce
  %i.cg = trunc i64 %i.cd to i32
  %i.ch = mul i32 %i.g, %i.cg
  %i.ci = zext i32 %i.ch to i64
  br label %bb.j

bb.j:                                             ; preds = %.preheader.us, %._crit_edge.us
  %indvars.iv237 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next238.pre-phi, %._crit_edge.us ] ; 6 uses
  %.1213.us = phi i32 [ %.0159218.us, %.preheader.us ], [ %.2.lcssa.us, %._crit_edge.us ] ; 2 uses
  %i.cj = load ptr, ptr %i.bk, align 8, !tbaa !118
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv237
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.bx
  %i.cm = load i32, ptr %i.cl, align 4            ; 3 uses
  %i.cn = lshr i32 %i.cm, 24                      ; 2 uses
  %.not222 = icmp eq i32 %i.cn, 0
  br i1 %.not222, label %.._crit_edge.us_crit_edge, label %.lr.ph211.us.preheader

.._crit_edge.us_crit_edge:                        ; preds = %bb.j
  %.pre = add nuw nsw i64 %indvars.iv237, 1
  br label %._crit_edge.us

.lr.ph211.us.preheader:                           ; preds = %bb.j
  %i.co = and i32 %i.cm, 16777215
  %i.cp = add nuw nsw i32 %i.co, %i.cn
  %i.cq = and i32 %i.cm, 16777215
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = add nsw i64 %indvars.iv237, -1          ; 2 uses
  %i.cu = trunc nsw i64 %i.ct to i32
  %i.cv = icmp ugt i32 %i.g, %i.cu
  %i.cw = add nuw nsw i64 %indvars.iv237, 1       ; 3 uses
  %i.cx = icmp samesign ult i64 %i.cw, %i.bu
  br label %.lr.ph211.us

.lr.ph211.us:                                     ; preds = %.lr.ph211.us.preheader, %.loopexit.us.3
  %indvars.iv234 = phi i64 [ %i.cr, %.lr.ph211.us.preheader ], [ %indvars.iv.next235, %.loopexit.us.3 ] ; 2 uses
  %.2209.us = phi i32 [ %.1213.us, %.lr.ph211.us.preheader ], [ %.8.us.3, %.loopexit.us.3 ] ; 3 uses
  %i.cy = load ptr, ptr %i.bo, align 8, !tbaa !119
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv234 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 6 uses
  %i.db = load i32, ptr %i.da, align 4            ; 3 uses
  %i.dc = or i32 %i.db, 63                        ; 4 uses
  store i32 %i.dc, ptr %i.da, align 4
  br i1 %i.cv, label %bb.k, label %.loopexit.us

bb.k:                                             ; preds = %.lr.ph211.us
  %i.dd = load ptr, ptr %i.bk, align 8, !tbaa !118
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.bw
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ct
  %i.dg = load i32, ptr %i.df, align 4            ; 3 uses
  %i.dh = and i32 %i.dg, 16777215                 ; 2 uses
  %i.di = lshr i32 %i.dg, 24                      ; 2 uses
  %.not223 = icmp eq i32 %i.di, 0
  br i1 %.not223, label %.loopexit.us, label %.lr.ph206.us

bb.l:                                             ; preds = %.lr.ph206.us, %bb.p
  %indvars.iv227 = phi i64 [ %i.ir, %.lr.ph206.us ], [ %indvars.iv.next228, %bb.p ] ; 3 uses
  %.4204.us = phi i32 [ %.2209.us, %.lr.ph206.us ], [ %.6.ph.us, %bb.p ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv227 ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !170 ; 2 uses
  %i.dl = tail call noundef i16 @llvm.umax.i16(i16 %i.im, i16 %i.dk)
  %i.dm = zext i16 %i.dl to i32
  %i.dn = zext i16 %i.dk to i32                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dp, 24
  %i.dr = add nuw nsw i32 %i.dq, %i.dn
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 %i.dr)
  %i.dt = sub nsw i32 %i.ds, %i.dm
  %.not183.us = icmp slt i32 %i.dt, %1
  br i1 %.not183.us, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = sub nsw i32 %i.dn, %i.in
  %i.dv = tail call noundef i32 @llvm.abs.i32(i32 %i.du, i1 true)
  %.not184.us = icmp sgt i32 %i.dv, %2
  br i1 %.not184.us, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = trunc nuw nsw i64 %indvars.iv227 to i32
  %i.dx = sub nsw i32 %i.dw, %i.dh                ; 3 uses
  %or.cond3.us = icmp ugt i32 %i.dx, 62
  br i1 %or.cond3.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dy = tail call noundef i32 @llvm.smax.i32(i32 %.4204.us, i32 %i.dx)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %.6.ph.us = phi i32 [ %.4204.us, %bb.l ], [ %.4204.us, %bb.m ], [ %i.dy, %bb.o ] ; 2 uses
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next228, %i.is
  br i1 %i.dz, label %bb.l, label %.loopexit.us

bb.q:                                             ; preds = %bb.n
  %i.ea = and i32 %i.db, -64
  %i.eb = or disjoint i32 %i.dx, %i.ea
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.p, %bb.k, %bb.q, %.lr.ph211.us
  %i.ec = phi i32 [ %i.dc, %.lr.ph211.us ], [ %i.eb, %bb.q ], [ %i.dc, %bb.k ], [ %i.dc, %bb.p ] ; 3 uses
  %.8.us = phi i32 [ %.2209.us, %.lr.ph211.us ], [ %.4204.us, %bb.q ], [ %.2209.us, %bb.k ], [ %.6.ph.us, %bb.p ] ; 3 uses
  %i.ed = or i32 %i.ec, 4032                      ; 4 uses
  store i32 %i.ed, ptr %i.da, align 4
  br i1 %i.bz, label %bb.r, label %.loopexit.us.1

bb.r:                                             ; preds = %.loopexit.us
  %i.ee = load ptr, ptr %i.bk, align 8, !tbaa !118
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv237
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.cc
  %i.eh = load i32, ptr %i.eg, align 4            ; 3 uses
  %i.ei = and i32 %i.eh, 16777215                 ; 2 uses
  %i.ej = lshr i32 %i.eh, 24                      ; 2 uses
  %.not223.1 = icmp eq i32 %i.ej, 0
  br i1 %.not223.1, label %.loopexit.us.1, label %.lr.ph206.us.1

.lr.ph206.us.1:                                   ; preds = %bb.r
  %i.ek = add nuw nsw i32 %i.ei, %i.ej
  %i.el = load ptr, ptr %i.bo, align 8, !tbaa !119
  %i.em = load i16, ptr %i.cz, align 4, !tbaa !170 ; 2 uses
  %i.en = zext i16 %i.em to i32                   ; 2 uses
  %i.eo = lshr i32 %i.ec, 24
end_hunk_0
begin_hunk_1_@_ZN9rcContext13doResetTimersEv
define linkonce_odr void @_ZN9rcContext13doResetTimersEv(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9rcContext12doStartTimerE12rcTimerLabel(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9rcContext11doStopTimerE12rcTimerLabel(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr noundef i32 @_ZNK9rcContext20doGetAccumulatedTimeE12rcTimerLabel(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 -1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcLogCategory", file: !21, line: 30, baseType: !32, size: 32, elements: !36, identifier: "_ZTS13rcLogCategory")
!1 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !21, line: 39, baseType: !32, size: 32, elements: !103, identifier: "_ZTS12rcTimerLabel")
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !21, line: 114, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !73, vtableHolder: !2)
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"bool", !10, i64 0}
!15 = !{!"_ZTS9rcContext", !14, i64 8, !14, i64 9}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!10, !10, i64 0}
!19 = !{!"vtable pointer", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!29 = !{null, !22, !23, !26, !28}
!30 = !DISubroutineType(types: !29)
!31 = !DISubprogram(name: "doLog", linkageName: "_ZN9rcContext5doLogE13rcLogCategoryPKci", scope: !2, file: !21, line: 169, type: !30, scopeLine: 169, containingType: !2, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIEnumerator(name: "RC_LOG_PROGRESS", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "RC_LOG_WARNING", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "RC_LOG_ERROR", value: 3, isUnsigned: true)
!36 = !{!33, !34, !35}
!37 = !{!27}
!38 = !DISubroutineType(types: !37)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !38, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$rcContext", scope: !21, file: !21, baseType: !40, size: 64, flags: DIFlagArtificial)
!42 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "m_logEnabled", scope: !2, file: !21, line: 188, baseType: !42, size: 8, offset: 64, flags: DIFlagProtected)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "m_timerEnabled", scope: !2, file: !21, line: 191, baseType: !42, size: 8, offset: 72, flags: DIFlagProtected)
!45 = !{null, !22, !42}
!46 = !DISubroutineType(types: !45)
!47 = !DISubprogram(name: "rcContext", linkageName: "_ZN9rcContextC4Eb", scope: !2, file: !21, line: 119, type: !46, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!48 = !{null, !22}
!49 = !DISubroutineType(types: !48)
!50 = !DISubprogram(name: "~rcContext", linkageName: "_ZN9rcContextD4Ev", scope: !2, file: !21, line: 120, type: !49, scopeLine: 120, containingType: !2, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!51 = !DISubprogram(name: "enableLog", linkageName: "_ZN9rcContext9enableLogEb", scope: !2, file: !21, line: 124, type: !46, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!52 = !DISubprogram(name: "resetLog", linkageName: "_ZN9rcContext8resetLogEv", scope: !2, file: !21, line: 127, type: !49, scopeLine: 127, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!53 = !{null, !22, !23, !26, null}
!54 = !DISubroutineType(types: !53)
!55 = !DISubprogram(name: "log", linkageName: "_ZN9rcContext3logE13rcLogCategoryPKcz", scope: !2, file: !21, line: 139, type: !54, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!56 = !DISubprogram(name: "enableTimer", linkageName: "_ZN9rcContext11enableTimerEb", scope: !2, file: !21, line: 143, type: !46, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!57 = !DISubprogram(name: "resetTimers", linkageName: "_ZN9rcContext11resetTimersEv", scope: !2, file: !21, line: 146, type: !49, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1)
!59 = !{null, !22, !58}
!60 = !DISubroutineType(types: !59)
!61 = !DISubprogram(name: "startTimer", linkageName: "_ZN9rcContext10startTimerE12rcTimerLabel", scope: !2, file: !21, line: 150, type: !60, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubprogram(name: "stopTimer", linkageName: "_ZN9rcContext9stopTimerE12rcTimerLabel", scope: !2, file: !21, line: 154, type: !60, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!65 = !{!27, !64, !58}
!66 = !DISubroutineType(types: !65)
!67 = !DISubprogram(name: "getAccumulatedTime", linkageName: "_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel", scope: !2, file: !21, line: 159, type: !66, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!68 = !DISubprogram(name: "doResetLog", linkageName: "_ZN9rcContext10doResetLogEv", scope: !2, file: !21, line: 163, type: !49, scopeLine: 163, containingType: !2, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!69 = !DISubprogram(name: "doResetTimers", linkageName: "_ZN9rcContext13doResetTimersEv", scope: !2, file: !21, line: 172, type: !49, scopeLine: 172, containingType: !2, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!70 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !2, file: !21, line: 176, type: !60, scopeLine: 176, containingType: !2, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!71 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !2, file: !21, line: 180, type: !60, scopeLine: 180, containingType: !2, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!72 = !DISubprogram(name: "doGetAccumulatedTime", linkageName: "_ZNK9rcContext20doGetAccumulatedTimeE12rcTimerLabel", scope: !2, file: !21, line: 185, type: !66, scopeLine: 185, containingType: !2, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!73 = !{!41, !43, !44, !47, !50, !51, !52, !55, !56, !57, !61, !62, !67, !68, !31, !69, !70, !71, !72}
!74 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!78 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!79 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!80 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!81 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!82 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!83 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!84 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!85 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!86 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!87 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!88 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!89 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!90 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!91 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!92 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!93 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!94 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!95 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!96 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!97 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!98 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!99 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!100 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!101 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!102 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!103 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!104 = !{!"float", !10, i64 0}
!105 = !{!"any pointer", !10, i64 0}
!106 = !{!"any p2 pointer", !105, i64 0}
!107 = !{!"p2 _ZTS6rcSpan", !106, i64 0}
!108 = !{!"p1 _ZTS10rcSpanPool", !105, i64 0}
!109 = !{!"p1 _ZTS6rcSpan", !105, i64 0}
!110 = !{!"_ZTS13rcHeightfield", !11, i64 0, !11, i64 4, !10, i64 8, !10, i64 20, !104, i64 32, !104, i64 36, !107, i64 40, !108, i64 48, !109, i64 56}
!111 = !{!110, !107, i64 40}
!112 = !{!"short", !10, i64 0}
!113 = !{!"p1 _ZTS13rcCompactCell", !105, i64 0}
!114 = !{!"p1 _ZTS13rcCompactSpan", !105, i64 0}
!115 = !{!"p1 short", !105, i64 0}
!116 = !{!"p1 omnipotent char", !105, i64 0}
!117 = !{!"_ZTS20rcCompactHeightfield", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !112, i64 24, !112, i64 26, !10, i64 28, !10, i64 40, !104, i64 52, !104, i64 56, !113, i64 64, !114, i64 72, !115, i64 80, !116, i64 88}
!118 = !{!117, !113, i64 64}
!119 = !{!117, !114, i64 72}
!120 = !{!117, !116, i64 88}
!121 = !{!"p1 _ZTS18rcHeightfieldLayer", !105, i64 0}
!122 = !{!"_ZTS21rcHeightfieldLayerSet", !121, i64 0, !11, i64 8}
!123 = !{!122, !121, i64 0}
!124 = !{!122, !11, i64 8}
!125 = !{!"p1 int", !105, i64 0}
!126 = !{!104, !104, i64 0}
!127 = !{!11, !11, i64 0}
!128 = !{!110, !104, i64 36}
!129 = !{!110, !11, i64 0}
!130 = !{!110, !11, i64 4}
!131 = !{!109, !109, i64 0}
!132 = !{!15, !14, i64 8}
!133 = !{!110, !108, i64 48}
!134 = !{!"_ZTS10rcSpanPool", !108, i64 0, !10, i64 8}
!135 = !{!134, !108, i64 0}
!136 = !{!117, !115, i64 80}
!137 = !{!"_ZTS18rcHeightfieldLayer", !10, i64 0, !10, i64 12, !104, i64 24, !104, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !116, i64 64, !116, i64 72, !116, i64 80}
!138 = !{!137, !116, i64 64}
!139 = !{!137, !116, i64 72}
!140 = !{!137, !116, i64 80}
!141 = !{!"p1 _ZTS9rcContour", !105, i64 0}
!142 = !{!"_ZTS12rcContourSet", !141, i64 0, !11, i64 8, !10, i64 12, !10, i64 24, !104, i64 36, !104, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !104, i64 56}
!143 = !{!142, !11, i64 8}
!144 = !{!142, !141, i64 0}
!145 = !{!"_ZTS9rcContour", !125, i64 0, !11, i64 8, !125, i64 16, !11, i64 24, !112, i64 28, !10, i64 30}
!146 = !{!145, !125, i64 0}
!147 = !{!145, !125, i64 16}
!148 = !{!"_ZTS10rcPolyMesh", !115, i64 0, !115, i64 8, !115, i64 16, !115, i64 24, !116, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !10, i64 56, !10, i64 68, !104, i64 80, !104, i64 84, !11, i64 88, !104, i64 92}
!149 = !{!148, !115, i64 0}
!150 = !{!148, !115, i64 8}
!151 = !{!148, !115, i64 16}
!152 = !{!148, !115, i64 24}
!153 = !{!148, !116, i64 32}
!154 = !{!"p1 float", !105, i64 0}
!155 = !{!"_ZTS16rcPolyMeshDetail", !125, i64 0, !154, i64 8, !116, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!156 = !{!155, !125, i64 0}
!157 = !{!155, !154, i64 8}
!158 = !{!155, !116, i64 16}
!159 = !{!110, !104, i64 32}
!160 = distinct !{null, null}
!161 = distinct !{null, null}
!162 = !{!15, !14, i64 9}
!163 = !{!117, !11, i64 0}
!164 = !{!117, !11, i64 4}
!165 = !{!117, !11, i64 8}
!166 = !{!117, !11, i64 12}
!167 = !{!117, !11, i64 16}
!168 = !{!117, !112, i64 26}
!169 = !{!"_ZTS13rcCompactSpan", !112, i64 0, !112, i64 2, !11, i64 4, !11, i64 7}
!170 = !{!169, !112, i64 0}
!171 = !{!"_ZTS6rcSpan", !11, i64 0, !11, i64 1, !11, i64 3, !109, i64 8}
!172 = !{!171, !109, i64 8}
end_hunk_1
