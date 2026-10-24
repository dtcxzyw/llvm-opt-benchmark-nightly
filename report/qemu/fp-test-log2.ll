Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fp-test-log2?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.float_status = type { i64 }

@.str = private unnamed_addr constant [64 x i8] c"test: %016lx  %+.13a\0A  sf: %016lx  %+.13a\0Alibm: %016lx  %+.13a\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Error in sign!\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error in exponent: %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error in fraction: %lu ulp\0A\0A\00", align 1
@errors = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.float_status, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 4611686022722355200, ptr %2, align 8
  %i.a = call i64 @float64_log2(i64 noundef 0, ptr noundef nonnull %2) #8
  call fastcc void @compare(i64 0, i64 -4503599627370496, i64 %i.a, i1 noundef zeroext true)
  %i.b = call i64 @float64_log2(i64 noundef 4607182418800017408, ptr noundef nonnull %2) #8
  call fastcc void @compare(i64 4607182418800017408, i64 0, i64 %i.b, i1 noundef zeroext true)
  %i.c = call i64 @float64_log2(i64 noundef 4611686018427387904, ptr noundef nonnull %2) #8
  call fastcc void @compare(i64 4611686018427387904, i64 4607182418800017408, i64 %i.c, i1 noundef zeroext true)
  %i.d = call i64 @float64_log2(i64 noundef 4616189618054758400, ptr noundef nonnull %2) #8
  call fastcc void @compare(i64 4616189618054758400, i64 4611686018427387904, i64 %i.d, i1 noundef zeroext true)
  %i.e = call i64 @float64_log2(i64 noundef 4895412794951729152, ptr noundef nonnull %2) #8
  call fastcc void @compare(i64 4895412794951729152, i64 4634204016564240384, i64 %i.e, i1 noundef zeroext true)
  %i.f = call i64 @float64_log2(i64 noundef 9218868437227405312, ptr noundef nonnull %2) #8
  call fastcc void @compare(i64 9218868437227405312, i64 9218868437227405312, i64 %i.f, i1 noundef zeroext true)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.034 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.b ]
  %i.g = call double @drand48() #8
  %i.h = fadd double %i.g, 1.000000e+00           ; 2 uses
  %i.i = call double @log2(double noundef %i.h) #8
  %i.j = bitcast double %i.h to i64               ; 2 uses
  %i.k = call i64 @float64_log2(i64 noundef %i.j, ptr noundef nonnull %2) #8
  %i.l = bitcast double %i.i to i64
  call fastcc void @compare(i64 %i.j, i64 %i.l, i64 %i.k, i1 noundef zeroext false)
  %i.m = call double @drand48() #8
  %i.n = fmul double %i.m, 1.000000e+02           ; 2 uses
  %i.o = call double @log2(double noundef %i.n) #8
  %i.p = bitcast double %i.n to i64               ; 2 uses
  %i.q = call i64 @float64_log2(i64 noundef %i.p, ptr noundef nonnull %2) #8
  %i.r = bitcast double %i.o to i64
  call fastcc void @compare(i64 %i.p, i64 %i.r, i64 %i.q, i1 noundef zeroext false)
  %i.s = add nuw nsw i32 %.034, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, 10000
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @float64_log2(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @compare(i64 %0, i64 %1, i64 %2, i1 noundef zeroext %3) unnamed_addr #3 {
bb.a:
  %i.a = bitcast i64 %0 to double
  %i.b = bitcast i64 %1 to double
  %i.c = bitcast i64 %2 to double
  %i.d = icmp eq i64 %1, %2
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = xor i64 %2, %1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = xor i32 %i.g, 63                         ; 2 uses
  %i.i = icmp samesign ult i32 %i.h, 52
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = sub nsw i64 %1, %2
  %.0 = tail call i64 @llvm.abs.i64(i64 %i.j, i1 true) ; 2 uses
  %i.k = icmp samesign ugt i64 %.0, 4
  %or.cond.not = select i1 %3, i1 true, i1 %i.k
  br i1 %or.cond.not, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.b, %bb.c
  %.027 = phi i64 [ %.0, %bb.c ], [ -1, %bb.b ]
  %i.l = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str, i64 noundef %0, double noundef %i.a, i64 noundef %2, double noundef %i.c, i64 noundef %1, double noundef %i.b) #8 ; 0 uses
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.n = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %.thread
  %i.o = icmp samesign ugt i32 %i.h, 51
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i64 %2, 52
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = lshr i64 %1, 52
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nsw i32 %i.q, %i.s
  %i.u = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %i.t) #8 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3, i64 noundef %.027) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.w = load i32, ptr @errors, align 4
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr @errors, align 4
  %i.y = icmp eq i32 %i.x, 20
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @exit(i32 noundef 1) #9
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare double @drand48() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
