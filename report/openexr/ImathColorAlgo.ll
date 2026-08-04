inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_2::Vec3" = type { double, double, double }
%"class.Imath_3_2::Color4" = type { double, double, double, double }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9Imath_3_29hsv2rgb_dERKNS_4Vec3IdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !12 ; 9 uses
  %i.f = fcmp oeq double %i.a, 1.000000e+00
  %i.g = fmul double %i.a, 6.000000e+00
  %.0 = select i1 %i.f, double 0.000000e+00, double %i.g ; 2 uses
  %i.h = tail call double @llvm.floor.f64(double %.0)
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = sitofp i32 %i.i to double
  %i.k = fsub double %.0, %i.j                    ; 2 uses
  %i.l = fsub double 1.000000e+00, %i.c
  %i.m = fmul double %i.e, %i.l                   ; 6 uses
  %i.n = fneg double %i.c                         ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double 1.000000e+00)
  %3 = fmul double %i.e, %2                       ; 3 uses
  %4 = fsub double 1.000000e+00, %i.k
  %5 = tail call double @llvm.fmuladd.f64(double %i.n, double %4, double 1.000000e+00)
  %i.o = fmul double %i.e, %5                     ; 3 uses
  switch i32 %i.i, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.039 = phi double [ 0.000000e+00, %bb.a ], [ %i.m, %bb.b ], [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %3, %bb.g ]
  %.038 = phi double [ 0.000000e+00, %bb.a ], [ %i.o, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %3, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  %.037 = phi double [ 0.000000e+00, %bb.a ], [ %i.e, %bb.b ], [ %3, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.e, %bb.g ]
  store double %.037, ptr %0, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.038, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.039, ptr %i.q, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9Imath_3_29hsv2rgb_dERKNS_6Color4IdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Color4") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !13  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !16 ; 9 uses
  %i.f = fcmp oeq double %i.a, 1.000000e+00
  %i.g = fmul double %i.a, 6.000000e+00
  %.0 = select i1 %i.f, double 0.000000e+00, double %i.g ; 2 uses
  %i.h = tail call double @llvm.floor.f64(double %.0)
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = sitofp i32 %i.i to double
  %i.k = fsub double %.0, %i.j                    ; 2 uses
  %i.l = fsub double 1.000000e+00, %i.c
  %i.m = fmul double %i.e, %i.l                   ; 6 uses
  %i.n = fneg double %i.c                         ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double 1.000000e+00)
  %3 = fmul double %i.e, %2                       ; 3 uses
  %4 = fsub double 1.000000e+00, %i.k
  %5 = tail call double @llvm.fmuladd.f64(double %i.n, double %4, double 1.000000e+00)
  %i.o = fmul double %i.e, %5                     ; 3 uses
  switch i32 %i.i, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.040 = phi double [ 0.000000e+00, %bb.a ], [ %i.m, %bb.b ], [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %3, %bb.g ]
  %.039 = phi double [ 0.000000e+00, %bb.a ], [ %i.o, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %3, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  %.038 = phi double [ 0.000000e+00, %bb.a ], [ %i.e, %bb.b ], [ %3, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.e, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !17
  store double %.038, ptr %0, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.039, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.040, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.q, ptr %i.t, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9Imath_3_29rgb2hsv_dERKNS_4Vec3IdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %1, align 8, !tbaa !18  ; 7 uses
  %i.d = load double, ptr %i.a, align 8, !tbaa !18 ; 7 uses
  %i.e = fcmp ogt double %i.c, %i.d
  %i.f = load double, ptr %i.b, align 8, !tbaa !18 ; 6 uses
  %. = select i1 %i.e, double %i.c, double %i.d   ; 2 uses
  %i.g = fcmp ogt double %., %i.f
  %.65 = select i1 %i.g, double %., double %i.f   ; 6 uses
  %i.h = fcmp olt double %i.c, %i.d
  %.sink77 = select i1 %i.h, double %i.c, double %i.d ; 2 uses
  %i.i = fcmp olt double %.sink77, %i.f
  %.67 = select i1 %i.i, double %.sink77, double %i.f
  %i.j = fsub double %.65, %.67                   ; 4 uses
  %i.k = fcmp une double %.65, 0.000000e+00
  %i.l = fdiv double %i.j, %.65
  %.050 = select i1 %i.k, double %i.l, double 0.000000e+00 ; 2 uses
  %i.m = fcmp une double %.050, 0.000000e+00
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp oeq double %i.c, %.65
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = fsub double %i.d, %i.f
  %i.p = fdiv double %i.o, %i.j
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = fcmp oeq double %i.d, %.65
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fsub double %i.f, %i.c
  %i.s = fdiv double %i.r, %i.j
  %i.t = fadd double %i.s, 2.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = fsub double %i.c, %i.d
  %i.v = fdiv double %i.u, %i.j
  %i.w = fadd double %i.v, 4.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi double [ %i.p, %bb.c ], [ %i.t, %bb.e ], [ %i.w, %bb.f ]
  %i.x = fdiv double %.0, 6.000000e+00            ; 3 uses
  %i.y = fcmp olt double %i.x, 0.000000e+00
  %i.z = fadd double %i.x, 1.000000e+00
  %.049 = select i1 %i.y, double %i.z, double %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.1 = phi double [ %.049, %bb.g ], [ 0.000000e+00, %bb.a ]
  store double %.1, ptr %0, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.050, ptr %i.aa, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.65, ptr %i.ab, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9Imath_3_29rgb2hsv_dERKNS_6Color4IdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Color4") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %1, align 8, !tbaa !18  ; 7 uses
  %i.d = load double, ptr %i.a, align 8, !tbaa !18 ; 7 uses
  %i.e = fcmp ogt double %i.c, %i.d
  %i.f = load double, ptr %i.b, align 8, !tbaa !18 ; 6 uses
  %. = select i1 %i.e, double %i.c, double %i.d   ; 2 uses
  %i.g = fcmp ogt double %., %i.f
  %.66 = select i1 %i.g, double %., double %i.f   ; 6 uses
  %i.h = fcmp olt double %i.c, %i.d
  %.sink78 = select i1 %i.h, double %i.c, double %i.d ; 2 uses
  %i.i = fcmp olt double %.sink78, %i.f
  %.68 = select i1 %i.i, double %.sink78, double %i.f
  %i.j = fsub double %.66, %.68                   ; 4 uses
  %i.k = fcmp une double %.66, 0.000000e+00
  %i.l = fdiv double %i.j, %.66
  %.051 = select i1 %i.k, double %i.l, double 0.000000e+00 ; 2 uses
  %i.m = fcmp une double %.051, 0.000000e+00
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp oeq double %i.c, %.66
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = fsub double %i.d, %i.f
  %i.p = fdiv double %i.o, %i.j
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = fcmp oeq double %i.d, %.66
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fsub double %i.f, %i.c
  %i.s = fdiv double %i.r, %i.j
  %i.t = fadd double %i.s, 2.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = fsub double %i.c, %i.d
  %i.v = fdiv double %i.u, %i.j
  %i.w = fadd double %i.v, 4.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi double [ %i.p, %bb.c ], [ %i.t, %bb.e ], [ %i.w, %bb.f ]
  %i.x = fdiv double %.0, 6.000000e+00            ; 3 uses
  %i.y = fcmp olt double %i.x, 0.000000e+00
  %i.z = fadd double %i.x, 1.000000e+00
  %.050 = select i1 %i.y, double %i.z, double %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.1 = phi double [ %.050, %bb.g ], [ 0.000000e+00, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !17
  store double %.1, ptr %0, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.051, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.66, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ab, ptr %i.ae, align 8, !tbaa !17
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN9Imath_3_24Vec3IdEE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !10, i64 0}
!14 = !{!"_ZTSN9Imath_3_26Color4IdEE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!15 = !{!14, !10, i64 8}
!16 = !{!14, !10, i64 16}
!17 = !{!14, !10, i64 24}
!18 = !{!10, !10, i64 0}
end_hunk_0
