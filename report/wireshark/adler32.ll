inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define i32 @update_adler32(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.01114 = phi i32 [ %i.i, %.lr.ph ], [ %i.b, %bb.a ]
  %.01213 = phi i32 [ %i.g, %.lr.ph ], [ %i.a, %bb.a ]
  %i.c = getelementptr i8, ptr %1, i64 %.015
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %.01213, %i.e
  %i.g = urem i32 %i.f, 65521                     ; 3 uses
  %i.h = add nuw nsw i32 %i.g, %.01114
  %i.i = urem i32 %i.h, 65521                     ; 2 uses
  %niter.next.1 = add nuw i64 %.015, 1            ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %2
  br i1 %niter.ncmp.1, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.012.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.g, %.lr.ph ]
  %.011.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.i, %.lr.ph ]
  %i.j = shl nuw i32 %.011.lcssa, 16
  %i.k = or disjoint i32 %i.j, %.012.lcssa
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define range(i32 0, -983040) i32 @adler32_bytes(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %update_adler32.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.01114.i = phi i32 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.01213.i = phi i32 [ %i.e, %.lr.ph.i ], [ 1, %bb.a ]
  %i.a = getelementptr i8, ptr %0, i64 %.015.i
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = add nuw nsw i32 %.01213.i, %i.c
  %i.e = urem i32 %i.d, 65521                     ; 3 uses
  %i.f = add nuw nsw i32 %i.e, %.01114.i
  %i.g = urem i32 %i.f, 65521                     ; 2 uses
  %niter.next.1 = add nuw i64 %.015.i, 1          ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %1
  br i1 %niter.ncmp.1, label %update_adler32.exit.loopexit, label %.lr.ph.i, !llvm.loop !6

update_adler32.exit.loopexit:                     ; preds = %.lr.ph.i
  %i.h = shl nuw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.e
  br label %update_adler32.exit

update_adler32.exit:                              ; preds = %update_adler32.exit.loopexit, %bb.a
  %i.j = phi i32 [ 1, %bb.a ], [ %i.i, %update_adler32.exit.loopexit ]
  ret i32 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define range(i32 0, -983040) i32 @adler32_str(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #2 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %update_adler32.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.01114.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %bb.a ]
  %.01213.i = phi i32 [ %i.f, %.lr.ph.i ], [ 1, %bb.a ]
  %i.b = getelementptr i8, ptr %0, i64 %.015.i
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = add nuw nsw i32 %.01213.i, %i.d
  %i.f = urem i32 %i.e, 65521                     ; 3 uses
  %i.g = add nuw nsw i32 %i.f, %.01114.i
  %i.h = urem i32 %i.g, 65521                     ; 2 uses
  %niter.next.1 = add nuw i64 %.015.i, 1          ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.a
  br i1 %niter.ncmp.1, label %update_adler32.exit.loopexit, label %.lr.ph.i, !llvm.loop !6

update_adler32.exit.loopexit:                     ; preds = %.lr.ph.i
  %i.i = shl nuw i32 %i.h, 16
  %i.j = or disjoint i32 %i.i, %i.f
  br label %update_adler32.exit

update_adler32.exit:                              ; preds = %update_adler32.exit.loopexit, %bb.a
  %i.k = phi i32 [ 1, %bb.a ], [ %i.j, %update_adler32.exit.loopexit ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
