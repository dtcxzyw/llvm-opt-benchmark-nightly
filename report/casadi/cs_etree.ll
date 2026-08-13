begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @cs_etree(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = tail call ptr @cs_malloc(i32 noundef %i.g, i64 noundef 4) #3 ; 6 uses
  %.not69 = icmp ne i32 %1, 0                     ; 3 uses
  %i.m = select i1 %.not69, i32 %i.e, i32 0
  %i.n = add nsw i32 %i.g, %i.m
  %i.o = tail call ptr @cs_malloc(i32 noundef %i.n, i64 noundef 4) #3 ; 7 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = icmp ne ptr %i.l, null
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %i.g to i64
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %i.r ; 3 uses
  %i.t = icmp sgt i32 %i.e, 0
  %or.cond81 = select i1 %.not69, i1 %i.t, i1 false
  br i1 %or.cond81, label %.lr.ph.preheader, label %.loopexit70

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.u = zext nneg i32 %i.e to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 -1, i64 %i.v, i1 false), !tbaa !17
  br label %.loopexit70

.loopexit70:                                      ; preds = %.lr.ph.preheader, %bb.d
  %i.w = icmp sgt i32 %i.g, 0
  br i1 %i.w, label %.lr.ph79, label %.sink.split

.lr.ph79:                                         ; preds = %.loopexit70
  %wide.trip.count94 = zext nneg i32 %i.g to i64  ; 2 uses
  br i1 %.not69, label %.lr.ph79.split, label %.lr.ph79.split.us

.lr.ph79.split.us:                                ; preds = %.lr.ph79, %.loopexit.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.loopexit.us ], [ 0, %.lr.ph79 ] ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv85
  store i32 -1, ptr %i.x, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv85
  store i32 -1, ptr %i.y, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv85
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17  ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next86 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !17 ; 2 uses
  %i.ad = icmp slt i32 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph76.us.preheader, label %.loopexit.us

.lr.ph76.us.preheader:                            ; preds = %.lr.ph79.split.us
  %i.ae = sext i32 %i.aa to i64
  %i.af = trunc nuw nsw i64 %indvars.iv85 to i32  ; 2 uses
  br label %.lr.ph76.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph79.split.us
  %exitcond.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count94
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph79.split.us, !llvm.loop !18

.lr.ph76.us:                                      ; preds = %.lr.ph76.us.preheader, %._crit_edge.us.us
  %i.ag = phi i32 [ %i.ac, %.lr.ph76.us.preheader ], [ %i.au, %._crit_edge.us.us ]
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph76.us.preheader ], [ %indvars.iv.next, %._crit_edge.us.us ] ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17 ; 3 uses
  %i.aj = icmp ne i32 %i.ai, -1
  %i.ak = sext i32 %i.ai to i64
  %i.al = icmp sgt i64 %indvars.iv85, %i.ak
  %i.am = and i1 %i.aj, %i.al
  br i1 %i.am, label %.lr.ph73.us.us, label %._crit_edge.us.us

.lr.ph73.us.us:                                   ; preds = %.lr.ph76.us, %bb.e
  %.172.us.us = phi i32 [ %i.ap, %bb.e ], [ %i.ai, %.lr.ph76.us ]
  %i.an = sext i32 %.172.us.us to i64             ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17 ; 3 uses
  store i32 %i.af, ptr %i.ao, align 4, !tbaa !17
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %.thread, label %bb.e

.thread:                                          ; preds = %.lr.ph73.us.us
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.an
  store i32 %i.af, ptr %i.ar, align 4, !tbaa !17
  br label %._crit_edge.us.us.loopexit

bb.e:                                             ; preds = %.lr.ph73.us.us
  %i.as = sext i32 %i.ap to i64
  %i.at = icmp sgt i64 %indvars.iv85, %i.as
  br i1 %i.at, label %.lr.ph73.us.us, label %._crit_edge.us.us.loopexit, !llvm.loop !20

._crit_edge.us.us.loopexit:                       ; preds = %bb.e, %.thread
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %.lr.ph76.us
  %i.au = phi i32 [ %.pre, %._crit_edge.us.us.loopexit ], [ %i.ag, %.lr.ph76.us ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph76.us, label %.loopexit.us, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph79.split
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.sink.split, label %.lr.ph79.split, !llvm.loop !18

.lr.ph79.split:                                   ; preds = %.lr.ph79, %.loopexit
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.loopexit ], [ 0, %.lr.ph79 ] ; 8 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv91
  store i32 -1, ptr %i.ax, align 4, !tbaa !17
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv91
  store i32 -1, ptr %i.ay, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv91
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17 ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next92 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.bd = icmp slt i32 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.lr.ph79.split
  %i.be = sext i32 %i.ba to i64
  %.pre98 = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.bf = trunc nuw nsw i64 %indvars.iv91 to i32  ; 3 uses
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %._crit_edge
  %indvars.iv88 = phi i64 [ %i.be, %.lr.ph76.preheader ], [ %indvars.iv.next89, %._crit_edge ] ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv88 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !17
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17 ; 3 uses
  %i.bl = icmp ne i32 %i.bk, -1
  %i.bm = sext i32 %i.bk to i64
  %i.bn = icmp sgt i64 %indvars.iv91, %i.bm
  %i.bo = and i1 %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %.lr.ph76, %bb.f
  %.172 = phi i32 [ %i.br, %bb.f ], [ %i.bk, %.lr.ph76 ]
  %i.bp = sext i32 %.172 to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !17 ; 3 uses
  store i32 %i.bf, ptr %i.bq, align 4, !tbaa !17
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %.thread112, label %bb.f

.thread112:                                       ; preds = %.lr.ph73
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bp
  store i32 %i.bf, ptr %i.bt, align 4, !tbaa !17
  br label %._crit_edge.loopexit

bb.f:                                             ; preds = %.lr.ph73
  %i.bu = sext i32 %i.br to i64
  %i.bv = icmp sgt i64 %indvars.iv91, %i.bu
  br i1 %i.bv, label %.lr.ph73, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %bb.f, %.thread112
  %.pre96 = load i32, ptr %i.bg, align 4, !tbaa !17
  %.pre97 = sext i32 %.pre96 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph76, %._crit_edge.loopexit
  %.pre-phi99 = phi i32 [ %i.bf, %._crit_edge.loopexit ], [ %.pre98, %.lr.ph76 ]
  %.pre-phi = phi i64 [ %.pre97, %._crit_edge.loopexit ], [ %i.bi, %.lr.ph76 ]
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre-phi
  store i32 %.pre-phi99, ptr %i.bw, align 4, !tbaa !17
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.bx = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next89, %i.by
  br i1 %i.bz, label %.lr.ph76, label %.loopexit, !llvm.loop !21

.sink.split:                                      ; preds = %.loopexit.us, %.loopexit, %.loopexit70, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %.loopexit ], [ 1, %.loopexit70 ], [ 1, %.loopexit.us ]
  %i.ca = tail call ptr @cs_idone(ptr noundef %i.l, ptr noundef null, ptr noundef %i.o, i32 noundef %.sink) #3
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.ca, %.sink.split ]
  ret ptr %.0
}

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_idone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 40}
!9 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !5, i64 40}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!9, !5, i64 4}
!14 = !{!9, !5, i64 8}
!15 = !{!9, !10, i64 16}
!16 = !{!9, !10, i64 24}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
end_hunk_0
