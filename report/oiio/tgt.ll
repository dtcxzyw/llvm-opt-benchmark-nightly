Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tgt?download=true
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
  store i32 %0, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %1, ptr %i.e, align 4, !tbaa !12
  store i32 %0, ptr %i.a, align 16, !tbaa !7
  store i32 %1, ptr %i.b, align 16, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %1, %bb.c ], [ %i.q, %bb.d ]
  %i.j = phi i32 [ %0, %bb.c ], [ %i.r, %bb.d ]
  %i.k = phi i32 [ 0, %bb.c ], [ %i.t, %bb.d ]
  %.0 = phi i32 [ 0, %bb.c ], [ %3, %bb.d ]       ; 3 uses
  %i.l = phi <2 x i32> [ %i.h, %bb.c ], [ %i.p, %bb.d ]
  %i.m = mul nsw i32 %i.i, %i.j                   ; 2 uses
  %i.n = add nsw <2 x i32> %i.l, splat (i32 1)
  %3 = add i32 %.0, 1                             ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %4
  %i.p = sdiv <2 x i32> %i.n, splat (i32 2)       ; 3 uses
  %i.q = extractelement <2 x i32> %i.p, i64 1     ; 2 uses
  %i.r = extractelement <2 x i32> %i.p, i64 0     ; 2 uses
  store i32 %i.r, ptr %i.o, align 4, !tbaa !7
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %4
  store i32 %i.q, ptr %i.s, align 4, !tbaa !7
  %i.t = add i32 %i.k, %i.m                       ; 4 uses
  %i.u = icmp ugt i32 %i.m, 1
  br i1 %i.u, label %bb.d, label %bb.e, !llvm.loop !24

bb.e:                                             ; preds = %bb.d
  %5 = zext i32 %.0 to i64
  store i32 %i.t, ptr %i.f, align 8, !tbaa !14
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @opj_free(ptr noundef nonnull %i.c) #7
  br label %opj_tgt_reset.exit

bb.g:                                             ; preds = %bb.e
  %i.w = zext i32 %i.t to i64
  %i.x = tail call ptr @opj_calloc(i64 noundef %i.w, i64 noundef 24) #7 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !15
  %.not74 = icmp eq ptr %i.x, null
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.1) #7 ; 0 uses
  tail call void @opj_free(ptr noundef nonnull %i.c) #7
  br label %opj_tgt_reset.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !14  ; 5 uses
  %i.ab = mul i32 %i.aa, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %.not98 = icmp eq i32 %.0, 0
  br i1 %.not98, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !12
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !11
  %i.af = mul i32 %i.ad, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.ag ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge88
  %indvars.iv.a = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.a, %._crit_edge88 ] ; 3 uses
  %.06296 = phi ptr [ %i.ah, %.preheader.preheader ], [ %.1.lcssa, %._crit_edge88 ] ; 4 uses
  %.06395 = phi ptr [ %i.ah, %.preheader.preheader ], [ %.164.lcssa, %._crit_edge88 ] ; 4 uses
  %.06694 = phi ptr [ %i.x, %.preheader.preheader ], [ %.167.lcssa, %._crit_edge88 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.a
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7  ; 6 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.a
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7  ; 3 uses
  %i.an = icmp sgt i32 %i.am, 0
  %i.ao = add nsw i32 %i.aj, -1                   ; 3 uses
  %i.ap = sext i32 %i.am to i64                   ; 2 uses
  br i1 %i.an, label %.lr.ph.us, label %.lr.ph87.split.preheader

.lr.ph87.split.preheader:                         ; preds = %.lr.ph87
  %xtraiter = and i32 %i.aj, 3                    ; 3 uses
  %i.aq = icmp ult i32 %i.aj, 4
  br i1 %i.aq, label %.lr.ph87.split.epil.preheader, label %.lr.ph87.split.preheader.new

.lr.ph87.split.preheader.new:                     ; preds = %.lr.ph87.split.preheader
  %unroll_iter = and i32 %i.aj, 2147483644
  br label %.lr.ph87.split

.lr.ph.us:                                        ; preds = %.lr.ph87, %._crit_edge.us
  %.06086.us = phi i32 [ %i.ba, %._crit_edge.us ], [ 0, %.lr.ph87 ] ; 3 uses
  %.185.us = phi ptr [ %.2.us, %._crit_edge.us ], [ %.06296, %.lr.ph87 ] ; 2 uses
  %.16484.us = phi ptr [ %.3.us, %._crit_edge.us ], [ %.06395, %.lr.ph87 ]
  %.16783.us = phi ptr [ %.369.us113, %._crit_edge.us ], [ %.06694, %.lr.ph87 ]
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.us, %bb.k
  %.05981.us = phi i32 [ %i.am, %.lr.ph.us ], [ %i.at, %bb.k ] ; 3 uses
  %.26580.us = phi ptr [ %.16484.us, %.lr.ph.us ], [ %i.av, %bb.k ] ; 4 uses
  %.26879.us = phi ptr [ %.16783.us, %.lr.ph.us ], [ %i.au, %bb.k ] ; 3 uses
  store ptr %.26580.us, ptr %.26879.us, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.26879.us, i64 24 ; 2 uses
  %.not76.us = icmp eq i32 %.05981.us, 1
  br i1 %.not76.us, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.26580.us, i64 24
  br label %._crit_edge.us

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %.05981.us, -2
  store ptr %.26580.us, ptr %i.ar, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.26879.us, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.26580.us, i64 24 ; 2 uses
  %i.aw = icmp sgt i32 %.05981.us, 2
  br i1 %i.aw, label %bb.j, label %._crit_edge.us, !llvm.loop !25

._crit_edge.us:                                   ; preds = %bb.k, %.thread
  %i.ax = phi ptr [ %i.as, %.thread ], [ %i.av, %bb.k ] ; 2 uses
  %.369.us113 = phi ptr [ %i.ar, %.thread ], [ %i.au, %bb.k ] ; 2 uses
  %.not75.us = trunc i32 %.06086.us to i1
  %i.ay = icmp eq i32 %.06086.us, %i.ao
  %or.cond.us = select i1 %.not75.us, i1 true, i1 %i.ay ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.185.us, i64 %i.ap
  %.3.us = select i1 %or.cond.us, ptr %i.ax, ptr %.185.us ; 2 uses
  %.2.us = select i1 %or.cond.us, ptr %i.ax, ptr %i.az ; 2 uses
  %i.ba = add nuw nsw i32 %.06086.us, 1           ; 2 uses
  %exitcond101.not = icmp eq i32 %i.ba, %i.aj
  br i1 %exitcond101.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !26

.lr.ph87.split:                                   ; preds = %.lr.ph87.split, %.lr.ph87.split.preheader.new
  %.06086 = phi i32 [ 0, %.lr.ph87.split.preheader.new ], [ %i.bc, %.lr.ph87.split ] ; 2 uses
  %.185 = phi ptr [ %.06296, %.lr.ph87.split.preheader.new ], [ %.3, %.lr.ph87.split ]
  %.16484 = phi ptr [ %.06395, %.lr.ph87.split.preheader.new ], [ %.3, %.lr.ph87.split ]
  %niter = phi i32 [ 0, %.lr.ph87.split.preheader.new ], [ %niter.next.3, %.lr.ph87.split ]
  %i.bb = icmp eq i32 %.06086, %i.ao
  %.3 = select i1 %i.bb, ptr %.16484, ptr %.185   ; 6 uses
  %i.bc = add nuw nsw i32 %.06086, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge88.loopexit128.unr-lcssa, label %.lr.ph87.split, !llvm.loop !26

._crit_edge88.loopexit128.unr-lcssa:              ; preds = %.lr.ph87.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge88, label %.lr.ph87.split.epil.preheader

.lr.ph87.split.epil.preheader:                    ; preds = %._crit_edge88.loopexit128.unr-lcssa, %.lr.ph87.split.preheader
  %.06086.epil.init = phi i32 [ 0, %.lr.ph87.split.preheader ], [ %i.bc, %._crit_edge88.loopexit128.unr-lcssa ]
  %.185.epil.init = phi ptr [ %.06296, %.lr.ph87.split.preheader ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ]
  %.16484.epil.init = phi ptr [ %.06395, %.lr.ph87.split.preheader ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ]
  %lcmp.mod136 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph87.split.epil

.lr.ph87.split.epil:                              ; preds = %.lr.ph87.split.epil, %.lr.ph87.split.epil.preheader
  %.06086.epil = phi i32 [ %i.bf, %.lr.ph87.split.epil ], [ %.06086.epil.init, %.lr.ph87.split.epil.preheader ] ; 3 uses
  %.185.epil = phi ptr [ %.2.epil, %.lr.ph87.split.epil ], [ %.185.epil.init, %.lr.ph87.split.epil.preheader ] ; 2 uses
  %.16484.epil = phi ptr [ %.3.epil, %.lr.ph87.split.epil ], [ %.16484.epil.init, %.lr.ph87.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph87.split.epil ], [ 0, %.lr.ph87.split.epil.preheader ]
  %.not75.epil = trunc i32 %.06086.epil to i1
  %i.bd = icmp eq i32 %.06086.epil, %i.ao
  %or.cond.epil = select i1 %.not75.epil, i1 true, i1 %i.bd ; 2 uses
  %i.be = getelementptr inbounds [24 x i8], ptr %.185.epil, i64 %i.ap
  %.3.epil = select i1 %or.cond.epil, ptr %.16484.epil, ptr %.185.epil ; 2 uses
  %.2.epil = select i1 %or.cond.epil, ptr %.16484.epil, ptr %i.be ; 2 uses
  %i.bf = add nuw nsw i32 %.06086.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge88, label %.lr.ph87.split.epil, !llvm.loop !27

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit128.unr-lcssa, %.lr.ph87.split.epil, %._crit_edge.us, %.preheader
  %.167.lcssa = phi ptr [ %.06694, %.preheader ], [ %.369.us113, %._crit_edge.us ], [ %.06694, %.lr.ph87.split.epil ], [ %.06694, %._crit_edge88.loopexit128.unr-lcssa ] ; 2 uses
  %.164.lcssa = phi ptr [ %.06395, %.preheader ], [ %.3.us, %._crit_edge.us ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ], [ %.3.epil, %.lr.ph87.split.epil ]
  %.1.lcssa = phi ptr [ %.06296, %.preheader ], [ %.2.us, %._crit_edge.us ], [ %.3, %._crit_edge88.loopexit128.unr-lcssa ], [ %.2.epil, %.lr.ph87.split.epil ]
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next.a, %5
  br i1 %exitcond104.not, label %._crit_edge, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %._crit_edge88, %bb.i
  %.066.lcssa = phi ptr [ %i.x, %bb.i ], [ %.167.lcssa, %._crit_edge88 ]
  store ptr null, ptr %.066.lcssa, align 8, !tbaa !18
  %.not12.i = icmp eq i32 %i.aa, 0
  br i1 %.not12.i, label %opj_tgt_reset.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %xtraiter137 = and i32 %i.aa, 3                 ; 3 uses
  %i.bg = icmp ult i32 %i.aa, 4
  br i1 %i.bg, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter141 = and i32 %i.aa, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi ptr [ %i.x, %.lr.ph.i.preheader.new ], [ %i.bt, %.lr.ph.i ] ; 13 uses
  %niter142 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter142.next.3, %.lr.ph.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  store i32 999, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  store i32 0, ptr %i.bj, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  store i32 999, ptr %i.bk, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i, i64 36
  store i32 0, ptr %i.bl, align 4, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  store i32 0, ptr %i.bm, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %.011.i, i64 56
  store i32 999, ptr %i.bn, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i, i64 60
  store i32 0, ptr %i.bo, align 4, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.011.i, i64 64
  store i32 0, ptr %i.bp, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.i, i64 80
  store i32 999, ptr %i.bq, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i, i64 84
  store i32 0, ptr %i.br, align 4, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i, i64 88
  store i32 0, ptr %i.bs, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %.011.i, i64 96 ; 2 uses
  %niter142.next.3 = add nuw i32 %niter142, 4     ; 2 uses
  %niter142.ncmp.3 = icmp eq i32 %niter142.next.3, %unroll_iter141
  br i1 %niter142.ncmp.3, label %opj_tgt_reset.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

opj_tgt_reset.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i
  %lcmp.mod139.not = icmp eq i32 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %opj_tgt_reset.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_tgt_reset.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi ptr [ %i.x, %.lr.ph.i.preheader ], [ %i.bt, %opj_tgt_reset.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i32 %xtraiter137, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi ptr [ %i.bx, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 4 uses
  %epil.iter138 = phi i32 [ %epil.iter138.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 8
  store i32 999, ptr %i.bu, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 16
  store i32 0, ptr %i.bw, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 24
  %epil.iter138.next = add i32 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i32 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %opj_tgt_reset.exit, label %.lr.ph.i.epil, !llvm.loop !29

opj_tgt_reset.exit:                               ; preds = %opj_tgt_reset.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge, %bb.h, %bb.f, %bb.b
  %.070 = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.h ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph.i.epil ], [ %i.c, %opj_tgt_reset.exit.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.070
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
  store i32 999, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %.011, i64 32
  store i32 999, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 36
  store i32 0, ptr %i.j, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.011, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %.011, i64 56
  store i32 999, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %.011, i64 60
  store i32 0, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %.011, i64 64
  store i32 0, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.011, i64 80
  store i32 999, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %.011, i64 84
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.011, i64 88
  store i32 0, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %.011, i64 96 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

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
  store i32 999, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %.011.epil, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.011.epil, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %.011.epil, i64 24
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !30

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
  %i.c = load i32, ptr %0, align 8, !tbaa !11
  %.not91 = icmp eq i32 %i.c, %1
  br i1 %.not91, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %.not92 = icmp eq i32 %i.e, %2
  br i1 %.not92, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %2, ptr %i.f, align 4, !tbaa !12
  store i32 %1, ptr %i.a, align 16, !tbaa !7
  store i32 %2, ptr %i.b, align 16, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.i = insertelement <2 x i32> %i.h, i32 %2, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.j = phi i32 [ %2, %bb.d ], [ %i.r, %bb.e ]
  %i.k = phi i32 [ %1, %bb.d ], [ %i.s, %bb.e ]
  %i.l = phi i32 [ 0, %bb.d ], [ %i.u, %bb.e ]
  %.072 = phi i32 [ 0, %bb.d ], [ %4, %bb.e ]     ; 3 uses
  %i.m = phi <2 x i32> [ %i.i, %bb.d ], [ %i.q, %bb.e ]
  %i.n = mul nsw i32 %i.j, %i.k                   ; 2 uses
  %i.o = add nsw <2 x i32> %i.m, splat (i32 1)
  %4 = add i32 %.072, 1                           ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %5
  %i.q = sdiv <2 x i32> %i.o, splat (i32 2)       ; 3 uses
  %i.r = extractelement <2 x i32> %i.q, i64 1     ; 2 uses
  %i.s = extractelement <2 x i32> %i.q, i64 0     ; 2 uses
  store i32 %i.s, ptr %i.p, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %5
  store i32 %i.r, ptr %i.t, align 4, !tbaa !7
  %i.u = add i32 %i.l, %i.n                       ; 4 uses
  %i.v = icmp ugt i32 %i.n, 1
  br i1 %i.v, label %bb.e, label %bb.f, !llvm.loop !31

bb.f:                                             ; preds = %bb.e
  %6 = zext i32 %.072 to i64
  store i32 %i.u, ptr %i.g, align 8, !tbaa !14
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %.not6.i = icmp eq ptr %i.y, null
  br i1 %.not6.i, label %opj_tgt_reset.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @opj_free(ptr noundef nonnull %i.y) #7
  store ptr null, ptr %i.x, align 8, !tbaa !15
  br label %opj_tgt_reset.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.z = mul i32 %i.u, 24                         ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !16
  %i.ac = icmp ugt i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.af = zext i32 %i.z to i64
  %i.ag = tail call ptr @opj_realloc(ptr noundef %i.ae, i64 noundef %i.af) #7 ; 3 uses
  %.not93.not = icmp eq ptr %i.ag, null
  br i1 %.not93.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2) #7 ; 0 uses
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %.not6.i97 = icmp eq ptr %i.ai, null
  br i1 %.not6.i97, label %opj_tgt_reset.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @opj_free(ptr noundef nonnull %i.ai) #7
  store ptr null, ptr %i.ad, align 8, !tbaa !15
  br label %opj_tgt_reset.exit.sink.split

bb.m:                                             ; preds = %bb.j
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !15
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = sub i32 %i.z, %i.aj
  %i.an = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 0, i64 %i.an, i1 false)
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !16
  %.pre = load i32, ptr %0, align 8, !tbaa !11
  %.pre128 = load i32, ptr %i.f, align 4, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.ao = phi i32 [ %.pre128, %bb.m ], [ %2, %bb.i ]
  %i.ap = phi i32 [ %.pre, %bb.m ], [ %1, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 3 uses
  %.not121 = icmp eq i32 %.072, 0
  br i1 %.not121, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n
  %i.as = mul i32 %i.ao, %i.ap
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.at ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge111
  %indvars.iv.a = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.a, %._crit_edge111 ] ; 3 uses
  %.076119 = phi ptr [ %i.au, %.preheader.preheader ], [ %.1.lcssa, %._crit_edge111 ] ; 4 uses
  %.077118 = phi ptr [ %i.au, %.preheader.preheader ], [ %.178.lcssa, %._crit_edge111 ] ; 4 uses
  %.080117 = phi ptr [ %i.ar, %.preheader.preheader ], [ %.181.lcssa, %._crit_edge111 ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.a
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7  ; 6 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7  ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = add nsw i32 %i.aw, -1                   ; 3 uses
  %i.bc = sext i32 %i.az to i64                   ; 2 uses
  br i1 %i.ba, label %.lr.ph.us, label %.lr.ph110.split.preheader

.lr.ph110.split.preheader:                        ; preds = %.lr.ph110
  %xtraiter = and i32 %i.aw, 3                    ; 3 uses
  %i.bd = icmp ult i32 %i.aw, 4
  br i1 %i.bd, label %.lr.ph110.split.epil.preheader, label %.lr.ph110.split.preheader.new

.lr.ph110.split.preheader.new:                    ; preds = %.lr.ph110.split.preheader
  %unroll_iter = and i32 %i.aw, 2147483644
  br label %.lr.ph110.split

.lr.ph.us:                                        ; preds = %.lr.ph110, %._crit_edge.us
  %.074109.us = phi i32 [ %i.bn, %._crit_edge.us ], [ 0, %.lr.ph110 ] ; 3 uses
  %.1108.us = phi ptr [ %.2.us, %._crit_edge.us ], [ %.076119, %.lr.ph110 ] ; 2 uses
  %.178107.us = phi ptr [ %.3.us, %._crit_edge.us ], [ %.077118, %.lr.ph110 ]
  %.181106.us = phi ptr [ %.383.us140, %._crit_edge.us ], [ %.080117, %.lr.ph110 ]
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.us, %bb.p
  %.073104.us = phi i32 [ %i.az, %.lr.ph.us ], [ %i.bg, %bb.p ] ; 3 uses
  %.279103.us = phi ptr [ %.178107.us, %.lr.ph.us ], [ %i.bi, %bb.p ] ; 4 uses
  %.282102.us = phi ptr [ %.181106.us, %.lr.ph.us ], [ %i.bh, %bb.p ] ; 3 uses
  store ptr %.279103.us, ptr %.282102.us, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.282102.us, i64 24 ; 2 uses
  %.not95.us = icmp eq i32 %.073104.us, 1
  br i1 %.not95.us, label %.thread138, label %bb.p

.thread138:                                       ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.279103.us, i64 24
  br label %._crit_edge.us

bb.p:                                             ; preds = %bb.o
  %i.bg = add nsw i32 %.073104.us, -2
  store ptr %.279103.us, ptr %i.be, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.282102.us, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.279103.us, i64 24 ; 2 uses
  %i.bj = icmp sgt i32 %.073104.us, 2
  br i1 %i.bj, label %bb.o, label %._crit_edge.us, !llvm.loop !32

._crit_edge.us:                                   ; preds = %bb.p, %.thread138
  %i.bk = phi ptr [ %i.bf, %.thread138 ], [ %i.bi, %bb.p ] ; 2 uses
  %.383.us140 = phi ptr [ %i.be, %.thread138 ], [ %i.bh, %bb.p ] ; 2 uses
  %.not94.us = trunc i32 %.074109.us to i1
  %i.bl = icmp eq i32 %.074109.us, %i.bb
  %or.cond.us = select i1 %.not94.us, i1 true, i1 %i.bl ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %.1108.us, i64 %i.bc
  %.3.us = select i1 %or.cond.us, ptr %i.bk, ptr %.1108.us ; 2 uses
  %.2.us = select i1 %or.cond.us, ptr %i.bk, ptr %i.bm ; 2 uses
  %i.bn = add nuw nsw i32 %.074109.us, 1          ; 2 uses
  %exitcond124.not = icmp eq i32 %i.bn, %i.aw
  br i1 %exitcond124.not, label %._crit_edge111, label %.lr.ph.us, !llvm.loop !33

.lr.ph110.split:                                  ; preds = %.lr.ph110.split, %.lr.ph110.split.preheader.new
  %.074109 = phi i32 [ 0, %.lr.ph110.split.preheader.new ], [ %i.bp, %.lr.ph110.split ] ; 2 uses
  %.1108 = phi ptr [ %.076119, %.lr.ph110.split.preheader.new ], [ %.3, %.lr.ph110.split ]
  %.178107 = phi ptr [ %.077118, %.lr.ph110.split.preheader.new ], [ %.3, %.lr.ph110.split ]
  %niter = phi i32 [ 0, %.lr.ph110.split.preheader.new ], [ %niter.next.3, %.lr.ph110.split ]
  %i.bo = icmp eq i32 %.074109, %i.bb
  %.3 = select i1 %i.bo, ptr %.178107, ptr %.1108 ; 6 uses
  %i.bp = add nuw nsw i32 %.074109, 4             ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge111.loopexit155.unr-lcssa, label %.lr.ph110.split, !llvm.loop !33

._crit_edge111.loopexit155.unr-lcssa:             ; preds = %.lr.ph110.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge111, label %.lr.ph110.split.epil.preheader

.lr.ph110.split.epil.preheader:                   ; preds = %._crit_edge111.loopexit155.unr-lcssa, %.lr.ph110.split.preheader
  %.074109.epil.init = phi i32 [ 0, %.lr.ph110.split.preheader ], [ %i.bp, %._crit_edge111.loopexit155.unr-lcssa ]
  %.1108.epil.init = phi ptr [ %.076119, %.lr.ph110.split.preheader ], [ %.3, %._crit_edge111.loopexit155.unr-lcssa ]
  %.178107.epil.init = phi ptr [ %.077118, %.lr.ph110.split.preheader ], [ %.3, %._crit_edge111.loopexit155.unr-lcssa ]
  %lcmp.mod163 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph110.split.epil

.lr.ph110.split.epil:                             ; preds = %.lr.ph110.split.epil, %.lr.ph110.split.epil.preheader
  %.074109.epil = phi i32 [ %i.bs, %.lr.ph110.split.epil ], [ %.074109.epil.init, %.lr.ph110.split.epil.preheader ] ; 3 uses
  %.1108.epil = phi ptr [ %.2.epil, %.lr.ph110.split.epil ], [ %.1108.epil.init, %.lr.ph110.split.epil.preheader ] ; 2 uses
  %.178107.epil = phi ptr [ %.3.epil, %.lr.ph110.split.epil ], [ %.178107.epil.init, %.lr.ph110.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph110.split.epil ], [ 0, %.lr.ph110.split.epil.preheader ]
  %.not94.epil = trunc i32 %.074109.epil to i1
  %i.bq = icmp eq i32 %.074109.epil, %i.bb
  %or.cond.epil = select i1 %.not94.epil, i1 true, i1 %i.bq ; 2 uses
  %i.br = getelementptr inbounds [24 x i8], ptr %.1108.epil, i64 %i.bc
  %.3.epil = select i1 %or.cond.epil, ptr %.178107.epil, ptr %.1108.epil ; 2 uses
  %.2.epil = select i1 %or.cond.epil, ptr %.178107.epil, ptr %i.br ; 2 uses
  %i.bs = add nuw nsw i32 %.074109.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge111, label %.lr.ph110.split.epil, !llvm.loop !34

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit155.unr-lcssa, %.lr.ph110.split.epil, %._crit_edge.us, %.preheader
  %.181.lcssa = phi ptr [ %.080117, %.preheader ], [ %.383.us140, %._crit_edge.us ], [ %.080117, %.lr.ph110.split.epil ], [ %.080117, %._crit_edge111.loopexit155.unr-lcssa ] ; 2 uses
  %.178.lcssa = phi ptr [ %.077118, %.preheader ], [ %.3.us, %._crit_edge.us ], [ %.3, %._crit_edge111.loopexit155.unr-lcssa ], [ %.3.epil, %.lr.ph110.split.epil ]
  %.1.lcssa = phi ptr [ %.076119, %.preheader ], [ %.2.us, %._crit_edge.us ], [ %.3, %._crit_edge111.loopexit155.unr-lcssa ], [ %.2.epil, %.lr.ph110.split.epil ]
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next.a, %6
  br i1 %exitcond127.not, label %._crit_edge, label %.preheader, !llvm.loop !35

._crit_edge:                                      ; preds = %._crit_edge111, %bb.n
  %.080.lcssa = phi ptr [ %i.ar, %bb.n ], [ %.181.lcssa, %._crit_edge111 ]
  store ptr null, ptr %.080.lcssa, align 8, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !14 ; 4 uses
  %.not12.i = icmp eq i32 %i.bu, 0
  br i1 %.not12.i, label %opj_tgt_reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15 ; 2 uses
  %xtraiter164 = and i32 %i.bu, 3                 ; 3 uses
  %i.bx = icmp ult i32 %i.bu, 4
  br i1 %i.bx, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter168 = and i32 %i.bu, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.011.i = phi ptr [ %i.bw, %.lr.ph.preheader.i.new ], [ %i.ck, %.lr.ph.i ] ; 13 uses
  %niter169 = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter169.next.3, %.lr.ph.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  store i32 999, ptr %i.by, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  store i32 999, ptr %i.cb, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %.011.i, i64 36
  store i32 0, ptr %i.cc, align 4, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  store i32 0, ptr %i.cd, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %.011.i, i64 56
  store i32 999, ptr %i.ce, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %.011.i, i64 60
  store i32 0, ptr %i.cf, align 4, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.011.i, i64 64
  store i32 0, ptr %i.cg, align 8, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %.011.i, i64 80
  store i32 999, ptr %i.ch, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %.011.i, i64 84
  store i32 0, ptr %i.ci, align 4, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %.011.i, i64 88
  store i32 0, ptr %i.cj, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %.011.i, i64 96 ; 2 uses
  %niter169.next.3 = add nuw i32 %niter169, 4     ; 2 uses
  %niter169.ncmp.3 = icmp eq i32 %niter169.next.3, %unroll_iter168
  br i1 %niter169.ncmp.3, label %opj_tgt_reset.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

opj_tgt_reset.exit.sink.split:                    ; preds = %bb.k, %bb.l, %bb.h, %bb.g
  tail call void @opj_free(ptr noundef nonnull %0) #7
  br label %opj_tgt_reset.exit

opj_tgt_reset.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i
  %lcmp.mod166.not = icmp eq i32 %xtraiter164, 0
  br i1 %lcmp.mod166.not, label %opj_tgt_reset.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_tgt_reset.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi ptr [ %i.bw, %.lr.ph.preheader.i ], [ %i.ck, %opj_tgt_reset.exit.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i32 %xtraiter164, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi ptr [ %i.co, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 4 uses
  %epil.iter165 = phi i32 [ %epil.iter165.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 8
  store i32 999, ptr %i.cl, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 16
  store i32 0, ptr %i.cn, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %.011.i.epil, i64 24
  %epil.iter165.next = add i32 %epil.iter165, 1   ; 2 uses
  %epil.iter165.cmp.not = icmp eq i32 %epil.iter165.next, %xtraiter164
  br i1 %epil.iter165.cmp.not, label %opj_tgt_reset.exit, label %.lr.ph.i.epil, !llvm.loop !36

opj_tgt_reset.exit:                               ; preds = %opj_tgt_reset.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %opj_tgt_reset.exit.sink.split, %bb.q, %bb.a
  %.185 = phi ptr [ %0, %bb.q ], [ null, %bb.a ], [ null, %opj_tgt_reset.exit.sink.split ], [ %0, %.lr.ph.i.epil ], [ %0, %opj_tgt_reset.exit.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.185
}

; Function Attrs: nounwind uwtable
define void @opj_tgt_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.b) #7
  store ptr null, ptr %i.a, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @opj_free(ptr noundef nonnull %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare ptr @opj_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @opj_tgt_setvalue(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.09 = phi ptr [ %i.h, %bb.b ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp sgt i32 %i.f, %2
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  store i32 %2, ptr %i.e, align 8, !tbaa !20
  %i.h = load ptr, ptr %.09, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_tgt_encode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [31 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi ptr [ %i.i, %.lr.ph ], [ %i.f, %bb.a ] ; 3 uses
  %.02334 = phi ptr [ %i.g, %.lr.ph ], [ %i.e, %bb.a ]
  %.02533 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02533, i64 8 ; 2 uses
  store ptr %.02334, ptr %.02533, align 8, !tbaa !23
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader.preheader, label %.lr.ph, !llvm.loop !38

.preheader.preheader:                             ; preds = %.lr.ph, %bb.a
  %.126.ph = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %.124.ph = phi ptr [ %i.e, %bb.a ], [ %i.g, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.126 = phi ptr [ %i.t, %bb.h ], [ %.126.ph, %.preheader.preheader ] ; 2 uses
  %.124 = phi ptr [ %i.u, %bb.h ], [ %.124.ph, %.preheader.preheader ] ; 3 uses
  %.0 = phi i32 [ %.231, %bb.h ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.124, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %i.l = icmp sgt i32 %.0, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  store i32 %.0, ptr %i.j, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.1 = phi i32 [ %.0, %bb.b ], [ %i.k, %.preheader ] ; 3 uses
  %i.m = icmp slt i32 %.1, %3
  br i1 %i.m, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.124, i64 8
  br label %bb.d
end_hunk_0
