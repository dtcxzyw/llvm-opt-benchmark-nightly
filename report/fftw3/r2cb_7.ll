Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 7, ptr @.str, %struct.opcnt { double 1.100000e+01, double 6.000000e+00, double 1.300000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [7 x i8] c"r2cb_7\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_7(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_7, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_7(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.089 = phi ptr [ %0, %.lr.ph ], [ %i.az, %bb.b ] ; 5 uses
  %.07588 = phi ptr [ %1, %.lr.ph ], [ %i.ba, %bb.b ] ; 4 uses
  %.07687 = phi ptr [ %2, %.lr.ph ], [ %i.bb, %bb.b ] ; 5 uses
  %.07786 = phi ptr [ %3, %.lr.ph ], [ %i.bc, %bb.b ] ; 4 uses
  %.07885 = phi ptr [ %4, %.lr.ph ], [ %i.bd, %bb.b ] ; 4 uses
  %.07984 = phi ptr [ %5, %.lr.ph ], [ %i.be, %bb.b ] ; 4 uses
  %.08083 = phi ptr [ %6, %.lr.ph ], [ %i.bf, %bb.b ] ; 4 uses
  %.08182 = phi i64 [ %7, %.lr.ph ], [ %i.ay, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.08083, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.07786, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.08083, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds [8 x i8], ptr %.07786, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.08083, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %.07786, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !13
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0 ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, <double f0xBFFF329C0558E969, double f0x3FF904C37505DE4B>
  %i.r = insertelement <2 x double> poison, double %i.f, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> <double f0x3FF904C37505DE4B, double f0x3FEBC4C04D71ABC1>, <2 x double> %i.q) ; 2 uses
  %10 = extractelement <2 x double> %i.t, i64 0
  %11 = tail call double @llvm.fmuladd.f64(double %i.j, double f0xBFEBC4C04D71ABC1, double %10) ; 2 uses
  %12 = fmul double %i.f, f0x3FFF329C0558E969
  %i.u = insertelement <2 x double> poison, double %i.j, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %14 = insertelement <2 x double> %13, double %12, i64 1
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> <double f0xBFFF329C0558E969, double f0x3FF904C37505DE4B>, <2 x double> %14) ; 3 uses
  %i.w = load double, ptr %.07687, align 8, !tbaa !13 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.07984, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds [8 x i8], ptr %.07687, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.07984, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %.07687, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.07984, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = getelementptr inbounds [8 x i8], ptr %.07687, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13 ; 4 uses
  %i.aj = insertelement <2 x double> %i.o, double %i.ai, i64 1
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x double> %16, double %i.w, i64 1
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> <double f0x3FEBC4C04D71ABC1, double f0x3FF3F3A0E28BEDD1>, <2 x double> %i.ak) ; 3 uses
  %i.am = fmul double %i.ae, f0x3FFCD4BCA9CB5C71
  %i.an = insertelement <2 x double> poison, double %i.aa, i64 0 ; 2 uses
  %17 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x double> poison, double %i.am, i64 0
  %19 = insertelement <2 x double> %18, double %i.w, i64 1
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double f0x3FDC7B90E3024582, double f0x3FF3F3A0E28BEDD1>, <2 x double> %19) ; 2 uses
  %shift = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %20
  %21 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %22 = fmul double %i.ae, f0x3FDC7B90E3024582
  %23 = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ao = insertelement <2 x double> %23, double %i.ae, i64 1
  %i.ap = insertelement <2 x double> poison, double %22, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.w, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> <double f0x3FFCD4BCA9CB5C71, double f0x3FF3F3A0E28BEDD1>, <2 x double> %i.aq) ; 2 uses
  %shift91 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop92 = fsub <2 x double> %shift91, %i.ar ; 2 uses
  %24 = fmul double %i.ai, f0x3FDC7B90E3024582
  %25 = fsub double %21, %11
  %i.as = getelementptr inbounds nuw i8, ptr %.07885, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.089, i64 %i.at
  store double %25, ptr %i.au, align 8, !tbaa !13
  %26 = fadd double %11, %21
  %27 = getelementptr inbounds nuw i8, ptr %.07885, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !11     ; 2 uses
  %29 = getelementptr inbounds [8 x i8], ptr %.07588, i64 %28
  store double %26, ptr %29, align 8, !tbaa !13
  %foldExtExtBinop94 = fadd <2 x double> %15, %foldExtExtBinop92
  %30 = extractelement <2 x double> %foldExtExtBinop94, i64 0
  %31 = getelementptr inbounds [8 x i8], ptr %.089, i64 %28
  store double %30, ptr %31, align 8, !tbaa !13
  %foldExtExtBinop96 = fsub <2 x double> %foldExtExtBinop92, %15
  %i.av = extractelement <2 x double> %foldExtExtBinop96, i64 0
  %32 = getelementptr inbounds [8 x i8], ptr %.07588, i64 %i.at
  store double %i.av, ptr %32, align 8, !tbaa !13
  %33 = getelementptr inbounds nuw i8, ptr %.07885, i64 24
  %34 = load i64, ptr %33, align 8, !tbaa !11
  %i.aw = getelementptr inbounds [8 x i8], ptr %.089, i64 %34
  %35 = fadd double %i.ae, %i.ai
  %36 = fadd double %i.aa, %35
  %37 = insertelement <2 x double> %i.an, double %36, i64 1
  %38 = insertelement <2 x double> poison, double %24, i64 0
  %39 = insertelement <2 x double> %38, double %i.w, i64 1
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> <double f0x3FFCD4BCA9CB5C71, double 2.000000e+00>, <2 x double> %39) ; 2 uses
  %shift98 = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop99 = fsub <2 x double> %shift98, %40 ; 2 uses
  %foldExtExtBinop101 = fadd <2 x double> %i.al, %foldExtExtBinop99
  %i.ax = extractelement <2 x double> %foldExtExtBinop101, i64 0
  store double %i.ax, ptr %i.aw, align 8, !tbaa !13
  %foldExtExtBinop103 = fsub <2 x double> %foldExtExtBinop99, %i.al
  %41 = extractelement <2 x double> %foldExtExtBinop103, i64 0
  store double %41, ptr %.07588, align 8, !tbaa !13
  %42 = extractelement <2 x double> %40, i64 1
  store double %42, ptr %.089, align 8, !tbaa !13
  %i.ay = add nsw i64 %.08182, -1
  %i.az = getelementptr inbounds [8 x i8], ptr %.089, i64 %9
  %i.ba = getelementptr inbounds [8 x i8], ptr %.07588, i64 %9
  %i.bb = getelementptr inbounds [8 x i8], ptr %.07687, i64 %8
  %i.bc = getelementptr inbounds [8 x i8], ptr %.07786, i64 %8
  %i.bd = getelementptr inbounds [8 x i8], ptr %.07885, i64 %i.b
  %i.be = getelementptr inbounds [8 x i8], ptr %.07984, i64 %i.b
  %i.bf = getelementptr inbounds [8 x i8], ptr %.08083, i64 %i.b
  %i.bg = icmp samesign ugt i64 %.08182, 1
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !9

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
