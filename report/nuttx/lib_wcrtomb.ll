Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_wcrtomb?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -1, 5) i64 @wcrtomb(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i32 %1 to i8
  store i8 %i.c, ptr %0, align 1
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = lshr i32 %1, 6
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, -64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.g, ptr %0, align 1
  %i.i = trunc i32 %1 to i8
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128
  store i8 %i.k, ptr %i.h, align 1
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.l = icmp ult i32 %1, 65536
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i32 %1, 12
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, -32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.o, ptr %0, align 1
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.t, ptr %i.p, align 1
  %i.v = trunc i32 %1 to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  store i8 %i.x, ptr %i.u, align 1
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = icmp ult i32 %1, 1114112
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = lshr i32 %1, 6
  %i.aa = lshr i32 %1, 12
  %3 = lshr i32 %1, 18
  %4 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %5 = insertelement <4 x i32> %4, i32 %1, i64 1
  %6 = trunc i32 %i.aa to i8
  %7 = trunc nuw nsw i32 %3 to i8
  %8 = insertelement <4 x i8> poison, i8 %7, i64 0
  %9 = insertelement <4 x i8> %8, i8 %6, i64 1
  %i.ab = trunc <4 x i32> %5 to <4 x i8>
  %10 = shufflevector <4 x i8> %9, <4 x i8> %i.ab, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ac = and <4 x i8> %10, <i8 -1, i8 63, i8 63, i8 63>
  %i.ad = or disjoint <4 x i8> %i.ac, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ad, ptr %0, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ae = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #4, !srcloc !7
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call ptr @__errno() #5
  store i32 84, ptr %i.ag, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.g ], [ 4, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ]
  ret i64 %.0
}

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #3

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{i64 470375}
end_hunk_0
