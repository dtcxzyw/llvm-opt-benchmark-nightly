inline.NumInlined: 41
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.MaxBenchmark = type { %class.Benchmark }
%class.Benchmark = type { ptr }
%class.MatrixBenchmark = type { %class.Benchmark }
%class.IteratorBenchmark = type { %class.Benchmark }
%class.ComplexBenchmark = type { %class.Benchmark }
%class.Complex = type { double, double }

$_ZNK12MaxBenchmark4nameEv = comdat any

$_ZNK15MatrixBenchmark4nameEv = comdat any

$_ZNK17IteratorBenchmark4nameEv = comdat any

$_ZNK16ComplexBenchmark4nameEv = comdat any

$_ZTI9Benchmark = comdat any

$_ZTS9Benchmark = comdat any

@_ZN9Benchmark5countE = dso_local local_unnamed_addr global i32 4, align 4
@_ZN9Benchmark4listE = dso_local local_unnamed_addr global [4 x ptr] [ptr @TheMaxBenchmark, ptr @TheMatrixBenchmark, ptr @TheIteratorBenchmark, ptr @TheComplexBenchmark], align 16
@U = dso_local local_unnamed_addr global [1000 x double] zeroinitializer, align 16
@MaxResult = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@TheMaxBenchmark = dso_local global %class.MaxBenchmark { %class.Benchmark { ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV12MaxBenchmark, i64 16) } }, align 8
@C = dso_local local_unnamed_addr global [2500 x double] zeroinitializer, align 16
@D = dso_local local_unnamed_addr global [2500 x double] zeroinitializer, align 16
@E = dso_local local_unnamed_addr global [2500 x double] zeroinitializer, align 16
@TheMatrixBenchmark = dso_local global %class.MatrixBenchmark { %class.Benchmark { ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV15MatrixBenchmark, i64 16) } }, align 8
@A = dso_local local_unnamed_addr global [1000 x double] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [1000 x double] zeroinitializer, align 16
@IteratorResult = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@TheIteratorBenchmark = dso_local global %class.IteratorBenchmark { %class.Benchmark { ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV17IteratorBenchmark, i64 16) } }, align 8
@TheComplexBenchmark = dso_local global %class.ComplexBenchmark { %class.Benchmark { ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16ComplexBenchmark, i64 16) } }, align 8
@X = dso_local local_unnamed_addr global [1000 x %class.Complex] zeroinitializer, align 16
@Y = dso_local local_unnamed_addr global [1000 x %class.Complex] zeroinitializer, align 16
@C_Seconds = dso_local local_unnamed_addr global double 1.000000e+00, align 8
@.str = private unnamed_addr constant [75 x i8] c"%-10s: warning: relative checksum error of %g between C (%g) and oop (%g)\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%-10s %10d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Version 1.7\00", align 1
@Version = dso_local local_unnamed_addr global ptr @.str.7, align 8
@.str.8 = private unnamed_addr constant [51 x i8] c"Usage:\09%s test1=iterations1 test2=iterations2 ...\0A\00", align 1
@__const.main.str1 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@__const.main.str2 = private unnamed_addr constant [10 x i8] c"Max=15000\00", align 1
@__const.main.str3 = private unnamed_addr constant [11 x i8] c"Matrix=200\00", align 1
@__const.main.str4 = private unnamed_addr constant [13 x i8] c"Complex=2000\00", align 1
@__const.main.str5 = private unnamed_addr constant [15 x i8] c"Iterator=20000\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%-10s %10s  %11s  %11s  %5s\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Seconds  \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Mflops  \00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"%-10s %10s  %5s %5s  %5s %5s  %5s\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" C \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"OOP\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"----------\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"-----------\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"missing iteration count for test '%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"skipping non-existent test = '%s'\0A\00", align 1
@_ZTV12MaxBenchmark = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI12MaxBenchmark, ptr @_ZNK12MaxBenchmark4nameEv, ptr @_ZNK12MaxBenchmark4initEv, ptr @_ZNK12MaxBenchmark7c_styleEv, ptr @_ZNK12MaxBenchmark9oop_styleEv, ptr @_ZNK12MaxBenchmark5checkEiRdS0_] }, align 8
@_ZTI12MaxBenchmark = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12MaxBenchmark, ptr @_ZTI9Benchmark }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12MaxBenchmark = dso_local constant [15 x i8] c"12MaxBenchmark\00", align 1
@_ZTI9Benchmark = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS9Benchmark }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS9Benchmark = linkonce_odr dso_local constant [11 x i8] c"9Benchmark\00", comdat, align 1
@_ZTV15MatrixBenchmark = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI15MatrixBenchmark, ptr @_ZNK15MatrixBenchmark4nameEv, ptr @_ZNK15MatrixBenchmark4initEv, ptr @_ZNK15MatrixBenchmark7c_styleEv, ptr @_ZNK15MatrixBenchmark9oop_styleEv, ptr @_ZNK15MatrixBenchmark5checkEiRdS0_] }, align 8
@_ZTI15MatrixBenchmark = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15MatrixBenchmark, ptr @_ZTI9Benchmark }, align 8
@_ZTS15MatrixBenchmark = dso_local constant [18 x i8] c"15MatrixBenchmark\00", align 1
@_ZTV17IteratorBenchmark = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI17IteratorBenchmark, ptr @_ZNK17IteratorBenchmark4nameEv, ptr @_ZNK17IteratorBenchmark4initEv, ptr @_ZNK17IteratorBenchmark7c_styleEv, ptr @_ZNK17IteratorBenchmark9oop_styleEv, ptr @_ZNK17IteratorBenchmark5checkEiRdS0_] }, align 8
@_ZTI17IteratorBenchmark = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17IteratorBenchmark, ptr @_ZTI9Benchmark }, align 8
@_ZTS17IteratorBenchmark = dso_local constant [20 x i8] c"17IteratorBenchmark\00", align 1
@_ZTV16ComplexBenchmark = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI16ComplexBenchmark, ptr @_ZNK16ComplexBenchmark4nameEv, ptr @_ZNK16ComplexBenchmark4initEv, ptr @_ZNK16ComplexBenchmark7c_styleEv, ptr @_ZNK16ComplexBenchmark9oop_styleEv, ptr @_ZNK16ComplexBenchmark5checkEiRdS0_] }, align 8
@_ZTI16ComplexBenchmark = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16ComplexBenchmark, ptr @_ZTI9Benchmark }, align 8
@_ZTS16ComplexBenchmark = dso_local constant [19 x i8] c"16ComplexBenchmark\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Iterator\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Complex\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@str = private unnamed_addr constant [60 x i8] c"E.g.:\09a.out  Max=5000 Matrix=50 Complex=2000  Iterator=5000\00", align 1
@str.1 = private unnamed_addr constant [7 x i8] c"\0ADONE!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK12MaxBenchmark7c_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr @U, align 16, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %.1.2, ptr @MaxResult, align 8, !tbaa !8
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.2, %bb.c ] ; 4 uses
  %.057 = phi double [ %i.a, %bb.a ], [ %.1.2, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.c = load double, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %i.d = fcmp ogt double %i.c, %.057
  %.1 = select i1 %i.d, double %i.c, double %.057 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.h = fcmp ogt double %i.g, %.1
  %.1.1 = select i1 %i.h, double %i.g, double %.1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.l = fcmp ogt double %i.k, %.1.1
  %.1.2 = select i1 %i.l, double %i.k, double %.1.1 ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 1000
  br i1 %exitcond.not.2, label %bb.b, label %bb.c, !llvm.loop !10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK12MaxBenchmark9oop_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr @U, align 16, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %.1.2, ptr @MaxResult, align 8, !tbaa !8
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.2, %bb.c ] ; 4 uses
  %.056 = phi double [ %i.a, %bb.a ], [ %.1.2, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.c = load double, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %.inv = fcmp ogt double %i.c, %.056
  %.1 = select i1 %.inv, double %i.c, double %.056 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %.inv.1 = fcmp ogt double %i.f, %.1
  %.1.1 = select i1 %.inv.1, double %i.f, double %.1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !8 ; 2 uses
  %.inv.2 = fcmp ogt double %i.i, %.1.1
  %.1.2 = select i1 %.inv.2, double %i.i, double %.1.1 ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 1000
  br i1 %exitcond.not.2, label %bb.b, label %bb.c, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK12MaxBenchmark4initEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.a = and <2 x i32> %vec.ind, splat (i32 1)
  %i.b = and <2 x i32> %vec.ind, splat (i32 1)
  %i.c = icmp eq <2 x i32> %i.a, zeroinitializer
  %i.d = icmp eq <2 x i32> %i.b, zeroinitializer
  %i.e = select <2 x i1> %i.c, <2 x i32> %vec.ind, <2 x i32> zeroinitializer
  %i.f = select <2 x i1> %i.d, <2 x i32> %step.add, <2 x i32> zeroinitializer
  %i.g = sitofp <2 x i32> %i.e to <2 x double>
  %i.h = sitofp <2 x i32> %i.f to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16, !tbaa !8
  store <2 x double> %i.h, ptr %i.j, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.k = icmp eq i64 %index.next, 1000
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK12MaxBenchmark5checkEiRdS0_(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fmul nnan double %i.a, 1.000000e+03
  store double %i.b, ptr %2, align 8, !tbaa !8
  %i.c = load double, ptr @MaxResult, align 8, !tbaa !8
  store double %i.c, ptr %3, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark7c_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  br label %.preheader16

.preheader16:                                     ; preds = %bb.a, %bb.c
  %indvars.iv26 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next27, %bb.c ] ; 2 uses
  %i.a = mul nuw nsw i64 %indvars.iv26, 50        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %i.a ; 2 uses
  %invariant.gep32 = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %i.a
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  ret void

.preheader:                                       ; preds = %.preheader16, %bb.d
  %indvars.iv22 = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next23, %bb.d ] ; 3 uses
  %invariant.gep30 = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %indvars.iv22 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 50
  br i1 %exitcond29.not, label %bb.b, label %.preheader16, !llvm.loop !16

bb.d:                                             ; preds = %bb.e
  %gep33 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep32, i64 %indvars.iv22
  store double %i.g, ptr %gep33, align 8, !tbaa !8
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 50
  br i1 %exitcond25.not, label %bb.c, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %.01317 = phi double [ 0.000000e+00, %.preheader ], [ %i.g, %bb.e ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.b = load double, ptr %gep, align 16, !tbaa !8
  %.idx = mul nuw nsw i64 %indvars.iv, 400
  %gep31 = getelementptr inbounds nuw i8, ptr %invariant.gep30, i64 %.idx
  %i.c = load double, ptr %gep31, align 8, !tbaa !8
  %i.d = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %.01317)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.e = load double, ptr %gep.1, align 8, !tbaa !8
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 400
  %gep31.1 = getelementptr inbounds nuw i8, ptr %invariant.gep30, i64 %.idx.1
  %i.f = load double, ptr %gep31.1, align 8, !tbaa !8
  %i.g = tail call double @llvm.fmuladd.f64(double %i.e, double %i.f, double %i.d) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 50
  br i1 %exitcond.not.1, label %bb.d, label %bb.e, !llvm.loop !18
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark9oop_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  br label %.preheader23

.preheader23:                                     ; preds = %bb.a, %bb.c
  %indvars.iv33 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next34, %bb.c ] ; 2 uses
  %i.a = mul nuw nsw i64 %indvars.iv33, 50        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %i.a ; 2 uses
  %invariant.gep39 = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %i.a
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  ret void

.preheader:                                       ; preds = %.preheader23, %bb.d
  %indvars.iv29 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next30, %bb.d ] ; 3 uses
  %invariant.gep37 = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %indvars.iv29 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, 50
  br i1 %exitcond36.not, label %bb.b, label %.preheader23, !llvm.loop !19

bb.d:                                             ; preds = %bb.e
  %gep40 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep39, i64 %indvars.iv29
  store double %i.g, ptr %gep40, align 8, !tbaa !8
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 50
  br i1 %exitcond32.not, label %bb.c, label %.preheader, !llvm.loop !20

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %.01324 = phi double [ 0.000000e+00, %.preheader ], [ %i.g, %bb.e ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.b = load double, ptr %gep, align 16, !tbaa !8
  %.idx = mul nuw nsw i64 %indvars.iv, 400
  %gep38 = getelementptr inbounds nuw i8, ptr %invariant.gep37, i64 %.idx
  %i.c = load double, ptr %gep38, align 8, !tbaa !8
  %i.d = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %.01324)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.e = load double, ptr %gep.1, align 8, !tbaa !8
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 400
  %gep38.1 = getelementptr inbounds nuw i8, ptr %invariant.gep37, i64 %.idx.1
  %i.f = load double, ptr %gep38.1, align 8, !tbaa !8
  %i.g = tail call double @llvm.fmuladd.f64(double %i.e, double %i.f, double %i.d) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 50
  br i1 %exitcond.not.1, label %bb.d, label %bb.e, !llvm.loop !21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark4initEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.a = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.b = add <2 x i32> %i.a, splat (i32 1)
  %i.c = uitofp nneg <2 x i32> %i.b to <2 x double> ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %index
  store <2 x double> %i.c, ptr %i.d, align 16, !tbaa !8
  %i.e = fdiv <2 x double> splat (double 1.000000e+00), %i.c
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %index
  store <2 x double> %i.e, ptr %i.f, align 16, !tbaa !8
  %index.next = or disjoint i64 %index, 2         ; 2 uses
  %i.g = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.h = add <2 x i32> %i.g, splat (i32 3)
  %i.i = uitofp nneg <2 x i32> %i.h to <2 x double> ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %index.next
  store <2 x double> %i.i, ptr %i.j, align 16, !tbaa !8
  %i.k = fdiv <2 x double> splat (double 1.000000e+00), %i.i
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %index.next
  store <2 x double> %i.k, ptr %i.l, align 16, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.m = icmp eq i64 %index.next.1, 2500
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark5checkEiRdS0_(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 align 2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %i.u, ptr %3, align 8, !tbaa !8
  %i.a = sitofp i32 %1 to double
  %i.b = fmul nnan double %i.a, 2.500000e+05
  store double %i.b, ptr %2, align 8, !tbaa !8
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.4, %bb.c ] ; 6 uses
  %.078 = phi double [ 0.000000e+00, %bb.a ], [ %i.u, %bb.c ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !8
  %i.e = fadd double %.078, %i.d
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %i.i = fadd double %i.e, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !8
  %i.m = fadd double %i.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !8
  %i.q = fadd double %i.m, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
end_hunk_0
