Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_tempbuffer?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tempbuffer_s = type { i32, [2 x [256 x i8]] }

@g_tempbuffer = internal global %struct.tempbuffer_s { i32 3, [2 x [256 x i8]] zeroinitializer }, align 4
@.str = private unnamed_addr constant [33 x i8] c"/libs/libc/misc/lib_tempbuffer.c\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"(__c11_atomic_load(&g_tempbuffer.free_bitmap, 0) & (1u << index)) == 0\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local ptr @lib_get_tempbuffer(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 257
  br i1 %i.a, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.b = load atomic volatile i32, ptr @g_tempbuffer monotonic, align 4 ; 3 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 false) ; 3 uses
  %i.d = icmp samesign ugt i32 %i.c, 1
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = shl nuw nsw i32 1, %i.c
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %i.b, %i.f
  %i.h = cmpxchg volatile ptr @g_tempbuffer, i32 %i.b, i32 %i.g acq_rel monotonic, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %.thread20, label %.preheader

.thread20:                                        ; preds = %bb.b
  %i.j = zext nneg i32 %i.c to i64
  %i.k = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (i8, ptr @g_tempbuffer, i64 4), i64 %i.j
  br label %bb.c

.thread:                                          ; preds = %.preheader, %bb.a
  %i.l = tail call noalias ptr @malloc(i64 noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %.thread20, %.thread
  %.2 = phi ptr [ %i.l, %.thread ], [ %i.k, %.thread20 ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @lib_put_tempbuffer(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = sub i64 %i.a, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @g_tempbuffer, i64 4) to i64)
  %i.c = sdiv i64 %i.b, 256
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %or.cond = icmp ult i32 %i.d, 2
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic volatile i32, ptr @g_tempbuffer monotonic, align 4
  %i.f = shl nuw nsw i32 1, %i.d                  ; 2 uses
  %i.g = and i32 %i.e, %i.f
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.1) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile or ptr @g_tempbuffer, i32 %i.f acquire, align 4 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noredzone nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noredzone optsize allocsize(0) }
attributes #8 = { noredzone noreturn nounwind optsize }
attributes #9 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
