Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cf_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 7, ptr @.str, %struct.opcnt { double 1.200000e+01, double 6.000000e+00, double 1.200000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cf_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [7 x i8] c"r2cf_7\00", align 1
@fftw_rdft_r2cf_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cf_7(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cf_7, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cf_7(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.089 = phi ptr [ %0, %.lr.ph ], [ %i.bd, %bb.b ] ; 5 uses
  %.07588 = phi ptr [ %1, %.lr.ph ], [ %i.be, %bb.b ] ; 4 uses
  %.07687 = phi ptr [ %2, %.lr.ph ], [ %i.bf, %bb.b ] ; 5 uses
  %.07786 = phi ptr [ %3, %.lr.ph ], [ %i.bg, %bb.b ] ; 4 uses
  %.07885 = phi ptr [ %4, %.lr.ph ], [ %i.bh, %bb.b ] ; 4 uses
  %.07984 = phi ptr [ %5, %.lr.ph ], [ %i.bi, %bb.b ] ; 4 uses
  %.08083 = phi ptr [ %6, %.lr.ph ], [ %i.bj, %bb.b ] ; 4 uses
  %.08182 = phi i64 [ %7, %.lr.ph ], [ %i.bc, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.089, align 8, !tbaa !13 ; 3 uses
  %i.d = load double, ptr %.07588, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07885, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds [8 x i8], ptr %.089, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.i = fadd double %i.d, %i.h                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07885, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.089, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07885, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.07588, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.07588, i64 %i.k
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.089, i64 %i.o
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08083, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds [8 x i8], ptr %.07786, i64 %i.w
  %i.y = insertelement <2 x double> poison, double %i.u, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.q, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.m, i64 1
  %i.ac = fsub <2 x double> %i.z, %i.ab           ; 4 uses
  %i.ad = fmul <2 x double> %i.ac, <double f0xBFE904C37505DE4B, double f0x3FEF329C0558E969>
  %10 = extractelement <2 x double> %i.ac, i64 1  ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.08083, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !11
  %13 = getelementptr inbounds [8 x i8], ptr %.07786, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %.07984, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds [8 x i8], ptr %.07687, i64 %15
  %17 = fsub double %i.h, %i.d                    ; 2 uses
  %18 = insertelement <2 x double> poison, double %17, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> <double f0x3FEF329C0558E969, double f0x3FE904C37505DE4B>, <2 x double> %i.ad) ; 2 uses
  %i.ae = extractelement <2 x double> %20, i64 0
  %21 = tail call double @llvm.fmuladd.f64(double %10, double f0xBFDBC4C04D71ABC1, double %i.ae)
  store double %21, ptr %i.x, align 8, !tbaa !13
  %22 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %23 = insertelement <2 x double> %22, double %i.c, i64 1
  %24 = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.af = insertelement <2 x double> %24, double %i.i, i64 0
  %25 = fmul <2 x double> %i.af, <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>
  %i.ag = getelementptr inbounds nuw i8, ptr %.08083, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %.07786, i64 %i.ah
  %i.aj = fmul double %i.i, f0x3FECD4BCA9CB5C71
  %26 = insertelement <2 x double> poison, double %i.m, i64 0
  %27 = insertelement <2 x double> %26, double %i.s, i64 1
  %28 = insertelement <2 x double> poison, double %i.q, i64 0
  %29 = insertelement <2 x double> %28, double %i.u, i64 1
  %30 = fadd <2 x double> %27, %29                ; 6 uses
  %31 = shufflevector <2 x double> %i.ac, <2 x double> %30, <2 x i32> <i32 0, i32 3>
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> <double f0x3FDBC4C04D71ABC1, double f0x3FE3F3A0E28BEDD1>, <2 x double> %23) ; 2 uses
  %33 = extractelement <2 x double> %32, i64 0
  store double %33, ptr %13, align 8, !tbaa !13
  %i.ak = insertelement <2 x double> %30, double %17, i64 1
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FDBC4C04D71ABC1>, <2 x double> %25) ; 2 uses
  %34 = extractelement <2 x double> %i.al, i64 1
  %35 = tail call double @llvm.fmuladd.f64(double %10, double f0xBFE904C37505DE4B, double %34)
  %36 = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.am = insertelement <2 x double> %36, double %i.aj, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FCC7B90E3024582>, <2 x double> %i.am) ; 2 uses
  %37 = shufflevector <2 x double> %32, <2 x double> %i.an, <2 x i32> <i32 1, i32 2>
  %i.ao = shufflevector <2 x double> %i.al, <2 x double> %i.an, <2 x i32> <i32 0, i32 3>
  %i.ap = fsub <2 x double> %37, %i.ao            ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  store double %i.aq, ptr %16, align 8, !tbaa !13
  store double %35, ptr %i.ai, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.07984, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds [8 x i8], ptr %.07687, i64 %i.as
  %i.au = extractelement <2 x double> %i.ap, i64 1
  store double %i.au, ptr %i.at, align 8, !tbaa !13
  %38 = extractelement <2 x double> %30, i64 0    ; 2 uses
  %i.av = fmul double %38, f0x3FCC7B90E3024582
  %39 = extractelement <2 x double> %30, i64 1
  %40 = insertelement <2 x double> %30, double %i.i, i64 0
  %41 = insertelement <2 x double> %36, double %i.av, i64 1
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FECD4BCA9CB5C71>, <2 x double> %41) ; 2 uses
  %shift = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %42, %shift
  %43 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aw = getelementptr inbounds nuw i8, ptr %.07984, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds [8 x i8], ptr %.07687, i64 %i.ax
  store double %43, ptr %i.ay, align 8, !tbaa !13
  %i.az = fadd double %i.c, %i.i
  %i.ba = fadd double %i.az, %38
  %i.bb = fadd double %i.ba, %39
  store double %i.bb, ptr %.07687, align 8, !tbaa !13
  %i.bc = add nsw i64 %.08182, -1
  %i.bd = getelementptr inbounds [8 x i8], ptr %.089, i64 %8
  %i.be = getelementptr inbounds [8 x i8], ptr %.07588, i64 %8
  %i.bf = getelementptr inbounds [8 x i8], ptr %.07687, i64 %9
  %i.bg = getelementptr inbounds [8 x i8], ptr %.07786, i64 %9
  %i.bh = getelementptr inbounds [8 x i8], ptr %.07885, i64 %i.b
  %i.bi = getelementptr inbounds [8 x i8], ptr %.07984, i64 %i.b
  %i.bj = getelementptr inbounds [8 x i8], ptr %.08083, i64 %i.b
  %i.bk = icmp samesign ugt i64 %.08182, 1
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !9

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
