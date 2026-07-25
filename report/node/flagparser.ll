inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_ZL17currentBufferSize = internal unnamed_addr global i32 512, align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @parseFlagsFile(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @T_FileStream_open(ptr noundef %0, ptr noundef nonnull @.str) #5 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @_ZL17currentBufferSize, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.d) #6 ; 4 uses
  %i.f = sext i32 %2 to i64
  %i.g = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.f) #6 ; 17 uses
  %i.h = icmp eq ptr %i.e, null
  %i.i = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %.critedge.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = icmp sgt i32 %4, 0
  %.not3948.i = icmp sgt i32 %2, 0
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %exitcond.peel.not.i = icmp eq i32 %2, 1
  %i.k = icmp ne ptr %3, null
  %wide.trip.count64.i = zext nneg i32 %4 to i64
  %.not66 = icmp eq ptr %3, null
  br i1 %i.j, label %.preheader.split.us, label %.critedge

.preheader.split.us:                              ; preds = %.preheader, %6
  %.not.us = phi i1 [ false, %6 ], [ true, %.preheader ]
  %.051.us = phi ptr [ %.152.us, %6 ], [ %i.e, %.preheader ] ; 2 uses
  br i1 %.not.us, label %.lr.ph.lr.ph.us, label %bb.c

bb.c:                                             ; preds = %.preheader.split.us
  %i.l = load i32, ptr @_ZL17currentBufferSize, align 4
  %i.m = shl nsw i32 %i.l, 1
  store i32 %i.m, ptr @_ZL17currentBufferSize, align 4
  tail call void @uprv_free_78(ptr noundef nonnull %.051.us) #5
  %i.n = load i32, ptr @_ZL17currentBufferSize, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.o) #6 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge.sink.split, label %.lr.ph.lr.ph.us

.lr.ph.lr.ph.us:                                  ; preds = %bb.c, %.preheader.split.us
  %.152.us = phi ptr [ %i.p, %bb.c ], [ %.051.us, %.preheader.split.us ] ; 17 uses
  br label %.lr.ph.us

.lr.ph:                                           ; preds = %.lr.ph.us, %.backedge.us
  %i.r = load i8, ptr %.152.us, align 1           ; 2 uses
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.backedge.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.152.us) #7
  %i.u = trunc i64 %i.t to i32
  %i.v = load i32, ptr @_ZL17currentBufferSize, align 4 ; 11 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = icmp eq i32 %i.w, %i.u
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr i8, ptr %.152.us, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -2
  %i.ab = load i8, ptr %i.aa, align 1
  %.not64.us = icmp eq i8 %i.ab, 10
  br i1 %.not64.us, label %bb.f, label %6

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not.i.us = icmp eq i8 %i.r, 0
  br i1 %.not.i.us, label %.thread.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i32 %i.v, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.us, label %_ZL13getFlagOffsetPKci.exit.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.g
  %wide.trip.count.i.i.us = zext nneg i32 %i.v to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.h, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.h ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.152.us, i64 %indvars.iv.i.i.us
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 61
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.us
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %_ZL13getFlagOffsetPKci.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !5

bb.i:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = trunc nuw nsw i64 %indvars.iv.i.i.us to i32
  %i.ah = add nuw nsw i32 %i.ag, 1
  br label %_ZL13getFlagOffsetPKci.exit.i.us

_ZL13getFlagOffsetPKci.exit.i.us:                 ; preds = %bb.h, %bb.i, %bb.g
  %.1.i.i.us = phi i32 [ %i.ah, %bb.i ], [ 0, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  %i.ai = icmp eq i32 %.1.i.i.us, %i.v
  %i.aj = add nsw i32 %.1.i.i.us, -1
  %i.ak = icmp eq i32 %i.aj, %i.v
  %or.cond.i.i.us = select i1 %i.ai, i1 true, i1 %i.ak
  %.2.i.i.us = select i1 %or.cond.i.i.us, i32 0, i32 %.1.i.i.us ; 3 uses
  %i.al = sext i32 %.2.i.i.us to i64
  %i.am = getelementptr inbounds i8, ptr %.152.us, i64 %i.al ; 4 uses
  br i1 %.not3948.i, label %.lr.ph.preheader.i.us, label %.critedge.sink.split

.lr.ph.preheader.i.us:                            ; preds = %_ZL13getFlagOffsetPKci.exit.i.us
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.thread.i.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader.i.us
  %i.aq = load i8, ptr %i.am, align 1
  store i8 %i.aq, ptr %i.g, align 1
  br i1 %exitcond.peel.not.i, label %.critedge.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.j, %bb.k
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.k ], [ 1, %bb.j ] ; 4 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next.i.us
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.loopexit60.i.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.i.us
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.us
  store i8 %i.av, ptr %i.aw, align 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.critedge.sink.split, label %.lr.ph.i.us, !llvm.loop !7

.loopexit60.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.us
  store i8 0, ptr %i.ax, align 1
  br label %bb.l

.thread.i.us:                                     ; preds = %.lr.ph.preheader.i.us, %bb.f
  %.03344.i.us = phi i32 [ %.2.i.i.us, %.lr.ph.preheader.i.us ], [ 0, %bb.f ]
  store i8 0, ptr %i.g, align 1
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.us, %.loopexit60.i.us
  %.03343.i.us = phi i32 [ %.03344.i.us, %.thread.i.us ], [ %.2.i.i.us, %.loopexit60.i.us ] ; 2 uses
  %i.ay = icmp sgt i32 %.03343.i.us, 0
  %or.cond74.i.reass.us = and i1 %i.ay, %i.k
  br i1 %or.cond74.i.reass.us, label %.lr.ph53.i.us, label %_ZL11extractFlagPciS_iPPKciP10UErrorCode.exit.us

.lr.ph53.i.us:                                    ; preds = %bb.l
  %i.az = add nsw i32 %.03343.i.us, -1
  %i.ba = zext nneg i32 %i.az to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph53.i.us
  %indvars.iv61.i.us = phi i64 [ 0, %.lr.ph53.i.us ], [ %indvars.iv.next62.i.us, %bb.n ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv61.i.us
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 @strncmp(ptr noundef nonnull readonly %.152.us, ptr noundef %i.bc, i64 noundef %i.ba) #7
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.loopexit.loopexit.split.loop.exit72.i.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next62.i.us = add nuw nsw i64 %indvars.iv61.i.us, 1 ; 2 uses
  %exitcond65.not.i.us = icmp eq i64 %indvars.iv.next62.i.us, %wide.trip.count64.i
  br i1 %exitcond65.not.i.us, label %_ZL11extractFlagPciS_iPPKciP10UErrorCode.exit.us, label %bb.m, !llvm.loop !9

.loopexit.loopexit.split.loop.exit72.i.us:        ; preds = %bb.m
  %i.bf = trunc nuw nsw i64 %indvars.iv61.i.us to i32
  br label %_ZL11extractFlagPciS_iPPKciP10UErrorCode.exit.us

_ZL11extractFlagPciS_iPPKciP10UErrorCode.exit.us: ; preds = %bb.n, %.loopexit.loopexit.split.loop.exit72.i.us, %bb.l
  %.034.i.us.ph = phi i32 [ -1, %bb.l ], [ %i.bf, %.loopexit.loopexit.split.loop.exit72.i.us ], [ -1, %bb.n ] ; 2 uses
  %.pr = load i32, ptr %5, align 4
  %.pr.fr = freeze i32 %.pr                       ; 2 uses
  %i.bg = icmp slt i32 %.pr.fr, 1
  br i1 %i.bg, label %bb.o, label %.split98.us

bb.o:                                             ; preds = %_ZL11extractFlagPciS_iPPKciP10UErrorCode.exit.us
  br i1 %.not66, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp sgt i32 %.034.i.us.ph, -1
  br i1 %i.bh, label %bb.q, label %.backedge.us

bb.q:                                             ; preds = %bb.p
  %i.bi = zext nneg i32 %.034.i.us.ph to i64
  br label %.outer.us

bb.r:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %.049.ph93.us, 1
  %i.bk = sext i32 %.049.ph93.us to i64
  br label %.outer.us

.outer.us:                                        ; preds = %bb.r, %bb.q
  %.sink = phi i64 [ %i.bk, %bb.r ], [ %i.bi, %bb.q ]
  %.150.us = phi i32 [ %i.bj, %bb.r ], [ %.049.ph93.us, %bb.q ] ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %1, i64 %.sink
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(1) %i.g) #5 ; 0 uses
  %i.bo = icmp slt i32 %.150.us, %4
  br i1 %i.bo, label %.lr.ph.us, label %.critedge, !llvm.loop !10

6:                                                ; preds = %bb.e
  tail call void @T_FileStream_rewind(ptr noundef nonnull %i.a) #5
  %7 = load i32, ptr %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.critedge, label %.preheader.split.us, !llvm.loop !11

.backedge.us:                                     ; preds = %bb.p, %.lr.ph
  %i.bp = load i32, ptr @_ZL17currentBufferSize, align 4
  %i.bq = tail call ptr @T_FileStream_readLine(ptr noundef nonnull %i.a, ptr noundef nonnull %.152.us, i32 noundef %i.bp) #5
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.critedge, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph.us, %.outer.us
  %.049.ph93.us = phi i32 [ 0, %.lr.ph.lr.ph.us ], [ %.150.us, %.outer.us ] ; 3 uses
  %i.bs = load i32, ptr @_ZL17currentBufferSize, align 4
  %i.bt = tail call ptr @T_FileStream_readLine(ptr noundef nonnull %i.a, ptr noundef %.152.us, i32 noundef %i.bs) #5
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge, label %.lr.ph

.split98.us:                                      ; preds = %_ZL11extractFlagPciS_iPPKciP10UErrorCode.exit.us
  %i.bv = icmp eq i32 %.pr.fr, 15
  %spec.select = select i1 %i.bv, i32 %i.v, i32 -1
  br label %.critedge

.critedge.sink.split:                             ; preds = %bb.c, %_ZL13getFlagOffsetPKci.exit.i.us, %bb.j, %bb.k, %bb.b, %bb.a
  %.sink155 = phi i32 [ 4, %bb.a ], [ 7, %bb.b ], [ 15, %bb.k ], [ 15, %_ZL13getFlagOffsetPKci.exit.i.us ], [ 15, %bb.j ], [ 7, %bb.c ]
  %.057.ph = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.k ], [ %i.g, %_ZL13getFlagOffsetPKci.exit.i.us ], [ %i.g, %bb.j ], [ %i.g, %bb.c ]
  %.253.ph = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ], [ %.152.us, %bb.k ], [ %.152.us, %_ZL13getFlagOffsetPKci.exit.i.us ], [ %.152.us, %bb.j ], [ null, %bb.c ]
  %.2.ph = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.v, %bb.k ], [ %i.v, %_ZL13getFlagOffsetPKci.exit.i.us ], [ %i.v, %bb.j ], [ 0, %bb.c ]
  store i32 %.sink155, ptr %5, align 4
  br label %.critedge

.critedge:                                        ; preds = %6, %.outer.us, %.lr.ph.us, %.backedge.us, %.split98.us, %.critedge.sink.split, %.preheader
  %.057 = phi ptr [ %i.g, %.preheader ], [ %.057.ph, %.critedge.sink.split ], [ %i.g, %.split98.us ], [ %i.g, %.backedge.us ], [ %i.g, %.outer.us ], [ %i.g, %.lr.ph.us ], [ %i.g, %6 ]
  %.253 = phi ptr [ %i.e, %.preheader ], [ %.253.ph, %.critedge.sink.split ], [ %.152.us, %.split98.us ], [ %.152.us, %.backedge.us ], [ %.152.us, %.outer.us ], [ %.152.us, %.lr.ph.us ], [ %.152.us, %6 ]
  %.2 = phi i32 [ 0, %.preheader ], [ %.2.ph, %.critedge.sink.split ], [ %spec.select, %.split98.us ], [ 0, %.backedge.us ], [ 0, %.outer.us ], [ 0, %.lr.ph.us ], [ 0, %6 ] ; 3 uses
  tail call void @uprv_free_78(ptr noundef %.057) #5
  tail call void @uprv_free_78(ptr noundef %.253) #5
  tail call void @T_FileStream_close(ptr noundef %i.a) #5
  %i.bw = load i32, ptr %5, align 4               ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %.not70 = icmp eq i32 %i.bw, 15
  %spec.select75 = select i1 %.not70, i32 %.2, i32 -1
  br label %.thread73

bb.t:                                             ; preds = %.critedge
  %i.by = icmp eq i32 %.2, 0
  br i1 %i.by, label %bb.u, label %.thread73

bb.u:                                             ; preds = %bb.t
  store i32 512, ptr @_ZL17currentBufferSize, align 4
  br label %.thread73

.thread73:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.0 = phi i32 [ %spec.select75, %bb.s ], [ 0, %bb.u ], [ %.2, %bb.t ]
  ret i32 %.0
}

declare ptr @T_FileStream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #1

declare ptr @T_FileStream_readLine(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @T_FileStream_rewind(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

declare void @T_FileStream_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6, !8}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
end_hunk_0
