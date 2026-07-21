inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Not enough memory to create Tag-tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Not enough memory to create Tag-tree nodes\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Not enough memory to reinitialize the tag tree\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @opj_tgt_create(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 32) #7 ; 12 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str) #7 ; 0 uses
  br label %opj_tgt_reset.exit

bb.c:                                             ; preds = %bb.a
  store i32 %0, ptr %i.c, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %1, ptr %i.e, align 4, !tbaa !11
  store i32 %0, ptr %i.a, align 16, !tbaa !3
  store i32 %1, ptr %i.b, align 16, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i32 [ %1, %bb.c ], [ %7, %bb.d ]     ; 2 uses
  %i.h = phi i32 [ %0, %bb.c ], [ %5, %bb.d ]     ; 2 uses
  %i.i = phi i32 [ 0, %bb.c ], [ %i.n, %bb.d ]
  %.059 = phi i32 [ 0, %bb.c ], [ %i.j, %bb.d ]   ; 3 uses
  %3 = mul nsw i32 %i.g, %i.h                     ; 2 uses
  %4 = add nsw i32 %i.h, 1
  %5 = sdiv i32 %4, 2                             ; 2 uses
  %i.j = add i32 %.059, 1                         ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k
  store i32 %5, ptr %i.l, align 4, !tbaa !3
  %6 = add nsw i32 %i.g, 1
  %7 = sdiv i32 %6, 2                             ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  store i32 %7, ptr %i.m, align 4, !tbaa !3
  %i.n = add i32 %i.i, %3                         ; 4 uses
  %i.o = icmp ugt i32 %3, 1
  br i1 %i.o, label %bb.d, label %bb.e, !llvm.loop !12

bb.e:                                             ; preds = %bb.d
  %i.p = zext i32 %.059 to i64
  store i32 %i.n, ptr %i.f, align 8, !tbaa !14
  %i.q = icmp eq i32 %i.n, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @opj_free(ptr noundef nonnull %i.c) #7
  br label %opj_tgt_reset.exit

bb.g:                                             ; preds = %bb.e
  %i.r = zext i32 %i.n to i64
  %i.s = tail call ptr @opj_calloc(i64 noundef %i.r, i64 noundef 24) #7 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !15
  %.not74 = icmp eq ptr %i.s, null
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.1) #7 ; 0 uses
  tail call void @opj_free(ptr noundef nonnull %i.c) #7
  br label %opj_tgt_reset.exit

bb.i:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.f, align 8, !tbaa !14   ; 5 uses
  %i.w = mul i32 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.w, ptr %i.x, align 8, !tbaa !16
  %.not98 = icmp eq i32 %.059, 0
  br i1 %.not98, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.y = load i32, ptr %i.e, align 4, !tbaa !11
  %i.z = load i32, ptr %i.c, align 8, !tbaa !7
  %i.aa = mul i32 %i.y, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.ab ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge88
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge88 ] ; 3 uses
  %.06396 = phi ptr [ %i.ac, %.preheader.preheader ], [ %.1.lcssa, %._crit_edge88 ] ; 4 uses
  %.06495 = phi ptr [ %i.ac, %.preheader.preheader ], [ %.165.lcssa, %._crit_edge88 ] ; 4 uses
  %.06794 = phi ptr [ %i.s, %.preheader.preheader ], [ %.168.lcssa, %._crit_edge88 ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 6 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = add nsw i32 %i.ae, -1                   ; 3 uses
  %i.ak = sext i32 %i.ah to i64                   ; 2 uses
  br i1 %i.ai, label %.lr.ph.us, label %.lr.ph87.split.preheader

.lr.ph87.split.preheader:                         ; preds = %.lr.ph87
  %xtraiter = and i32 %i.ae, 3                    ; 3 uses
  %i.al = icmp ult i32 %i.ae, 4
  br i1 %i.al, label %.lr.ph87.split.epil.preheader, label %.lr.ph87.split.preheader.new

.lr.ph87.split.preheader.new:                     ; preds = %.lr.ph87.split.preheader
  %unroll_iter = and i32 %i.ae, 2147483644
  br label %.lr.ph87.split

.lr.ph.us:                                        ; preds = %.lr.ph87, %._crit_edge.us
  %.06186.us = phi i32 [ %i.av, %._crit_edge.us ], [ 0, %.lr.ph87 ] ; 3 uses
  %.185.us = phi ptr [ %.2.us, %._crit_edge.us ], [ %.06396, %.lr.ph87 ] ; 2 uses
  %.16584.us = phi ptr [ %.3.us, %._crit_edge.us ], [ %.06495, %.lr.ph87 ]
  %.16883.us = phi ptr [ %.370.us113, %._crit_edge.us ], [ %.06794, %.lr.ph87 ]
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.us, %bb.k
  %.06081.us = phi i32 [ %i.ah, %.lr.ph.us ], [ %i.ao, %bb.k ] ; 3 uses
  %.26680.us = phi ptr [ %.16584.us, %.lr.ph.us ], [ %i.aq, %bb.k ] ; 4 uses
  %.26979.us = phi ptr [ %.16883.us, %.lr.ph.us ], [ %i.ap, %bb.k ] ; 3 uses
  store ptr %.26680.us, ptr %.26979.us, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %.26979.us, i64 24 ; 2 uses
  %.not76.us = icmp eq i32 %.06081.us, 1
  br i1 %.not76.us, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.26680.us, i64 24
  br label %._crit_edge.us

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %.06081.us, -2
  store ptr %.26680.us, ptr %i.am, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %.26979.us, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.26680.us, i64 24 ; 2 uses
  %i.ar = icmp sgt i32 %.06081.us, 2
  br i1 %i.ar, label %bb.j, label %._crit_edge.us, !llvm.loop !19

._crit_edge.us:                                   ; preds = %bb.k, %.thread
  %i.as = phi ptr [ %i.an, %.thread ], [ %i.aq, %bb.k ] ; 2 uses
  %.370.us113 = phi ptr [ %i.am, %.thread ], [ %i.ap, %bb.k ] ; 2 uses
  %.not75.us = trunc i32 %.06186.us to i1
  %i.at = icmp eq i32 %.06186.us, %i.aj
  %or.cond.us = select i1 %.not75.us, i1 true, i1 %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.185.us, i64 %i.ak
  %.3.us = select i1 %or.cond.us, ptr %i.as, ptr %.185.us ; 2 uses
  %.2.us = select i1 %or.cond.us, ptr %i.as, ptr %i.au ; 2 uses
  %i.av = add nuw nsw i32 %.06186.us, 1           ; 2 uses
  %exitcond101.not = icmp eq i32 %i.av, %i.ae
  br i1 %exitcond101.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !20

.lr.ph87.split:                                   ; preds = %.lr.ph87.split, %.lr.ph87.split.preheader.new
  %.06186 = phi i32 [ 0, %.lr.ph87.split.preheader.new ], [ %i.ax, %.lr.ph87.split ] ; 2 uses
  %.185 = phi ptr [ %.06396, %.lr.ph87.split.preheader.new ], [ %.3, %.lr.ph87.split ]
  %.16584 = phi ptr [ %.06495, %.lr.ph87.split.preheader.new ], [ %.3, %.lr.ph87.split ]
  %niter = phi i32 [ 0, %.lr.ph87.split.preheader.new ], [ %niter.next.3, %.lr.ph87.split ]
  %i.aw = icmp eq i32 %.06186, %i.aj
  %.3 = select i1 %i.aw, ptr %.16584, ptr %.185   ; 6 uses
  %i.ax = add nuw nsw i32 %.06186, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge88.loopexit128.unr-lcssa, label %.lr.ph87.split, !llvm.loop !20

._crit_edge88.loopexit128.unr-lcssa:              ; preds = %.lr.ph87.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge88, label %.lr.ph87.split.epil.preheader

.lr.ph87.split.epil.preheader:                    ; preds = %._crit_edge88.loopexit128.unr-lcssa, %.lr.ph87.split.preheader
  %.06186.epil.init = phi i32 [ 0, %.lr.ph87.split.preheader ], [ %i.ax, %._crit_edge88.loopexit128.unr-lcssa ]
  %.185.epil.init = phi ptr [ %.06396, %.lr.ph87.split.preheader ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ]
  %.16584.epil.init = phi ptr [ %.06495, %.lr.ph87.split.preheader ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ]
  %lcmp.mod136 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph87.split.epil

.lr.ph87.split.epil:                              ; preds = %.lr.ph87.split.epil, %.lr.ph87.split.epil.preheader
  %.06186.epil = phi i32 [ %i.ba, %.lr.ph87.split.epil ], [ %.06186.epil.init, %.lr.ph87.split.epil.preheader ] ; 3 uses
  %.185.epil = phi ptr [ %.2.epil, %.lr.ph87.split.epil ], [ %.185.epil.init, %.lr.ph87.split.epil.preheader ] ; 2 uses
  %.16584.epil = phi ptr [ %.3.epil, %.lr.ph87.split.epil ], [ %.16584.epil.init, %.lr.ph87.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph87.split.epil ], [ 0, %.lr.ph87.split.epil.preheader ]
  %.not75.epil = trunc i32 %.06186.epil to i1
  %i.ay = icmp eq i32 %.06186.epil, %i.aj
  %or.cond.epil = select i1 %.not75.epil, i1 true, i1 %i.ay ; 2 uses
  %i.az = getelementptr inbounds [24 x i8], ptr %.185.epil, i64 %i.ak
  %.3.epil = select i1 %or.cond.epil, ptr %.16584.epil, ptr %.185.epil ; 2 uses
  %.2.epil = select i1 %or.cond.epil, ptr %.16584.epil, ptr %i.az ; 2 uses
  %i.ba = add nuw nsw i32 %.06186.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge88, label %.lr.ph87.split.epil, !llvm.loop !21

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit128.unr-lcssa, %.lr.ph87.split.epil, %._crit_edge.us, %.preheader
  %.168.lcssa = phi ptr [ %.06794, %.preheader ], [ %.370.us113, %._crit_edge.us ], [ %.06794, %.lr.ph87.split.epil ], [ %.06794, %._crit_edge88.loopexit128.unr-lcssa ] ; 2 uses
  %.165.lcssa = phi ptr [ %.06495, %.preheader ], [ %.3.us, %._crit_edge.us ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ], [ %.3.epil, %.lr.ph87.split.epil ]
  %.1.lcssa = phi ptr [ %.06396, %.preheader ], [ %.2.us, %._crit_edge.us ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ], [ %.2.epil, %.lr.ph87.split.epil ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond104.not, label %._crit_edge, label %.preheader, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge88, %bb.i
  %.067.lcssa = phi ptr [ %i.s, %bb.i ], [ %.168.lcssa, %._crit_edge88 ]
  store ptr null, ptr %.067.lcssa, align 8, !tbaa !17
  %.not12.i = icmp eq i32 %i.v, 0
  br i1 %.not12.i, label %opj_tgt_reset.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %xtraiter137 = and i32 %i.v, 3                  ; 3 uses
  %i.bb = icmp ult i32 %i.v, 4
  br i1 %i.bb, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter141 = and i32 %i.v, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi ptr [ %i.s, %.lr.ph.i.preheader.new ], [ %i.bo, %.lr.ph.i ] ; 13 uses
  %niter142 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter142.next.3, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  store i32 999, ptr %i.bc, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  store i32 999, ptr %i.bf, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.i, i64 36
  store i32 0, ptr %i.bg, align 4, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  store i32 0, ptr %i.bh, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i, i64 56
  store i32 999, ptr %i.bi, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i, i64 60
  store i32 0, ptr %i.bj, align 4, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i, i64 64
  store i32 0, ptr %i.bk, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i, i64 80
  store i32 999, ptr %i.bl, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i, i64 84
  store i32 0, ptr %i.bm, align 4, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %.011.i, i64 88
  store i32 0, ptr %i.bn, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i, i64 96 ; 2 uses
  %niter142.next.3 = add nuw i32 %niter142, 4     ; 2 uses
  %niter142.ncmp.3 = icmp eq i32 %niter142.next.3, %unroll_iter141
  br i1 %niter142.ncmp.3, label %opj_tgt_reset.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !27

opj_tgt_reset.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i
  %lcmp.mod139.not = icmp eq i32 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %opj_tgt_reset.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_tgt_reset.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi ptr [ %i.s, %.lr.ph.i.preheader ], [ %i.bo, %opj_tgt_reset.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i32 %xtraiter137, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi ptr [ %i.bs, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 4 uses
  %epil.iter138 = phi i32 [ %epil.iter138.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 8
  store i32 999, ptr %i.bp, align 8, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 16
  store i32 0, ptr %i.br, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 24
  %epil.iter138.next = add i32 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i32 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %opj_tgt_reset.exit, label %.lr.ph.i.epil, !llvm.loop !28

opj_tgt_reset.exit:                               ; preds = %opj_tgt_reset.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge, %bb.h, %bb.f, %bb.b
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.h ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph.i.epil ], [ %i.c, %opj_tgt_reset.exit.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @opj_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @opj_tgt_reset(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %xtraiter = and i32 %i.b, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.b, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.b, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi ptr [ %i.d, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ] ; 13 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %.011, i64 8
  store i32 999, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %.011, i64 32
  store i32 999, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 36
  store i32 0, ptr %i.j, align 4, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %.011, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %.011, i64 56
  store i32 999, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %.011, i64 60
  store i32 0, ptr %i.m, align 4, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %.011, i64 64
  store i32 0, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %.011, i64 80
  store i32 999, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %.011, i64 84
  store i32 0, ptr %i.p, align 4, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %.011, i64 88
  store i32 0, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.011, i64 96 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.r, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.011.epil = phi ptr [ %i.v, %.lr.ph.epil ], [ %.011.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.011.epil, i64 8
  store i32 999, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %.011.epil, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %.011.epil, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %.011.epil, i64 24
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !29

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef ptr @opj_tgt_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %opj_tgt_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !7
  %.not90 = icmp eq i32 %i.c, %1
  br i1 %.not90, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %.not91 = icmp eq i32 %i.e, %2
  br i1 %.not91, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %2, ptr %i.f, align 4, !tbaa !11
  store i32 %1, ptr %i.a, align 16, !tbaa !3
  store i32 %2, ptr %i.b, align 16, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.h = phi i32 [ %2, %bb.d ], [ %8, %bb.e ]     ; 2 uses
  %i.i = phi i32 [ %1, %bb.d ], [ %6, %bb.e ]     ; 2 uses
  %i.j = phi i32 [ 0, %bb.d ], [ %i.o, %bb.e ]
  %.079 = phi i32 [ 0, %bb.d ], [ %i.k, %bb.e ]   ; 3 uses
  %4 = mul nsw i32 %i.h, %i.i                     ; 2 uses
  %5 = add nsw i32 %i.i, 1
  %6 = sdiv i32 %5, 2                             ; 2 uses
  %i.k = add i32 %.079, 1                         ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l
  store i32 %6, ptr %i.m, align 4, !tbaa !3
  %7 = add nsw i32 %i.h, 1
  %8 = sdiv i32 %7, 2                             ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l
  store i32 %8, ptr %i.n, align 4, !tbaa !3
  %i.o = add i32 %i.j, %4                         ; 4 uses
  %i.p = icmp ugt i32 %4, 1
  br i1 %i.p, label %bb.e, label %bb.f, !llvm.loop !30

bb.f:                                             ; preds = %bb.e
  %i.q = zext i32 %.079 to i64
  store i32 %i.o, ptr %i.g, align 8, !tbaa !14
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %.not6.i = icmp eq ptr %i.t, null
  br i1 %.not6.i, label %opj_tgt_reset.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @opj_free(ptr noundef nonnull %i.t) #7
  store ptr null, ptr %i.s, align 8, !tbaa !15
  br label %opj_tgt_reset.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.u = mul i32 %i.o, 24                         ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !16
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aa = zext i32 %i.u to i64
  %i.ab = tail call ptr @opj_realloc(ptr noundef %i.z, i64 noundef %i.aa) #7 ; 3 uses
  %.not92.not = icmp eq ptr %i.ab, null
  br i1 %.not92.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2) #7 ; 0 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !15  ; 2 uses
  %.not6.i96 = icmp eq ptr %i.ad, null
  br i1 %.not6.i96, label %opj_tgt_reset.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @opj_free(ptr noundef nonnull %i.ad) #7
  store ptr null, ptr %i.y, align 8, !tbaa !15
  br label %opj_tgt_reset.exit.sink.split

bb.m:                                             ; preds = %bb.j
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !15
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !16  ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = sub i32 %i.u, %i.ae
  %i.ai = zext i32 %i.ah to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.ai, i1 false)
  store i32 %i.u, ptr %i.v, align 8, !tbaa !16
  %.pre = load i32, ptr %0, align 8, !tbaa !7
  %.pre127 = load i32, ptr %i.f, align 4, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.aj = phi i32 [ %.pre127, %bb.m ], [ %2, %bb.i ]
  %i.ak = phi i32 [ %.pre, %bb.m ], [ %1, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 3 uses
  %.not120 = icmp eq i32 %.079, 0
  br i1 %.not120, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n
  %i.an = mul i32 %i.aj, %i.ak
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge110
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge110 ] ; 3 uses
  %.073119 = phi ptr [ %i.am, %.preheader.preheader ], [ %.174.lcssa, %._crit_edge110 ] ; 4 uses
  %.075118 = phi ptr [ %i.ap, %.preheader.preheader ], [ %.176.lcssa, %._crit_edge110 ] ; 4 uses
  %.083116 = phi ptr [ %i.ap, %.preheader.preheader ], [ %.184.lcssa, %._crit_edge110 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 6 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %.preheader
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  %i.aw = add nsw i32 %i.ar, -1                   ; 3 uses
  %i.ax = sext i32 %i.au to i64                   ; 2 uses
  br i1 %i.av, label %.lr.ph.us, label %.lr.ph109.split.preheader

.lr.ph109.split.preheader:                        ; preds = %.lr.ph109
  %xtraiter = and i32 %i.ar, 3                    ; 3 uses
  %i.ay = icmp ult i32 %i.ar, 4
  br i1 %i.ay, label %.lr.ph109.split.epil.preheader, label %.lr.ph109.split.preheader.new

.lr.ph109.split.preheader.new:                    ; preds = %.lr.ph109.split.preheader
  %unroll_iter = and i32 %i.ar, 2147483644
  br label %.lr.ph109.split

.lr.ph.us:                                        ; preds = %.lr.ph109, %._crit_edge.us
  %.174108.us = phi ptr [ %.3.us139, %._crit_edge.us ], [ %.073119, %.lr.ph109 ]
  %.176107.us = phi ptr [ %.378.us, %._crit_edge.us ], [ %.075118, %.lr.ph109 ]
  %.081106.us = phi i32 [ %i.bi, %._crit_edge.us ], [ 0, %.lr.ph109 ] ; 3 uses
  %.184105.us = phi ptr [ %.285.us, %._crit_edge.us ], [ %.083116, %.lr.ph109 ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.us, %bb.p
  %.2103.us = phi ptr [ %.174108.us, %.lr.ph.us ], [ %i.bc, %bb.p ] ; 3 uses
  %.277102.us = phi ptr [ %.176107.us, %.lr.ph.us ], [ %i.bd, %bb.p ] ; 4 uses
  %.080101.us = phi i32 [ %i.au, %.lr.ph.us ], [ %i.bb, %bb.p ] ; 3 uses
  store ptr %.277102.us, ptr %.2103.us, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.2103.us, i64 24 ; 2 uses
  %.not94.us = icmp eq i32 %.080101.us, 1
  br i1 %.not94.us, label %.thread137, label %bb.p

.thread137:                                       ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.277102.us, i64 24
  br label %._crit_edge.us

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %.080101.us, -2
  store ptr %.277102.us, ptr %i.az, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.2103.us, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.277102.us, i64 24 ; 2 uses
  %i.be = icmp sgt i32 %.080101.us, 2
  br i1 %i.be, label %bb.o, label %._crit_edge.us, !llvm.loop !31

._crit_edge.us:                                   ; preds = %bb.p, %.thread137
  %i.bf = phi ptr [ %i.ba, %.thread137 ], [ %i.bd, %bb.p ] ; 2 uses
  %.3.us139 = phi ptr [ %i.az, %.thread137 ], [ %i.bc, %bb.p ] ; 2 uses
  %.not93.us = trunc i32 %.081106.us to i1
  %i.bg = icmp eq i32 %.081106.us, %i.aw
  %or.cond.us = select i1 %.not93.us, i1 true, i1 %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.184105.us, i64 %i.ax
  %.285.us = select i1 %or.cond.us, ptr %i.bf, ptr %i.bh ; 2 uses
  %.378.us = select i1 %or.cond.us, ptr %i.bf, ptr %.184105.us ; 2 uses
  %i.bi = add nuw nsw i32 %.081106.us, 1          ; 2 uses
  %exitcond123.not = icmp eq i32 %i.bi, %i.ar
  br i1 %exitcond123.not, label %._crit_edge110, label %.lr.ph.us, !llvm.loop !32

.lr.ph109.split:                                  ; preds = %.lr.ph109.split, %.lr.ph109.split.preheader.new
  %.176107 = phi ptr [ %.075118, %.lr.ph109.split.preheader.new ], [ %.378, %.lr.ph109.split ]
  %.081106 = phi i32 [ 0, %.lr.ph109.split.preheader.new ], [ %i.bk, %.lr.ph109.split ] ; 2 uses
  %.184105 = phi ptr [ %.083116, %.lr.ph109.split.preheader.new ], [ %.378, %.lr.ph109.split ]
  %niter = phi i32 [ 0, %.lr.ph109.split.preheader.new ], [ %niter.next.3, %.lr.ph109.split ]
  %i.bj = icmp eq i32 %.081106, %i.aw
  %.378 = select i1 %i.bj, ptr %.176107, ptr %.184105 ; 6 uses
  %i.bk = add nuw nsw i32 %.081106, 4             ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge110.loopexit154.unr-lcssa, label %.lr.ph109.split, !llvm.loop !32

._crit_edge110.loopexit154.unr-lcssa:             ; preds = %.lr.ph109.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge110, label %.lr.ph109.split.epil.preheader

.lr.ph109.split.epil.preheader:                   ; preds = %._crit_edge110.loopexit154.unr-lcssa, %.lr.ph109.split.preheader
  %.176107.epil.init = phi ptr [ %.075118, %.lr.ph109.split.preheader ], [ %.378, %._crit_edge110.loopexit154.unr-lcssa ]
  %.081106.epil.init = phi i32 [ 0, %.lr.ph109.split.preheader ], [ %i.bk, %._crit_edge110.loopexit154.unr-lcssa ]
  %.184105.epil.init = phi ptr [ %.083116, %.lr.ph109.split.preheader ], [ %.378, %._crit_edge110.loopexit154.unr-lcssa ]
  %lcmp.mod162 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %.lr.ph109.split.epil

.lr.ph109.split.epil:                             ; preds = %.lr.ph109.split.epil, %.lr.ph109.split.epil.preheader
  %.176107.epil = phi ptr [ %.378.epil, %.lr.ph109.split.epil ], [ %.176107.epil.init, %.lr.ph109.split.epil.preheader ] ; 2 uses
  %.081106.epil = phi i32 [ %i.bn, %.lr.ph109.split.epil ], [ %.081106.epil.init, %.lr.ph109.split.epil.preheader ] ; 3 uses
  %.184105.epil = phi ptr [ %.285.epil, %.lr.ph109.split.epil ], [ %.184105.epil.init, %.lr.ph109.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph109.split.epil ], [ 0, %.lr.ph109.split.epil.preheader ]
  %.not93.epil = trunc i32 %.081106.epil to i1
  %i.bl = icmp eq i32 %.081106.epil, %i.aw
  %or.cond.epil = select i1 %.not93.epil, i1 true, i1 %i.bl ; 2 uses
  %i.bm = getelementptr inbounds [24 x i8], ptr %.184105.epil, i64 %i.ax
  %.285.epil = select i1 %or.cond.epil, ptr %.176107.epil, ptr %i.bm ; 2 uses
  %.378.epil = select i1 %or.cond.epil, ptr %.176107.epil, ptr %.184105.epil ; 2 uses
  %i.bn = add nuw nsw i32 %.081106.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge110, label %.lr.ph109.split.epil, !llvm.loop !33

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit154.unr-lcssa, %.lr.ph109.split.epil, %._crit_edge.us, %.preheader
  %.184.lcssa = phi ptr [ %.083116, %.preheader ], [ %.285.us, %._crit_edge.us ], [ %.378, %._crit_edge110.loopexit154.unr-lcssa ], [ %.285.epil, %.lr.ph109.split.epil ]
  %.176.lcssa = phi ptr [ %.075118, %.preheader ], [ %.378.us, %._crit_edge.us ], [ %.378, %._crit_edge110.loopexit154.unr-lcssa ], [ %.378.epil, %.lr.ph109.split.epil ]
  %.174.lcssa = phi ptr [ %.073119, %.preheader ], [ %.3.us139, %._crit_edge.us ], [ %.073119, %.lr.ph109.split.epil ], [ %.073119, %._crit_edge110.loopexit154.unr-lcssa ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond126.not, label %._crit_edge, label %.preheader, !llvm.loop !34

._crit_edge:                                      ; preds = %._crit_edge110, %bb.n
  %.073.lcssa = phi ptr [ %i.am, %bb.n ], [ %.174.lcssa, %._crit_edge110 ]
  store ptr null, ptr %.073.lcssa, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !14 ; 4 uses
  %.not12.i = icmp eq i32 %i.bp, 0
  br i1 %.not12.i, label %opj_tgt_reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.q
end_hunk_0
