Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_etree?download=true
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
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
  br i1 %or.cond81, label %.lr.ph.preheader, label %.loopexit70.a

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.u = zext nneg i32 %i.e to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 -1, i64 %i.v, i1 false), !tbaa !20
  br label %.loopexit70.a

.loopexit70.a:                                    ; preds = %.lr.ph.preheader, %bb.d
  %2 = icmp sgt i32 %i.g, 0
  br i1 %2, label %.lr.ph79.a, label %.sink.split

.lr.ph79.a:                                       ; preds = %.loopexit70.a
  %wide.trip.count94 = zext nneg i32 %i.g to i64  ; 2 uses
  br i1 %.not69, label %.lr.ph79.split, label %.lr.ph79.split.us

.lr.ph79.split.us:                                ; preds = %.lr.ph79.a, %.loopexit.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.loopexit.us ], [ 0, %.lr.ph79.a ] ; 7 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv85
  store i32 -1, ptr %i.w, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv85
  store i32 -1, ptr %i.x, align 4, !tbaa !20
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv85
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20   ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next86 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph76.us.preheader, label %.loopexit.us

.lr.ph76.us.preheader:                            ; preds = %.lr.ph79.split.us
  %i.ad = sext i32 %i.z to i64
  %i.ae = trunc nuw nsw i64 %indvars.iv85 to i32  ; 2 uses
  br label %.lr.ph76.us

.lr.ph76.us:                                      ; preds = %.lr.ph76.us.preheader, %._crit_edge.us.us
  %i.af = phi i32 [ %i.ab, %.lr.ph76.us.preheader ], [ %i.as, %._crit_edge.us.us ]
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph76.us.preheader ], [ %indvars.iv.next, %._crit_edge.us.us ] ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20 ; 3 uses
  %i.ai = icmp ne i32 %i.ah, -1
  %i.aj = sext i32 %i.ah to i64
  %i.ak = icmp sgt i64 %indvars.iv85, %i.aj
  %i.al = and i1 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph73.us.us, label %._crit_edge.us.us

.lr.ph73.us.us:                                   ; preds = %.lr.ph76.us, %bb.e
  %.172.us.us = phi i32 [ %i.ao, %bb.e ], [ %i.ah, %.lr.ph76.us ]
  %i.am = sext i32 %.172.us.us to i64             ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !20 ; 3 uses
  store i32 %i.ae, ptr %i.an, align 4, !tbaa !20
  %.not120 = icmp eq i32 %i.ao, -1
  br i1 %.not120, label %.thread, label %bb.e

.thread:                                          ; preds = %.lr.ph73.us.us
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.am
  store i32 %i.ae, ptr %i.ap, align 4, !tbaa !20
  br label %._crit_edge.us.us.loopexit

bb.e:                                             ; preds = %.lr.ph73.us.us
  %i.aq = sext i32 %i.ao to i64
  %i.ar = icmp sgt i64 %indvars.iv85, %i.aq
  br i1 %i.ar, label %.lr.ph73.us.us, label %._crit_edge.us.us.loopexit, !llvm.loop !8

._crit_edge.us.us.loopexit:                       ; preds = %bb.e, %.thread
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !20
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %.lr.ph76.us
  %i.as = phi i32 [ %.pre, %._crit_edge.us.us.loopexit ], [ %i.af, %.lr.ph76.us ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph76.us, label %.loopexit.us, !llvm.loop !9

.loopexit.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph79.split.us
  %exitcond.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count94
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph79.split.us, !llvm.loop !10

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph79.split
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.sink.split, label %.lr.ph79.split, !llvm.loop !10

.lr.ph79.split:                                   ; preds = %.lr.ph79.a, %.loopexit
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.loopexit ], [ 0, %.lr.ph79.a ] ; 8 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv91
  store i32 -1, ptr %i.av, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv91
  store i32 -1, ptr %i.aw, align 4, !tbaa !20
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv91
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !20 ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next92 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !20
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.lr.ph79.split
  %i.bc = sext i32 %i.ay to i64
  %.pre100 = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.bd = trunc nuw nsw i64 %indvars.iv91 to i32  ; 3 uses
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %._crit_edge
  %indvars.iv88 = phi i64 [ %i.bc, %.lr.ph76.preheader ], [ %indvars.iv.next89, %._crit_edge ] ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv88 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !20
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20 ; 3 uses
  %i.bj = icmp ne i32 %i.bi, -1
  %i.bk = sext i32 %i.bi to i64
  %i.bl = icmp sgt i64 %indvars.iv91, %i.bk
  %i.bm = and i1 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %.lr.ph76, %bb.f
  %.172 = phi i32 [ %i.bp, %bb.f ], [ %i.bi, %.lr.ph76 ]
  %i.bn = sext i32 %.172 to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !20 ; 3 uses
  store i32 %i.bd, ptr %i.bo, align 4, !tbaa !20
  %.not121 = icmp eq i32 %i.bp, -1
  br i1 %.not121, label %.thread111, label %bb.f

.thread111:                                       ; preds = %.lr.ph73
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bn
  store i32 %i.bd, ptr %i.bq, align 4, !tbaa !20
  br label %._crit_edge.loopexit

bb.f:                                             ; preds = %.lr.ph73
  %i.br = sext i32 %i.bp to i64
  %i.bs = icmp sgt i64 %indvars.iv91, %i.br
  br i1 %i.bs, label %.lr.ph73, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %bb.f, %.thread111
  %.pre98 = load i32, ptr %i.be, align 4, !tbaa !20
  %.pre99 = sext i32 %.pre98 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph76, %._crit_edge.loopexit
  %.pre-phi101 = phi i32 [ %i.bd, %._crit_edge.loopexit ], [ %.pre100, %.lr.ph76 ]
  %.pre-phi = phi i64 [ %.pre99, %._crit_edge.loopexit ], [ %i.bg, %.lr.ph76 ]
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre-phi
  store i32 %.pre-phi101, ptr %i.bt, align 4, !tbaa !20
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.bu = load i32, ptr %i.az, align 4, !tbaa !20
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next89, %i.bv
  br i1 %i.bw, label %.lr.ph76, label %.loopexit, !llvm.loop !9

.sink.split:                                      ; preds = %.loopexit.us, %.loopexit, %.loopexit70.a, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %.loopexit ], [ 1, %.loopexit70.a ], [ 1, %.loopexit.us ]
  %i.bx = tail call ptr @cs_idone(ptr noundef %i.l, ptr noundef null, ptr noundef %i.o, i32 noundef %.sink) #3
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.065 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.bx, %.sink.split ]
  ret ptr %.065
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, !21}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"p1 double", !11, i64 0}
!14 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !5, i64 40}
!15 = !{!14, !5, i64 40}
!16 = !{!14, !5, i64 4}
!17 = !{!14, !5, i64 8}
!18 = !{!14, !12, i64 16}
!19 = !{!14, !12, i64 24}
!20 = !{!5, !5, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
end_hunk_0
