Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/strl?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -9223372036854775808, 9223372036854775807) i64 @redis_strlcpy(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !16 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread25, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 2 uses
  %.not1943 = icmp eq i64 %i.a, 0
  br i1 %.not1943, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.01145, i64 1 ; 2 uses
  %i.c = add i64 %i.d, -1                         ; 2 uses
  %.not19 = icmp eq i64 %i.c, 0
  br i1 %.not19, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.d = phi i64 [ %i.c, %.preheader ], [ %i.a, %.preheader.preheader ]
  %.01145 = phi ptr [ %i.b, %.preheader ], [ %0, %.preheader.preheader ] ; 2 uses
  %.01344 = phi ptr [ %i.e, %.preheader ], [ %1, %.preheader.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01344, i64 1 ; 3 uses
  %i.f = load i8, ptr %.01344, align 1, !tbaa !14 ; 2 uses
  store i8 %i.f, ptr %.01145, align 1, !tbaa !14
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.loopexit, label %.preheader, !llvm.loop !15

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %.013.lcssa = phi ptr [ %1, %.preheader.preheader ], [ %i.e, %.preheader ]
  %.011.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %i.b, %.preheader ]
  store i8 0, ptr %.011.lcssa, align 1, !tbaa !14
  br label %.thread25

.thread25:                                        ; preds = %bb.a, %.preheader._crit_edge
  %.114.ph28 = phi ptr [ %1, %bb.a ], [ %.013.lcssa, %.preheader._crit_edge ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.114.ph28)
  %i.h = getelementptr i8, ptr %.114.ph28, i64 %strlen
  %scevgep = getelementptr i8, ptr %i.h, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread25
  %.3 = phi ptr [ %scevgep, %.thread25 ], [ %i.e, %.lr.ph ]
  %i.i = ptrtoint ptr %.3 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = xor i64 %i.j, -1
  %i.l = add i64 %i.i, %i.k
  ret i64 %i.l
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @redis_strlcat(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !19 {
bb.a:
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.in = phi i64 [ %i.b, %bb.b ], [ %2, %.lr.ph.preheader ]
  %.02532 = phi ptr [ %i.c, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.a = load i8, ptr %.02532, align 1, !tbaa !14
  %.not28 = icmp eq i8 %i.a, 0
  br i1 %.not28, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.in, -1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02532, i64 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !17

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.025.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep, %bb.b ], [ %.02532, %.lr.ph ] ; 3 uses
  %i.d = ptrtoint ptr %.025.lcssa to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %2, %i.f
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.h = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %.not2935 = icmp eq i8 %i.h, 0
  br i1 %.not2935, label %._crit_edge, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.preheader
  %i.i = xor i64 %i.f, -1
  %i.j = add i64 %2, %i.i
  br label %.lr.ph39

bb.c:                                             ; preds = %.critedge
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #2
  br label %bb.f

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.e
  %i.l = phi i8 [ %i.p, %bb.e ], [ %i.h, %.lr.ph39.preheader ]
  %.138 = phi i64 [ %.2, %bb.e ], [ %i.j, %.lr.ph39.preheader ] ; 2 uses
  %.02437 = phi ptr [ %i.o, %bb.e ], [ %1, %.lr.ph39.preheader ]
  %.12636 = phi ptr [ %.227, %bb.e ], [ %.025.lcssa, %.lr.ph39.preheader ] ; 3 uses
  %.not30 = icmp eq i64 %.138, 0
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph39
  %i.m = getelementptr inbounds nuw i8, ptr %.12636, i64 1
  store i8 %i.l, ptr %.12636, align 1, !tbaa !14
  %i.n = add i64 %.138, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph39
  %.227 = phi ptr [ %i.m, %bb.d ], [ %.12636, %.lr.ph39 ] ; 2 uses
  %.2 = phi i64 [ %i.n, %bb.d ], [ 0, %.lr.ph39 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.02437, i64 1 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 2 uses
  %.not29 = icmp eq i8 %i.p, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph39, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.126.lcssa = phi ptr [ %.025.lcssa, %.preheader ], [ %.227, %bb.e ]
  %.024.lcssa = phi ptr [ %1, %.preheader ], [ %i.o, %bb.e ]
  store i8 0, ptr %.126.lcssa, align 1, !tbaa !14
  %i.q = ptrtoint ptr %.024.lcssa to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %.pn = phi i64 [ %i.k, %bb.c ], [ %i.s, %._crit_edge ]
  %.023 = add i64 %.pn, %i.f
  ret i64 %.023
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!10, !10, i64 0}
!15 = distinct !{!15, !13}
!16 = !{i64 5248443259436443689}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{i64 -9096864360363681266}
end_hunk_0
