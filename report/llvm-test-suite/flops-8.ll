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
@sb = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@sc = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@TimeArray = dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@T = dso_local local_unnamed_addr global [36 x double] zeroinitializer, align 16
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
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.a = load double, ptr @piref, align 8, !tbaa !8 ; 2 uses
  %i.b = load double, ptr @three, align 8, !tbaa !8 ; 2 uses
  %i.c = fmul double %i.b, 1.562500e+08
  %i.d = fdiv double %i.a, %i.c                   ; 2 uses
  %i.e = load double, ptr @B6, align 8, !tbaa !8  ; 2 uses
  %i.f = load double, ptr @B5, align 8, !tbaa !8  ; 2 uses
  %i.g = load double, ptr @B4, align 8, !tbaa !8  ; 2 uses
  %i.h = load double, ptr @B3, align 8, !tbaa !8  ; 2 uses
  %i.i = load double, ptr @B2, align 8, !tbaa !8  ; 2 uses
  %i.j = load double, ptr @B1, align 8, !tbaa !8  ; 2 uses
  %i.k = load double, ptr @one, align 8, !tbaa !8 ; 4 uses
  %i.l = load double, ptr @A6, align 8, !tbaa !8  ; 2 uses
  %i.m = load double, ptr @A5, align 8, !tbaa !8  ; 2 uses
  %i.n = load double, ptr @A4, align 8, !tbaa !8  ; 2 uses
  %i.o = load double, ptr @A3, align 8, !tbaa !8  ; 2 uses
  %i.p = load double, ptr @A2, align 8, !tbaa !8  ; 2 uses
  %i.q = load double, ptr @A1, align 8, !tbaa !8  ; 2 uses
  %0 = insertelement <2 x double> poison, double %i.k, i64 0
  %i.r = insertelement <2 x double> %0, double %i.m, i64 1
  %i.s = insertelement <2 x double> poison, double %i.l, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.045 = phi double [ 0.000000e+00, %bb.a ], [ %i.an, %bb.b ]
  %.04144 = phi i64 [ 1, %bb.a ], [ %i.ao, %bb.b ] ; 2 uses
  %i.t = uitofp nneg i64 %.04144 to double
  %i.u = fmul double %i.d, %i.t                   ; 3 uses
  %i.v = fmul double %i.u, %i.u                   ; 11 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.e, double %i.v, double %i.f)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double %i.g)
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.h)
  %i.z = tail call double @llvm.fmuladd.f64(double %i.v, double %i.y, double %i.i)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.v, double %i.z, double %i.j)
  %i.ab = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> %i.s, double %i.aa, i64 0
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ad, <2 x double> %i.r) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.ae, %i.ae
  %i.af = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ag = fmul double %i.u, %i.af
  %i.ah = extractelement <2 x double> %i.ae, i64 1
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.v, double %i.n)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.v, double %i.o)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.v, double %i.p)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.v, double %i.q)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.v, double %i.k)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.am, double %.045) ; 2 uses
  %i.ao = add nuw nsw i64 %.04144, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, 156250000
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.ap = fdiv double %i.a, %i.b                  ; 3 uses
  %i.aq = fmul double %i.ap, %i.ap                ; 12 uses
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.l, double %i.aq, double %i.m)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.aq, double %i.n)
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aq, double %i.o)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aq, double %i.p)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double %i.aq, double %i.q)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.aq, double %i.k)
  %i.ax = fmul double %i.ap, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.e, double %i.aq, double %i.f)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ay, double %i.g)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.az, double %i.h)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ba, double %i.i)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.bb, double %i.j)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.bc, double %i.k) ; 2 uses
  %i.be = fmul double %i.ax, %i.bd
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.an, double %i.bf)
  %i.bi = fmul double %i.d, %i.bh
  %i.bj = fdiv double %i.bi, %i.bg                ; 2 uses
  store double %i.bj, ptr @sa, align 8, !tbaa !8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8, !tbaa !8
  %i.bk = fadd double %i.bj, f0xBFD2AAAAAAAAAAAB  ; 2 uses
  store double %i.bk, ptr @sc, align 8, !tbaa !8
  %i.bl = fmul double %i.bk, 1.000000e-30
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.bl, double noundef 0.000000e+00, double noundef 0.000000e+00) ; 0 uses
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

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
