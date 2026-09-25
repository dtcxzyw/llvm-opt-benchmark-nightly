Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/near_lossless_enc?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8ApplyNearLossless(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %.neg.i = sdiv i32 %1, -20                      ; 2 uses
  %i.g = add nsw i32 %.neg.i, 5
  %i.h = icmp slt i32 %i.b, 64
  %i.i = icmp slt i32 %i.d, 64
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  %i.j = icmp slt i32 %i.d, 3
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.j
  br i1 %or.cond3, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = sext i32 %i.b to i64                     ; 4 uses
  %i.n = shl nsw i64 %i.m, 2                      ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i32 %i.d, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph47.new
  %indvars.iv = phi i64 [ 0, %.lr.ph47.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph47.new ], [ %niter.next.1, %bb.b ]
  %i.p = mul nsw i64 %indvars.iv, %i.m
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.s = load i32, ptr %i.e, align 8, !tbaa !18
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.q, ptr align 4 %i.v, i64 %i.n, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = mul nsw i64 %indvars.iv.next, %i.m
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.z = load i32, ptr %i.e, align 8, !tbaa !18
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %indvars.iv.next, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.ac, i64 %i.n, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !9

bb.c:                                             ; preds = %bb.a
  %i.ad = mul nsw i32 %i.b, 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call ptr @WebPSafeMalloc(i64 noundef %i.ae, i64 noundef 4) #6 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  tail call fastcc void @NearLossless(i32 noundef %i.b, i32 noundef %i.d, ptr noundef %i.ai, i32 noundef %i.f, i32 noundef %i.g, ptr noundef %i.af, ptr noundef %2)
  %.143 = add nsw i32 %.neg.i, 4                  ; 2 uses
  %.not44 = icmp eq i32 %.143, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.145 = phi i32 [ %.1, %.lr.ph ], [ %.143, %bb.d ] ; 2 uses
  tail call fastcc void @NearLossless(i32 noundef %i.b, i32 noundef %i.d, ptr noundef %2, i32 noundef %i.b, i32 noundef %.145, ptr noundef %i.af, ptr noundef %2)
  %.1 = add nsw i32 %.145, -1                     ; 2 uses
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  tail call void @WebPSafeFree(ptr noundef nonnull %i.af) #6
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph47
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.aj = mul nsw i64 %indvars.iv.epil.init, %i.m
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.am = load i32, ptr %i.e, align 8, !tbaa !18
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %indvars.iv.epil.init, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %i.ap, i64 %i.n, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.c, %._crit_edge
  %.040 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.c ], [ 1, %.preheader ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 1, %.epil.preheader ]
  ret i32 %.040
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @NearLossless(i32 noundef %0, i32 noundef range(i32 3, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #3 {
bb.a:
  %i.a = shl nuw i32 1, %4                        ; 17 uses
  %i.b = sext i32 %0 to i64                       ; 6 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %5, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.b ; 3 uses
  %i.e = shl nsw i64 %i.b, 2                      ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 4 %2, i64 %i.e, i1 false)
  %i.f = sext i32 %3 to i64                       ; 6 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %2, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.d, ptr align 4 %i.g, i64 %i.e, i1 false)
  %i.h = add nsw i32 %1, -1                       ; 2 uses
  %i.i = add i32 %0, -1                           ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 6 uses
  %i.k = icmp sgt i32 %0, 2
  %i.l = sub nsw i32 0, %i.a                      ; 16 uses
  %notmask.i.i = shl nsw i32 -1, %4               ; 2 uses
  %i.m = xor i32 %notmask.i.i, -1
  %i.n = lshr i32 %i.m, 1
  br i1 %i.k, label %.split.us.preheader, label %.split.peel.next

.split.peel.next:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %2, i64 %i.e, i1 false)
  %i.o = add nsw i32 %1, -2
  br label %.split

.split.us.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext i32 %i.i to i64
  %i.p = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.q = shufflevector <4 x i32> %i.p, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.r = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.t = insertelement <4 x i32> poison, i32 %notmask.i.i, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %..loopexit_crit_edge.us
  %.072.us = phi ptr [ %i.cp, %..loopexit_crit_edge.us ], [ %2, %.split.us.preheader ] ; 5 uses
  %.05671.us = phi ptr [ %.05869.us, %..loopexit_crit_edge.us ], [ %i.d, %.split.us.preheader ] ; 3 uses
  %.05770.us = phi ptr [ %.05671.us, %..loopexit_crit_edge.us ], [ %i.c, %.split.us.preheader ] ; 2 uses
  %.05869.us = phi ptr [ %.05770.us, %..loopexit_crit_edge.us ], [ %5, %.split.us.preheader ] ; 2 uses
  %.05968.us = phi i32 [ %i.co, %..loopexit_crit_edge.us ], [ 0, %.split.us.preheader ] ; 3 uses
  %.06166.us = phi ptr [ %i.cq, %..loopexit_crit_edge.us ], [ %6, %.split.us.preheader ] ; 5 uses
  %i.v = icmp eq i32 %.05968.us, 0
  %i.w = icmp eq i32 %.05968.us, %i.h
  %or.cond.us = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.us, label %bb.o, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split.us
  %i.x = getelementptr inbounds [4 x i8], ptr %.072.us, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.05671.us, ptr align 4 %i.x, i64 %i.e, i1 false)
  %i.y = load i32, ptr %.072.us, align 4, !tbaa !23
  store i32 %i.y, ptr %.06166.us, align 4, !tbaa !23
  %i.z = getelementptr inbounds [4 x i8], ptr %.072.us, i64 %i.j
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23
  %i.ab = getelementptr inbounds [4 x i8], ptr %.06166.us, i64 %i.j
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.n
  %indvars.iv = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next, %bb.n ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.05770.us, i64 %indvars.iv ; 3 uses
  %7 = load i32, ptr %i.ac, align 4, !tbaa !23    ; 6 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23 ; 4 uses
  %i.af = and i32 %7, 255                         ; 4 uses
  %i.ag = and i32 %i.ae, 255
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 2 uses
  %.not.i.i.us = icmp slt i32 %i.ah, %i.a
  %.not16.i.i.us = icmp sgt i32 %i.ah, %i.l
  %or.cond.i.i.us = select i1 %.not.i.i.us, i1 %.not16.i.i.us, i1 false
  %i.ai = lshr i32 %7, 8
  %i.aj = and i32 %i.ai, 255                      ; 4 uses
  br i1 %or.cond.i.i.us, label %bb.c, label %IsSmooth.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %i.ak = lshr i32 %i.ae, 8
  %i.al = and i32 %i.ak, 255
  %i.am = sub nsw i32 %i.aj, %i.al                ; 2 uses
  %.not.1.i.i.us = icmp slt i32 %i.am, %i.a
  %.not16.1.i.i.us = icmp sgt i32 %i.am, %i.l
  %or.cond.1.i.i.us = select i1 %.not.1.i.i.us, i1 %.not16.1.i.i.us, i1 false
  br i1 %or.cond.1.i.i.us, label %bb.d, label %IsSmooth.exit.thread.us

bb.d:                                             ; preds = %bb.c
  %i.an = lshr i32 %7, 16
  %i.ao = and i32 %i.an, 255                      ; 4 uses
  %i.ap = lshr i32 %i.ae, 16
  %i.aq = and i32 %i.ap, 255
  %i.ar = sub nsw i32 %i.ao, %i.aq                ; 2 uses
  %.not.2.i.i.us = icmp slt i32 %i.ar, %i.a
  %.not16.2.i.i.us = icmp sgt i32 %i.ar, %i.l
  %or.cond.2.i.i.us = select i1 %.not.2.i.i.us, i1 %.not16.2.i.i.us, i1 false
  br i1 %or.cond.2.i.i.us, label %IsNear.exit.i.us, label %IsSmooth.exit.thread.us

IsNear.exit.i.us:                                 ; preds = %bb.d
  %i.as = lshr i32 %7, 24                         ; 4 uses
  %i.at = lshr i32 %i.ae, 24
  %i.au = sub nsw i32 %i.as, %i.at                ; 2 uses
  %.not.3.i.i.us = icmp sge i32 %i.au, %i.a
  %.not16.3.i.i.us = icmp sle i32 %i.au, %i.l
  %or.cond.3.i.not.i.us = select i1 %.not.3.i.i.us, i1 true, i1 %.not16.3.i.i.us
  br i1 %or.cond.3.i.not.i.us, label %IsSmooth.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %IsNear.exit.i.us
  %i.av = getelementptr i8, ptr %i.ac, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23 ; 4 uses
  %i.ax = and i32 %i.aw, 255
  %i.ay = sub nsw i32 %i.af, %i.ax                ; 2 uses
  %.not.i21.i.us = icmp slt i32 %i.ay, %i.a
  %.not16.i22.i.us = icmp sgt i32 %i.ay, %i.l
  %or.cond.i23.i.us = select i1 %.not.i21.i.us, i1 %.not16.i22.i.us, i1 false
  br i1 %or.cond.i23.i.us, label %bb.f, label %IsSmooth.exit.thread.us

bb.f:                                             ; preds = %bb.e
  %i.az = lshr i32 %i.aw, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = sub nsw i32 %i.aj, %i.ba                ; 2 uses
  %.not.1.i25.i.us = icmp slt i32 %i.bb, %i.a
  %.not16.1.i26.i.us = icmp sgt i32 %i.bb, %i.l
  %or.cond.1.i27.i.us = select i1 %.not.1.i25.i.us, i1 %.not16.1.i26.i.us, i1 false
  br i1 %or.cond.1.i27.i.us, label %bb.g, label %IsSmooth.exit.thread.us

bb.g:                                             ; preds = %bb.f
  %i.bc = lshr i32 %i.aw, 16
  %i.bd = and i32 %i.bc, 255
  %i.be = sub nsw i32 %i.ao, %i.bd                ; 2 uses
  %.not.2.i28.i.us = icmp slt i32 %i.be, %i.a
  %.not16.2.i29.i.us = icmp sgt i32 %i.be, %i.l
  %or.cond.2.i30.i.us = select i1 %.not.2.i28.i.us, i1 %.not16.2.i29.i.us, i1 false
  br i1 %or.cond.2.i30.i.us, label %IsNear.exit35.i.us, label %IsSmooth.exit.thread.us

IsNear.exit35.i.us:                               ; preds = %bb.g
  %i.bf = lshr i32 %i.aw, 24
  %i.bg = sub nsw i32 %i.as, %i.bf                ; 2 uses
  %.not.3.i31.i.us = icmp sge i32 %i.bg, %i.a
  %.not16.3.i32.i.us = icmp sle i32 %i.bg, %i.l
  %or.cond.3.i33.not.i.us = select i1 %.not.3.i31.i.us, i1 true, i1 %.not16.3.i32.i.us
  br i1 %or.cond.3.i33.not.i.us, label %IsSmooth.exit.thread.us, label %bb.h

bb.h:                                             ; preds = %IsNear.exit35.i.us
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.05869.us, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !23 ; 4 uses
  %i.bj = and i32 %i.bi, 255
  %i.bk = sub nsw i32 %i.af, %i.bj                ; 2 uses
  %.not.i36.i.us = icmp slt i32 %i.bk, %i.a
  %.not16.i37.i.us = icmp sgt i32 %i.bk, %i.l
  %or.cond.i38.i.us = select i1 %.not.i36.i.us, i1 %.not16.i37.i.us, i1 false
  br i1 %or.cond.i38.i.us, label %bb.i, label %IsSmooth.exit.thread.us

bb.i:                                             ; preds = %bb.h
  %i.bl = lshr i32 %i.bi, 8
  %i.bm = and i32 %i.bl, 255
  %i.bn = sub nsw i32 %i.aj, %i.bm                ; 2 uses
  %.not.1.i40.i.us = icmp slt i32 %i.bn, %i.a
  %.not16.1.i41.i.us = icmp sgt i32 %i.bn, %i.l
  %or.cond.1.i42.i.us = select i1 %.not.1.i40.i.us, i1 %.not16.1.i41.i.us, i1 false
  br i1 %or.cond.1.i42.i.us, label %bb.j, label %IsSmooth.exit.thread.us

bb.j:                                             ; preds = %bb.i
  %i.bo = lshr i32 %i.bi, 16
  %i.bp = and i32 %i.bo, 255
  %i.bq = sub nsw i32 %i.ao, %i.bp                ; 2 uses
  %.not.2.i43.i.us = icmp slt i32 %i.bq, %i.a
  %.not16.2.i44.i.us = icmp sgt i32 %i.bq, %i.l
  %or.cond.2.i45.i.us = select i1 %.not.2.i43.i.us, i1 %.not16.2.i44.i.us, i1 false
  br i1 %or.cond.2.i45.i.us, label %IsNear.exit50.i.us, label %IsSmooth.exit.thread.us

IsNear.exit50.i.us:                               ; preds = %bb.j
  %i.br = lshr i32 %i.bi, 24
  %i.bs = sub nsw i32 %i.as, %i.br                ; 2 uses
  %.not.3.i46.i.us = icmp sge i32 %i.bs, %i.a
  %.not16.3.i47.i.us = icmp sle i32 %i.bs, %i.l
  %or.cond.3.i48.not.i.us = select i1 %.not.3.i46.i.us, i1 true, i1 %.not16.3.i47.i.us
  br i1 %or.cond.3.i48.not.i.us, label %IsSmooth.exit.thread.us, label %bb.k

bb.k:                                             ; preds = %IsNear.exit50.i.us
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.05671.us, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 4 uses
  %i.bv = and i32 %i.bu, 255
  %i.bw = sub nsw i32 %i.af, %i.bv                ; 2 uses
  %.not.i51.i.us = icmp slt i32 %i.bw, %i.a
  %.not16.i52.i.us = icmp sgt i32 %i.bw, %i.l
  %or.cond.i53.i.us = select i1 %.not.i51.i.us, i1 %.not16.i52.i.us, i1 false
  br i1 %or.cond.i53.i.us, label %bb.l, label %IsSmooth.exit.thread.us

bb.l:                                             ; preds = %bb.k
  %i.bx = lshr i32 %i.bu, 8
  %i.by = and i32 %i.bx, 255
  %i.bz = sub nsw i32 %i.aj, %i.by                ; 2 uses
  %.not.1.i55.i.us = icmp slt i32 %i.bz, %i.a
  %.not16.1.i56.i.us = icmp sgt i32 %i.bz, %i.l
  %or.cond.1.i57.i.us = select i1 %.not.1.i55.i.us, i1 %.not16.1.i56.i.us, i1 false
  br i1 %or.cond.1.i57.i.us, label %bb.m, label %IsSmooth.exit.thread.us

bb.m:                                             ; preds = %bb.l
  %i.ca = lshr i32 %i.bu, 16
  %i.cb = and i32 %i.ca, 255
  %i.cc = sub nsw i32 %i.ao, %i.cb                ; 2 uses
  %.not.2.i58.i.us = icmp slt i32 %i.cc, %i.a
  %.not16.2.i59.i.us = icmp sgt i32 %i.cc, %i.l
  %or.cond.2.i60.i.us = select i1 %.not.2.i58.i.us, i1 %.not16.2.i59.i.us, i1 false
  br i1 %or.cond.2.i60.i.us, label %IsSmooth.exit.us, label %IsSmooth.exit.thread.us

IsSmooth.exit.us:                                 ; preds = %bb.m
  %i.cd = lshr i32 %i.bu, 24
  %i.ce = sub nsw i32 %i.as, %i.cd                ; 2 uses
  %.not.3.i61.i.us = icmp sge i32 %i.ce, %i.a
  %.not16.3.i62.i.us = icmp sle i32 %i.ce, %i.l
  %or.cond.3.i63.i.not.us = select i1 %.not.3.i61.i.us, i1 true, i1 %.not16.3.i62.i.us
  br i1 %or.cond.3.i63.i.not.us, label %IsSmooth.exit.thread.us, label %bb.n

IsSmooth.exit.thread.us:                          ; preds = %bb.b, %IsSmooth.exit.us, %bb.m, %bb.l, %bb.k, %IsNear.exit50.i.us, %bb.j, %bb.i, %bb.h, %IsNear.exit35.i.us, %bb.g, %bb.f, %bb.e, %IsNear.exit.i.us, %bb.d, %bb.c
  %8 = bitcast i32 %7 to <4 x i8>
  %9 = shufflevector <4 x i8> %8, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 2, i32 1> ; 2 uses
  %10 = zext <4 x i8> %9 to <4 x i32>
  %11 = add nuw nsw <4 x i32> %i.q, %10
  %12 = zext <4 x i8> %9 to <4 x i32>
  %i.cf = lshr <4 x i32> %12, %i.s
  %i.cg = and <4 x i32> %i.cf, splat (i32 1)
  %i.ch = add nuw nsw <4 x i32> %11, %i.cg        ; 2 uses
  %i.ci = icmp samesign ugt <4 x i32> %i.ch, splat (i32 255)
  %i.cj = and <4 x i32> %i.ch, %i.u
  %i.ck = shl nuw <4 x i32> %i.cj, <i32 24, i32 0, i32 16, i32 8>
  %i.cl = select <4 x i1> %i.ci, <4 x i32> <i32 -16777216, i32 255, i32 16711680, i32 65280>, <4 x i32> %i.ck
  %i.cm = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cl)
  br label %bb.n

bb.n:                                             ; preds = %IsSmooth.exit.us, %IsSmooth.exit.thread.us
  %.sink = phi i32 [ %i.cm, %IsSmooth.exit.thread.us ], [ %7, %IsSmooth.exit.us ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.06166.us, i64 %indvars.iv
  store i32 %.sink, ptr %i.cn, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond78.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !20

bb.o:                                             ; preds = %.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.06166.us, ptr align 4 %.072.us, i64 %i.e, i1 false)
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.n, %bb.o
  %i.co = add nuw nsw i32 %.05968.us, 1           ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %.072.us, i64 %i.f
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.06166.us, i64 %i.b
  %exitcond79.not = icmp eq i32 %i.co, %1
  br i1 %exitcond79.not, label %.split74.us, label %.split.us, !llvm.loop !21

.split:                                           ; preds = %.split.peel.next, %.split
  %.072 = phi ptr [ %i.cx, %.split ], [ %i.g, %.split.peel.next ] ; 4 uses
  %.05671 = phi ptr [ %.05869, %.split ], [ %5, %.split.peel.next ] ; 2 uses
  %.05770 = phi ptr [ %.05671, %.split ], [ %i.d, %.split.peel.next ]
  %.05869 = phi ptr [ %.05770, %.split ], [ %i.c, %.split.peel.next ] ; 2 uses
  %.05968 = phi i32 [ %i.cw, %.split ], [ 1, %.split.peel.next ] ; 2 uses
  %.06166.pn = phi ptr [ %.06166, %.split ], [ %6, %.split.peel.next ]
  %.06166 = getelementptr inbounds [4 x i8], ptr %.06166.pn, i64 %i.b ; 4 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %.072, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.05671, ptr align 4 %i.cr, i64 %i.e, i1 false)
  %i.cs = load i32, ptr %.072, align 4, !tbaa !23
  store i32 %i.cs, ptr %.06166, align 4, !tbaa !23
  %i.ct = getelementptr inbounds [4 x i8], ptr %.072, i64 %i.j
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !23
  %i.cv = getelementptr inbounds [4 x i8], ptr %.06166, i64 %i.j
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !23
  %i.cw = add nuw nsw i32 %.05968, 1              ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %.072, i64 %i.f ; 5 uses
  %exitcond.not = icmp eq i32 %.05968, %i.o
  br i1 %exitcond.not, label %.split.peel, label %.split, !llvm.loop !22

.split.peel:                                      ; preds = %.split
  %.06166.peel = getelementptr inbounds [4 x i8], ptr %.06166, i64 %i.b ; 3 uses
  %i.cy = icmp eq i32 %i.cw, %i.h
  br i1 %i.cy, label %bb.p, label %.loopexit.peel

.loopexit.peel:                                   ; preds = %.split.peel
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.05869, ptr align 4 %i.cz, i64 %i.e, i1 false)
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !23
  store i32 %i.da, ptr %.06166.peel, align 4, !tbaa !23
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.j
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !23
  %i.dd = getelementptr inbounds [4 x i8], ptr %.06166.peel, i64 %i.j
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !23
  br label %.split74.us

bb.p:                                             ; preds = %.split.peel
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.06166.peel, ptr align 4 %i.cx, i64 %i.e, i1 false)
  br label %.split74.us

.split74.us:                                      ; preds = %bb.p, %.loopexit.peel, %..loopexit_crit_edge.us
  ret void
}

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"p1 _ZTS12WebPAuxStats", !11, i64 0}
!15 = !{!"WebPPicture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !12, i64 48, !5, i64 56, !4, i64 60, !13, i64 72, !5, i64 80, !4, i64 84, !11, i64 96, !11, i64 104, !5, i64 112, !12, i64 120, !14, i64 128, !5, i64 136, !11, i64 144, !11, i64 152, !4, i64 160, !12, i64 176, !12, i64 184, !4, i64 192, !11, i64 224, !11, i64 232, !4, i64 240}
!16 = !{!15, !5, i64 8}
!17 = !{!15, !5, i64 12}
!18 = !{!15, !5, i64 80}
!19 = !{!15, !13, i64 72}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8, !24}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_0
