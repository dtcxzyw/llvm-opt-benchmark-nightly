Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/regstrlcpy?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i64 -9223372036854775808, 9223372036854775807) i64 @llvh_strlcpy(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !8 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread26, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 2 uses
  %.not2044 = icmp eq i64 %i.a, 0
  br i1 %.not2044, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.01445, i64 1 ; 2 uses
  %i.c = add i64 %i.d, -1                         ; 2 uses
  %.not20 = icmp eq i64 %i.c, 0
  br i1 %.not20, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.d = phi i64 [ %i.c, %.preheader ], [ %i.a, %.preheader.preheader ]
  %.01246 = phi ptr [ %i.e, %.preheader ], [ %1, %.preheader.preheader ] ; 2 uses
  %.01445 = phi ptr [ %i.b, %.preheader ], [ %0, %.preheader.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01246, i64 1 ; 3 uses
  %i.f = load i8, ptr %.01246, align 1, !tbaa !10 ; 2 uses
  store i8 %i.f, ptr %.01445, align 1, !tbaa !10
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.loopexit, label %.preheader, !llvm.loop !7

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %.014.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %i.b, %.preheader ]
  %.012.lcssa = phi ptr [ %1, %.preheader.preheader ], [ %i.e, %.preheader ]
  store i8 0, ptr %.014.lcssa, align 1, !tbaa !10
  br label %.thread26

.thread26:                                        ; preds = %bb.a, %.preheader._crit_edge
  %.113.ph29 = phi ptr [ %1, %bb.a ], [ %.012.lcssa, %.preheader._crit_edge ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.113.ph29)
  %i.h = getelementptr i8, ptr %.113.ph29, i64 %strlen
  %scevgep = getelementptr i8, ptr %i.h, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread26
  %.3 = phi ptr [ %scevgep, %.thread26 ], [ %i.e, %.lr.ph ]
  %i.i = ptrtoint ptr %.3 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = xor i64 %i.j, -1
  %i.l = add i64 %i.i, %i.k
  ret i64 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = distinct !{!7, !9}
!8 = !{i64 6756060833348212174}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!4, !4, i64 0}
end_hunk_0
