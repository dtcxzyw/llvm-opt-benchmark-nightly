Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTimingStatistics?download=true
inline.NumInlined: 285
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c"OverallAlgorithm....................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"OverallAlgorithm\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c" PrintProblemStatistics.............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c" InitializeIterates.................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c" UpdateHessian......................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c" OutputIteration....................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c" UpdateBarrierParameter.............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c" ComputeSearchDirection.............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c" ComputeAcceptableTrialPoint........: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c" AcceptTrialPoint...................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c" CheckConvergence...................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"PDSystemSolverTotal.................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"PDSystemSolverTotal\0A\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c" PDSystemSolverSolveOnce............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c" ComputeResiduals...................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c" StdAugSystemSolverMultiSolve.......: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c" LinearSystemScaling................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c" LinearSystemSymbolicFactorization..: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.18 = private unnamed_addr constant [73 x i8] c" LinearSystemFactorization..........: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c" LinearSystemBackSolve..............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c" LinearSystemStructureConverter.....: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"  LinearSystemStructureConverterInit: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c"QualityFunctionSearch...............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"TryCorrector........................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"Task1...............................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"Task2...............................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"Task3...............................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"Task4...............................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"Task5...............................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"Task6...............................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"Function Evaluations................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.31 = private unnamed_addr constant [73 x i8] c" Objective function.................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c" Objective function gradient........: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c" Equality constraints...............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c" Inequality constraints.............: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.35 = private unnamed_addr constant [73 x i8] c" Equality constraint Jacobian.......: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.36 = private unnamed_addr constant [73 x i8] c" Inequality constraint Jacobian.....: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c" Lagrangian Hessian.................: %10.3f (sys: %10.3f wall: %10.3f)\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5Ipopt16TimingStatistics31IsFunctionEvaluationTimeEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1976) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = load i8, ptr %i.a, align 8, !tbaa !11, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.e = load i8, ptr %i.d, align 8, !range !12
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.h = load i8, ptr %i.g, align 8, !range !12
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.k = load i8, ptr %i.j, align 8, !range !12
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond11 = select i1 %or.cond7, i1 true, i1 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.n = load i8, ptr %i.m, align 8, !range !12
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond15 = select i1 %or.cond11, i1 true, i1 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %1 = load i8, ptr %i.p, align 8, !range !12
  %2 = trunc nuw i8 %1 to i1
  %or.cond19 = select i1 %or.cond15, i1 true, i1 %2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.q = load i8, ptr %3, align 8, !range !12
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %or.cond19, i1 true, i1 %i.r
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK5Ipopt16TimingStatistics30TotalFunctionEvaluationCpuTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1976) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.b = load double, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = load double, ptr %i.c, align 8, !tbaa !14
  %i.e = fadd double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.g = load double, ptr %i.f, align 8, !tbaa !14
  %i.h = fadd double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = fadd double %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = fadd double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.p = load double, ptr %i.o, align 8, !tbaa !14
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.s = load double, ptr %i.r, align 8, !tbaa !14
  %i.t = fadd double %i.q, %i.s
  ret double %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK5Ipopt16TimingStatistics30TotalFunctionEvaluationSysTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1976) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load double, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.d = load double, ptr %i.c, align 8, !tbaa !15
  %i.e = fadd double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.g = load double, ptr %i.f, align 8, !tbaa !15
  %i.h = fadd double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.j = load double, ptr %i.i, align 8, !tbaa !15
  %i.k = fadd double %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.m = load double, ptr %i.l, align 8, !tbaa !15
  %i.n = fadd double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.p = load double, ptr %i.o, align 8, !tbaa !15
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.s = load double, ptr %i.r, align 8, !tbaa !15
  %i.t = fadd double %i.q, %i.s
  ret double %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK5Ipopt16TimingStatistics36TotalFunctionEvaluationWallclockTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1976) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.b = load double, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.d = load double, ptr %i.c, align 8, !tbaa !16
  %i.e = fadd double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.g = load double, ptr %i.f, align 8, !tbaa !16
  %i.h = fadd double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.j = load double, ptr %i.i, align 8, !tbaa !16
  %i.k = fadd double %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.m = load double, ptr %i.l, align 8, !tbaa !16
  %i.n = fadd double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.p = load double, ptr %i.o, align 8, !tbaa !16
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.s = load double, ptr %i.r, align 8, !tbaa !16
  %i.t = fadd double %i.q, %i.s
  ret double %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5Ipopt16TimingStatistics11EnableTimesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1976) initializes((120, 121), (176, 177), (232, 233), (288, 289), (344, 345), (400, 401), (456, 457), (512, 513), (568, 569), (624, 625), (680, 681), (736, 737), (792, 793), (848, 849), (904, 905), (960, 961), (1016, 1017), (1072, 1073), (1128, 1129), (1184, 1185), (1240, 1241), (1296, 1297), (1352, 1353), (1408, 1409), (1464, 1465), (1520, 1521), (1576, 1577), (1632, 1633), (1688, 1689), (1744, 1745), (1800, 1801), (1856, 1857), (1912, 1913), (1968, 1969)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 1, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 1, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 1, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 1, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 1, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i8 1, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 1, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 1, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i8 1, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 1, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i8 1, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i8 1, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i8 1, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i8 1, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i8 1, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i8 1, ptr %i.s, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i8 1, ptr %i.t, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i8 1, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i8 1, ptr %i.v, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i8 1, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i8 1, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i8 1, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i8 1, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store i8 1, ptr %i.aa, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store i8 1, ptr %i.ab, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store i8 1, ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1744
  store i8 1, ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i8 1, ptr %i.ae, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store i8 1, ptr %i.af, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1912
  store i8 1, ptr %i.ag, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store i8 1, ptr %i.ah, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5Ipopt16TimingStatistics12DisableTimesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1976) initializes((120, 121), (176, 177), (232, 233), (288, 289), (344, 345), (400, 401), (456, 457), (512, 513), (568, 569), (624, 625), (680, 681), (736, 737), (792, 793), (848, 849), (904, 905), (960, 961), (1016, 1017), (1072, 1073), (1128, 1129), (1184, 1185), (1240, 1241), (1296, 1297), (1352, 1353), (1408, 1409), (1464, 1465), (1520, 1521), (1576, 1577), (1632, 1633), (1688, 1689), (1744, 1745), (1800, 1801), (1856, 1857), (1912, 1913), (1968, 1969)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 0, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 0, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 0, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 0, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i8 0, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 0, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 0, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i8 0, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 0, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i8 0, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i8 0, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i8 0, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i8 0, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i8 0, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i8 0, ptr %i.s, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i8 0, ptr %i.t, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i8 0, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1296
end_hunk_0
begin_hunk_1_@_ZNK5Ipopt16TimingStatistics24PrintAllTimingStatisticsERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryE:bb.a
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !16
  %i.jc = load ptr, ptr %1, align 8, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.je(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.20, double noundef %i.ix, double noundef %i.iz, double noundef %i.jb)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !11, !range !12, !noundef !13
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !14
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !15
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !16
  %i.jo = load ptr, ptr %1, align 8, !tbaa !20
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.jq(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.21, double noundef %i.jj, double noundef %i.jl, double noundef %i.jn)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.js = load i8, ptr %i.jr, align 8, !tbaa !11, !range !12, !noundef !13
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !14
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !15
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !16
  %i.ka = load ptr, ptr %1, align 8, !tbaa !20
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.kc(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.22, double noundef %i.jv, double noundef %i.jx, double noundef %i.jz)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !11, !range !12, !noundef !13
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !14
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !15
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !16
  %i.km = load ptr, ptr %1, align 8, !tbaa !20
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ko(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.23, double noundef %i.kh, double noundef %i.kj, double noundef %i.kl)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !11, !range !12, !noundef !13
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !14
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !15
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !16
  %i.ky = load ptr, ptr %1, align 8, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.la(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.24, double noundef %i.kt, double noundef %i.kv, double noundef %i.kx)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.lc = load i8, ptr %i.lb, align 8, !tbaa !11, !range !12, !noundef !13
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.lf = load double, ptr %i.le, align 8, !tbaa !14
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !15
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.lj = load double, ptr %i.li, align 8, !tbaa !16
  %i.lk = load ptr, ptr %1, align 8, !tbaa !20
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.lm(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.25, double noundef %i.lf, double noundef %i.lh, double noundef %i.lj)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !11, !range !12, !noundef !13
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !14
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !15
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !16
  %i.lw = load ptr, ptr %1, align 8, !tbaa !20
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ly(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.26, double noundef %i.lr, double noundef %i.lt, double noundef %i.lv)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !11, !range !12, !noundef !13
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.md = load double, ptr %i.mc, align 8, !tbaa !14
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.mf = load double, ptr %i.me, align 8, !tbaa !15
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !16
  %i.mi = load ptr, ptr %1, align 8, !tbaa !20
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.mk(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.27, double noundef %i.md, double noundef %i.mf, double noundef %i.mh)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.mm = load i8, ptr %i.ml, align 8, !tbaa !11, !range !12, !noundef !13
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !14
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !15
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !16
  %i.mu = load ptr, ptr %1, align 8, !tbaa !20
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.mw(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.28, double noundef %i.mp, double noundef %i.mr, double noundef %i.mt)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.my = load i8, ptr %i.mx, align 8, !tbaa !11, !range !12, !noundef !13
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.nb = load double, ptr %i.na, align 8, !tbaa !14
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !15
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !16
  %i.ng = load ptr, ptr %1, align 8, !tbaa !20
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ni(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.29, double noundef %i.nb, double noundef %i.nd, double noundef %i.nf)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 8, !tbaa !11, !range !12, !noundef !13
  %i.nl = trunc nuw i8 %i.nk to i1
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 8, !range !12
  %i.no = trunc nuw i8 %i.nn to i1
  %or.cond.i = select i1 %i.nl, i1 true, i1 %i.no
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 8, !range !12
  %i.nr = trunc nuw i8 %i.nq to i1
  %or.cond7.i = select i1 %or.cond.i, i1 true, i1 %i.nr
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 8, !range !12
  %i.nu = trunc nuw i8 %i.nt to i1
  %or.cond11.i = select i1 %or.cond7.i, i1 true, i1 %i.nu
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 8, !range !12
  %i.nx = trunc nuw i8 %i.nw to i1
  %or.cond15.i = select i1 %or.cond11.i, i1 true, i1 %i.nx
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 2 uses
  %4 = load i8, ptr %i.ny, align 8, !range !12
  %5 = trunc nuw i8 %4 to i1
  %or.cond19.i = select i1 %or.cond15.i, i1 true, i1 %5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.nz = load i8, ptr %6, align 8, !range !12
  %i.oa = trunc nuw i8 %i.nz to i1
  %i.ob = select i1 %or.cond19.i, i1 true, i1 %i.oa
  br i1 %i.ob, label %bb.br, label %.thread

bb.br:                                            ; preds = %bb.bq
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.od = load double, ptr %i.oc, align 8, !tbaa !14
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.of = load double, ptr %i.oe, align 8, !tbaa !14
  %i.og = fadd double %i.od, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !14
  %i.oj = fadd double %i.og, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !14
  %i.om = fadd double %i.oj, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.oo = load double, ptr %i.on, align 8, !tbaa !14
  %i.op = fadd double %i.om, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.or = load double, ptr %i.oq, align 8, !tbaa !14
  %i.os = fadd double %i.op, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !14
  %i.ov = fadd double %i.os, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !15
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !15
  %i.pa = fadd double %i.ox, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !15
  %i.pd = fadd double %i.pa, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !15
  %i.pg = fadd double %i.pd, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !15
  %i.pj = fadd double %i.pg, %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !15
  %i.pm = fadd double %i.pj, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.po = load double, ptr %i.pn, align 8, !tbaa !15
  %i.pp = fadd double %i.pm, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !16
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !16
  %i.pu = fadd double %i.pr, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !16
  %i.px = fadd double %i.pu, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.pz = load double, ptr %i.py, align 8, !tbaa !16
  %i.qa = fadd double %i.px, %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !16
  %i.qd = fadd double %i.qa, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !16
  %i.qg = fadd double %i.qd, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !16
  %i.qj = fadd double %i.qg, %i.qi
  %i.qk = load ptr, ptr %1, align 8, !tbaa !20
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.qm(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.30, double noundef %i.ov, double noundef %i.pp, double noundef %i.qj)
  %.pre = load i8, ptr %i.nj, align 8, !tbaa !11, !range !12
  %i.qn = trunc nuw i8 %.pre to i1
  br i1 %i.qn, label %bb.bs, label %.thread

bb.bs:                                            ; preds = %bb.br
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !14
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !15
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !16
  %i.qu = load ptr, ptr %1, align 8, !tbaa !20
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.qw(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.31, double noundef %i.qp, double noundef %i.qr, double noundef %i.qt)
  br label %.thread

.thread:                                          ; preds = %bb.bq, %bb.bs, %bb.br
  %i.qx = load i8, ptr %i.nm, align 8, !tbaa !11, !range !12, !noundef !13
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.thread
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !14
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !15
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.re = load double, ptr %i.rd, align 8, !tbaa !16
  %i.rf = load ptr, ptr %1, align 8, !tbaa !20
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.rh(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.32, double noundef %i.ra, double noundef %i.rc, double noundef %i.re)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread
  %i.ri = load i8, ptr %i.np, align 8, !tbaa !11, !range !12, !noundef !13
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !14
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !15
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !16
  %i.rq = load ptr, ptr %1, align 8, !tbaa !20
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.rs(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.33, double noundef %i.rl, double noundef %i.rn, double noundef %i.rp)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.rt = load i8, ptr %i.ns, align 8, !tbaa !11, !range !12, !noundef !13
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !14
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !15
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !16
  %i.sb = load ptr, ptr %1, align 8, !tbaa !20
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.sd(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.34, double noundef %i.rw, double noundef %i.ry, double noundef %i.sa)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.se = load i8, ptr %i.nv, align 8, !tbaa !11, !range !12, !noundef !13
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !14
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.sj = load double, ptr %i.si, align 8, !tbaa !15
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !16
  %i.sm = load ptr, ptr %1, align 8, !tbaa !20
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.so = load ptr, ptr %i.sn, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.so(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.35, double noundef %i.sh, double noundef %i.sj, double noundef %i.sl)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.sp = load i8, ptr %i.ny, align 8, !tbaa !11, !range !12, !noundef !13
  %i.sq = trunc nuw i8 %i.sp to i1
  br i1 %i.sq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !14
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.su = load double, ptr %i.st, align 8, !tbaa !15
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !16
  %i.sx = load ptr, ptr %1, align 8, !tbaa !20
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.sz(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.36, double noundef %i.ss, double noundef %i.su, double noundef %i.sw)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ta = load i8, ptr %6, align 8, !tbaa !11, !range !12, !noundef !13
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.td = load double, ptr %i.tc, align 8, !tbaa !14
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.tf = load double, ptr %i.te, align 8, !tbaa !15
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.th = load double, ptr %i.tg, align 8, !tbaa !16
  %i.ti = load ptr, ptr %1, align 8, !tbaa !20
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.tk(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.37, double noundef %i.td, double noundef %i.tf, double noundef %i.th)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.a, %bb.cd, %bb.cc
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"bool", !4, i64 0}
!10 = !{!"_ZTSN5Ipopt9TimedTaskE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48, !9, i64 49, !9, i64 50}
!11 = !{!10, !9, i64 48}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!10, !8, i64 8}
!15 = !{!10, !8, i64 24}
!16 = !{!10, !8, i64 40}
!17 = !{!10, !9, i64 49}
!18 = !{!10, !9, i64 50}
!19 = !{!"vtable pointer", !3, i64 0}
!20 = !{!19, !19, i64 0}
end_hunk_1
