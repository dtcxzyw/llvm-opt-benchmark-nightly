inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@DrawBillboardPro:bb.a
  %.sroa.40.28.vec.extract = extractelement <2 x float> %.sroa.40.0, i64 1
  tail call void @rlVertex3f(float noundef %.sroa.40.24.vec.extract, float noundef %.sroa.40.28.vec.extract, float noundef %.sroa.50.0) #54
  tail call void @rlTexCoord2f(float noundef %i.js, float noundef %i.jx) #54
  tail call void @rlVertex3f(float noundef %i.jb, float noundef %i.jd, float noundef %.sroa.69.0) #54
  tail call void @rlEnd() #54
  tail call void @rlSetTexture(i32 noundef 0) #54
  ret void
}

declare void @rlSetTexture(i32 noundef) local_unnamed_addr #34

declare void @rlTexCoord2f(float noundef, float noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @DrawBoundingBox(ptr nofree noundef readonly byval(%struct.BoundingBox) align 8 captures(none) %0, i32 %1) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load float, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 8            ; 2 uses
  %i.f = fsub float %i.c, %i.e
  %i.g = tail call float @llvm.fabs.f32(float %i.f) ; 2 uses
  %i.h = load <2 x float>, ptr %i.a, align 4
  %i.i = load <2 x float>, ptr %0, align 8        ; 2 uses
  %i.j = fsub <2 x float> %i.h, %i.i
  %i.k = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.j) ; 3 uses
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01)
  %i.m = fadd <2 x float> %i.i, %i.l
  %i.n = fmul float %i.g, 5.000000e-01
  %i.o = fadd float %i.e, %i.n
  %i.p = extractelement <2 x float> %i.k, i64 0
  %i.q = extractelement <2 x float> %i.k, i64 1
  tail call void @DrawCubeWires(<2 x float> %i.m, float %i.o, float noundef %i.p, float noundef %i.q, float noundef %i.g, i32 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionSpheres(<2 x float> %0, float %1, float noundef %2, <2 x float> %3, float %4, float noundef %5) local_unnamed_addr #37 {
bb.a:
  %i.a = fadd float %2, %5                        ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %3, %0
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop15 = fsub <2 x float> %3, %0    ; 2 uses
  %i.c = fsub float %4, %1                        ; 2 uses
  %foldExtExtBinop17 = fmul <2 x float> %foldExtExtBinop15, %foldExtExtBinop15
  %i.d = extractelement <2 x float> %foldExtExtBinop17, i64 1
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.e)
  %i.g = fmul float %i.a, %i.a
  %i.h = fcmp ole float %i.f, %i.g
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @CheckCollisionBoxes(ptr nofree noundef readonly byval(%struct.BoundingBox) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.BoundingBox) align 8 captures(none) %1) local_unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4
  %i.c = load float, ptr %1, align 8
  %i.d = fcmp ult float %i.b, %i.c
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load float, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp olt float %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load float, ptr %i.p, align 8
  %i.r = fcmp ogt float %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load float, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load float, ptr %i.u, align 8
  %i.w = fcmp olt float %i.t, %i.v
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load float, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fcmp ogt float %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.g, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ %.0, %bb.g ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @CheckCollisionBoxSphere(ptr nofree noundef readonly byval(%struct.BoundingBox) align 8 captures(none) %0, <2 x float> %1, float %2, float noundef %3) local_unnamed_addr #38 {
bb.a:
  %.sroa.08.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 3 uses
  %i.a = load float, ptr %0, align 8              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = fcmp olt float %.sroa.08.0.vec.extract, %i.a
  %i.e = select i1 %i.d, float %i.a, float %.sroa.08.0.vec.extract ; 2 uses
  %i.f = fcmp ogt float %i.e, %i.c
  %.0.i = select i1 %i.f, float %i.c, float %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <2 x float>, ptr %i.g, align 4      ; 2 uses
  %i.j = load <2 x float>, ptr %i.h, align 8      ; 2 uses
  %i.k = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.l = insertelement <2 x float> %i.k, float %2, i64 1 ; 2 uses
  %i.m = fcmp olt <2 x float> %i.l, %i.i
  %i.n = select <2 x i1> %i.m, <2 x float> %i.i, <2 x float> %i.l ; 2 uses
  %i.o = fcmp ogt <2 x float> %i.n, %i.j
  %i.p = select <2 x i1> %i.o, <2 x float> %i.j, <2 x float> %i.n ; 2 uses
  %i.q = fsub float %.0.i, %.sroa.08.0.vec.extract ; 2 uses
  %shift = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.p, %shift ; 2 uses
  %i.r = extractelement <2 x float> %i.p, i64 1
  %i.s = fsub float %i.r, %2                      ; 2 uses
  %foldExtExtBinop13 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.t = extractelement <2 x float> %foldExtExtBinop13, i64 0
  %i.u = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.u)
  %i.w = fmul float %3, %3
  %i.x = fcmp ole float %i.v, %i.w
  ret i1 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @GetRayCollisionSphere(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RayCollision) align 4 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly byval(%struct.Ray) align 8 captures(none) %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #39 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %.sroa.095.0.copyload = load <2 x float>, ptr %1, align 8 ; 4 uses
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.296.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 8 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %2, %.sroa.095.0.copyload
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop171 = fsub <2 x float> %2, %.sroa.095.0.copyload ; 3 uses
  %i.b = fsub float %3, %.sroa.296.0.copyload     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 4 uses
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.284.0.copyload = load float, ptr %.sroa.284.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.083.0.copyload, i64 0
  %foldExtExtBinop173 = fmul <2 x float> %foldExtExtBinop171, %.sroa.083.0.copyload
  %i.d = extractelement <2 x float> %foldExtExtBinop173, i64 1
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %.sroa.01.0.vec.extract.i, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %.sroa.284.0.copyload, float %i.e) ; 4 uses
  %foldExtExtBinop175 = fmul <2 x float> %foldExtExtBinop171, %foldExtExtBinop171
  %i.g = extractelement <2 x float> %foldExtExtBinop175, i64 1
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.g)
  %i.i = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.h)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.i) ; 3 uses
  %i.j = fneg float %i.f
  %i.k = fmul float %i.f, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %sqrt.i, float %sqrt.i, float %i.k)
  %i.m = fneg float %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %4, float %4, float %i.m) ; 2 uses
  %i.o = fcmp oge float %i.n, 0.000000e+00
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %0, align 4
  %i.q = fcmp olt float %sqrt.i, %4
  %i.r = tail call float @sqrtf(float noundef %i.n) #54 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = fadd float %i.f, %i.r                    ; 3 uses
  store float %i.u, ptr %i.s, align 4
  %i.v = fmul float %.sroa.284.0.copyload, %i.u
  %i.w = fadd float %.sroa.296.0.copyload, %i.v   ; 2 uses
  store float %i.w, ptr %.sroa.475.0..sroa_idx, align 4
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %.sroa.083.0.copyload, %i.y
  %i.aa = fadd <2 x float> %.sroa.095.0.copyload, %i.z ; 2 uses
  store <2 x float> %i.aa, ptr %i.t, align 4
  %i.ab = fsub <2 x float> %i.aa, %2              ; 3 uses
  %i.ac = fsub float %i.w, %3                     ; 4 uses
  %5 = extractelement <2 x float> %i.ab, i64 1    ; 3 uses
  %6 = fmul float %5, %5
  %i.ad = extractelement <2 x float> %i.ab, i64 0 ; 3 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %6)
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ae) ; 2 uses
  %i.ag = fcmp une float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %Vector3Normalize.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i132 = tail call float @llvm.sqrt.f32(float %i.af)
  %i.ah = fdiv float 1.000000e+00, %sqrt.i132     ; 3 uses
  %7 = fmul float %i.ad, %i.ah
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> poison, float %7, i64 0
  %8 = fmul float %5, %i.ah
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %.sroa.013.0.vec.insert.i, float %8, i64 1
  %i.ai = fmul float %i.ac, %i.ah
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.b, %bb.c
  %.sroa.013.0.i = phi <2 x float> [ %.sroa.013.4.vec.insert.i, %bb.c ], [ %i.ab, %bb.b ]
  %.sroa.617.0.i = phi float [ %i.ai, %bb.c ], [ %i.ac, %bb.b ]
  %i.aj = fneg <2 x float> %.sroa.013.0.i
  %i.ak = fneg float %.sroa.617.0.i
  br label %Vector3Normalize.exit168

bb.d:                                             ; preds = %bb.a
  %i.al = fsub float %i.f, %i.r                   ; 3 uses
  store float %i.al, ptr %i.s, align 4
  %i.am = fmul float %.sroa.284.0.copyload, %i.al
  %i.an = fadd float %.sroa.296.0.copyload, %i.am ; 2 uses
  store float %i.an, ptr %.sroa.475.0..sroa_idx, align 4
  %i.ao = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %.sroa.083.0.copyload, %i.ap
  %i.ar = fadd <2 x float> %.sroa.095.0.copyload, %i.aq ; 2 uses
  store <2 x float> %i.ar, ptr %i.t, align 4
  %i.as = fsub <2 x float> %i.ar, %2              ; 3 uses
  %i.at = fsub float %i.an, %3                    ; 4 uses
  %9 = extractelement <2 x float> %i.as, i64 1    ; 3 uses
  %10 = fmul float %9, %9
  %i.au = extractelement <2 x float> %i.as, i64 0 ; 3 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %10)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.av) ; 2 uses
  %i.ax = fcmp une float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.e, label %Vector3Normalize.exit168

bb.e:                                             ; preds = %bb.d
  %sqrt.i165 = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.ay = fdiv float 1.000000e+00, %sqrt.i165     ; 3 uses
  %11 = fmul float %i.au, %i.ay
  %.sroa.013.0.vec.insert.i166 = insertelement <2 x float> poison, float %11, i64 0
  %12 = fmul float %9, %i.ay
  %.sroa.013.4.vec.insert.i167 = insertelement <2 x float> %.sroa.013.0.vec.insert.i166, float %12, i64 1
  %i.az = fmul float %i.at, %i.ay
  br label %Vector3Normalize.exit168

Vector3Normalize.exit168:                         ; preds = %bb.e, %bb.d, %Vector3Normalize.exit
  %.sroa.013.0.i161.sink = phi <2 x float> [ %i.aj, %Vector3Normalize.exit ], [ %.sroa.013.4.vec.insert.i167, %bb.e ], [ %i.as, %bb.d ]
  %.sroa.617.0.i162.sink = phi float [ %i.ak, %Vector3Normalize.exit ], [ %i.az, %bb.e ], [ %i.at, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <2 x float> %.sroa.013.0.i161.sink, ptr %i.ba, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.sroa.617.0.i162.sink, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetRayCollisionBox(ptr dead_on_unwind noalias nofree writable sret(%struct.RayCollision) align 4 captures(none) initializes((0, 32)) %0, ptr nofree noundef byval(%struct.Ray) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.BoundingBox) align 8 captures(none) %2) local_unnamed_addr #40 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = load float, ptr %1, align 8              ; 3 uses
  %i.b = load float, ptr %2, align 8              ; 2 uses
  %i.c = fcmp ogt float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = fcmp olt float %i.a, %i.e
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert174 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre175 = load float, ptr %.phi.trans.insert174, align 4
  %.phi.trans.insert176 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre177 = load float, ptr %.phi.trans.insert176, align 8
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4            ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load float, ptr %i.i, align 4            ; 4 uses
  %i.k = fcmp ogt float %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load float, ptr %i.l, align 8            ; 4 uses
  %i.n = fcmp olt float %i.h, %i.m
  %or.cond116 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond116, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 8            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load float, ptr %i.q, align 8
  %i.s = fcmp ogt float %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load float, ptr %i.t, align 4
  %i.v = fcmp olt float %i.p, %i.u
  %or.cond173 = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond173, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0103.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4
  %i.x = fneg <2 x float> %.sroa.0103.0.copyload
  %i.y = fneg float %.sroa.2104.0.copyload
  store <2 x float> %i.x, ptr %i.w, align 4
  store float %i.y, ptr %.sroa.2104.0..sroa_idx, align 4
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b, %bb.c, %bb.d
  %i.z = phi float [ %i.m, %bb.b ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %.pre177, %..thread_crit_edge ]
  %i.aa = phi float [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %.pre175, %..thread_crit_edge ]
  %i.ab = phi float [ %i.j, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ], [ %.pre, %..thread_crit_edge ]
  %i.ac = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ false, %..thread_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load float, ptr %i.ae, align 4          ; 2 uses
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ab, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.aa, i64 1 ; 2 uses
  %i.al = fsub <2 x float> %i.ai, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.e, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.z, i64 1
  %i.ao = fsub <2 x float> %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load float, ptr %i.ap, align 8          ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load float, ptr %i.ar, align 8          ; 3 uses
  %i.at = fsub float %i.aq, %i.as
  %i.au = fmul float %i.ag, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aw = load float, ptr %i.av, align 4          ; 2 uses
  %i.ax = fsub float %i.aw, %i.as
  %i.ay = fmul float %i.ag, %i.ax
  %i.az = fpext nsz float %i.au to double         ; 2 uses
  %i.ba = fpext nsz float %i.ay to double         ; 2 uses
  %i.bb = tail call nsz double @llvm.minnum.f64(double %i.az, double %i.ba)
  %i.bc = load <2 x float>, ptr %i.ad, align 4
  %i.bd = fdiv <2 x float> splat (float 1.000000e+00), %i.bc ; 2 uses
  %i.be = fmul <2 x float> %i.al, %i.bd
  %i.bf = fmul <2 x float> %i.ao, %i.bd
  %i.bg = fpext <2 x float> %i.be to <2 x double> ; 2 uses
  %i.bh = fpext <2 x float> %i.bf to <2 x double> ; 2 uses
  %i.bi = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bg, <2 x double> %i.bh) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  %i.bl = tail call nsz double @llvm.maxnum.f64(double %i.bj, double %i.bk)
  %i.bm = tail call nsz double @llvm.maxnum.f64(double %i.bl, double %i.bb)
  %i.bn = fptrunc double %i.bm to float           ; 5 uses
  %i.bo = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bg, <2 x double> %i.bh) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = extractelement <2 x double> %i.bo, i64 1
  %i.br = tail call nsz double @llvm.minnum.f64(double %i.bp, double %i.bq)
  %i.bs = tail call nsz double @llvm.maxnum.f64(double %i.az, double %i.ba)
  %i.bt = tail call nsz double @llvm.minnum.f64(double %i.br, double %i.bs) ; 2 uses
  %i.bu = fptrunc double %i.bt to float
  %i.bv = fcmp uge double %i.bt, f0xB690000000000000
  %i.bw = fcmp ule float %i.bn, %i.bu
  %.not111 = and i1 %i.bv, %i.bw
  %i.bx = zext i1 %.not111 to i8
  store i8 %i.bx, ptr %0, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store float %i.bn, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.080.0.copyload = load <2 x float>, ptr %i.ad, align 4
  %i.ca = fmul float %i.af, %i.bn
  %.sroa.074.0.copyload = load <2 x float>, ptr %1, align 8
  %i.cb = fadd float %i.as, %i.ca                 ; 2 uses
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cb, ptr %.sroa.485.0..sroa_idx, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.064.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.d, align 4
  %i.cd = fsub float %i.aw, %i.aq                 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float 5.000000e-01, float %i.aq)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cf = fsub float %i.cb, %i.ce
  %i.cg = fmul float %i.cf, 2.010000e+00
  %i.ch = fdiv float %i.cg, %i.cd
  %i.ci = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %.sroa.080.0.copyload, %i.cj
  %i.cl = fadd <2 x float> %.sroa.074.0.copyload, %i.ck ; 2 uses
  store <2 x float> %i.cl, ptr %i.bz, align 4
  %i.cm = fsub <2 x float> %.sroa.062.0.copyload, %.sroa.064.0.copyload ; 2 uses
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> splat (float 5.000000e-01), <2 x float> %.sroa.064.0.copyload)
  %i.co = fsub <2 x float> %i.cl, %i.cn
  %i.cp = fmul <2 x float> %i.co, splat (float 2.010000e+00)
  %i.cq = fdiv <2 x float> %i.cp, %i.cm
  %i.cr = fptosi <2 x float> %i.cq to <2 x i32>
  %i.cs = sitofp <2 x i32> %i.cr to <2 x float>   ; 6 uses
  store <2 x float> %i.cs, ptr %i.cc, align 4
  %i.ct = fptosi float %i.ch to i32
  %i.cu = sitofp i32 %i.ct to float               ; 4 uses
  %.sroa.07.0.vec.extract.i = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %foldExtExtBinop = fmul nnan <2 x float> %i.cs, %i.cs
  %i.cv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cw = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i, float %.sroa.07.0.vec.extract.i, float %i.cv)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.cw) ; 2 uses
  %i.cy = fcmp une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.e, label %Vector3Normalize.exit

bb.e:                                             ; preds = %.thread
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cx)
  %i.cz = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.db, %i.cs
  %i.dd = fmul float %i.cz, %i.cu
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %.thread, %bb.e
  %.sroa.013.0.i = phi <2 x float> [ %i.dc, %bb.e ], [ %i.cs, %.thread ] ; 2 uses
  %.sroa.617.0.i = phi float [ %i.dd, %bb.e ], [ %i.cu, %.thread ] ; 2 uses
  store <2 x float> %.sroa.013.0.i, ptr %i.cc, align 4
  store float %.sroa.617.0.i, ptr %.sroa.467.0..sroa_idx, align 4
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Vector3Normalize.exit
  %i.de = fneg float %i.bn
  store float %i.de, ptr %i.by, align 4
  %i.df = fneg <2 x float> %.sroa.013.0.i
  %i.dg = fneg float %.sroa.617.0.i
  store <2 x float> %i.df, ptr %i.cc, align 4
  store float %i.dg, ptr %.sroa.467.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Vector3Normalize.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #19

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @GetRayCollisionMesh(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RayCollision) align 4 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly byval(%struct.Ray) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Mesh) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %3) local_unnamed_addr #35 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not57 = icmp eq ptr %i.g, null
  %i.h = load <12 x float>, ptr %3, align 8       ; 8 uses
  %.sroa.0105.0.copyload = load <2 x float>, ptr %1, align 8 ; 3 uses
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4106.0.copyload = load float, ptr %.sroa.4106.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.5107.0.copyload = load <2 x float>, ptr %.sroa.5107.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6108.0.copyload = load float, ptr %.sroa.6108.0..sroa_idx, align 4 ; 4 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5107.0.copyload, i64 1 ; 4 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5107.0.copyload, i64 0 ; 3 uses
  %.sroa.06.0.vec.extract.i159.i = extractelement <2 x float> %.sroa.0105.0.copyload, i64 0
  %.sroa.06.4.vec.extract.i162.i = extractelement <2 x float> %.sroa.0105.0.copyload, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.j = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 7, i32 11> ; 3 uses
  %i.k = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 6, i32 10> ; 3 uses
  %i.l = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 4, i32 8> ; 3 uses
  %i.m = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 5, i32 9> ; 3 uses
  %i.n = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 11, i32 3> ; 3 uses
  %i.o = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 10, i32 2> ; 3 uses
  %i.p = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 8, i32 0> ; 3 uses
  %i.q = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 9, i32 1> ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %GetRayCollisionTriangle.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %GetRayCollisionTriangle.exit.thread ] ; 3 uses
  %.sroa.617.0.i.i128 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.617.0.i.i129, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %.sroa.013.0.i.i126 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.013.0.i.i127, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %i.r = phi float [ 0.000000e+00, %.lr.ph ], [ %i.en, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %.sroa.08.4.vec.insert.i204.i123 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.08.4.vec.insert.i204.i124, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %i.s = phi float [ 0.000000e+00, %.lr.ph ], [ %i.eo, %GetRayCollisionTriangle.exit.thread ] ; 6 uses
  %i.t = phi i8 [ 0, %.lr.ph ], [ %i.ep, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = mul nuw nsw i64 %indvars.iv, 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = mul nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.sroa.839.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.031.1.in = phi ptr [ %i.ae, %bb.d ], [ %i.ai, %bb.e ]
  %.sroa.8.0.in = phi ptr [ %.sroa.8.0..sroa_idx, %bb.d ], [ %.sroa.8.0..sroa_idx34, %bb.e ]
  %.sroa.036.1.in = phi ptr [ %i.aa, %bb.d ], [ %i.ah, %bb.e ]
  %.sroa.839.0.in = phi ptr [ %.sroa.839.0..sroa_idx, %bb.d ], [ %.sroa.839.0..sroa_idx40, %bb.e ]
  %.pn = phi i64 [ %i.w, %bb.d ], [ %i.af, %bb.e ]
  %.sroa.042.1.in = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.pn ; 2 uses
  %.sroa.845.0.in = getelementptr inbounds nuw i8, ptr %.sroa.042.1.in, i64 8
  %.sroa.845.0 = load float, ptr %.sroa.845.0.in, align 4
  %.sroa.042.1 = load <2 x float>, ptr %.sroa.042.1.in, align 4 ; 2 uses
  %.sroa.839.0 = load float, ptr %.sroa.839.0.in, align 4
  %.sroa.036.1 = load <2 x float>, ptr %.sroa.036.1.in, align 4 ; 2 uses
  %.sroa.8.0 = load float, ptr %.sroa.8.0.in, align 4
  %.sroa.031.1 = load <2 x float>, ptr %.sroa.031.1.in, align 4 ; 2 uses
  %i.aj = shufflevector <2 x float> %.sroa.042.1, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.m
  %i.al = fmul <2 x float> %i.aj, %i.q
  %i.am = shufflevector <2 x float> %.sroa.042.1, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.am, <2 x float> %i.al)
  %i.ap = insertelement <2 x float> poison, float %.sroa.845.0, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.aq, <2 x float> %i.ao)
  %i.at = fadd <2 x float> %i.j, %i.ar            ; 4 uses
  %i.au = fadd <2 x float> %i.n, %i.as            ; 3 uses
  %i.av = shufflevector <2 x float> %.sroa.036.1, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.m
  %i.ax = fmul <2 x float> %i.av, %i.q
  %i.ay = shufflevector <2 x float> %.sroa.036.1, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.ay, <2 x float> %i.ax)
  %i.bb = insertelement <2 x float> poison, float %.sroa.839.0, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.bc, <2 x float> %i.az)
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.bf = fadd <2 x float> %i.j, %i.bd
  %i.bg = fadd <2 x float> %i.n, %i.be
  %i.bh = shufflevector <2 x float> %.sroa.031.1, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.q
  %i.bj = fmul <2 x float> %i.bh, %i.m
  %i.bk = shufflevector <2 x float> %.sroa.031.1, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.bk, <2 x float> %i.bi)
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.bk, <2 x float> %i.bj)
  %i.bn = insertelement <2 x float> poison, float %.sroa.8.0, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.bo, <2 x float> %i.bl)
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.br = fadd <2 x float> %i.n, %i.bp
  %i.bs = fadd <2 x float> %i.j, %i.bq
  %i.bt = fsub <2 x float> %i.bf, %i.at           ; 3 uses
  %i.bu = fsub <2 x float> %i.bg, %i.au           ; 2 uses
  %i.bv = fsub <2 x float> %i.br, %i.au           ; 3 uses
  %i.bw = fsub <2 x float> %i.bs, %i.at           ; 2 uses
  %i.bx = fneg <2 x float> %i.bw                  ; 3 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = fmul float %.sroa.6108.0.copyload, %i.by
  %i.ca = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i, float %i.ca, float %i.bz) ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %.sroa.5107.0.copyload, %shift
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cd = extractelement <2 x float> %i.bv, i64 1 ; 3 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %.sroa.6108.0.copyload, float %i.cd, float %i.cc) ; 2 uses
  %i.cf = fneg float %i.cd                        ; 2 uses
  %i.cg = fmul float %.sroa.011.4.vec.extract.i.i, %i.cf
  %i.ch = extractelement <2 x float> %i.bw, i64 0 ; 3 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %i.ch, float %i.cg) ; 2 uses
  %i.cj = extractelement <2 x float> %i.bt, i64 0 ; 4 uses
  %i.ck = fmul float %i.cj, %i.ce
  %i.cl = extractelement <2 x float> %i.bu, i64 1 ; 4 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cb, float %i.ck)
  %i.cn = extractelement <2 x float> %i.bt, i64 1 ; 3 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ci, float %i.cm) ; 2 uses
  %i.cp = tail call float @llvm.fabs.f32(float %i.co)
  %or.cond.i = fcmp olt float %i.cp, f0x358637BD
  br i1 %or.cond.i, label %GetRayCollisionTriangle.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cq = fdiv float 1.000000e+00, %i.co          ; 3 uses
  %shift146 = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = fsub <2 x float> %.sroa.0105.0.copyload, %shift146
  %i.cr = extractelement <2 x float> %foldExtExtBinop147, i64 0 ; 3 uses
  %4 = extractelement <2 x float> %i.at, i64 0
  %5 = fsub float %.sroa.06.4.vec.extract.i162.i, %4 ; 3 uses
  %i.cs = extractelement <2 x float> %i.at, i64 1
  %i.ct = fsub float %.sroa.4106.0.copyload, %i.cs ; 3 uses
  %i.cu = fmul float %5, %i.ce
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cb, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ci, float %i.cv)
  %i.cx = fmul float %i.cw, %i.cq                 ; 3 uses
  %i.cy = fcmp olt float %i.cx, 0.000000e+00
  %i.cz = fcmp ogt float %i.cx, 1.000000e+00
  %or.cond3.i = or i1 %i.cy, %i.cz
  br i1 %or.cond3.i, label %GetRayCollisionTriangle.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = fneg float %i.cj
  %i.db = fmul float %i.ct, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %5, float %i.cn, float %i.db) ; 2 uses
  %i.dd = fneg float %i.cn
  %i.de = fmul float %i.cr, %i.dd
  %i.df = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cl, float %i.de) ; 2 uses
  %i.dg = fneg float %i.cl
  %i.dh = fmul float %5, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cj, float %i.dh) ; 2 uses
  %i.dj = fmul float %.sroa.011.4.vec.extract.i.i, %i.df
  %i.dk = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %i.dc, float %i.dj)
  %i.dl = tail call float @llvm.fmuladd.f32(float %.sroa.6108.0.copyload, float %i.di, float %i.dk)
  %i.dm = fmul float %i.dl, %i.cq                 ; 2 uses
  %i.dn = fcmp olt float %i.dm, 0.000000e+00
  %i.do = fadd float %i.cx, %i.dm
  %i.dp = fcmp ogt float %i.do, 1.000000e+00
  %or.cond146.i = or i1 %i.dn, %i.dp
  br i1 %or.cond146.i, label %GetRayCollisionTriangle.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = fmul float %i.ch, %i.df
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.dc, float %i.dq)
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.di, float %i.dr)
  %i.dt = fmul float %i.ds, %i.cq                 ; 6 uses
  %i.du = fcmp ogt float %i.dt, f0x358637BD
  br i1 %i.du, label %bb.j, label %GetRayCollisionTriangle.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.dv = fmul <2 x float> %i.bu, %i.bx
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.dv) ; 5 uses
  %i.dx = fmul float %i.cj, %i.cf
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ch, float %i.dx) ; 4 uses
  %foldExtExtBinop149 = fmul <2 x float> %i.dw, %i.dw
  %i.dz = extractelement <2 x float> %foldExtExtBinop149, i64 1
  %i.ea = extractelement <2 x float> %i.dw, i64 0 ; 2 uses
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.dz)
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.eb) ; 2 uses
  %i.ed = fcmp une float %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ec)
  %i.ee = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.dw, %i.eg
  %i.ei = fmul float %i.dy, %i.ee
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.013.0.i.i = phi <2 x float> [ %i.eh, %bb.k ], [ %i.dw, %bb.j ]
  %.sroa.617.0.i.i = phi float [ %i.ei, %bb.k ], [ %i.dy, %bb.j ]
  %i.ej = trunc nuw i8 %i.t to i1
  %i.ek = fcmp ule float %i.s, %i.dt
  %or.cond.not = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.not, label %GetRayCollisionTriangle.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = fmul float %.sroa.6108.0.copyload, %i.dt
  %6 = fadd float %.sroa.4106.0.copyload, %i.el
  %7 = fmul float %.sroa.011.0.vec.extract.i.i, %i.dt
  %i.em = fadd float %.sroa.06.0.vec.extract.i159.i, %7
  %.sroa.08.0.vec.insert.i201.i = insertelement <2 x float> poison, float %i.em, i64 0
  %8 = fmul float %.sroa.011.4.vec.extract.i.i, %i.dt
  %9 = fadd float %.sroa.06.4.vec.extract.i162.i, %8
  %.sroa.08.4.vec.insert.i204.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i201.i, float %9, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i8 0, i64 3, i1 false)
  br label %GetRayCollisionTriangle.exit.thread

GetRayCollisionTriangle.exit.thread:              ; preds = %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.m
  %.sroa.617.0.i.i129 = phi float [ %.sroa.617.0.i.i128, %bb.l ], [ %.sroa.617.0.i.i128, %bb.i ], [ %.sroa.617.0.i.i128, %bb.h ], [ %.sroa.617.0.i.i128, %bb.g ], [ %.sroa.617.0.i.i128, %bb.f ], [ %.sroa.617.0.i.i, %bb.m ] ; 2 uses
  %.sroa.013.0.i.i127 = phi <2 x float> [ %.sroa.013.0.i.i126, %bb.l ], [ %.sroa.013.0.i.i126, %bb.i ], [ %.sroa.013.0.i.i126, %bb.h ], [ %.sroa.013.0.i.i126, %bb.g ], [ %.sroa.013.0.i.i126, %bb.f ], [ %.sroa.013.0.i.i, %bb.m ] ; 2 uses
  %i.en = phi float [ %i.r, %bb.l ], [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %6, %bb.m ] ; 2 uses
  %.sroa.08.4.vec.insert.i204.i124 = phi <2 x float> [ %.sroa.08.4.vec.insert.i204.i123, %bb.l ], [ %.sroa.08.4.vec.insert.i204.i123, %bb.i ], [ %.sroa.08.4.vec.insert.i204.i123, %bb.h ], [ %.sroa.08.4.vec.insert.i204.i123, %bb.g ], [ %.sroa.08.4.vec.insert.i204.i123, %bb.f ], [ %.sroa.08.4.vec.insert.i204.i, %bb.m ] ; 2 uses
  %i.eo = phi float [ %i.s, %bb.l ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.dt, %bb.m ] ; 2 uses
  %i.ep = phi i8 [ 1, %bb.l ], [ %i.t, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.f ], [ 1, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.c

..loopexit_crit_edge:                             ; preds = %GetRayCollisionTriangle.exit.thread
  store float %i.eo, ptr %i.i, align 4
  store <2 x float> %.sroa.08.4.vec.insert.i204.i124, ptr %.sroa.8.0..sroa_idx71, align 4
  store float %i.en, ptr %.sroa.9.0..sroa_idx, align 4
  store <2 x float> %.sroa.013.0.i.i127, ptr %.sroa.10.0..sroa_idx, align 4
  store float %.sroa.617.0.i.i129, ptr %.sroa.11.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.b
  %.lcssa = phi i8 [ %i.ep, %..loopexit_crit_edge ], [ 0, %bb.b ]
  store i8 %.lcssa, ptr %0, align 4
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetRayCollisionTriangle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RayCollision) align 4 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly byval(%struct.Ray) align 8 captures(none) %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7) local_unnamed_addr #40 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.077.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 3 uses
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.278.0.copyload = load float, ptr %.sroa.278.0..sroa_idx, align 4 ; 4 uses
  %.sroa.011.4.vec.extract.i = extractelement <2 x float> %.sroa.077.0.copyload, i64 1 ; 3 uses
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.077.0.copyload, i64 0 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %4, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 5 uses
  %i.c = insertelement <2 x float> poison, float %7, i64 0
  %i.d = insertelement <2 x float> %i.c, float %5, i64 1
  %i.e = insertelement <2 x float> poison, float %3, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fsub <2 x float> %i.d, %i.f              ; 3 uses
  %i.h = shufflevector <2 x float> %6, <2 x float> %4, <2 x i32> <i32 3, i32 0>
  %i.i = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = fsub <2 x float> %i.h, %i.i              ; 3 uses
  %foldExtExtBinop210 = fsub <2 x float> %6, %2
  %i.k = extractelement <2 x float> %foldExtExtBinop210, i64 1 ; 4 uses
  %i.l = extractelement <2 x float> %i.g, i64 0   ; 3 uses
  %i.m = fneg float %i.l                          ; 2 uses
  %i.n = fneg float %i.k                          ; 2 uses
  %i.o = fmul float %.sroa.278.0.copyload, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i, float %i.l, float %i.o) ; 2 uses
  %i.q = fmul float %.sroa.011.0.vec.extract.i, %i.m
  %i.r = extractelement <2 x float> %i.j, i64 1   ; 3 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %.sroa.278.0.copyload, float %i.r, float %i.q) ; 2 uses
  %i.t = fneg float %i.r                          ; 2 uses
  %i.u = fmul float %.sroa.011.4.vec.extract.i, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i, float %i.k, float %i.u) ; 2 uses
  %i.w = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.x = fmul float %i.w, %i.s
  %i.y = tail call float @llvm.fmuladd.f32(float %i.b, float %i.p, float %i.x)
  %i.z = extractelement <2 x float> %i.g, i64 1   ; 4 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.v, float %i.y) ; 2 uses
  %i.ab = tail call float @llvm.fabs.f32(float %i.aa)
  %or.cond = fcmp olt float %i.ab, f0x358637BD
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = fdiv float 1.000000e+00, %i.aa          ; 3 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %1, align 8 ; 3 uses
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.264.0.copyload = load float, ptr %.sroa.264.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop212 = fsub <2 x float> %.sroa.063.0.copyload, %2
  %i.ad = extractelement <2 x float> %foldExtExtBinop212, i64 0 ; 3 uses
  %foldExtExtBinop214 = fsub <2 x float> %.sroa.063.0.copyload, %2
  %i.ae = extractelement <2 x float> %foldExtExtBinop214, i64 1 ; 3 uses
  %i.af = fsub float %.sroa.264.0.copyload, %3    ; 3 uses
  %i.ag = fmul float %i.s, %i.ae
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.p, float %i.ag)
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.v, float %i.ah)
  %i.aj = fmul float %i.ac, %i.ai                 ; 3 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %i.al = fcmp ogt float %i.aj, 1.000000e+00
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = fneg float %i.w
  %i.an = fmul float %i.af, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.z, float %i.an) ; 2 uses
  %i.ap = fneg float %i.z
  %i.aq = fmul float %i.ad, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.af, float %i.b, float %i.aq) ; 2 uses
  %i.as = fneg float %i.b
  %i.at = fmul float %i.ae, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.w, float %i.at) ; 2 uses
  %i.av = fmul float %.sroa.011.4.vec.extract.i, %i.ar
  %i.aw = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i, float %i.ao, float %i.av)
  %i.ax = tail call float @llvm.fmuladd.f32(float %.sroa.278.0.copyload, float %i.au, float %i.aw)
  %i.ay = fmul float %i.ac, %i.ax                 ; 2 uses
  %i.az = fcmp olt float %i.ay, 0.000000e+00
  %i.ba = fadd float %i.aj, %i.ay
  %i.bb = fcmp ogt float %i.ba, 1.000000e+00
  %or.cond146 = or i1 %i.az, %i.bb
  br i1 %or.cond146, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = fmul float %i.k, %i.ar
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ao, float %i.bc)
  %i.be = tail call float @llvm.fmuladd.f32(float %i.l, float %i.au, float %i.bd)
  %i.bf = fmul float %i.ac, %i.be                 ; 4 uses
  %i.bg = fcmp ogt float %i.bf, f0x358637BD
  br i1 %i.bg, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.bf, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bj = fmul float %i.z, %i.n
  %i.bk = fmul float %i.b, %i.m
  %i.bl = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.j, <2 x float> %i.bm) ; 5 uses
  %i.bo = fmul float %i.w, %i.t
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.b, float %i.k, float %i.bo) ; 4 uses
  %foldExtExtBinop216 = fmul <2 x float> %i.bn, %i.bn
  %i.bq = extractelement <2 x float> %foldExtExtBinop216, i64 1
  %i.br = extractelement <2 x float> %i.bn, i64 0 ; 2 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bq)
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bs) ; 2 uses
  %i.bu = fcmp une float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.f, label %Vector3Normalize.exit

bb.f:                                             ; preds = %bb.e
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bt)
  %i.bv = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bn, %i.bx
  %i.bz = fmul float %i.bp, %i.bv
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.e, %bb.f
  %.sroa.013.0.i = phi <2 x float> [ %i.by, %bb.f ], [ %i.bn, %bb.e ]
  %.sroa.617.0.i = phi float [ %i.bz, %bb.f ], [ %i.bp, %bb.e ]
  store <2 x float> %.sroa.013.0.i, ptr %i.bi, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.sroa.617.0.i, ptr %.sroa.434.0..sroa_idx, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %.sroa.077.0.copyload, %i.cc
  %i.ce = fmul float %.sroa.278.0.copyload, %i.bf
  %i.cf = fadd <2 x float> %.sroa.063.0.copyload, %i.cd
  %i.cg = fadd float %.sroa.264.0.copyload, %i.ce
  store <2 x float> %i.cf, ptr %i.ca, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cg, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %Vector3Normalize.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetRayCollisionQuad(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RayCollision) align 4 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly byval(%struct.Ray) align 8 captures(none) %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, float %9) local_unnamed_addr #40 {
bb.a:
  %.sroa.068.0.copyload = load <2 x float>, ptr %1, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.569.0.copyload = load <2 x float>, ptr %.sroa.569.0..sroa_idx, align 4 ; 4 uses
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.670.0.copyload = load float, ptr %.sroa.670.0..sroa_idx, align 4 ; 8 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.569.0.copyload, i64 1 ; 6 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.569.0.copyload, i64 0 ; 6 uses
  %foldExtExtBinop = fsub <2 x float> %4, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 5 uses
  %i.b = insertelement <2 x float> poison, float %9, i64 0 ; 2 uses
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1
  %i.d = insertelement <2 x float> poison, float %3, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = fsub <2 x float> %i.c, %i.e              ; 3 uses
  %i.g = shufflevector <2 x float> %8, <2 x float> %4, <2 x i32> <i32 3, i32 0>
  %i.h = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fsub <2 x float> %i.g, %i.h              ; 3 uses
  %foldExtExtBinop97 = fsub <2 x float> %8, %2
  %i.j = extractelement <2 x float> %foldExtExtBinop97, i64 1 ; 4 uses
  %i.k = extractelement <2 x float> %i.f, i64 0   ; 3 uses
  %i.l = fneg float %i.k                          ; 2 uses
  %i.m = fneg float %i.j                          ; 2 uses
  %i.n = fmul float %.sroa.670.0.copyload, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i, float %i.k, float %i.n) ; 2 uses
  %i.p = fmul float %.sroa.011.0.vec.extract.i.i, %i.l
  %i.q = extractelement <2 x float> %i.i, i64 1   ; 3 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %.sroa.670.0.copyload, float %i.q, float %i.p) ; 2 uses
  %i.s = fneg float %i.q                          ; 2 uses
  %i.t = fmul float %.sroa.011.4.vec.extract.i.i, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %i.j, float %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.i, i64 0   ; 4 uses
  %i.w = fmul float %i.v, %i.r
end_hunk_0
