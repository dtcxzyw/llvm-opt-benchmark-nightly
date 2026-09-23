Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_inodesearch?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_root_inode = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [27 x i8] c"/fs/inode/fs_inodesearch.c\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"desc != ((void*)0) && desc->path != ((void*)0)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -22, 1) i32 @inode_search(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %bb.c, !prof !10

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 478, ptr noundef nonnull @.str.1) #7
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %i.a, align 1
  %.not11 = icmp eq i8 %i.c, 47
  br i1 %.not11, label %.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.4) #8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %spec.store.select.i = select i1 %i.f, ptr @.str.5, ptr %i.e
  %i.g = tail call i32 (ptr, ptr, ...) @nx_asprintf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %i.a) #9
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %_inode_search.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.d, align 8              ; 4 uses
  store ptr %i.i, ptr %0, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge.i, label %bb.f, !prof !11

.critedge.i:                                      ; preds = %bb.e
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #7
  unreachable

bb.f:                                             ; preds = %bb.e
  %.pr = load i8, ptr %i.i, align 1
  %.not51.i = icmp eq i8 %.pr, 47
  br i1 %.not51.i, label %.preheader.i, label %_inode_search.exit

.preheader.i:                                     ; preds = %bb.c, %bb.f
  %i.k = phi ptr [ %i.i, %bb.f ], [ %i.a, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr @g_root_inode, align 8     ; 2 uses
  %.not5275.i = icmp eq ptr %i.l, null
  br i1 %.not5275.i, label %.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i, %_inode_compare.exit.thread55.i
  %.03379.i = phi ptr [ %.134.i, %_inode_compare.exit.thread55.i ], [ null, %.preheader.i ] ; 7 uses
  %.03678.i = phi ptr [ %.137.i, %_inode_compare.exit.thread55.i ], [ null, %.preheader.i ] ; 5 uses
  %.04077.i = phi ptr [ %.141.i, %_inode_compare.exit.thread55.i ], [ %i.l, %.preheader.i ] ; 8 uses
  %.04476.i = phi ptr [ %.145.i, %_inode_compare.exit.thread55.i ], [ %i.k, %.preheader.i ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04077.i, i64 64 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %.not2125.i.i = icmp eq i8 %i.n, 0
  br i1 %.not2125.i.i, label %_inode_compare.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.i
  %i.o = phi i8 [ %i.u, %bb.i ], [ %i.n, %.preheader.i.i ] ; 2 uses
  %.027.i.i = phi ptr [ %i.t, %bb.i ], [ %i.m, %.preheader.i.i ]
  %.01426.i.i = phi ptr [ %i.s, %bb.i ], [ %.04476.i, %.preheader.i.i ] ; 2 uses
  %i.p = load i8, ptr %.01426.i.i, align 1        ; 3 uses
  switch i8 %i.p, label %bb.g [
    i8 0, label %.thread.i
    i8 47, label %.thread.i
  ]

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp sgt i8 %i.p, %i.o
  br i1 %i.q, label %_inode_compare.exit.thread55.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp slt i8 %i.p, %i.o
  br i1 %i.r, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.01426.i.i, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %.not21.i.i = icmp eq i8 %i.u, 0
  br i1 %.not21.i.i, label %_inode_compare.exit.i, label %.lr.ph.i.i

_inode_compare.exit.i:                            ; preds = %bb.i, %.preheader.i.i
  %.014.lcssa.i.i = phi ptr [ %.04476.i, %.preheader.i.i ], [ %i.s, %bb.i ]
  %i.v = load i8, ptr %.014.lcssa.i.i, align 1
  switch i8 %i.v, label %_inode_compare.exit.thread55.i [
    i8 47, label %tailrecurse.i.i.preheader
    i8 0, label %tailrecurse.i.i.preheader
  ]

tailrecurse.i.i.preheader:                        ; preds = %_inode_compare.exit.i, %_inode_compare.exit.i
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.backedge, %tailrecurse.i.i.preheader
  %.0.i.i = phi ptr [ %.04476.i, %tailrecurse.i.i.preheader ], [ %.0.i.i.be, %tailrecurse.i.i.backedge ] ; 3 uses
  %i.w = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.w, label %bb.j [
    i8 0, label %.critedge.i.i.preheader
    i8 47, label %.critedge.i.i.preheader
  ]

.critedge.i.i.preheader:                          ; preds = %tailrecurse.i.i, %tailrecurse.i.i
  br label %.critedge.i.i

bb.j:                                             ; preds = %tailrecurse.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %tailrecurse.i.i.backedge

tailrecurse.i.i.backedge:                         ; preds = %bb.j, %bb.l
  %.0.i.i.be = phi ptr [ %i.x, %bb.j ], [ %.1.i.i, %bb.l ]
  br label %tailrecurse.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.k
  %i.y = phi i8 [ %.pre.i.i, %bb.k ], [ %i.w, %.critedge.i.i.preheader ]
  %.1.i.i = phi ptr [ %i.z, %bb.k ], [ %.0.i.i, %.critedge.i.i.preheader ] ; 8 uses
  switch i8 %i.y, label %inode_nextname.exit.thread.i [
    i8 47, label %bb.k
    i8 46, label %bb.l
    i8 0, label %.thread.i
  ]

bb.k:                                             ; preds = %.critedge.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %.pre.i.i = load i8, ptr %i.z, align 1
  br label %.critedge.i.i, !llvm.loop !1

bb.l:                                             ; preds = %.critedge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %tailrecurse.i.i.backedge, label %inode_nextname.exit.thread.i

inode_nextname.exit.thread.i:                     ; preds = %bb.l, %.critedge.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.04077.i, i64 28
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = and i16 %i.ae, 15
  %i.ag = icmp eq i16 %i.af, 3
  br i1 %i.ag, label %.thread.i, label %_inode_compare.exit.thread55.i

_inode_compare.exit.thread55.i:                   ; preds = %bb.g, %inode_nextname.exit.thread.i, %_inode_compare.exit.i
  %.sink.i = phi i64 [ 8, %_inode_compare.exit.i ], [ 16, %inode_nextname.exit.thread.i ], [ 8, %bb.g ]
  %.145.i = phi ptr [ %.04476.i, %_inode_compare.exit.i ], [ %.1.i.i, %inode_nextname.exit.thread.i ], [ %.04476.i, %bb.g ] ; 2 uses
  %.137.i = phi ptr [ %.04077.i, %_inode_compare.exit.i ], [ null, %inode_nextname.exit.thread.i ], [ %.04077.i, %bb.g ] ; 2 uses
  %.134.i = phi ptr [ %.03379.i, %_inode_compare.exit.i ], [ %.04077.i, %inode_nextname.exit.thread.i ], [ %.03379.i, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04077.i, i64 %.sink.i
  %.141.i = load ptr, ptr %i.ah, align 8          ; 2 uses
  %.not52.i = icmp eq ptr %.141.i, null
  br i1 %.not52.i, label %.thread.i, label %.preheader.i.i

.thread.i:                                        ; preds = %_inode_compare.exit.thread55.i, %inode_nextname.exit.thread.i, %bb.h, %.lr.ph.i.i, %.lr.ph.i.i, %.critedge.i.i, %.preheader.i
  %.03673.i = phi ptr [ %.03678.i, %bb.h ], [ null, %.preheader.i ], [ %.03678.i, %.critedge.i.i ], [ %.03678.i, %.lr.ph.i.i ], [ %.03678.i, %.lr.ph.i.i ], [ %.03678.i, %inode_nextname.exit.thread.i ], [ %.137.i, %_inode_compare.exit.thread55.i ]
  %.03371.i = phi ptr [ %.03379.i, %bb.h ], [ null, %.preheader.i ], [ %.03379.i, %.critedge.i.i ], [ %.03379.i, %.lr.ph.i.i ], [ %.03379.i, %.lr.ph.i.i ], [ %.03379.i, %inode_nextname.exit.thread.i ], [ %.134.i, %_inode_compare.exit.thread55.i ]
  %.347.i = phi ptr [ %.04476.i, %bb.h ], [ %i.k, %.preheader.i ], [ %.1.i.i, %.critedge.i.i ], [ %.04476.i, %.lr.ph.i.i ], [ %.04476.i, %.lr.ph.i.i ], [ %.1.i.i, %inode_nextname.exit.thread.i ], [ %.145.i, %_inode_compare.exit.thread55.i ]
  %.343.i = phi ptr [ null, %bb.h ], [ null, %.preheader.i ], [ %.04077.i, %.critedge.i.i ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i ], [ %.04077.i, %inode_nextname.exit.thread.i ], [ null, %_inode_compare.exit.thread55.i ]
  %.232.i = phi ptr [ null, %bb.h ], [ null, %.preheader.i ], [ %.1.i.i, %.critedge.i.i ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i ], [ %.1.i.i, %inode_nextname.exit.thread.i ], [ null, %_inode_compare.exit.thread55.i ]
  %.2.i = phi i32 [ -2, %bb.h ], [ -2, %.preheader.i ], [ 0, %.critedge.i.i ], [ -2, %.lr.ph.i.i ], [ -2, %.lr.ph.i.i ], [ 0, %inode_nextname.exit.thread.i ], [ -2, %_inode_compare.exit.thread55.i ]
  %1 = insertelement <4 x ptr> poison, ptr %.347.i, i64 0
  %2 = insertelement <4 x ptr> %1, ptr %.343.i, i64 1
  %3 = insertelement <4 x ptr> %2, ptr %.03673.i, i64 2
  %4 = insertelement <4 x ptr> %3, ptr %.03371.i, i64 3
  store <4 x ptr> %4, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.232.i, ptr %i.ai, align 8
  br label %_inode_search.exit

_inode_search.exit:                               ; preds = %.thread.i, %bb.f, %bb.d
  %.0 = phi i32 [ -12, %bb.d ], [ %.2.i, %.thread.i ], [ -22, %bb.f ]
  ret i32 %.0
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @nx_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef ptr @inode_nextname(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #5 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.0.be, %tailrecurse.backedge ] ; 3 uses
  %i.a = load i8, ptr %.0, align 1                ; 2 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %.critedge.preheader
    i8 47, label %.critedge.preheader
  ]

.critedge.preheader:                              ; preds = %tailrecurse, %tailrecurse
  br label %.critedge

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.d
  %.0.be = phi ptr [ %i.b, %bb.b ], [ %.1, %bb.d ]
  br label %tailrecurse, !llvm.loop !0

.critedge:                                        ; preds = %.critedge.preheader, %bb.c
  %i.c = phi i8 [ %.pre, %bb.c ], [ %i.a, %.critedge.preheader ]
  %.1 = phi ptr [ %i.d, %bb.c ], [ %.0, %.critedge.preheader ] ; 4 uses
  switch i8 %i.c, label %.loopexit [
    i8 47, label %bb.c
    i8 46, label %bb.d
  ]

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.d, align 1
  br label %.critedge, !llvm.loop !1

bb.d:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %tailrecurse.backedge, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.critedge
  ret ptr %.1
}

; Function Attrs: nofree noredzone nounwind optsize memory(read)
declare dso_local noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse noredzone nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noredzone nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noredzone noreturn nounwind optsize }
attributes #8 = { noredzone optsize }
attributes #9 = { noredzone nounwind optsize }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"Code Model", i32 4}
!5 = !{i32 1, !"Large Data Threshold", i64 0}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2790333, i32 2144693315}
end_hunk_0
