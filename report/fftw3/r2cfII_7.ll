Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cfII_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 7, ptr @.str, %struct.opcnt { double 1.200000e+01, double 6.000000e+00, double 1.200000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cfII_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [9 x i8] c"r2cfII_7\00", align 1
@fftw_rdft_r2cfII_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cfII_7(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cfII_7, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cfII_7(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.088 = phi ptr [ %0, %.lr.ph ], [ %i.bh, %bb.b ] ; 5 uses
  %.07487 = phi ptr [ %1, %.lr.ph ], [ %i.bi, %bb.b ] ; 4 uses
  %.07586 = phi ptr [ %2, %.lr.ph ], [ %i.bj, %bb.b ] ; 5 uses
  %.07685 = phi ptr [ %3, %.lr.ph ], [ %i.bk, %bb.b ] ; 4 uses
  %.07784 = phi ptr [ %4, %.lr.ph ], [ %i.bl, %bb.b ] ; 4 uses
  %.07883 = phi ptr [ %5, %.lr.ph ], [ %i.bm, %bb.b ] ; 4 uses
  %.07982 = phi ptr [ %6, %.lr.ph ], [ %i.bn, %bb.b ] ; 3 uses
  %.08081 = phi i64 [ %7, %.lr.ph ], [ %i.bg, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.088, align 8, !tbaa !13 ; 4 uses
  %i.d = load double, ptr %.07487, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07784, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds [8 x i8], ptr %.088, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.i = fsub double %i.d, %i.h                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07784, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.088, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07784, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.07487, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  %10 = fsub double %i.m, %i.q                    ; 4 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.07487, i64 %i.k
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.088, i64 %i.o
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 3 uses
  %11 = fsub double %i.s, %i.u                    ; 4 uses
  %i.v = insertelement <2 x double> poison, double %i.m, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.s, i64 1
  %i.x = insertelement <2 x double> poison, double %i.q, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.u, i64 1
  %i.z = fadd <2 x double> %i.w, %i.y             ; 3 uses
  %i.aa = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.d, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.h, i64 1
  %i.ae = fadd <2 x double> %i.ab, %i.ad          ; 3 uses
  %i.af = fmul <2 x double> %i.ae, <double f0x3FEF329C0558E969, double f0xBFEF329C0558E969>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> splat (double f0x3FE904C37505DE4B), <2 x double> %i.af) ; 2 uses
  %12 = extractelement <2 x double> %i.ag, i64 0
  %13 = extractelement <2 x double> %i.ae, i64 1
  %14 = tail call double @llvm.fmuladd.f64(double %13, double f0x3FDBC4C04D71ABC1, double %12)
  %i.ah = fneg double %14
  store double %i.ah, ptr %.07685, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.07982, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds [8 x i8], ptr %.07685, i64 %i.aj
  %15 = insertelement <2 x double> %i.z, double %10, i64 1
  %16 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %17 = insertelement <2 x double> %16, double %i.c, i64 1
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> <double f0xBFDBC4C04D71ABC1, double f0x3FE3F3A0E28BEDD1>, <2 x double> %17) ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  store double %19, ptr %i.ak, align 8, !tbaa !13
  %i.al = insertelement <2 x double> %i.ae, double %i.i, i64 0
  %i.am = fmul <2 x double> %i.al, <double f0x3FECD4BCA9CB5C71, double f0xBFE904C37505DE4B>
  %20 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %21 = insertelement <2 x double> %20, double %11, i64 0
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>, <2 x double> %i.am) ; 2 uses
  %shift = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.an
  %i.ao = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.ao, ptr %.07586, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.07982, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds [8 x i8], ptr %.07685, i64 %i.aq
  %22 = insertelement <2 x double> %20, double %11, i64 1
  %i.as = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x double> %i.as, double %i.c, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> <double f0xBFDBC4C04D71ABC1, double f0x3FECD4BCA9CB5C71>, <2 x double> %i.at) ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  store double %i.av, ptr %i.ar, align 8, !tbaa !13
  %23 = fmul double %10, f0x3FCC7B90E3024582
  %24 = getelementptr inbounds nuw i8, ptr %.07883, i64 16
  %25 = load i64, ptr %24, align 8, !tbaa !11
  %26 = getelementptr inbounds [8 x i8], ptr %.07586, i64 %25
  %27 = insertelement <2 x double> poison, double %i.i, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = insertelement <2 x double> poison, double %23, i64 0
  %30 = insertelement <2 x double> %29, double %i.c, i64 1
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FCC7B90E3024582>, <2 x double> %30) ; 2 uses
  %shift90 = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop91 = fsub <2 x double> %shift90, %31
  %32 = extractelement <2 x double> %foldExtExtBinop91, i64 0
  store double %32, ptr %26, align 8, !tbaa !13
  %33 = fmul double %10, f0x3FECD4BCA9CB5C71
  %34 = tail call double @llvm.fmuladd.f64(double %11, double f0x3FE3F3A0E28BEDD1, double %33)
  %i.aw = extractelement <2 x double> %31, i64 1
  %35 = fsub double %i.aw, %34
  %i.ax = getelementptr inbounds nuw i8, ptr %.07883, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr inbounds [8 x i8], ptr %.07586, i64 %i.ay
  store double %35, ptr %i.az, align 8, !tbaa !13
  %i.ba = fadd double %i.c, %10
  %i.bb = fadd double %i.i, %11
  %i.bc = fsub double %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.07883, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds [8 x i8], ptr %.07586, i64 %i.be
  store double %i.bc, ptr %i.bf, align 8, !tbaa !13
  %i.bg = add nsw i64 %.08081, -1
  %i.bh = getelementptr inbounds [8 x i8], ptr %.088, i64 %8
  %i.bi = getelementptr inbounds [8 x i8], ptr %.07487, i64 %8
  %i.bj = getelementptr inbounds [8 x i8], ptr %.07586, i64 %9
  %i.bk = getelementptr inbounds [8 x i8], ptr %.07685, i64 %9
  %i.bl = getelementptr inbounds [8 x i8], ptr %.07784, i64 %i.b
  %i.bm = getelementptr inbounds [8 x i8], ptr %.07883, i64 %i.b
  %i.bn = getelementptr inbounds [8 x i8], ptr %.07982, i64 %i.b
  %i.bo = icmp samesign ugt i64 %.08081, 1
  br i1 %i.bo, label %bb.b, label %._crit_edge, !llvm.loop !9

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
