Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DrawLine:bb.a
  %i.b = sitofp i32 %1 to float
  tail call void @rlVertex2f(float noundef %i.a, float noundef %i.b) #14
  %i.c = sitofp i32 %2 to float
  %i.d = sitofp i32 %3 to float
  tail call void @rlVertex2f(float noundef %i.c, float noundef %i.d) #14
  tail call void @rlEnd() #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineEx(<2 x float> %0, <2 x float> %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca [4 x %struct.Vector2], align 16     ; 5 uses
  %i.a = fsub <2 x float> %1, %0                  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b) ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  %i.f = fcmp ogt float %2, 0.000000e+00
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.h = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %sqrt = tail call nnan float @llvm.sqrt.f32(float %i.d)
  %i.i = fmul nnan float %sqrt, 2.000000e+00
  %i.j = fdiv float %2, %i.i                      ; 2 uses
  %i.k = fneg float %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1
  %i.n = fmul <2 x float> %i.a, %i.m
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 4 uses
  %i.p = fsub <4 x float> %i.g, %i.o
  %i.q = fadd <4 x float> %i.g, %i.o
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.r, ptr %4, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = fsub <4 x float> %i.h, %i.o
  %i.u = fadd <4 x float> %i.h, %i.o
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.v, ptr %i.s, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 4, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define void @DrawTriangleStrip(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %2, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %2 to i8
  tail call void @rlBegin(i32 noundef 4) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  tail call void @rlEnd() #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 2, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0                      ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load float, ptr %i.f, align 4
  tail call void @rlVertex2f(float noundef %i.e, float noundef %i.g) #14
  %. = select i1 %i.c, i64 -16, i64 -8
  %.41 = select i1 %i.c, i64 -12, i64 -4
  %.42 = select i1 %i.c, i64 -8, i64 -16
  %.43 = select i1 %i.c, i64 -4, i64 -12
  %i.h = getelementptr i8, ptr %i.d, i64 %.
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %i.d, i64 %.41
  %i.k = load float, ptr %i.j, align 4
  tail call void @rlVertex2f(float noundef %i.i, float noundef %i.k) #14
  %i.l = getelementptr i8, ptr %i.d, i64 %.42
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %i.d, i64 %.43
  %i.o = load float, ptr %i.n, align 4
  tail call void @rlVertex2f(float noundef %i.m, float noundef %i.o) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineV(<2 x float> %0, <2 x float> %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %2 to i8
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %2, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %.sroa.02.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.02.4.vec.extract = extractelement <2 x float> %0, i64 1
  tail call void @rlVertex2f(float noundef %.sroa.02.0.vec.extract, float noundef %.sroa.02.4.vec.extract) #14
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.01.4.vec.extract = extractelement <2 x float> %1, i64 1
  tail call void @rlVertex2f(float noundef %.sroa.01.0.vec.extract, float noundef %.sroa.01.4.vec.extract) #14
  tail call void @rlEnd() #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineStrip(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %2, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %2 to i8
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.b = add nsw i32 %1, -1
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @rlEnd() #14
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load float, ptr %i.e, align 4
  tail call void @rlVertex2f(float noundef %i.d, float noundef %i.f) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.h = load float, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load float, ptr %i.i, align 4
  tail call void @rlVertex2f(float noundef %i.h, float noundef %i.j) #14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineBezier(<2 x float> %0, <2 x float> %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
.peel.next:
  %4 = alloca [50 x %struct.Vector2], align 16    ; 7 uses
  %.sroa.041.0.vec.extract43 = extractelement <2 x float> %0, i64 0 ; 2 uses
  %.sroa.041.4.vec.extract47 = extractelement <2 x float> %0, i64 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.a, i8 0, i64 368, i1 false)
  %i.b = fsub <2 x float> %1, %0                  ; 2 uses
  %i.c = extractelement <2 x float> %i.b, i64 0
  %i.d = fdiv float %i.c, 2.400000e+01            ; 2 uses
  %i.e = fmul float %2, 5.000000e-01              ; 2 uses
  %i.f = extractelement <2 x float> %i.b, i64 1
  %i.g = fmul float %i.f, 5.000000e-01            ; 3 uses
  %i.h = fmul float %i.g, f0x3DAAAAAB
  %i.i = fmul float %i.h, f0x3DAAAAAB
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float f0x3DAAAAAB, float %.sroa.041.4.vec.extract47) ; 3 uses
  %i.k = fadd float %i.d, %.sroa.041.0.vec.extract43 ; 3 uses
  %i.l = fsub float %i.j, %.sroa.041.4.vec.extract47 ; 4 uses
  %i.m = fsub float %i.k, %.sroa.041.0.vec.extract43 ; 4 uses
  %i.n = fmul float %i.l, %i.l
  %i.o = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.n)
  %sqrt.peel = tail call float @llvm.sqrt.f32(float %i.o)
  %i.p = fneg float %i.m
  %5 = fneg float %i.l
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %7 = fdiv float %i.e, %sqrt.peel
  %i.q = insertelement <4 x float> poison, float %i.l, i64 0
  %i.r = insertelement <4 x float> %i.q, float %i.p, i64 1
  %i.s = insertelement <4 x float> %i.r, float %7, i64 2 ; 2 uses
  %i.t = insertelement <4 x float> %i.s, float %i.m, i64 3 ; 2 uses
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %5, i64 1
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.x = insertelement <4 x float> poison, float %i.k, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.j, i64 1
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.w, <4 x float> %i.z)
  store <4 x float> %i.aa, ptr %6, align 16
  br label %bb.a

.loopexit:                                        ; preds = %bb.d
  %i.ab = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.w, <4 x float> %i.ab)
  store <4 x float> %i.ac, ptr %4, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 50, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.a:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.031.049 = phi float [ %i.k, %.peel.next ], [ %i.ao, %bb.d ] ; 2 uses
  %.sroa.835.048 = phi float [ %i.j, %.peel.next ], [ %.0.i, %bb.d ]
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fdiv float %i.ae, 1.200000e+01          ; 5 uses
  %i.ag = fcmp olt float %i.af, 1.000000e+00
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = fmul float %i.g, %i.af
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.af, float %.sroa.041.4.vec.extract47)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ak = fadd float %i.af, -2.000000e+00         ; 3 uses
  %i.al = fmul float %i.ak, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ak, float 2.000000e+00)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.g, float %i.am, float %.sroa.041.4.vec.extract47)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.aj, %bb.b ], [ %i.an, %bb.c ] ; 3 uses
  %i.ao = fadd float %i.d, %.sroa.031.049         ; 3 uses
  %i.ap = fsub float %.0.i, %.sroa.835.048        ; 4 uses
  %i.aq = fsub float %i.ao, %.sroa.031.049        ; 4 uses
  %i.ar = fmul float %i.ap, %i.ap
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ar)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.as)
  %.pre66 = fneg float %i.aq
  %.pre64.a = fneg float %i.ap
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.au = fdiv float %i.e, %sqrt
  %i.av = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %.pre66, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.au, i64 2 ; 2 uses
  %i.ay = insertelement <4 x float> %i.ax, float %i.aq, i64 3
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ba = insertelement <2 x float> %i.az, float %.pre64.a, i64 1
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bc = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %.0.i, i64 1
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.bb, <4 x float> %i.be)
  store <4 x float> %i.bf, ptr %i.at, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define void @DrawLineDashed(<2 x float> %0, <2 x float> %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  %i.a = fsub <2 x float> %1, %0                  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.d) ; 5 uses
  %i.e = add nsw i32 %3, %2
  %i.f = sitofp i32 %i.e to float
  %i.g = fcmp olt float %sqrt, %i.f
  %i.h = icmp slt i32 %2, 1
  %or.cond = or i1 %i.h, %i.g
  %.sroa.0.0.extract.trunc.i = trunc i32 %4 to i8 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i32 %4, 16
  %.sroa.3.0.extract.trunc.i = trunc i32 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %4, 24
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %.sroa.4.0.extract.shift.i to i8 ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.037.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.035.4.vec.extract = extractelement <2 x float> %1, i64 1
  %.sroa.037.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.035.0.vec.extract = extractelement <2 x float> %1, i64 0
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc.i, i8 noundef zeroext %.sroa.2.0.extract.trunc.i, i8 noundef zeroext %.sroa.3.0.extract.trunc.i, i8 noundef zeroext %.sroa.4.0.extract.trunc.i) #14
  tail call void @rlVertex2f(float noundef %.sroa.037.0.vec.extract, float noundef %.sroa.037.4.vec.extract) #14
  tail call void @rlVertex2f(float noundef %.sroa.035.0.vec.extract, float noundef %.sroa.035.4.vec.extract) #14
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.i = fdiv float 1.000000e+00, %sqrt
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.a, %i.k              ; 2 uses
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc.i, i8 noundef zeroext %.sroa.2.0.extract.trunc.i, i8 noundef zeroext %.sroa.3.0.extract.trunc.i, i8 noundef zeroext %.sroa.4.0.extract.trunc.i) #14
  %i.m = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = uitofp nneg i32 %2 to float
  %i.o = sitofp i32 %3 to float
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.05157 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.z, %bb.d ]
  %i.p = phi <2 x float> [ %0, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %i.q = fadd float %.05157, %i.n                 ; 2 uses
  %i.r = fcmp ogt float %i.q, %sqrt
  %.0 = select i1 %i.r, float %sqrt, float %i.q   ; 2 uses
  %i.s = insertelement <2 x float> poison, float %.0, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.l, <2 x float> %0) ; 2 uses
  %i.v = extractelement <2 x float> %i.p, i64 0
  %i.w = extractelement <2 x float> %i.p, i64 1
  tail call void @rlVertex2f(float noundef %i.v, float noundef %i.w) #14
  %i.x = extractelement <2 x float> %i.u, i64 0
  %i.y = extractelement <2 x float> %i.u, i64 1
  tail call void @rlVertex2f(float noundef %i.x, float noundef %i.y) #14
  %i.z = fadd float %.0, %i.o                     ; 3 uses
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.l, <2 x float> %0)
  %i.ad = fcmp olt float %i.z, %sqrt
  br i1 %i.ad, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  tail call void @rlEnd() #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawCircle(i32 noundef %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  tail call void @DrawCircleSector(<2 x float> %i.c, float noundef %2, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawCircleV(<2 x float> %0, float noundef %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  tail call void @DrawCircleSector(<2 x float> %0, float noundef %1, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawCircleSector(<2 x float> %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %.sroa.093.0.extract.trunc = trunc i32 %5 to i8 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i32 %5, 8
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i32 %5, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %5, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.a = fcmp oeq float %2, %3
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ole float %1, 0.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e-01, float %1 ; 10 uses
  %i.c = fcmp olt float %3, %2                    ; 2 uses
  %.0130 = select i1 %i.c, float %3, float %2     ; 3 uses
  %.0129 = select i1 %i.c, float %2, float %3
  %i.d = fsub float %.0129, %.0130                ; 3 uses
  %i.e = fdiv float %i.d, 9.000000e+01
  %i.f = tail call float @llvm.ceil.f32(float %i.e)
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = icmp slt i32 %4, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = fdiv float 5.000000e-01, %spec.store.select
  %i.j = fsub float 1.000000e+00, %i.i
  %i.k = tail call float @powf(float noundef %i.j, float noundef 2.000000e+00) #14
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float 2.000000e+00, float -1.000000e+00)
  %i.m = tail call float @acosf(float noundef %i.l) #14
  %i.n = fdiv float f0x40C90FDB, %i.m
  %i.o = tail call float @llvm.ceil.f32(float %i.n)
  %i.p = fmul float %i.d, %i.o
  %i.q = fdiv float %i.p, 3.600000e+02
  %i.r = fptosi float %i.q to i32                 ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  %spec.select = select i1 %i.s, i32 %i.g, i32 %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %4, %bb.b ] ; 4 uses
  %i.t = sitofp i32 %.1 to float
  %i.u = fdiv float %i.d, %i.t                    ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 8 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 4 uses
  tail call void @rlBegin(i32 noundef 7) #14
  %i.v = lshr i32 %.1, 1
  %i.w = icmp sgt i32 %.1, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %.sroa.098.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.098.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop142 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.y = extractelement <2 x float> %foldExtExtBinop142, i64 1 ; 2 uses
  %i.z = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.0127.lcssa = phi float [ %.0130, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ab = and i32 %.1, 1
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0137 = phi i32 [ 0, %.lr.ph ], [ %i.bu, %bb.e ]
  %.0127136 = phi float [ %.0130, %.lr.ph ], [ %i.ao, %bb.e ] ; 3 uses
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.093.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.5.0.extract.trunc, i8 noundef zeroext %.sroa.7.0.extract.trunc) #14
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = fdiv float %.sroa.0.0.vec.extract, %i.ad
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ag = sitofp i32 %i.af to float
  %i.ah = fdiv float %.sroa.0.4.vec.extract, %i.ag
  tail call void @rlTexCoord2f(float noundef %i.ae, float noundef %i.ah) #14
  tail call void @rlVertex2f(float noundef %.sroa.098.0.vec.extract, float noundef %.sroa.098.4.vec.extract) #14
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fdiv float %i.x, %i.aj
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.am = sitofp i32 %i.al to float
  %i.an = fdiv float %.sroa.0.4.vec.extract, %i.am
  tail call void @rlTexCoord2f(float noundef %i.ak, float noundef %i.an) #14
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.u, float 2.000000e+00, float %.0127136) ; 3 uses
end_hunk_0
