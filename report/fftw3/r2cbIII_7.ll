Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cbIII_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 7, ptr @.str, %struct.opcnt { double 9.000000e+00, double 4.000000e+00, double 1.500000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cbIII_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [10 x i8] c"r2cbIII_7\00", align 1
@fftw_rdft_r2cbIII_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cbIII_7(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cbIII_7, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cbIII_7(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.088 = phi ptr [ %0, %.lr.ph ], [ %i.ax, %bb.b ] ; 5 uses
  %.07487 = phi ptr [ %1, %.lr.ph ], [ %i.ay, %bb.b ] ; 4 uses
  %.07586 = phi ptr [ %2, %.lr.ph ], [ %i.az, %bb.b ] ; 5 uses
  %.07685 = phi ptr [ %3, %.lr.ph ], [ %i.ba, %bb.b ] ; 4 uses
  %.07784 = phi ptr [ %4, %.lr.ph ], [ %i.bb, %bb.b ] ; 4 uses
  %.07883 = phi ptr [ %5, %.lr.ph ], [ %i.bc, %bb.b ] ; 4 uses
  %.07982 = phi ptr [ %6, %.lr.ph ], [ %i.bd, %bb.b ] ; 3 uses
  %.08081 = phi i64 [ %7, %.lr.ph ], [ %i.aw, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.07982, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.07685, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = load double, ptr %.07685, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07982, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds [8 x i8], ptr %.07685, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.m = insertelement <2 x double> %i.l, double %i.g, i64 1
  %i.n = fmul <2 x double> %i.m, <double f0x3FFF329C0558E969, double f0xBFFF329C0558E969>
  %i.o = insertelement <2 x double> poison, double %i.f, i64 0 ; 2 uses
  %i.p = insertelement <2 x double> %i.o, double %i.k, i64 1
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> splat (double f0x3FF904C37505DE4B), <2 x double> %i.n)
  %10 = insertelement <2 x double> poison, double %i.g, i64 0 ; 2 uses
  %i.r = insertelement <2 x double> %10, double %i.f, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> <double f0x3FEBC4C04D71ABC1, double f0xBFEBC4C04D71ABC1>, <2 x double> %i.q) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.07883, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds [8 x i8], ptr %.07586, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 4 uses
  %i.x = load double, ptr %.07586, align 8, !tbaa !13 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07883, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds [8 x i8], ptr %.07586, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.07883, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds [8 x i8], ptr %.07586, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 4 uses
  %11 = insertelement <2 x double> %10, double %i.x, i64 1
  %12 = fmul <2 x double> %11, <double f0xBFF904C37505DE4B, double f0x3FFCD4BCA9CB5C71>
  %i.ag = insertelement <2 x double> %i.o, double %i.af, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> <double f0x3FFF329C0558E969, double f0x3FDC7B90E3024582>, <2 x double> %12) ; 2 uses
  %14 = insertelement <2 x double> %i.l, double %i.ab, i64 1
  %i.ah = insertelement <2 x double> %13, double %i.w, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> <double f0xBFEBC4C04D71ABC1, double f0x3FF3F3A0E28BEDD1>, <2 x double> %i.ah) ; 3 uses
  %i.aj = fmul double %i.x, f0x3FDC7B90E3024582
  %i.ak = insertelement <2 x double> poison, double %i.ab, i64 0
  %15 = insertelement <2 x double> %i.ak, double %i.af, i64 1
  %i.al = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.w, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> <double f0x3FFCD4BCA9CB5C71, double f0x3FF3F3A0E28BEDD1>, <2 x double> %i.am) ; 2 uses
  %16 = fmul double %i.ab, f0x3FDC7B90E3024582
  %17 = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ao = insertelement <2 x double> %17, double %i.af, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.w, i64 0
  %18 = insertelement <2 x double> %i.ap, double %16, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> <double f0x3FF3F3A0E28BEDD1, double f0x3FFCD4BCA9CB5C71>, <2 x double> %18) ; 2 uses
  %shift90 = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop91 = fsub <2 x double> %i.aq, %shift90 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.07784, i64 24
  %20 = load i64, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds [8 x i8], ptr %.088, i64 %20
  %i.ar = getelementptr inbounds nuw i8, ptr %.07784, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.088, i64 %i.as
  %22 = shufflevector <2 x double> %13, <2 x double> %i.an, <2 x i32> <i32 1, i32 2>
  %23 = shufflevector <2 x double> %i.ai, <2 x double> %i.an, <2 x i32> <i32 1, i32 3>
  %24 = fsub <2 x double> %22, %23                ; 3 uses
  %foldExtExtBinop90 = fsub <2 x double> %24, %i.s
  %25 = extractelement <2 x double> %foldExtExtBinop90, i64 0
  store double %25, ptr %.07487, align 8, !tbaa !13
  %foldExtExtBinop95 = fadd <2 x double> %i.s, %24 ; 2 uses
  %i.au = extractelement <2 x double> %foldExtExtBinop95, i64 0
  %26 = fneg double %i.au
  store double %26, ptr %21, align 8, !tbaa !13
  %foldExtExtBinop92 = fsub <2 x double> %i.s, %24
  %27 = extractelement <2 x double> %foldExtExtBinop92, i64 1
  store double %27, ptr %i.at, align 8, !tbaa !13
  %28 = getelementptr inbounds nuw i8, ptr %.07784, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !11     ; 2 uses
  %30 = getelementptr inbounds [8 x i8], ptr %.07487, i64 %29
  %31 = extractelement <2 x double> %foldExtExtBinop95, i64 1
  store double %31, ptr %30, align 8, !tbaa !13
  %foldExtExtBinop94 = fsub <2 x double> %i.ai, %foldExtExtBinop91
  %32 = extractelement <2 x double> %foldExtExtBinop94, i64 0
  %33 = getelementptr inbounds [8 x i8], ptr %.07487, i64 %i.as
  store double %32, ptr %33, align 8, !tbaa !13
  %foldExtExtBinop96 = fadd <2 x double> %i.ai, %foldExtExtBinop91
  %i.av = extractelement <2 x double> %foldExtExtBinop96, i64 0
  %34 = getelementptr inbounds [8 x i8], ptr %.088, i64 %29
  store double %i.av, ptr %34, align 8, !tbaa !13
  %35 = fadd double %i.ab, %i.af
  %36 = fadd double %i.x, %35
  %37 = tail call double @llvm.fmuladd.f64(double %36, double 2.000000e+00, double %i.w)
  store double %37, ptr %.088, align 8, !tbaa !13
  %i.aw = add nsw i64 %.08081, -1
  %i.ax = getelementptr inbounds [8 x i8], ptr %.088, i64 %9
  %i.ay = getelementptr inbounds [8 x i8], ptr %.07487, i64 %9
  %i.az = getelementptr inbounds [8 x i8], ptr %.07586, i64 %8
  %i.ba = getelementptr inbounds [8 x i8], ptr %.07685, i64 %8
  %i.bb = getelementptr inbounds [8 x i8], ptr %.07784, i64 %i.b
  %i.bc = getelementptr inbounds [8 x i8], ptr %.07883, i64 %i.b
  %i.bd = getelementptr inbounds [8 x i8], ptr %.07982, i64 %i.b
  %i.be = icmp samesign ugt i64 %.08081, 1
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
