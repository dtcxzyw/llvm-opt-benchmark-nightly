Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_math?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ares_log2.tab64 = internal unnamed_addr constant [64 x i8] c"?\00:\01;/5\02<'0\1B6!*\03=3%(1\12\1C\147\1E\22\0B+\0E\16\04>9.4&\1A )2$\11\13\1D\0A\0D\158-\19\1F#\10\09\0C,\18\0F\08\17\07\06\05", align 16
@ares_count_bits_u8.lookup = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @ares_is_64bit() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 -9223372036854775807, -9223372036854775808) i64 @ares_round_up_pow2(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %0, -1                       ; 2 uses
  %i.b = ashr i64 %i.a, 1
  %i.c = or i64 %i.b, %i.a                        ; 2 uses
  %i.d = ashr i64 %i.c, 2
  %i.e = or i64 %i.d, %i.c                        ; 2 uses
  %i.f = ashr i64 %i.e, 4
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = ashr i64 %i.g, 8
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = ashr i64 %i.i, 16
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = ashr i64 %i.k, 32
  %i.m = or i64 %i.l, %i.k
  %i.n = add nsw i64 %i.m, 1
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 0, 256) i64 @ares_log2(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i64 %0, 571347909858961602
  %i.b = lshr i64 %i.a, 58
  %i.c = getelementptr inbounds nuw i8, ptr @ares_log2.tab64, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @ares_pow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not11 = icmp eq i64 %1, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %spec.select, %.lr.ph ], [ 1, %bb.a ]
  %.0813 = phi i64 [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0912 = phi i64 [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = and i64 %.0813, 1
  %.not10 = icmp eq i64 %i.a, 0
  %i.b = select i1 %.not10, i64 1, i64 %.0912
  %spec.select = mul i64 %i.b, %.014              ; 2 uses
  %i.c = lshr i64 %.0813, 1                       ; 2 uses
  %i.d = mul i64 %.0912, %.0912
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %spec.select, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 1, 0) i64 @ares_count_digits(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not6 = icmp eq i64 %0, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i64 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %.057 = phi i64 [ %i.a, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = udiv i64 %.057, 10
  %i.b = add i64 %.08, 1                          ; 2 uses
  %.not = icmp ult i64 %.057, 10
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %1 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %1, %._crit_edge.loopexit ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 1, 0) i64 @ares_count_hexdigits(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not6 = icmp eq i64 %0, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i64 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %.057 = phi i64 [ %i.a, %.lr.ph ], [ %0, %bb.a ]
  %i.a = lshr i64 %.057, 4                        ; 2 uses
  %i.b = add nuw nsw i64 %.08, 1                  ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @ares_count_bits_u8.lookup, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  ret i8 %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
end_hunk_0
