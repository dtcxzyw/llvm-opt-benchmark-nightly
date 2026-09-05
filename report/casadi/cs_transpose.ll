Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_transpose?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @cs_transpose(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  %i.q = icmp ne i32 %1, 0
  %i.r = icmp ne ptr %i.m, null
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  %i.t = zext i1 %i.s to i32
  %i.u = tail call ptr @cs_spalloc(i32 noundef %i.g, i32 noundef %i.e, i32 noundef %i.p, i32 noundef %i.t, i32 noundef 0) #2 ; 5 uses
  %i.v = tail call ptr @cs_calloc(i32 noundef %i.e, i64 noundef 4) #2 ; 6 uses
  %i.w = icmp ne ptr %i.u, null
  %i.x = icmp ne ptr %i.v, null
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %.fr = freeze ptr %i.ad                         ; 2 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !21
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.o, align 4, !tbaa !21
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.ap = tail call double @cs_cumsum(ptr noundef %i.z, ptr noundef nonnull %i.v, i32 noundef %i.e) #2 ; 0 uses
  %i.aq = icmp sgt i32 %i.g, 0
  br i1 %i.aq, label %.lr.ph66, label %.sink.split

.lr.ph66:                                         ; preds = %._crit_edge
  %.not59 = icmp eq ptr %.fr, null
  %wide.trip.count82 = zext nneg i32 %i.g to i64  ; 2 uses
  %.pre84 = load i32, ptr %i.i, align 4, !tbaa !21 ; 2 uses
  br i1 %.not59, label %.lr.ph66.split.us, label %.lr.ph66.split

.lr.ph66.split.us:                                ; preds = %.lr.ph66, %.loopexit.us
  %i.ar = phi i32 [ %2, %.loopexit.us ], [ %.pre84, %.lr.ph66 ] ; 2 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.loopexit.us ], [ 0, %.lr.ph66 ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next80 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21 ; 2 uses
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph63.us.preheader, label %.loopexit.us

.lr.ph63.us.preheader:                            ; preds = %.lr.ph66.split.us
  %i.av = sext i32 %i.ar to i64
  %i.aw = trunc nuw nsw i64 %indvars.iv79 to i32
  br label %.lr.ph63.us

.lr.ph63.us:                                      ; preds = %.lr.ph63.us.preheader, %.lr.ph63.us
  %indvars.iv76 = phi i64 [ %i.av, %.lr.ph63.us.preheader ], [ %indvars.iv.next77, %.lr.ph63.us ] ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21 ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !21
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.bd
  store i32 %i.aw, ptr %i.be, align 4, !tbaa !21
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.bf = load i32, ptr %i.as, align 4, !tbaa !21 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next77, %i.bg
  br i1 %i.bh, label %.lr.ph63.us, label %.loopexit.us, !llvm.loop !9

.loopexit.us:                                     ; preds = %.lr.ph63.us, %.lr.ph66.split.us
  %2 = phi i32 [ %i.at, %.lr.ph66.split.us ], [ %i.bf, %.lr.ph63.us ]
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.sink.split, label %.lr.ph66.split.us, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph63, %.lr.ph66.split
  %i.bi = phi i32 [ %i.bl, %.lr.ph66.split ], [ %i.ca, %.lr.ph63 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count82
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph66.split, !llvm.loop !10

.lr.ph66.split:                                   ; preds = %.lr.ph66, %.loopexit
  %i.bj = phi i32 [ %i.bi, %.loopexit ], [ %.pre84, %.lr.ph66 ] ; 2 uses
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.loopexit ], [ 0, %.lr.ph66 ] ; 2 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next74 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21 ; 2 uses
  %i.bm = icmp slt i32 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph63.preheader, label %.loopexit

.lr.ph63.preheader:                               ; preds = %.lr.ph66.split
  %i.bn = sext i32 %i.bj to i64
  %i.bo = trunc nuw nsw i64 %indvars.iv73 to i32
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.lr.ph63
  %indvars.iv70 = phi i64 [ %i.bn, %.lr.ph63.preheader ], [ %indvars.iv.next71, %.lr.ph63 ] ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv70
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !21
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21 ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !21
  %i.bv = sext i32 %i.bt to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.bv
  store i32 %i.bo, ptr %i.bw, align 4, !tbaa !21
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv70
  %i.by = load double, ptr %i.bx, align 8, !tbaa !24
  %i.bz = getelementptr inbounds [8 x i8], ptr %.fr, i64 %i.bv
  store double %i.by, ptr %i.bz, align 8, !tbaa !24
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.ca = load i32, ptr %i.bk, align 4, !tbaa !21 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next71, %i.cb
  br i1 %i.cc, label %.lr.ph63, label %.loopexit, !llvm.loop !9

.sink.split:                                      ; preds = %.loopexit, %.loopexit.us, %._crit_edge, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %.loopexit.us ], [ 1, %._crit_edge ], [ 1, %.loopexit ]
  %i.cd = tail call ptr @cs_done(ptr noundef %i.u, ptr noundef %i.v, ptr noundef null, i32 noundef %.sink) #2
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.054 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.cd, %.sink.split ]
  ret ptr %.054
}

declare ptr @cs_spalloc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_calloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_done(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @cs_cumsum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!8 = distinct !{!8, !22}
!9 = distinct !{!9, !22}
!10 = distinct !{!10, !22}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"p1 double", !11, i64 0}
!14 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !5, i64 40}
!15 = !{!14, !5, i64 40}
!16 = !{!14, !5, i64 4}
!17 = !{!14, !5, i64 8}
!18 = !{!14, !12, i64 16}
!19 = !{!14, !12, i64 24}
!20 = !{!14, !13, i64 32}
!21 = !{!5, !5, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"double", !4, i64 0}
!24 = !{!23, !23, i64 0}
end_hunk_0
