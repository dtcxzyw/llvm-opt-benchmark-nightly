begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@A0 = dso_local local_unnamed_addr global double 1.000000e+00, align 8
@A1 = dso_local local_unnamed_addr global double f0xBFC5555555559705, align 8
@A2 = dso_local local_unnamed_addr global double f0x3F811111113AE9A3, align 8
@A3 = dso_local local_unnamed_addr global double f0x3F2A01A03FB1CA71, align 8
@A4 = dso_local local_unnamed_addr global double f0x3EC71DF284AA3566, align 8
@A5 = dso_local local_unnamed_addr global double f0x3E5AEB5A8CF8A426, align 8
@A6 = dso_local local_unnamed_addr global double f0x3DE68DF75229C1A6, align 8
@B0 = dso_local local_unnamed_addr global double 1.000000e+00, align 8
@B1 = dso_local local_unnamed_addr global double f0xBFDFFFFFFFFF8156, align 8
@B2 = dso_local local_unnamed_addr global double f0x3FA5555555290224, align 8
@B3 = dso_local local_unnamed_addr global double f0xBF56C16BFFE76516, align 8
@B4 = dso_local local_unnamed_addr global double f0x3EFA019528242DB7, align 8
@B5 = dso_local local_unnamed_addr global double f0xBE927BB3D47DDB8E, align 8
@B6 = dso_local local_unnamed_addr global double f0x3E2157B275DF182A, align 8
@C0 = dso_local local_unnamed_addr global double 1.000000e+00, align 8
@C1 = dso_local local_unnamed_addr global double f0x3FEFFFFFFE37B3E2, align 8
@C2 = dso_local local_unnamed_addr global double f0x3FDFFFFFCC2BA4B8, align 8
@C3 = dso_local local_unnamed_addr global double f0x3FC555587C476915, align 8
@C4 = dso_local local_unnamed_addr global double f0x3FA5555B7E795548, align 8
@C5 = dso_local local_unnamed_addr global double f0x3F810D9A4AD9120C, align 8
@C6 = dso_local local_unnamed_addr global double f0x3F5713187EDB8C05, align 8
@C7 = dso_local local_unnamed_addr global double f0x3F26C077C8173F3A, align 8
@C8 = dso_local local_unnamed_addr global double f0x3F049D03FE04B1CF, align 8
@D1 = dso_local local_unnamed_addr global double f0x3FA47AE143138374, align 8
@D2 = dso_local local_unnamed_addr global double 9.600000e-04, align 8
@D3 = dso_local local_unnamed_addr global double f0x3EB4B05A0FF4A728, align 8
@E2 = dso_local local_unnamed_addr global double 4.800000e-04, align 8
@E3 = dso_local local_unnamed_addr global double 4.110510e-07, align 8
@TLimit = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@piref = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@one = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@two = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@three = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@four = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@five = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@scale = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@sa = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@sc = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@TimeArray = dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@T = dso_local local_unnamed_addr global [36 x double] zeroinitializer, align 16
@sb = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@sd = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@piprg = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@pierr = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.1 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.2 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
bb.a:
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  store double 1.000000e+00, ptr @TLimit, align 8, !tbaa !8
  store double f0x400921FB54442D18, ptr @piref, align 8, !tbaa !8
  store double 1.000000e+00, ptr @one, align 8, !tbaa !8
  store double 2.000000e+00, ptr @two, align 8, !tbaa !8
  store double 3.000000e+00, ptr @three, align 8, !tbaa !8
  store double 4.000000e+00, ptr @four, align 8, !tbaa !8
  store double 5.000000e+00, ptr @five, align 8, !tbaa !8
  store double 1.000000e+00, ptr @scale, align 8, !tbaa !8
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.a = load double, ptr @one, align 8, !tbaa !8 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.039 = phi i64 [ 1, %bb.a ], [ %i.i, %bb.b ]   ; 2 uses
  %.03538 = phi double [ 0.000000e+00, %bb.a ], [ %i.h, %bb.b ]
  %i.b = uitofp nneg i64 %.039 to double
  %i.c = fmul nnan double %i.b, f0x3EA5F9C4FF20F589 ; 5 uses
  %i.d = fmul nnan double %i.c, %i.c              ; 3 uses
  %0 = fadd double %i.a, %i.c
  %1 = fdiv double %i.a, %0
  %2 = fsub double %.03538, %1
  %3 = fadd double %i.a, %i.d
  %4 = fdiv double %i.c, %3
  %i.e = fsub double %2, %4
  %i.f = tail call double @llvm.fmuladd.f64(double %i.c, double %i.d, double %i.a)
  %i.g = fdiv double %i.d, %i.f
  %i.h = fsub double %i.e, %i.g                   ; 2 uses
  %i.i = add nuw nsw i64 %.039, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, 156250000
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.j = fneg double %i.a
  %i.k = fadd double %i.a, f0x40599541F7F192A4
  %i.l = fdiv double %i.a, %i.k
  %i.m = fsub double %i.j, %i.l
  %5 = insertelement <2 x double> poison, double %i.a, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fadd <2 x double> %6, <double f0x40C473EF42466D8C, double f0x413059F8E7CAE1C6>
  %i.o = fdiv <2 x double> <double f0x40599541F7F192A4, double f0x40C473EF42466D8C>, %i.n ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = fsub double %i.m, %i.p
  %i.r = extractelement <2 x double> %i.o, i64 1
  %i.s = fsub double %i.q, %i.r
  %i.t = load double, ptr @two, align 8, !tbaa !8
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %i.h, double %i.s)
  %i.v = fmul double %i.u, f0x3EE8B8FD9F05143A    ; 2 uses
  store double %i.v, ptr @sa, align 8, !tbaa !8
  %i.w = fadd double %i.v, 5.002000e+02           ; 2 uses
  store double %i.w, ptr @sc, align 8, !tbaa !8
  %i.x = fmul double %i.w, 1.000000e-30
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.x, double noundef 0.000000e+00, double noundef 0.000000e+00) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
