begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @psub(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !8
  %i.c = add i16 %i.b, 1
  store i16 %i.c, ptr %0, align 2, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not72 = icmp eq ptr %1, null
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i16, ptr %1, align 2, !tbaa !8
  %i.e = add i16 %i.d, 1
  store i16 %i.e, ptr %1, align 2, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 4 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !10    ; 2 uses
  %.not73 = icmp eq i8 %i.g, %i.i
  br i1 %.not73, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  store ptr null, ptr %i.a, align 8, !tbaa !12
  %.not77 = icmp eq i8 %i.i, 0
  %i.j = zext i1 %.not77 to i8
  store i8 %i.j, ptr %i.h, align 2, !tbaa !10
  %i.k = tail call ptr @padd(ptr noundef nonnull %0, ptr noundef nonnull %1) #3
  %i.l = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.k) #3 ; 0 uses
  %i.m = load i8, ptr %i.h, align 2, !tbaa !10
  %.not78 = icmp eq i8 %i.m, 0
  %i.n = zext i1 %.not78 to i8
  store i8 %i.n, ptr %i.h, align 2, !tbaa !10
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @pcmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #3 ; 2 uses
  %i.p = load i8, ptr %i.f, align 2, !tbaa !10
  %.not74 = icmp eq i8 %i.p, 0
  %i.q = sub nsw i32 0, %i.o
  %spec.select = select i1 %.not74, i32 %i.o, i32 %i.q
  %i.r = icmp slt i32 %spec.select, 0             ; 3 uses
  %spec.select110 = select i1 %i.r, ptr %1, ptr %0 ; 4 uses
  %spec.select111 = select i1 %i.r, ptr %0, ptr %1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select110, i64 4 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !14
  %i.u = zext i16 %i.t to i32
  %i.v = tail call ptr (i32, ...) @palloc(i32 noundef %i.u) #3 ; 5 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !12
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select110, i64 6
  %i.y = load i8, ptr %i.x, align 2, !tbaa !10    ; 2 uses
  %.not75 = icmp eq i8 %i.y, 0
  %i.z = zext i1 %.not75 to i8
  %.sink = select i1 %i.r, i8 %i.z, i8 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  store i8 %.sink, ptr %i.aa, align 2, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select110, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select111, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select111, i64 4
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !14
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.af
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.060 = phi ptr [ %2, %bb.g ], [ %3, %bb.h ]    ; 2 uses
  %.058 = phi ptr [ %i.ab, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %.057 = phi ptr [ %i.ac, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  %.056 = phi i32 [ 1, %bb.g ], [ %i.aq, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.057, i64 2 ; 2 uses
  %i.ai = load i16, ptr %.057, align 2, !tbaa !8
  %i.aj = xor i16 %i.ai, -1
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.058, i64 2 ; 3 uses
  %i.am = load i16, ptr %.058, align 2, !tbaa !8
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %.056, %i.ak
  %i.ap = add nuw nsw i32 %i.ao, %i.an            ; 2 uses
  %i.aq = lshr i32 %i.ap, 16                      ; 2 uses
  %i.ar = trunc i32 %i.ap to i16
  %3 = getelementptr inbounds nuw i8, ptr %.060, i64 2 ; 3 uses
  store i16 %i.ar, ptr %.060, align 2, !tbaa !8
  %i.as = icmp ult ptr %i.ah, %i.ag
  br i1 %i.as, label %bb.h, label %bb.i, !llvm.loop !15

bb.i:                                             ; preds = %bb.h
  %i.at = load i16, ptr %i.s, align 2, !tbaa !14
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.au ; 2 uses
  %i.aw = icmp ult ptr %i.al, %i.av
  br i1 %i.aw, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.i
  %4 = phi ptr [ %i.v, %bb.i ], [ %.pre, %.preheader.loopexit ] ; 2 uses
  %.161.lcssa = phi ptr [ %3, %bb.i ], [ %6, %.preheader.loopexit ]
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.j

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.1.in96 = phi i32 [ %i.bc, %.lr.ph ], [ %i.aq, %bb.i ]
  %.15995 = phi ptr [ %i.ax, %.lr.ph ], [ %i.al, %bb.i ] ; 2 uses
  %.16194 = phi ptr [ %6, %.lr.ph ], [ %3, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.15995, i64 2 ; 2 uses
  %i.ay = load i16, ptr %.15995, align 2, !tbaa !8
  %i.az = zext i16 %i.ay to i32
  %i.ba = add nuw nsw i32 %.1.in96, 65535
  %i.bb = add nuw nsw i32 %i.ba, %i.az            ; 2 uses
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = trunc i32 %i.bb to i16
  %6 = getelementptr inbounds nuw i8, ptr %.16194, i64 2 ; 2 uses
  store i16 %i.bd, ptr %.16194, align 2, !tbaa !8
  %i.be = icmp ult ptr %i.ax, %i.av
  br i1 %i.be, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !17

bb.j:                                             ; preds = %.preheader, %bb.j
  %.2 = phi ptr [ %i.bf, %bb.j ], [ %.161.lcssa, %.preheader ]
  %i.bf = getelementptr inbounds i8, ptr %.2, i64 -2 ; 4 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !8
  %.not76 = icmp eq i16 %i.bg, 0
  %7 = icmp ugt ptr %i.bf, %5
  %or.cond = select i1 %.not76, i1 %7, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k, !llvm.loop !18

bb.k:                                             ; preds = %bb.j
  %8 = ptrtoint ptr %i.bf to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %i.bh = lshr exact i64 %10, 1
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = add i16 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %.16387 = phi ptr [ %1, %.thread ], [ %spec.select111, %bb.k ] ; 3 uses
  %.16586 = phi ptr [ %0, %.thread ], [ %spec.select110, %bb.k ] ; 3 uses
  %i.bl = load i16, ptr %.16586, align 2, !tbaa !8
  %i.bm = add i16 %i.bl, -1                       ; 2 uses
  store i16 %i.bm, ptr %.16586, align 2, !tbaa !8
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = call i32 (ptr, ...) @pfree(ptr noundef nonnull %.16586) #3 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bp = load i16, ptr %.16387, align 2, !tbaa !8
  %i.bq = add i16 %i.bp, -1                       ; 2 uses
  store i16 %i.bq, ptr %.16387, align 2, !tbaa !8
  %i.br = icmp eq i16 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = call i32 (ptr, ...) @pfree(ptr noundef nonnull %.16387) #3 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bu = call ptr @presult(ptr noundef %i.bt) #3
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.p
  %.066 = phi ptr [ %i.bu, %bb.p ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret ptr %.066
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @psetq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @padd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc(...) local_unnamed_addr #2

declare i32 @pfree(...) local_unnamed_addr #2

declare ptr @presult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !6, i64 6}
!11 = !{!"", !9, i64 0, !9, i64 2, !9, i64 4, !6, i64 6, !6, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !9, i64 4}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
end_hunk_0
