Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libfflush?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -2147483647, 2147483648) i64 @lib_fflush_unlocked(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 3
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %.loopexit.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, %i.f
  br i1 %.not, label %.loopexit.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  %.not41 = icmp eq ptr %i.k, %i.f
  br i1 %.not41, label %bb.e, label %.loopexit.a

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %.033 = phi ptr [ %i.f, %bb.e ], [ %i.ae, %bb.k ] ; 3 uses
  %.0 = phi i64 [ %i.n, %bb.e ], [ %i.af, %bb.k ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not42 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i64 %i.q(ptr noundef %i.r, ptr noundef %.033, i64 noundef %.0) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call i64 @write(i32 noundef %i.u, ptr noundef %.033, i64 noundef %.0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.032 = phi i64 [ %i.s, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  %i.w = icmp slt i64 %.032, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2
  %i.z = or i8 %i.y, 2
  store i8 %i.z, ptr %i.x, align 2
  %i.aa = tail call ptr @__errno() #6
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = sext i32 %i.ac to i64
  br label %.loopexit.a

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.033, i64 %.032 ; 2 uses
  %i.af = sub nsw i64 %.0, %.032                  ; 3 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.l, !llvm.loop !7

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.e, align 8
  store ptr %i.ah, ptr %i.h, align 8
  %.not4345 = icmp eq i64 %i.af, 0
  br i1 %.not4345, label %.loopexit.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.13446 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ae, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.13446, i64 1
  %i.aj = load i8, ptr %.13446, align 1
  %i.ak = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.h, align 8
  store i8 %i.aj, ptr %i.ak, align 1
  br label %.lr.ph

.loopexit.a:                                      ; preds = %bb.c, %bb.l, %bb.d, %bb.b, %bb.a, %bb.j
  %.035 = phi i64 [ 0, %bb.d ], [ -9, %bb.a ], [ 0, %bb.b ], [ %i.ad, %bb.j ], [ 0, %bb.l ], [ 0, %bb.c ]
  ret i64 %.035
}

; Function Attrs: nofree noredzone optsize
declare dso_local noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -2147483647, 2147483648) i64 @lib_fflush(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @flockfile(ptr noundef %0) #7
  %i.a = tail call i64 @lib_fflush_unlocked(ptr noundef %0) #7
  tail call void @funlockfile(ptr noundef %0) #7
  ret i64 %i.a
}

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local void @flockfile(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #5

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone nounwind optsize }
attributes #7 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
