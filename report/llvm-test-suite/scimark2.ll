inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@RESOLUTION_DEFAULT = dso_local local_unnamed_addr constant double 2.000000e+00, align 8
@RANDOM_SEED = dso_local local_unnamed_addr constant i32 101010, align 4
@FFT_SIZE = dso_local local_unnamed_addr constant i32 1024, align 4
@SOR_SIZE = dso_local local_unnamed_addr constant i32 100, align 4
@SPARSE_SIZE_M = dso_local local_unnamed_addr constant i32 1000, align 4
@SPARSE_SIZE_nz = dso_local local_unnamed_addr constant i32 5000, align 4
@LU_SIZE = dso_local local_unnamed_addr constant i32 100, align 4
@LG_FFT_SIZE = dso_local local_unnamed_addr constant i32 1048576, align 4
@LG_SOR_SIZE = dso_local local_unnamed_addr constant i32 1000, align 4
@LG_SPARSE_SIZE_M = dso_local local_unnamed_addr constant i32 100000, align 4
@LG_SPARSE_SIZE_nz = dso_local local_unnamed_addr constant i32 1000000, align 4
@LG_LU_SIZE = dso_local local_unnamed_addr constant i32 1000, align 4
@TINY_FFT_SIZE = dso_local local_unnamed_addr constant i32 16, align 4
@TINY_SOR_SIZE = dso_local local_unnamed_addr constant i32 10, align 4
@TINY_SPARSE_SIZE_M = dso_local local_unnamed_addr constant i32 10, align 4
@TINY_SPARSE_SIZE_N = dso_local local_unnamed_addr constant i32 10, align 4
@TINY_SPARSE_SIZE_nz = dso_local local_unnamed_addr constant i32 50, align 4
@TINY_LU_SIZE = dso_local local_unnamed_addr constant i32 10, align 4
@.str = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Usage: [-large] [minimum_time]\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-large\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Using %10.2f seconds min time per kenel.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Composite Score:        %8.2f\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"FFT             Mflops: %8.2f    (N=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"SOR             Mflops: %8.2f    (%d x %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"MonteCarlo:     Mflops: %8.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Sparse matmult  Mflops: %8.2f    (N=%d, nz=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"LU              Mflops: %8.2f    (M=%d, N=%d)\0A\00", align 1
@str = private unnamed_addr constant [59 x i8] c"NOTE!!! All Mflops disabled to prevent diffs from failing!\00", align 1
@str.2 = private unnamed_addr constant [67 x i8] c"** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **\00", align 1
@str.3 = private unnamed_addr constant [67 x i8] c"** for details. (Results can be submitted to pozo@nist.gov)     **\00", align 1
@str.4 = private unnamed_addr constant [67 x i8] c"**                                                              **\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @new_Random_seed(i32 noundef 101010) #8 ; 6 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 5 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(6) @.str) #9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %sub_0

sub_0:                                            ; preds = %bb.b
  %i.g = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.g, 45
  br i1 %.not, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %.not55 = icmp eq i8 %i.i, 104
  br i1 %.not55, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %.tail.thread

bb.c:                                             ; preds = %.tail, %bb.b
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.2, i64 31, i64 1, ptr %i.m) #10 ; 0 uses
  tail call void @exit(i32 noundef 0) #11
  unreachable

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(7) @.str.3) #9
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.tail.thread
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.tail.thread
  %.050 = phi i32 [ 100000, %bb.d ], [ 1000, %.tail.thread ] ; 2 uses
  %.048 = phi i32 [ 1000000, %bb.d ], [ 5000, %.tail.thread ] ; 2 uses
  %.046 = phi i32 [ 1000, %bb.d ], [ 100, %.tail.thread ] ; 2 uses
  %.044 = phi i32 [ 1048576, %bb.d ], [ 1024, %.tail.thread ] ; 2 uses
  %.0 = phi i32 [ 2, %bb.d ], [ 1, %.tail.thread ] ; 2 uses
  %i.q = icmp samesign ult i32 %.0, %0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %.0 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = tail call double @strtod(ptr noundef nonnull captures(none) %i.t, ptr noundef null) #8, !inline_history !13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.151 = phi i32 [ 1000, %bb.a ], [ %.050, %bb.f ], [ %.050, %bb.e ] ; 2 uses
  %.149 = phi i32 [ 5000, %bb.a ], [ %.048, %bb.f ], [ %.048, %bb.e ] ; 2 uses
  %.147 = phi i32 [ 100, %bb.a ], [ %.046, %bb.f ], [ %.046, %bb.e ] ; 6 uses
  %.145 = phi i32 [ 1024, %bb.a ], [ %.044, %bb.f ], [ %.044, %bb.e ] ; 2 uses
  %.1 = phi double [ 2.000000e+00, %bb.a ], [ %i.u, %bb.f ], [ 2.000000e+00, %bb.e ] ; 6 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts1.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts2.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts3.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %.1) ; 0 uses
  %i.w = tail call double @kernel_measureFFT(i32 noundef %.145, double noundef %.1, ptr noundef %i.a) #8 ; 2 uses
  %i.x = tail call double @kernel_measureSOR(i32 noundef %.147, double noundef %.1, ptr noundef %i.a) #8 ; 2 uses
  %i.y = tail call double @kernel_measureMonteCarlo(double noundef %.1, ptr noundef %i.a) #8 ; 2 uses
  %i.z = tail call double @kernel_measureSparseMatMult(i32 noundef %.151, i32 noundef %.149, double noundef %.1, ptr noundef %i.a) #8 ; 2 uses
  %i.aa = tail call double @kernel_measureLU(i32 noundef %.147, double noundef %.1, ptr noundef %i.a) #8 ; 2 uses
  %i.ab = fadd double %i.w, %i.x
  %i.ac = fadd double %i.ab, %i.y
  %i.ad = fadd double %i.ac, %i.z
  %i.ae = fadd double %i.ad, %i.aa
  %i.af = fdiv double %i.ae, 5.000000e+00
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %2 = fdiv double %i.af, 1.000000e+07
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %2) ; 0 uses
  %3 = fdiv double %i.w, 1.000000e+07
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %3, i32 noundef %.145) ; 0 uses
  %4 = fdiv double %i.x, 1.000000e+07
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %4, i32 noundef %.147, i32 noundef %.147) ; 0 uses
  %5 = fdiv double %i.y, 1.000000e+07
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %5) ; 0 uses
  %6 = fdiv double %i.z, 1.000000e+07
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %6, i32 noundef %.151, i32 noundef %.149) ; 0 uses
  %7 = fdiv double %i.aa, 1.000000e+07
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %7, i32 noundef %.147, i32 noundef %.147) ; 0 uses
  tail call void @Random_delete(ptr noundef %i.a) #8
  ret i32 0
}

declare ptr @new_Random_seed(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_banner() local_unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare double @kernel_measureFFT(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare double @kernel_measureSOR(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare double @kernel_measureMonteCarlo(double noundef, ptr noundef) local_unnamed_addr #1

declare double @kernel_measureSparseMatMult(i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare double @kernel_measureLU(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare void @Random_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

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
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = distinct !{null}
end_hunk_0
