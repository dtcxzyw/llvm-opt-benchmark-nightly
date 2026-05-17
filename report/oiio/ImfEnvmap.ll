inline.NumInlined: 54
inline.NumDeleted: 26
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEENS4_IfEE:bb.a
  %i.ac = fsub float %i.aa, %i.ab
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ad = load float, ptr %3, align 4, !tbaa !13
  %i.ae = fadd float %i.ad, 0.000000e+00
  store float %i.ae, ptr %0, align 4, !tbaa !13
  %i.af = sitofp i32 %i.o to float
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15
  %i.ai = fsub float %i.af, %i.ah
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.aj = load float, ptr %3, align 4, !tbaa !13
  %i.ak = fadd float %i.aj, 0.000000e+00
  store float %i.ak, ptr %0, align 4, !tbaa !13
  %i.al = sitofp i32 %i.m to float
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !15
  %i.ao = fadd float %i.an, %i.al
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.ap = sitofp i32 %i.n to float
  %i.aq = load float, ptr %3, align 4, !tbaa !13
  %i.ar = fsub float %i.ap, %i.aq
  store float %i.ar, ptr %0, align 4, !tbaa !13
  %i.as = sitofp i32 %i.o to float
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !15
  %i.av = fsub float %i.as, %i.au
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.aw = load float, ptr %3, align 4, !tbaa !13
  %i.ax = fadd float %i.aw, 0.000000e+00
  store float %i.ax, ptr %0, align 4, !tbaa !13
  %i.ay = sitofp i32 %i.o to float
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !15
  %i.bb = fsub float %i.ay, %i.ba
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi float [ %i.bb, %bb.g ], [ %i.av, %bb.f ], [ %i.ao, %bb.e ], [ %i.ai, %bb.d ], [ %i.ac, %bb.c ], [ %i.v, %bb.b ]
  store float %.sink, ptr %i.p, align 4, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap20faceAndPixelPositionERKN9Imath_3_14Vec3IfEERKNS1_3BoxINS1_4Vec2IiEEEERNS_11CubeMapFaceERNS7_IfEE(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = load i32, ptr %1, align 4, !tbaa !21
  %i.d = add i32 %i.b, 1
  %i.e = sub i32 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = add i32 %i.g, 1
  %i.k = sub i32 %i.j, %i.i
  %i.l = sdiv i32 %i.k, 6
  %.sroa.speculated.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.l, i32 %i.e) ; 2 uses
  %i.m = load <2 x float>, ptr %0, align 4, !tbaa !22 ; 6 uses
  %i.n = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.m) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !7  ; 4 uses
  %i.q = tail call noundef float @llvm.fabs.f32(float %i.p) ; 3 uses
  %i.r = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.s = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.t = fcmp ult float %i.r, %i.s
  %i.u = fcmp ult float %i.r, %i.q
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.w = fcmp oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !35
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !22
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.x = add nsw i32 %.sroa.speculated.i, -1
  %i.y = sitofp i32 %i.x to float
  %i.z = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = insertelement <2 x float> %i.z, float %i.p, i64 1
  %i.ab = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x float> %i.aa, %i.ab
  %i.ad = fadd <2 x float> %i.ac, splat (float 1.000000e+00)
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  store <2 x float> %i.ah, ptr %3, align 4, !tbaa !22
  %i.ai = fcmp ogt float %i.v, 0.000000e+00
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !35
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.aj = fcmp ult float %i.s, %i.q
  %i.ak = add nsw i32 %.sroa.speculated.i, -1
  %i.al = sitofp i32 %i.ak to float               ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = insertelement <2 x float> %i.m, float %i.p, i64 1
  %i.an = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fdiv <2 x float> %i.am, %i.an
  %i.ap = fadd <2 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = fmul <2 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = insertelement <2 x float> poison, float %i.al, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.aq, %i.as
  store <2 x float> %i.at, ptr %3, align 4, !tbaa !22
  %i.au = extractelement <2 x float> %i.m, i64 1
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %2, align 4, !tbaa !35
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  store i32 3, ptr %2, align 4, !tbaa !35
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.aw = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x float> %i.m, %i.ax
  %i.az = fadd <2 x float> %i.ay, splat (float 1.000000e+00)
  %i.ba = fmul <2 x float> %i.az, splat (float 5.000000e-01)
  %i.bb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.ba, %i.bc
  store <2 x float> %i.bd, ptr %3, align 4, !tbaa !22
  %i.be = fcmp ogt float %i.p, 0.000000e+00
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 4, ptr %2, align 4, !tbaa !35
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 5, ptr %2, align 4, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.l, %bb.m, %bb.i, %bb.j, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.Imath_3_1::Vec3") align 4 captures(none) initializes((0, 12)) %0, i32 noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = load i32, ptr %2, align 4, !tbaa !21
  %i.d = add i32 %i.b, 1
  %i.e = sub i32 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = add i32 %i.g, 1
  %i.k = sub i32 %i.j, %i.i
  %i.l = sdiv i32 %i.k, 6
  %.sroa.speculated.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.l, i32 %i.e) ; 2 uses
  %i.m = icmp sgt i32 %.sroa.speculated.i, 1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add nsw i32 %.sroa.speculated.i, -1
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = load <2 x float>, ptr %3, align 4, !tbaa !22
  %i.q = insertelement <2 x float> poison, float %i.o, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = phi <2 x float> [ %i.t, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !22
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %4, align 4, !tbaa !7
  %i.w = extractelement <2 x float> %i.u, i64 0   ; 5 uses
  %i.x = extractelement <2 x float> %i.u, i64 1   ; 5 uses
  switch i32 %1, label %bb.h [
    i32 0, label %.sink.split
    i32 1, label %.sink.split.sink.split
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

bb.f:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.c, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink20 = phi float [ %i.w, %bb.g ], [ %i.w, %bb.d ], [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ -1.000000e+00, %bb.c ]
  %.sroa.10.0.sink.ph = phi float [ %i.x, %bb.g ], [ 1.000000e+00, %bb.d ], [ -1.000000e+00, %bb.e ], [ %i.x, %bb.f ], [ %i.w, %bb.c ]
  %.sink.ph = phi float [ -1.000000e+00, %bb.g ], [ %i.x, %bb.d ], [ %i.x, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.x, %bb.c ]
  store float %.sink20, ptr %0, align 4, !tbaa !10
  %i.y = insertelement <2 x float> poison, float %.sroa.10.0.sink.ph, i64 0
  %i.z = insertelement <2 x float> %i.y, float %.sink.ph, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.c
  %i.aa = phi <2 x float> [ %i.u, %bb.c ], [ %i.z, %.sink.split.sink.split ]
  store <2 x float> %i.aa, ptr %i.v, align 4, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !22 ; 3 uses
  %i.b = fcmp ult <2 x float> %i.a, zeroinitializer
  %i.c = fneg <2 x float> %i.a
  %i.d = select <2 x i1> %i.b, <2 x float> %i.c, <2 x float> %i.a ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !7  ; 3 uses
  %i.g = fcmp ult float %i.f, 0.000000e+00
  %i.h = fneg float %i.f
  %i.i = select i1 %i.g, float %i.h, float %i.f   ; 3 uses
  %i.j = extractelement <2 x float> %i.d, i64 0   ; 3 uses
  %i.k = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.l = fcmp olt float %i.j, %i.k
  %.0 = select i1 %i.l, float %i.k, float %i.j    ; 2 uses
  %i.m = fcmp olt float %.0, %i.i
  %.1 = select i1 %i.m, float %i.i, float %.0     ; 5 uses
  %i.n = fcmp oeq float %.1, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.o = fdiv float %i.j, %.1                     ; 2 uses
  %i.p = fdiv float %i.k, %.1                     ; 2 uses
  %i.q = fdiv float %i.i, %.1                     ; 2 uses
  %i.r = fmul float %i.p, %i.p
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.s)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.t)
  %i.u = fmul float %.1, %sqrt
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.023 = phi float [ %i.u, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.023
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN9Imath_3_14Vec3IfEE", !9, i64 0, !9, i64 4, !9, i64 8}
!9 = !{!"float", !5, i64 0}
!10 = !{!8, !9, i64 0}
!11 = !{!8, !9, i64 4}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !9, i64 0}
!14 = !{!"_ZTSN9Imath_3_14Vec2IfEE", !9, i64 0, !9, i64 4}
!15 = !{!14, !9, i64 4}
!16 = !{!17, !4, i64 12}
!17 = !{!"_ZTSN9Imath_3_13BoxINS_4Vec2IiEEEE", !18, i64 0, !18, i64 8}
!18 = !{!"_ZTSN9Imath_3_14Vec2IiEE", !4, i64 0, !4, i64 4}
!19 = !{!17, !4, i64 4}
!20 = !{!17, !4, i64 8}
!21 = !{!17, !4, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE: argument 0"}
!25 = distinct !{!25, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap13pixelPositionERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE: argument 0"}
!28 = distinct !{!28, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap13pixelPositionERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE: argument 0"}
!31 = distinct !{!31, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEE: argument 0"}
!34 = distinct !{!34, !"_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEE"}
!35 = !{!36, !36, i64 0}
!36 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511CubeMapFaceE", !5, i64 0}
end_hunk_0
