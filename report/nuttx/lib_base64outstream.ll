Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_base64outstream?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @lib_base64outstream(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 48)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @base64stream_putc, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @base64stream_puts, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @base64stream_flush, ptr %i.c, align 8
  store i32 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.e, align 8
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal void @base64stream_putc(ptr noundef %0, i32 noundef %1) #3 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.c, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = tail call i32 @b64_ntop(ptr noundef nonnull %i.b, i64 noundef 3, ptr noundef nonnull %i.l, i64 noundef 5) #6 ; 0 uses
  %i.n = load i64, ptr %i.j, align 8
  %i.o = add i64 %i.n, 4                          ; 2 uses
  store i64 %i.o, ptr %i.j, align 8
  store i64 0, ptr %i.c, align 8
  %i.p = icmp eq i64 %i.o, 128
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8                  ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i64 %5(ptr noundef %3, ptr noundef nonnull %i.i, i64 noundef 128) #6, !inline_history !7 ; 0 uses
  store i64 0, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.q = load i32, ptr %0, align 8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %0, align 8
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal noundef i64 @base64stream_puts(ptr noundef %0, ptr noundef %1, i64 noundef returned %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %memcpy.inline.exit63

memcpy.inline.exit63:                             ; preds = %bb.a
  %i.c = sub i64 3, %i.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %2) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = tail call ptr @memcpy(ptr noundef nonnull %i.e, ptr noundef %1, i64 noundef %spec.select) #7 ; 0 uses
  %i.g = load i64, ptr %i.a, align 8
  %i.h = add i64 %i.g, %spec.select               ; 2 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.i = sub nuw i64 %2, %spec.select             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select ; 3 uses
  %i.k = icmp eq i64 %i.h, 3
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %memcpy.inline.exit63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  %i.p = tail call i32 @b64_ntop(ptr noundef nonnull %i.d, i64 noundef 3, ptr noundef nonnull %i.o, i64 noundef 5) #6 ; 0 uses
  %i.q = load i64, ptr %i.m, align 8
  %i.r = add i64 %i.q, 4                          ; 2 uses
  store i64 %i.r, ptr %i.m, align 8
  store i64 0, ptr %i.a, align 8
  %i.s = icmp eq i64 %i.r, 128
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8                  ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i64 %6(ptr noundef %4, ptr noundef nonnull %i.l, i64 noundef 128) #6, !inline_history !7 ; 0 uses
  store i64 0, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %memcpy.inline.exit63, %bb.c, %bb.b, %bb.a
  %.055 = phi ptr [ %1, %bb.a ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.j, %memcpy.inline.exit63 ] ; 2 uses
  %.054 = phi i64 [ %2, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %memcpy.inline.exit63 ] ; 3 uses
  %i.t = icmp ugt i64 %.054, 2
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %.165 = phi i64 [ %.054, %.lr.ph ], [ %i.al, %bb.i ] ; 4 uses
  %.15664 = phi ptr [ %.055, %.lr.ph ], [ %i.ak, %bb.i ] ; 2 uses
  %i.w = load i64, ptr %i.u, align 8              ; 2 uses
  %i.x = sub i64 128, %i.w
  %i.y = lshr i64 %i.x, 2
  %i.z = mul nuw i64 %i.y, 3                      ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %.165
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = urem i64 %.165, 3
  %i.ac = sub nuw i64 %.165, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.ac, %bb.f ], [ %i.z, %bb.e ] ; 4 uses
  %i.ad = udiv i64 %.0, 3
  %i.ae = shl nuw i64 %i.ad, 2                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.ag = or disjoint i64 %i.ae, 1
  %i.ah = tail call i32 @b64_ntop(ptr noundef %.15664, i64 noundef %.0, ptr noundef nonnull %i.af, i64 noundef %i.ag) #6 ; 0 uses
  %i.ai = load i64, ptr %i.u, align 8
  %i.aj = add i64 %i.ai, %i.ae                    ; 2 uses
  store i64 %i.aj, ptr %i.u, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.15664, i64 %.0 ; 2 uses
  %i.al = sub i64 %.165, %.0                      ; 3 uses
  %i.am = icmp eq i64 %i.aj, 128
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = tail call i32 @base64stream_flush(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = icmp ugt i64 %i.al, 2
  br i1 %i.ao, label %bb.e, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.156.lcssa = phi ptr [ %.055, %bb.d ], [ %i.ak, %bb.i ]
  %.1.lcssa = phi i64 [ %.054, %bb.d ], [ %i.al, %bb.i ] ; 3 uses
  %.not61 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not61, label %bb.j, label %memcpy.inline.exit

memcpy.inline.exit:                               ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = tail call ptr @memcpy(ptr noundef nonnull %i.ap, ptr noundef %.156.lcssa, i64 noundef %.1.lcssa) #7 ; 0 uses
  store i64 %.1.lcssa, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %memcpy.inline.exit, %._crit_edge
  %i.ar = load i32, ptr %0, align 8
  %i.as = trunc i64 %2 to i32
  %i.at = add i32 %i.ar, %i.as
  store i32 %i.at, ptr %0, align 8
  ret i64 %2
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal noundef i32 @base64stream_flush(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = tail call i32 @b64_ntop(ptr noundef nonnull %i.c, i64 noundef %i.b, ptr noundef nonnull %i.g, i64 noundef 5) #6 ; 0 uses
  %i.i = load i64, ptr %i.e, align 8
  %i.j = add i64 %i.i, 4                          ; 2 uses
  store i64 %i.j, ptr %i.e, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = tail call i64 %i.o(ptr noundef %i.m, ptr noundef nonnull %i.p, i64 noundef %i.k) #6 ; 0 uses
  store i64 0, ptr %i.q, align 8
  ret i32 0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @b64_ntop(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!7 = !{ptr @base64stream_flush}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
