Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@DrawPolyLines:bb.a
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.e = tail call float @cosf(float noundef %.02223) #14
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %2, float %.sroa.017.0.vec.extract)
  %i.g = tail call float @sinf(float noundef %.02223) #14
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %2, float %.sroa.017.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.f, float noundef %i.h) #14
  %i.i = fadd float %i.d, %.02223                 ; 3 uses
  %i.j = tail call float @cosf(float noundef %i.i) #14
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %2, float %.sroa.017.0.vec.extract)
  %i.l = tail call float @sinf(float noundef %i.i) #14
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %2, float %.sroa.017.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.k, float noundef %i.m) #14
  %i.n = add nuw nsw i32 %.024, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %spec.store.select
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: nounwind uwtable
define void @DrawPolyLinesEx(<2 x float> %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %.sroa.043.0.extract.trunc = trunc i32 %5 to i8
  %.sroa.2.0.extract.shift = lshr i32 %5, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %5, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %5, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 3) ; 2 uses
  %i.a = fmul float %3, f0x3C8EFA35
  %i.b = uitofp nneg i32 %spec.store.select to float
  %i.c = fdiv nnan float 3.600000e+02, %i.b
  %i.d = fmul nnan float %i.c, f0x3C8EFA35        ; 2 uses
  %i.e = fmul nnan float %i.d, f0x3C8EFA35
  %i.f = fmul nnan float %i.e, 5.000000e-01
  %i.g = tail call float @cosf(float noundef %i.f) #14
  %i.h = fneg float %4
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.g, float %2) ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 4 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 2 uses
  tail call void @rlBegin(i32 noundef 7) #14
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %.sroa.044.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 4 uses
  %.sroa.044.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 4 uses
  %foldExtExtBinop61 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.k = extractelement <2 x float> %foldExtExtBinop61, i64 0 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.059 = phi i32 [ 0, %bb.a ], [ %i.ba, %bb.c ]
  %.05758 = phi float [ %i.a, %bb.a ], [ %i.l, %bb.c ] ; 5 uses
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.043.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.l = fadd float %i.d, %.05758                 ; 5 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.n = sitofp i32 %i.m to float
  %i.o = fdiv float %.sroa.0.0.vec.extract, %i.n
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.q = sitofp i32 %i.p to float
  %i.r = fdiv float %i.j, %i.q
  tail call void @rlTexCoord2f(float noundef %i.o, float noundef %i.r) #14
  %i.s = tail call float @cosf(float noundef %.05758) #14
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %2, float %.sroa.044.0.vec.extract)
  %i.u = tail call float @sinf(float noundef %.05758) #14
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %2, float %.sroa.044.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.t, float noundef %i.v) #14
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.x = sitofp i32 %i.w to float
  %i.y = fdiv float %.sroa.0.0.vec.extract, %i.x
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fdiv float %.sroa.0.4.vec.extract, %i.aa
  tail call void @rlTexCoord2f(float noundef %i.y, float noundef %i.ab) #14
  %i.ac = tail call float @cosf(float noundef %.05758) #14
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.i, float %.sroa.044.0.vec.extract)
  %i.ae = tail call float @sinf(float noundef %.05758) #14
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.i, float %.sroa.044.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.ad, float noundef %i.af) #14
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = fdiv float %i.k, %i.ah
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fdiv float %i.j, %i.ak
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.al) #14
  %i.am = tail call float @cosf(float noundef %i.l) #14
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.i, float %.sroa.044.0.vec.extract)
  %i.ao = tail call float @sinf(float noundef %i.l) #14
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.i, float %.sroa.044.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.an, float noundef %i.ap) #14
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fdiv float %i.k, %i.ar
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.au = sitofp i32 %i.at to float
  %i.av = fdiv float %.sroa.0.4.vec.extract, %i.au
  tail call void @rlTexCoord2f(float noundef %i.as, float noundef %i.av) #14
  %i.aw = tail call float @cosf(float noundef %i.l) #14
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %2, float %.sroa.044.0.vec.extract)
  %i.ay = tail call float @sinf(float noundef %i.l) #14
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %2, float %.sroa.044.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.ax, float noundef %i.az) #14
  %i.ba = add nuw nsw i32 %.059, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %spec.store.select
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: nounwind uwtable
define void @DrawSplineLinear(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #6 {
bb.a:
  %4 = alloca [4 x %struct.Vector2], align 16     ; 5 uses
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.050 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.f = load <2 x float>, ptr %i.d, align 4
  %i.g = load <2 x float>, ptr %i.e, align 4
  %i.h = fsub <2 x float> %i.f, %i.g              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.h
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call float @sqrtf(float noundef %i.k) #14 ; 2 uses
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %i.n = fmul nnan float %i.l, 2.000000e+00
  %i.o = fdiv float %2, %i.n
  %.1 = select i1 %i.m, float %i.o, float %.050   ; 3 uses
  %i.p = fneg float %.1
  %i.q = insertelement <2 x float> poison, float %.1, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.s = fmul <2 x float> %i.h, %i.r              ; 3 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.u = load <2 x float>, ptr %i.e, align 4
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.w = fsub <4 x float> %i.v, %i.t
  %i.x = fadd <4 x float> %i.v, %i.t
  %i.y = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.y, ptr %4, align 16
  %i.z = load <2 x float>, ptr %i.d, align 4      ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 3, i32 2> ; 2 uses
  %i.ab = shufflevector <2 x float> %i.s, <2 x float> %i.z, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ac = fsub <4 x float> %i.aa, %i.ab
  %i.ad = fadd <4 x float> %i.aa, %i.ab
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ae, ptr %i.c, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 4, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineBasis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca [50 x %struct.Vector2], align 16    ; 9 uses
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %4, i8 0, i64 400, i1 false)
  %i.b = add nsw i32 %1, -3
  %i.c = fmul float %2, 5.000000e-01              ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.split137.us
  tail call void @DrawCircleSector(<2 x float> %.us-phi144, float noundef %i.c, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %.split137.us
  %indvars.iv171 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next172, %.split137.us ] ; 3 uses
  %.0122151 = phi float [ 0.000000e+00, %.lr.ph ], [ %.us-phi143, %.split137.us ]
  %.0123150 = phi float [ 0.000000e+00, %.lr.ph ], [ %.us-phi142, %.split137.us ] ; 2 uses
  %.0125149 = phi float [ 0.000000e+00, %.lr.ph ], [ %.us-phi141, %.split137.us ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv171 ; 3 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next172
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load <2 x float>, ptr %i.e, align 4      ; 4 uses
  %i.j = load <2 x float>, ptr %i.f, align 4      ; 3 uses
  %i.k = load <2 x float>, ptr %i.g, align 4      ; 4 uses
  %i.l = load <2 x float>, ptr %i.h, align 4
  %i.m = fneg <2 x float> %i.i
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> splat (float 3.000000e+00), <2 x float> %i.m)
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> splat (float -3.000000e+00), <2 x float> %i.n)
  %i.p = fadd <2 x float> %i.o, %i.l
  %i.q = fmul <2 x float> %i.j, splat (float -6.000000e+00)
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> splat (float 3.000000e+00), <2 x float> %i.q)
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> splat (float 3.000000e+00), <2 x float> %i.r)
  %i.t = fmul <2 x float> %i.k, splat (float 3.000000e+00)
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> splat (float -3.000000e+00), <2 x float> %i.t)
  %i.v = fdiv <2 x float> %i.p, splat (float 6.000000e+00) ; 3 uses
  %i.w = fdiv <2 x float> %i.s, splat (float 6.000000e+00) ; 3 uses
  %i.x = fdiv <2 x float> %i.u, splat (float 6.000000e+00) ; 3 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> splat (float 4.000000e+00), <2 x float> %i.i)
  %i.z = fadd <2 x float> %i.y, %i.k
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = fdiv <4 x float> %i.aa, splat (float 6.000000e+00) ; 5 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 5 uses
  %i.ad = icmp eq i64 %indvars.iv171, 0
  br i1 %i.ad, label %.split.peel.next, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.b
  %i.ae = fneg float %.0123150
  %i.af = fneg float %.0125149
  %i.ag = insertelement <4 x float> poison, float %.0125149, i64 0
  %i.ah = insertelement <4 x float> %i.ag, float %i.ae, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %.0122151, i64 2 ; 2 uses
  %i.aj = insertelement <4 x float> %i.ai, float %.0123150, i64 3
  %i.ak = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.af, i64 1
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.am, <4 x float> %i.ab) ; 2 uses
  store <4 x float> %i.an, ptr %4, align 16
  br label %.split.us

.split.peel.next:                                 ; preds = %bb.b
  tail call void @DrawCircleSector(<2 x float> %i.ac, float noundef %i.c, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.w)
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.x)
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.ac) ; 2 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %foldExtExtBinop = fsub <4 x float> %i.ar, %i.ab ; 3 uses
  %i.as = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop199 = fsub <4 x float> %i.ar, %i.ab ; 3 uses
  %i.at = extractelement <4 x float> %foldExtExtBinop199, i64 0 ; 2 uses
  %i.au = fmul float %i.as, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.au)
  %i.aw = tail call float @sqrtf(float noundef %i.av) #14
  %i.ax = fdiv float %i.c, %i.aw
  %i.ay = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.az = fneg <4 x float> %foldExtExtBinop199
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %foldExtExtBinop199, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.bd = fneg <4 x float> %foldExtExtBinop
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> %i.bd, <4 x i32> <i32 2, i32 2, i32 5, i32 2> ; 2 uses
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.be, <4 x float> %i.ab)
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.be, <4 x float> %i.ar)
  store <4 x float> %i.bg, ptr %i.d, align 16
  br label %bb.c

.split.us:                                        ; preds = %.split.us.preheader, %.split.us
  %indvars.iv = phi i64 [ 1, %.split.us.preheader ], [ %indvars.iv.next, %.split.us ] ; 3 uses
  %.sroa.048.1128.us = phi <2 x float> [ %i.ac, %.split.us.preheader ], [ %i.bp, %.split.us ]
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = uitofp nneg i32 %i.bh to float
  %i.bj = fdiv float %i.bi, 2.400000e+01
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.bl = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.v, <2 x float> %i.w)
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bn, <2 x float> %i.x)
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bo, <2 x float> %i.ac) ; 4 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.br = fsub <2 x float> %i.bp, %.sroa.048.1128.us ; 4 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1 ; 3 uses
  %i.bt = fmul float %i.bs, %i.bs
  %i.bu = extractelement <2 x float> %i.br, i64 0 ; 3 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bt)
  %i.bw = tail call float @sqrtf(float noundef %i.bv) #14
  %i.bx = fdiv float %i.c, %i.bw                  ; 2 uses
  %i.by = fneg <2 x float> %i.br                  ; 2 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> %i.br, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.ca = insertelement <4 x float> %i.bz, float %i.bx, i64 2 ; 2 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> %i.by, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cc, <4 x float> %i.bq)
  store <4 x float> %i.cd, ptr %i.bk, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.split137.us, label %.split.us

.split137.us:                                     ; preds = %.split.us, %bb.c
  %.us-phi141 = phi float [ %i.cq, %bb.c ], [ %i.bs, %.split.us ]
  %.us-phi142 = phi float [ %i.cs, %bb.c ], [ %i.bu, %.split.us ]
  %.us-phi143 = phi float [ %i.cv, %bb.c ], [ %i.bx, %.split.us ]
  %.us-phi144 = phi <2 x float> [ %i.cn, %bb.c ], [ %i.bp, %.split.us ]
  %i.ce = phi <4 x float> [ %i.bf, %bb.c ], [ %i.an, %.split.us ]
  store <4 x float> %i.ce, ptr %4, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 50, i32 %3)
  %exitcond174.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond174.not, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %.split.peel.next, %bb.c
  %indvars.iv166 = phi i64 [ 2, %.split.peel.next ], [ %indvars.iv.next167, %bb.c ] ; 3 uses
  %.sroa.048.1128 = phi <2 x float> [ %i.aq, %.split.peel.next ], [ %i.cn, %bb.c ]
  %i.cf = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.cg = uitofp nneg i32 %i.cf to float
  %i.ch = fdiv float %i.cg, 2.400000e+01
  %.idx183 = shl nuw nsw i64 %indvars.iv166, 4
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %.idx183
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.v, <2 x float> %i.w)
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cl, <2 x float> %i.x)
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.ac) ; 4 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cp = fsub <2 x float> %i.cn, %.sroa.048.1128 ; 4 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 1 ; 3 uses
  %i.cr = fmul float %i.cq, %i.cq
  %i.cs = extractelement <2 x float> %i.cp, i64 0 ; 3 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cr)
  %i.cu = tail call float @sqrtf(float noundef %i.ct) #14
  %i.cv = fdiv float %i.c, %i.cu                  ; 2 uses
  %i.cw = fneg <2 x float> %i.cp                  ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> %i.cp, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.cy = insertelement <4 x float> %i.cx, float %i.cv, i64 2 ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> %i.cw, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.da, <4 x float> %i.co)
  store <4 x float> %i.db, ptr %i.ci, align 16
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, 25
  br i1 %exitcond169.not, label %.split137.us, label %bb.c, !llvm.loop !6

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineCatmullRom(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca [50 x %struct.Vector2], align 16    ; 7 uses
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %4, i8 0, i64 400, i1 false)
  %i.c = fmul float %2, 5.000000e-01              ; 4 uses
  tail call void @DrawCircleSector(<2 x float> %.sroa.057.0.copyload, float noundef %i.c, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  %i.d = add nsw i32 %1, -3
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  tail call void @DrawCircleSector(<2 x float> %i.cr, float noundef %i.c, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv153 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next154, %.loopexit ] ; 3 uses
  %.sroa.057.0141 = phi <2 x float> [ %.sroa.057.0.copyload, %.lr.ph ], [ %i.cr, %.loopexit ] ; 2 uses
  %i.f = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ay, %.loopexit ]
  %i.g = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.bi, %.loopexit ] ; 2 uses
  %i.h = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.cs, %.loopexit ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv153 ; 3 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next154
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %i.n = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.o = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.p = load <2 x float>, ptr %i.l, align 4      ; 2 uses
  %.not = icmp eq i64 %indvars.iv153, 0           ; 2 uses
  br i1 %.not, label %.peel.begin, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = extractelement <2 x float> %i.h, i64 0
  %i.r = fneg float %i.q
  %i.s = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <4 x float> %i.s, float %i.r, i64 1
  %i.u = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.w = fneg <2 x float> %i.h
  %i.x = shufflevector <2 x float> %i.g, <2 x float> %i.w, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.y = shufflevector <2 x float> %.sroa.057.0141, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.x, <4 x float> %i.y)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.b, %bb.c
  %i.aa = phi <4 x float> [ %i.z, %bb.c ], [ %i.f, %bb.b ]
  %i.ab = shufflevector <2 x float> %.sroa.057.0141, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ac = fmul <2 x float> %i.n, splat (float f0x3FFEEAAB)
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float f0xBD1CBDA1), <2 x float> %i.ac)
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 4.839410e-02), <2 x float> %i.ad)
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> splat (float f0xBADA12F8), <2 x float> %i.ae)
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ah = fmul <4 x float> %i.ag, splat (float 5.000000e-01) ; 4 uses
  %foldExtExtBinop = fsub <4 x float> %i.ah, %i.ab
  %i.ai = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 6 uses
  %foldExtExtBinop172 = fsub <4 x float> %i.ah, %i.ab ; 3 uses
  %i.aj = extractelement <4 x float> %foldExtExtBinop172, i64 0 ; 3 uses
  %i.ak = fmul float %i.ai, %i.ai
  %i.al = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ak)
  %i.am = tail call float @sqrtf(float noundef %i.al) #14
  %i.an = fdiv float %i.c, %i.am                  ; 2 uses
  %i.ao = fneg float %i.aj                        ; 2 uses
  br i1 %.not, label %bb.d, label %.peel.begin._crit_edge

.peel.begin._crit_edge:                           ; preds = %.peel.begin
  %.pre160 = fneg float %i.ai
  br label %.peel.next

bb.d:                                             ; preds = %.peel.begin
  %i.ap = fneg float %i.ai                        ; 2 uses
  %i.aq = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.ao, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 2 ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %foldExtExtBinop172, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %i.ap, i64 1
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.aw, <4 x float> %i.ab)
  br label %.peel.next

.peel.next:                                       ; preds = %bb.d, %.peel.begin._crit_edge
  %.pre-phi = phi float [ %.pre160, %.peel.begin._crit_edge ], [ %i.ap, %bb.d ]
  %i.ay = phi <4 x float> [ %i.aa, %.peel.begin._crit_edge ], [ %i.ax, %bb.d ] ; 2 uses
  %i.az = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.ao, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %.pre-phi, i64 2
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %foldExtExtBinop172, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bd = insertelement <4 x float> poison, float %i.an, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.be, <4 x float> %i.ah)
  store <4 x float> %i.bf, ptr %i.e, align 16
  %i.bg = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.e

.loopexit:                                        ; preds = %bb.e
  store <4 x float> %i.ay, ptr %4, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 50, i32 %3)
  %exitcond156.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count
  %i.bh = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> %i.cs, <2 x i32> <i32 0, i32 2>
  br i1 %exitcond156.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %.peel.next, %bb.e
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.sroa.057.1126 = phi <2 x float> [ %i.bg, %.peel.next ], [ %i.cr, %bb.e ]
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = uitofp nneg i32 %i.bj to float
  %i.bl = fdiv float %i.bk, 2.400000e+01          ; 11 uses
  %i.bm = fneg float %i.bl
  %i.bn = fmul float %i.bl, %i.bm
  %i.bo = fmul nnan float %i.bl, 2.000000e+00
  %i.bp = fmul float %i.bl, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bl, float %i.bp)
  %i.br = fsub float %i.bq, %i.bl
  %i.bs = fmul float %i.bl, %i.bl                 ; 2 uses
  %i.bt = fneg float %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bl, float %i.bt)
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.bw = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.by = fmul nnan <2 x float> %i.bx, <float -3.000000e+00, float 3.000000e+00>
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = fmul nnan <2 x float> %i.bx, <float 4.000000e+00, float -5.000000e+00>
  %i.cb = fmul <2 x float> %i.bx, %i.ca
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bx, <2 x float> %i.cb)
  %i.cd = insertelement <2 x float> <float poison, float 2.000000e+00>, float %i.bl, i64 0
  %i.ce = fadd <2 x float> %i.cd, %i.cc           ; 2 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.n, %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.ci, <2 x float> %i.cg)
  %i.ck = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.ck, <2 x float> %i.cj)
  %i.cm = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.cn, <2 x float> %i.cl)
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cq = fmul <4 x float> %i.cp, splat (float 5.000000e-01) ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  %i.cs = fsub <2 x float> %i.cr, %.sroa.057.1126 ; 6 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ct
  %i.cv = extractelement <2 x float> %i.cs, i64 0 ; 3 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = tail call float @sqrtf(float noundef %i.cw) #14
  %i.cy = fdiv float %i.c, %i.cx                  ; 2 uses
end_hunk_0
