inline.NumInlined: 92
inline.NumDeleted: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VP8LMultipliers = type { i8, i8, i8 }

@VP8LAddVectorEq = external local_unnamed_addr global ptr, align 8
@VP8LShannonEntropy = external local_unnamed_addr global ptr, align 8
@VP8LPredictors = external local_unnamed_addr global [16 x ptr], align 16
@VP8LPredictorsSub = external local_unnamed_addr global [16 x ptr], align 16
@VP8LCombinedShannonEntropy = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorRedTransforms = external local_unnamed_addr global ptr, align 8
@__const.GetBestGreenRedToBlue.offset = private unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"\00\FF", [2 x i8] c"\00\01", [2 x i8] c"\FF\00", [2 x i8] c"\01\00", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\01", [2 x i8] c"\01\FF", [2 x i8] c"\01\01"], align 16
@__const.GetBestGreenRedToBlue.delta_lut = private unnamed_addr constant [7 x i8] c"\10\10\08\04\02\02\02", align 1
@VP8LCollectColorBlueTransforms = external local_unnamed_addr global ptr, align 8
@VP8LTransformColor = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LOptimizeSampling(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %3                        ; 2 uses
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = add i32 %i.a, %i.b
  %i.d = lshr i32 %i.c, %3
  %.fr = freeze i32 %i.d                          ; 5 uses
  %i.e = add i32 %2, -1                           ; 2 uses
  %i.f = add i32 %i.a, %i.e
  %i.g = lshr i32 %i.f, %3
  %.fr131 = freeze i32 %i.g                       ; 4 uses
  store i32 %3, ptr %5, align 4, !tbaa !3
  %i.h = icmp slt i32 %3, %4
  br i1 %i.h, label %.lr.ph115, label %.thread.thread

.lr.ph115:                                        ; preds = %bb.a
  %i.i = sext i32 %.fr to i64                     ; 3 uses
  %i.j = shl nsw i64 %i.i, 2
  %i.k = sext i32 %.fr131 to i64
  br label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.b
  %exitcond.not = icmp eq i32 %i.l, %4
  br i1 %exitcond.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph115, %.loopexit
  %.090114 = phi i32 [ %3, %.lr.ph115 ], [ %i.l, %.loopexit ] ; 3 uses
  %i.l = add i32 %.090114, 1                      ; 3 uses
  %i.m = sub nsw i32 %.090114, %3
  %i.n = shl nuw i32 1, %i.m                      ; 2 uses
  %i.o = icmp slt i32 %i.n, %.fr131
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = sub nsw i32 %i.l, %3
  %i.q = shl nuw i32 1, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %invariant.op = sub nsw i64 %i.k, %i.s
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.r ; 2 uses
  %i.t = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = add nsw i64 %indvars.iv, %i.s
  %i.v = mul nsw i64 %indvars.iv, %i.i
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = mul nsw i64 %i.u, %i.i
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %bcmp = tail call i32 @bcmp(ptr %i.w, ptr %i.y, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %.loopexit, %.lr.ph
  %.090112 = phi i32 [ %.090114, %.lr.ph ], [ %4, %.loopexit ] ; 5 uses
  %i.z = icmp eq i32 %.090112, %3
  br i1 %i.z, label %.thread.thread, label %.preheader108

.preheader108:                                    ; preds = %.thread
  %i.aa = icmp sgt i32 %.fr131, 0
  %i.ab = icmp sgt i32 %.fr, 0
  %or.cond174 = and i1 %i.aa, %i.ab
  br i1 %or.cond174, label %.preheader108.split.us.split.us.preheader, label %.split.us

.preheader108.split.us.split.us.preheader:        ; preds = %.preheader108
  %i.ac = zext nneg i32 %.fr to i64               ; 2 uses
  %i.ad = zext nneg i32 %.fr131 to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %.090112, i32 %3) ; 2 uses
  %i.ae = icmp sgt i32 %.090112, %3
  br i1 %i.ae, label %.preheader107.lr.ph.us.us, label %.split.us

.preheader107.lr.ph.us.us:                        ; preds = %.preheader108.split.us.split.us.preheader, %._crit_edge119.split.us.us.us
  %.3.us.us183 = phi i32 [ %i.aq, %._crit_edge119.split.us.us.us ], [ %.090112, %.preheader108.split.us.split.us.preheader ] ; 3 uses
  %i.af = sub nsw i32 %.3.us.us183, %3
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = sext i32 %i.ag to i64
  br label %.preheader107.us.us.us

.preheader107.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader107.lr.ph.us.us
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %._crit_edge.us.us.us ], [ 0, %.preheader107.lr.ph.us.us ] ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv144, %i.ac   ; 2 uses
  %invariant.gep170 = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ai
  br label %.preheader106.us.us.us

bb.d:                                             ; preds = %.lr.ph182
  %indvars.iv.next141 = add nsw i64 %indvars.iv.next141181, 1 ; 2 uses
  %.not161.not = icmp slt i64 %indvars.iv.next141, %i.an
  br i1 %.not161.not, label %.lr.ph182, label %._crit_edge, !llvm.loop !9

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %bb.d
  %indvars.iv.next141181 = phi i64 [ %indvars.iv.next141, %bb.d ], [ %indvars.iv.next141179, %.lr.ph182.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next141181
  %i.aj = load i32, ptr %gep, align 4, !tbaa !3
  %.not104.us.us.us = icmp eq i32 %i.aj, %i.ao
  br i1 %.not104.us.us.us, label %bb.d, label %._crit_edge119.split.us.us.us, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.d, %.preheader106.us.us.us
  %i.ak = icmp slt i64 %indvars.iv.next139, %i.ac
  br i1 %i.ak, label %.preheader106.us.us.us, label %._crit_edge.us.us.us, !llvm.loop !10

.preheader106.us.us.us:                           ; preds = %._crit_edge, %.preheader107.us.us.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge ], [ 0, %.preheader107.us.us.us ] ; 3 uses
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, %i.ah ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv.next139 to i32
  %i.am = tail call noundef i32 @llvm.smin.i32(i32 %i.al, i32 %.fr)
  %gep171 = getelementptr [4 x i8], ptr %invariant.gep170, i64 %indvars.iv138
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %indvars.iv.next141179 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %.not161.not180 = icmp slt i64 %indvars.iv.next141179, %i.an
  br i1 %.not161.not180, label %.lr.ph182.preheader, label %._crit_edge

.lr.ph182.preheader:                              ; preds = %.preheader106.us.us.us
  %i.ao = load i32, ptr %gep171, align 4, !tbaa !3
  br label %.lr.ph182

._crit_edge.us.us.us:                             ; preds = %._crit_edge
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.ap = icmp samesign ult i64 %indvars.iv.next145, %i.ad
  br i1 %i.ap, label %.preheader107.us.us.us, label %.split.us, !llvm.loop !11

._crit_edge119.split.us.us.us:                    ; preds = %.lr.ph182
  %i.aq = add nsw i32 %.3.us.us183, -1            ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, %3
  br i1 %i.ar, label %.preheader107.lr.ph.us.us, label %.split.us

.split.us:                                        ; preds = %._crit_edge119.split.us.us.us, %._crit_edge.us.us.us, %.preheader108.split.us.split.us.preheader, %.preheader108
  %.us-phi125 = phi i32 [ %smin, %.preheader108.split.us.split.us.preheader ], [ %.090112, %.preheader108 ], [ %.3.us.us183, %._crit_edge.us.us.us ], [ %smin, %._crit_edge119.split.us.us.us ] ; 6 uses
  %i.as = icmp eq i32 %.us-phi125, %3
  br i1 %i.as, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %.split.us
  %i.at = sub nsw i32 %.us-phi125, %3             ; 3 uses
  %i.au = shl nuw i32 1, %.us-phi125              ; 2 uses
  %i.av = add i32 %i.au, %i.b
  %i.aw = lshr i32 %i.av, %.us-phi125             ; 5 uses
  %i.ax = add i32 %i.au, %i.e
  %i.ay = lshr i32 %i.ax, %.us-phi125             ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = icmp sgt i32 %i.aw, 0
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge130

.preheader.us.preheader:                          ; preds = %bb.e
  %i.bb = zext i32 %.fr to i64
  %wide.trip.count154 = zext nneg i32 %i.ay to i64
  %wide.trip.count = zext nneg i32 %i.aw to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bc = icmp eq i32 %i.aw, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod188 = trunc i32 %i.aw to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv151 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next152, %._crit_edge.us ] ; 3 uses
  %i.bd = mul i64 %indvars.iv151, %i.bb           ; 3 uses
  %i.be = trunc i64 %indvars.iv151 to i32
  %i.bf = mul i32 %i.aw, %i.be
  %i.bg = zext i32 %i.bf to i64
  %invariant.gep172 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg ; 3 uses
  br i1 %i.bc, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.bh = add i64 %indvars.iv147, %i.bd
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = shl i32 %i.bi, %i.at
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %gep173 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep172, i64 %indvars.iv147
  store i32 %i.bm, ptr %gep173, align 4, !tbaa !3
  %indvars.iv.next148 = or disjoint i64 %indvars.iv147, 1 ; 2 uses
  %i.bn = add i64 %indvars.iv.next148, %i.bd
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, %i.at
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %gep173.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep172, i64 %indvars.iv.next148
  store i32 %i.bs, ptr %gep173.1, align 4, !tbaa !3
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !12

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv147.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next148.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.bt = add i64 %indvars.iv147.epil.init, %i.bd
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = shl i32 %i.bu, %i.at
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %gep173.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep172, i64 %indvars.iv147.epil.init
  store i32 %i.by, ptr %gep173.epil, align 4, !tbaa !3
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge130, label %.preheader.us, !llvm.loop !13

._crit_edge130:                                   ; preds = %._crit_edge.us, %bb.e
  store i32 %.us-phi125, ptr %5, align 4, !tbaa !3
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.a, %.split.us, %.thread, %._crit_edge130
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LResidualImage(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef captures(none) %14) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 7 uses
  %i.b = alloca [10 x ptr], align 16              ; 9 uses
  %i.c = alloca [10 x i32], align 16              ; 11 uses
  %i.d = load i32, ptr %13, align 4, !tbaa !3
  %.neg.i = sdiv i32 %8, -20
  %i.e = add nsw i32 %.neg.i, 5
  %i.f = shl nuw i32 1, %i.e
  %.fr130 = freeze i32 %i.f                       ; 6 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw i32 1, %3                        ; 2 uses
  %i.h = add i32 %0, -1                           ; 3 uses
  %i.i = add i32 %i.h, %i.g
  %i.j = lshr i32 %i.i, %3
  %i.k = add i32 %1, -1
  %i.l = add i32 %i.k, %i.g
  %i.m = lshr i32 %i.l, %3
  %i.n = mul nsw i32 %i.j, %i.m                   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.preheader253, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> splat (i32 -16774400), ptr %i.p, align 4, !tbaa !3
  store <4 x i32> splat (i32 -16774400), ptr %i.q, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.thread, label %.lr.ph.preheader253

.lr.ph.preheader253:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader253, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader253 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store i32 -16774400, ptr %i.s, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !17

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not84107 = icmp sgt i32 %2, %3
  br i1 %.not84107, label %._crit_edge112, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.c
  %i.t = add i32 %0, -1                           ; 3 uses
  %i.u = add i32 %1, -1                           ; 3 uses
  %i.v = sext i32 %2 to i64                       ; 2 uses
  %i.w = add i32 %3, 1
  %i.x = sub i32 %i.w, %2                         ; 3 uses
  %xtraiter = and i32 %i.x, 1
  %i.y = icmp eq i32 %3, %2
  br i1 %i.y, label %.epil.preheader, label %.lr.ph111.new

.lr.ph111.new:                                    ; preds = %.lr.ph111
  %unroll_iter = and i32 %i.x, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph111.new
  %indvars.iv145 = phi i64 [ %i.v, %.lr.ph111.new ], [ %indvars.iv.next146.1, %bb.d ] ; 4 uses
  %.080108 = phi i32 [ 0, %.lr.ph111.new ], [ %i.aq, %bb.d ]
  %niter = phi i32 [ 0, %.lr.ph111.new ], [ %niter.next.1, %bb.d ]
  %i.z = trunc nsw i64 %indvars.iv145 to i32      ; 3 uses
  %i.aa = shl nuw i32 1, %i.z                     ; 2 uses
  %i.ab = add i32 %i.t, %i.aa
  %i.ac = lshr i32 %i.ab, %i.z
  %i.ad = add i32 %i.u, %i.aa
  %i.ae = lshr i32 %i.ad, %i.z
  %i.af = mul nsw i32 %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv145
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = add i32 %i.af, %.080108
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv.next146 to i32 ; 3 uses
  %i.aj = shl nuw i32 1, %i.ai                    ; 2 uses
  %i.ak = add i32 %i.t, %i.aj
  %i.al = lshr i32 %i.ak, %i.ai
  %i.am = add i32 %i.u, %i.aj
  %i.an = lshr i32 %i.am, %i.ai
  %i.ao = mul nsw i32 %i.al, %i.an                ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next146
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add i32 %i.ao, %i.ah                    ; 3 uses
  %indvars.iv.next146.1 = add nsw i64 %indvars.iv145, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge112.loopexit.unr-lcssa, label %bb.d, !llvm.loop !18

._crit_edge112.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge112.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge112.loopexit.unr-lcssa, %.lr.ph111
  %indvars.iv145.epil.init = phi i64 [ %i.v, %.lr.ph111 ], [ %indvars.iv.next146.1, %._crit_edge112.loopexit.unr-lcssa ] ; 2 uses
  %.080108.epil.init = phi i32 [ 0, %.lr.ph111 ], [ %i.aq, %._crit_edge112.loopexit.unr-lcssa ]
  %lcmp.mod255 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.ar = trunc nsw i64 %indvars.iv145.epil.init to i32 ; 3 uses
  %i.as = shl nuw i32 1, %i.ar                    ; 2 uses
  %i.at = add i32 %i.t, %i.as
  %i.au = lshr i32 %i.at, %i.ar
  %i.av = add i32 %i.u, %i.as
  %i.aw = lshr i32 %i.av, %i.ar
  %i.ax = mul nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv145.epil.init
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !3
  %i.az = add i32 %i.ax, %.080108.epil.init
  br label %._crit_edge112.loopexit

._crit_edge112.loopexit:                          ; preds = %._crit_edge112.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa251 = phi i32 [ %i.aq, %._crit_edge112.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  %i.ba = zext i32 %.lcssa251 to i64
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.loopexit, %bb.c
  %.080.lcssa = phi i64 [ 0, %bb.c ], [ %i.ba, %._crit_edge112.loopexit ]
  %i.bb = tail call ptr @WebPSafeMalloc(i64 noundef %.080.lcssa, i64 noundef 4) #10 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.bs, label %bb.e

bb.e:                                             ; preds = %._crit_edge112
  %i.bd = sext i32 %2 to i64                      ; 5 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bd ; 3 uses
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !19
  %.not85.not113 = icmp slt i32 %2, %3
  br i1 %.not85.not113, label %.lr.ph116.preheader, label %._crit_edge117

.lr.ph116.preheader:                              ; preds = %bb.e
  %wide.trip.count152 = sext i32 %3 to i64        ; 3 uses
  %i.bf = sub nsw i64 %wide.trip.count152, %i.bd
  %xtraiter256 = and i64 %i.bf, 3                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol

.lr.ph116.prol:                                   ; preds = %.lr.ph116.preheader, %.lr.ph116.prol
  %i.bg = phi ptr [ %i.bk, %.lr.ph116.prol ], [ %i.bb, %.lr.ph116.preheader ]
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %.lr.ph116.prol ], [ %i.bd, %.lr.ph116.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph116.prol ], [ 0, %.lr.ph116.preheader ]
  %indvars.iv.next150.prol = add nsw i64 %indvars.iv149.prol, 1 ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv149.prol
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.prol
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !19
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol, !llvm.loop !22

.lr.ph116.prol.loopexit:                          ; preds = %.lr.ph116.prol, %.lr.ph116.preheader
  %.unr = phi ptr [ %i.bb, %.lr.ph116.preheader ], [ %i.bk, %.lr.ph116.prol ]
  %indvars.iv149.unr = phi i64 [ %i.bd, %.lr.ph116.preheader ], [ %indvars.iv.next150.prol, %.lr.ph116.prol ]
  %i.bm = sub nsw i64 %i.bd, %wide.trip.count152
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116
  %i.bo = phi ptr [ %i.ch, %.lr.ph116 ], [ %.unr, %.lr.ph116.prol.loopexit ]
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.3, %.lr.ph116 ], [ %indvars.iv149.unr, %.lr.ph116.prol.loopexit ] ; 5 uses
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv149
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !19
  %indvars.iv.next150.1 = add nsw i64 %indvars.iv149, 2 ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.1
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !19
  %indvars.iv.next150.2 = add nsw i64 %indvars.iv149, 3 ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150.1
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.2
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !19
  %indvars.iv.next150.3 = add nsw i64 %indvars.iv149, 4 ; 3 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.3
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !19
  %exitcond153.not.3 = icmp eq i64 %indvars.iv.next150.3, %wide.trip.count152
  br i1 %exitcond153.not.3, label %._crit_edge117, label %.lr.ph116, !llvm.loop !24

._crit_edge117:                                   ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116, %bb.e
  %i.cj = shl nuw i32 1, %2                       ; 5 uses
  %i.ck = add i32 %0, -1                          ; 4 uses
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = lshr i32 %i.cl, %2
  %i.cn = add i32 %1, -1                          ; 2 uses
  %i.co = add i32 %i.cj, %i.cn
  %i.cp = lshr i32 %i.co, %2                      ; 4 uses
  %i.cq = sub nsw i32 %3, %2                      ; 7 uses
  %i.cr = add i32 %i.cq, 1                        ; 3 uses
  %i.cs = mul i32 %i.cr, 14336
  %i.ct = shl i32 %i.cr, 10
  %i.cu = mul i32 %i.cr, 15374
  %i.cv = sext i32 %i.cu to i64
  %i.cw = tail call ptr @WebPSafeCalloc(i64 noundef %i.cv, i64 noundef 4) #10 ; 11 uses
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx ; 3 uses
  %i.cz = sext i32 %i.ct to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %13, align 4, !tbaa !3
  %i.dc = tail call noundef i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %3, i32 4) ; 2 uses
  %i.dd = tail call noundef i32 @llvm.smax.i32(i32 %i.dc, i32 %2)
  %i.de = sub nsw i32 %i.dd, %2                   ; 2 uses
  store i32 0, ptr %14, align 4, !tbaa !3
  %i.df = icmp eq ptr %i.cw, null
  br i1 %i.df, label %GetBestPredictorsAndSubSampling.exit.thread, label %.preheader180.i

.preheader180.i:                                  ; preds = %._crit_edge117
  %.not195.i = icmp eq i32 %i.cp, 0
  br i1 %.not195.i, label %.preheader.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader180.i
  %i.dg = sext i32 %0 to i64                      ; 5 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 5 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 4 uses
  %i.dl = icmp sgt i32 %.fr130, 1                 ; 2 uses
  %.not.i.not.i = icmp slt i32 %2, %i.dc
  %i.dm = add i32 %i.de, 1
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %i.dm, i32 2)
  %i.dn = sext i32 %1 to i64
  %invariant.op.i.i = add nsw i64 %i.dn, -1       ; 3 uses
  %i.do = add i32 %i.cm, -1
  %i.dp = add i32 %i.cp, -1
  %.pre.i = mul i32 %i.cq, 14336
  %i.dq = add i32 %.pre.i, 14336
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bo, %.lr.ph.i
  %.0145190.i = phi i32 [ 0, %.lr.ph.i ], [ %.1146.i, %bb.bo ] ; 2 uses
  %.0147189.i = phi i32 [ 0, %.lr.ph.i ], [ %.1148.i, %bb.bo ] ; 2 uses
  %.0150188.i = phi i32 [ 0, %.lr.ph.i ], [ %i.rc, %bb.bo ] ; 3 uses
  %.0151187.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ra, %bb.bo ] ; 3 uses
  %.0152186.i = phi i32 [ 0, %.lr.ph.i ], [ %.2154.i, %bb.bo ] ; 2 uses
  %.0155185.i = phi i32 [ 0, %.lr.ph.i ], [ %.2157.i, %bb.bo ] ; 2 uses
  %i.dt = shl i32 %.0151187.i, %2                 ; 7 uses
  %i.du = shl i32 %.0150188.i, %2                 ; 4 uses
  %i.dv = sub nsw i32 %1, %i.du
  %i.dw = call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.dv) ; 2 uses
  %i.dx = sub nsw i32 %0, %i.dt                   ; 3 uses
  %i.dy = call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.dx) ; 3 uses
  %i.dz = icmp sgt i32 %i.dt, 0
  %i.ea = zext i1 %i.dz to i32                    ; 2 uses
  %i.eb = sub nsw i32 %i.dt, %i.ea
  %i.ec = add nsw i32 %i.dy, %i.ea                ; 5 uses
  %i.ed = icmp slt i32 %i.cj, %i.dx
  %i.ee = zext i1 %i.ed to i32
  %i.ef = add nsw i32 %i.ec, %i.ee                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.eg = icmp sgt i32 %i.du, 0                   ; 4 uses
  %i.eh = icmp sgt i32 %i.dw, 0
  %i.ei = sext i32 %i.eb to i64                   ; 10 uses
  %i.ej = add nsw i32 %i.du, -1
  %i.ek = mul nsw i32 %i.ej, %0
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %5, i64 %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ei ; 17 uses
  %i.eo = add nsw i32 %i.ec, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 2                    ; 17 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %5, i64 %i.ei ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %i.dk, i64 %i.ei ; 2 uses
  %i.es = add nsw i32 %i.dy, %i.dt                ; 3 uses
  br i1 %i.eh, label %.split.us.preheader.i.i, label %.split.i.i

.split.us.preheader.i.i:                          ; preds = %bb.f
  %i.et = icmp sgt i32 %i.dx, 0
  %i.eu = sext i32 %i.du to i64                   ; 3 uses
  %wide.trip.count152.i.i = zext nneg i32 %i.dw to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.dy to i64 ; 2 uses
  br i1 %i.et, label %.split.us.i.us.i, label %.split.us.i.i.preheader

.split.us.i.i.preheader:                          ; preds = %.split.us.preheader.i.i
  br i1 %i.dl, label %.split.us.i.i.us, label %.split.us.i.i

.split.us.i.i.us:                                 ; preds = %.split.us.i.i.preheader, %._crit_edge127.us.i.split.i.split.us126
  %indvars.iv154.i.i.us = phi i64 [ %indvars.iv.next155.i.i.us, %._crit_edge127.us.i.split.i.split.us126 ], [ 0, %.split.us.i.i.preheader ] ; 2 uses
  %.0131.us.i.i.us = phi ptr [ %.1100123.us.i.i.us121, %._crit_edge127.us.i.split.i.split.us126 ], [ %6, %.split.us.i.i.preheader ]
  %.099130.us.i.i.us = phi ptr [ %.1124.us.i.i.us120, %._crit_edge127.us.i.split.i.split.us126 ], [ %i.di, %.split.us.i.i.preheader ] ; 2 uses
  br i1 %i.eg, label %bb.g, label %.lr.ph126.us.i.i.us

bb.g:                                             ; preds = %.split.us.i.i.us
  %i.ev = getelementptr inbounds [4 x i8], ptr %.099130.us.i.i.us, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ev, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  br label %.lr.ph126.us.i.i.us

.lr.ph126.us.i.i.us:                              ; preds = %bb.g, %.split.us.i.i.us
  %i.ew = trunc nuw nsw i64 %indvars.iv154.i.i.us to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph126.us.i.i.us, %.loopexit.us.i.i.us123
  %indvars.iv149.i.i.us119 = phi i64 [ 0, %.lr.ph126.us.i.i.us ], [ %indvars.iv.next150.i.i.us124, %.loopexit.us.i.i.us123 ] ; 2 uses
  %.1124.us.i.i.us120 = phi ptr [ %.0131.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1100123.us.i.i.us121, %.loopexit.us.i.i.us123 ] ; 4 uses
  %.1100123.us.i.i.us121 = phi ptr [ %.099130.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1124.us.i.i.us120, %.loopexit.us.i.i.us123 ] ; 3 uses
  %i.ex = add nsw i64 %indvars.iv149.i.i.us119, %i.eu ; 4 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %.1124.us.i.i.us120, i64 %i.ei
  %i.ez = mul nsw i64 %i.ex, %i.dg
  %gep.us.i.i.us122 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ez ; 2 uses
  %i.fa = icmp slt i64 %i.ex, %invariant.op.i.i   ; 2 uses
  %i.fb = zext i1 %i.fa to i32
  %i.fc = add nsw i32 %i.ec, %i.fb
  %i.fd = sext i32 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ey, ptr readonly align 4 %gep.us.i.i.us122, i64 %i.fe, i1 false)
  %i.ff = icmp sgt i64 %i.ex, 0
  %brmerge.not.us.i.i.us = select i1 %i.ff, i1 %i.fa, i1 false
  br i1 %brmerge.not.us.i.i.us, label %bb.i, label %.loopexit.us.i.i.us123

bb.i:                                             ; preds = %bb.h
  call fastcc void @MaxDiffsForRow(i32 noundef %i.ef, i32 noundef %0, ptr noundef readonly %gep.us.i.i.us122, ptr noundef nonnull %i.er, i32 noundef %10)
  br label %.loopexit.us.i.i.us123

.loopexit.us.i.i.us123:                           ; preds = %bb.i, %bb.h
  %i.fg = trunc nsw i64 %i.ex to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1100123.us.i.i.us121, ptr noundef %.1124.us.i.i.us120, ptr noundef nonnull %i.dk, i32 noundef %i.ew, i32 noundef %i.dt, i32 noundef %i.es, i32 noundef %i.fg, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  %indvars.iv.next150.i.i.us124 = add nuw nsw i64 %indvars.iv149.i.i.us119, 1 ; 2 uses
  %exitcond153.not.i.i.us125 = icmp eq i64 %indvars.iv.next150.i.i.us124, %wide.trip.count152.i.i
  br i1 %exitcond153.not.i.i.us125, label %._crit_edge127.us.i.split.i.split.us126, label %bb.h, !llvm.loop !25

._crit_edge127.us.i.split.i.split.us126:          ; preds = %.loopexit.us.i.i.us123
  %indvars.iv.next155.i.i.us = add nuw nsw i64 %indvars.iv154.i.i.us, 1 ; 2 uses
  %exitcond157.not.i.i.us = icmp eq i64 %indvars.iv.next155.i.i.us, 14
  br i1 %exitcond157.not.i.i.us, label %ComputeResidualsForTile.exit.i, label %.split.us.i.i.us, !llvm.loop !26

.split.us.i.us.i:                                 ; preds = %.split.us.preheader.i.i, %._crit_edge127.us.i.split.us.us.i
  %indvars.iv154.i.us.i = phi i64 [ %indvars.iv.next155.i.us.i, %._crit_edge127.us.i.split.us.us.i ], [ 0, %.split.us.preheader.i.i ] ; 3 uses
  %.0131.us.i.us.i = phi ptr [ %.1100123.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %6, %.split.us.preheader.i.i ]
  %.099130.us.i.us.i = phi ptr [ %.1124.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %i.di, %.split.us.preheader.i.i ] ; 2 uses
  %.idx.i.us.i = shl nuw nsw i64 %indvars.iv154.i.us.i, 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i.us.i ; 4 uses
  br i1 %i.eg, label %bb.j, label %.lr.ph126.us.i.us.i

bb.j:                                             ; preds = %.split.us.i.us.i
  %i.fi = getelementptr inbounds [4 x i8], ptr %.099130.us.i.us.i, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fi, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  br label %.lr.ph126.us.i.us.i

.lr.ph126.us.i.us.i:                              ; preds = %bb.j, %.split.us.i.us.i
  %i.fj = trunc nuw nsw i64 %indvars.iv154.i.us.i to i32 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.us.i.us.us.i, %.lr.ph126.us.i.us.i
  %indvars.iv149.i.us.us.i = phi i64 [ 0, %.lr.ph126.us.i.us.i ], [ %indvars.iv.next150.i.us.us.i, %.loopexit.us.i.us.us.i ] ; 2 uses
  %.1124.us.i.us.us.i = phi ptr [ %.0131.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1100123.us.i.us.us.i, %.loopexit.us.i.us.us.i ] ; 4 uses
  %.1100123.us.i.us.us.i = phi ptr [ %.099130.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1124.us.i.us.us.i, %.loopexit.us.i.us.us.i ] ; 3 uses
  %i.fk = add nsw i64 %indvars.iv149.i.us.us.i, %i.eu ; 4 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %.1124.us.i.us.us.i, i64 %i.ei
  %i.fm = mul nsw i64 %i.fk, %i.dg
  %gep.us.i.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.fm ; 2 uses
  %i.fn = icmp slt i64 %i.fk, %invariant.op.i.i   ; 2 uses
  %i.fo = zext i1 %i.fn to i32
  %i.fp = add nsw i32 %i.ec, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = shl nsw i64 %i.fq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fl, ptr readonly align 4 %gep.us.i.us.us.i, i64 %i.fr, i1 false)
  %i.fs = icmp sgt i64 %i.fk, 0
  %or.cond.not112.not115.us.i.us.us.i = select i1 %i.dl, i1 %i.fs, i1 false
  %brmerge.not.us.i.us.us.i = select i1 %or.cond.not112.not115.us.i.us.us.i, i1 %i.fn, i1 false
  br i1 %brmerge.not.us.i.us.us.i, label %bb.l, label %.lr.ph.us.i.preheader.us.us.i

bb.l:                                             ; preds = %bb.k
  call fastcc void @MaxDiffsForRow(i32 noundef %i.ef, i32 noundef %0, ptr noundef readonly %gep.us.i.us.us.i, ptr noundef nonnull %i.er, i32 noundef %10)
  br label %.lr.ph.us.i.preheader.us.us.i

.lr.ph.us.i.preheader.us.us.i:                    ; preds = %bb.l, %bb.k
  %i.ft = trunc nsw i64 %i.fk to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1100123.us.i.us.us.i, ptr noundef %.1124.us.i.us.us.i, ptr noundef nonnull %i.dk, i32 noundef %i.fj, i32 noundef %i.dt, i32 noundef %i.es, i32 noundef %i.ft, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  br label %.lr.ph.us.i.us.us.i

.lr.ph.us.i.us.us.i:                              ; preds = %.lr.ph.us.i.us.us.i, %.lr.ph.us.i.preheader.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.lr.ph.us.i.us.us.i ], [ 0, %.lr.ph.us.i.preheader.us.us.i ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3  ; 4 uses
  %i.fw = lshr i32 %i.fv, 24
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !3
  %i.gb = lshr i32 %i.fv, 16
  %i.gc = and i32 %i.gb, 255
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1024 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !3
  %i.gi = lshr i32 %i.fv, 8
  %i.gj = and i32 %i.gi, 255
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2048 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !3
  %i.gp = and i32 %i.fv, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 3072 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !3
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.us.i.us.us.i, label %.lr.ph.us.i.us.us.i, !llvm.loop !27

._crit_edge.us.i.us.us.i:                         ; preds = %.lr.ph.us.i.us.us.i
  br i1 %.not.i.not.i, label %.lr.ph119.us.us.i.us.us.i, label %.loopexit.us.i.us.us.i

.lr.ph119.us.us.i.us.us.i:                        ; preds = %._crit_edge.us.i.us.us.i, %._crit_edge120.us.us.i.us.us.i
  %.098121.us.us.i.us.us.i = phi i32 [ %i.ib, %._crit_edge120.us.us.i.us.us.i ], [ 1, %._crit_edge.us.i.us.us.i ] ; 2 uses
  %i.gv = mul nsw i32 %.098121.us.us.i.us.us.i, 14
  %i.gw = add nsw i32 %i.gv, %i.fj
  %i.gx = shl nsw i32 %i.gw, 10
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gy ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph119.us.us.i.us.us.i
  %indvars.iv143.i.us.us.i = phi i64 [ %indvars.iv.next144.i.us.us.i, %bb.m ], [ 0, %.lr.ph119.us.us.i.us.us.i ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv143.i.us.us.i
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3  ; 4 uses
  %i.hc = lshr i32 %i.hb, 24
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !3
  %i.hh = lshr i32 %i.hb, 16
  %i.hi = and i32 %i.hh, 255
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1024 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !3
  %i.ho = lshr i32 %i.hb, 8
  %i.hp = and i32 %i.ho, 255
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2048 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !3
  %i.hv = and i32 %i.hb, 255
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 3072 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !3
  %indvars.iv.next144.i.us.us.i = add nuw nsw i64 %indvars.iv143.i.us.us.i, 1 ; 2 uses
  %exitcond147.not.i.us.us.i = icmp eq i64 %indvars.iv.next144.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond147.not.i.us.us.i, label %._crit_edge120.us.us.i.us.us.i, label %bb.m, !llvm.loop !28

._crit_edge120.us.us.i.us.us.i:                   ; preds = %bb.m
  %i.ib = add nuw i32 %.098121.us.us.i.us.us.i, 1 ; 2 uses
  %exitcond148.i.us.us.i = icmp eq i32 %i.ib, %umax.i.i
  br i1 %exitcond148.i.us.us.i, label %.loopexit.us.i.us.us.i, label %.lr.ph119.us.us.i.us.us.i, !llvm.loop !29

.loopexit.us.i.us.us.i:                           ; preds = %._crit_edge120.us.us.i.us.us.i, %._crit_edge.us.i.us.us.i
  %indvars.iv.next150.i.us.us.i = add nuw nsw i64 %indvars.iv149.i.us.us.i, 1 ; 2 uses
  %exitcond153.not.i.us.us.i = icmp eq i64 %indvars.iv.next150.i.us.us.i, %wide.trip.count152.i.i
  br i1 %exitcond153.not.i.us.us.i, label %._crit_edge127.us.i.split.us.us.i, label %bb.k, !llvm.loop !25

._crit_edge127.us.i.split.us.us.i:                ; preds = %.loopexit.us.i.us.us.i
  %indvars.iv.next155.i.us.i = add nuw nsw i64 %indvars.iv154.i.us.i, 1 ; 2 uses
  %exitcond157.not.i.us.i = icmp eq i64 %indvars.iv.next155.i.us.i, 14
  br i1 %exitcond157.not.i.us.i, label %ComputeResidualsForTile.exit.i, label %.split.us.i.us.i, !llvm.loop !26

.split.us.i.i:                                    ; preds = %.split.us.i.i.preheader, %._crit_edge127.us.i.split.i.split.us
  %indvars.iv154.i.i = phi i64 [ %indvars.iv.next155.i.i, %._crit_edge127.us.i.split.i.split.us ], [ 0, %.split.us.i.i.preheader ] ; 2 uses
  %.0131.us.i.i = phi ptr [ %.1100123.us.i.i.us, %._crit_edge127.us.i.split.i.split.us ], [ %6, %.split.us.i.i.preheader ]
  %.099130.us.i.i = phi ptr [ %.1124.us.i.i.us, %._crit_edge127.us.i.split.i.split.us ], [ %i.di, %.split.us.i.i.preheader ] ; 2 uses
  br i1 %i.eg, label %bb.n, label %.lr.ph126.us.i.i

bb.n:                                             ; preds = %.split.us.i.i
  %i.ic = getelementptr inbounds [4 x i8], ptr %.099130.us.i.i, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ic, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  br label %.lr.ph126.us.i.i

.lr.ph126.us.i.i:                                 ; preds = %bb.n, %.split.us.i.i
  %i.id = trunc nuw nsw i64 %indvars.iv154.i.i to i32
  br label %.loopexit.us.i.i.us

.loopexit.us.i.i.us:                              ; preds = %.loopexit.us.i.i.us, %.lr.ph126.us.i.i
  %indvars.iv149.i.i.us = phi i64 [ 0, %.lr.ph126.us.i.i ], [ %indvars.iv.next150.i.i.us, %.loopexit.us.i.i.us ] ; 2 uses
  %.1124.us.i.i.us = phi ptr [ %.0131.us.i.i, %.lr.ph126.us.i.i ], [ %.1100123.us.i.i.us, %.loopexit.us.i.i.us ] ; 4 uses
  %.1100123.us.i.i.us = phi ptr [ %.099130.us.i.i, %.lr.ph126.us.i.i ], [ %.1124.us.i.i.us, %.loopexit.us.i.i.us ] ; 3 uses
  %i.ie = add nsw i64 %indvars.iv149.i.i.us, %i.eu ; 3 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %.1124.us.i.i.us, i64 %i.ei
  %i.ig = mul nsw i64 %i.ie, %i.dg
  %gep.us.i.i.us = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ig
  %i.ih = icmp slt i64 %i.ie, %invariant.op.i.i
  %i.ii = zext i1 %i.ih to i32
  %i.ij = add nsw i32 %i.ec, %i.ii
  %i.ik = sext i32 %i.ij to i64
  %i.il = shl nsw i64 %i.ik, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.if, ptr readonly align 4 %gep.us.i.i.us, i64 %i.il, i1 false)
  %i.im = trunc nsw i64 %i.ie to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1100123.us.i.i.us, ptr noundef %.1124.us.i.i.us, ptr noundef nonnull %i.dk, i32 noundef %i.id, i32 noundef %i.dt, i32 noundef %i.es, i32 noundef %i.im, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  %indvars.iv.next150.i.i.us = add nuw nsw i64 %indvars.iv149.i.i.us, 1 ; 2 uses
  %exitcond153.not.i.i.us = icmp eq i64 %indvars.iv.next150.i.i.us, %wide.trip.count152.i.i
  br i1 %exitcond153.not.i.i.us, label %._crit_edge127.us.i.split.i.split.us, label %.loopexit.us.i.i.us, !llvm.loop !25

._crit_edge127.us.i.split.i.split.us:             ; preds = %.loopexit.us.i.i.us
  %indvars.iv.next155.i.i = add nuw nsw i64 %indvars.iv154.i.i, 1 ; 2 uses
  %exitcond157.not.i.i = icmp eq i64 %indvars.iv.next155.i.i, 14
  br i1 %exitcond157.not.i.i, label %ComputeResidualsForTile.exit.i, label %.split.us.i.i, !llvm.loop !26

.split.i.i:                                       ; preds = %bb.f
  br i1 %i.eg, label %.split.split.us.preheader.i.i, label %ComputeResidualsForTile.exit.i

.split.split.us.preheader.i.i:                    ; preds = %.split.i.i
  %i.in = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.ei ; 14 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  br label %ComputeResidualsForTile.exit.i

ComputeResidualsForTile.exit.i:                   ; preds = %._crit_edge127.us.i.split.i.split.us, %._crit_edge127.us.i.split.i.split.us126, %._crit_edge127.us.i.split.us.us.i, %.split.split.us.preheader.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.io = icmp eq i32 %.0151187.i, %i.do          ; 4 uses
  %i.ip = sub i32 2147483646, %.0145190.i
  %i.iq = icmp eq i32 %.0150188.i, %i.dp
  %i.ir = sub i32 2147483646, %.0147189.i
  br label %bb.o

bb.o:                                             ; preds = %.backedge, %ComputeResidualsForTile.exit.i
  %.0143.i = phi i32 [ 0, %ComputeResidualsForTile.exit.i ], [ %i.qc, %.backedge ] ; 13 uses
  %i.is = lshr i32 %.0151187.i, %.0143.i          ; 4 uses
  %i.it = lshr i32 %.0150188.i, %.0143.i          ; 4 uses
  %i.iu = add i32 %.0143.i, %2                    ; 2 uses
  %i.iv = shl nuw i32 1, %i.iu
  %i.iw = add i32 %i.iv, %i.ck
  %i.ix = lshr i32 %i.iw, %i.iu                   ; 3 uses
  %i.iy = shl nsw i32 %.0143.i, 10
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.iz ; 5 uses
  %i.jb = sext i32 %.0143.i to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !19 ; 3 uses
  %i.je = icmp sgt i32 %i.is, 0
  br i1 %i.je, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jf = mul nsw i32 %i.ix, %i.it
  %i.jg = add nsw i32 %i.jf, %i.is
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr [4 x i8], ptr %i.jd, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 -4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = and i32 %i.jl, 255
  %i.jn = zext nneg i32 %i.jm to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jo = phi i64 [ %i.jn, %bb.p ], [ 255, %bb.o ]
  %i.jp = icmp sgt i32 %i.it, 0
  br i1 %i.jp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jq = add nsw i32 %i.it, -1
  %i.jr = mul nsw i32 %i.ix, %i.jq
  %i.js = add nsw i32 %i.jr, %i.is
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3
  %i.jw = lshr i32 %i.jv, 8
  %i.jx = and i32 %i.jw, 255
  %i.jy = zext nneg i32 %i.jx to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jz = phi i64 [ %i.jy, %bb.r ], [ 255, %bb.q ]
  %i.ka = mul i32 %.0143.i, 14336                 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ja, i64 1024
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ja, i64 2048
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ja, i64 3072
  %i.ke = sext i32 %i.ka to i64
  %invariant.gep.i166.i = getelementptr [4 x i8], ptr %i.cw, i64 %i.ke ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %PredictionCostSpatialHistogram.exit.i.i, %bb.s
  %indvars.iv.i167.i = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i169.i, %PredictionCostSpatialHistogram.exit.i.i ] ; 5 uses
  %.04160.i.i = phi i64 [ 9223372036854775807, %bb.s ], [ %.1.i.i, %PredictionCostSpatialHistogram.exit.i.i ] ; 2 uses
  %.04259.i.i = phi ptr [ %i.cw, %bb.s ], [ %.143.i.i, %PredictionCostSpatialHistogram.exit.i.i ]
  %.04458.i.i = phi i32 [ 0, %bb.s ], [ %.145.i.i, %PredictionCostSpatialHistogram.exit.i.i ]
  %.idx.i168.i = shl i64 %indvars.iv.i167.i, 12
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i166.i, i64 %.idx.i168.i ; 8 uses
  %i.kf = load i32, ptr %gep.i.i, align 4, !tbaa !3
  %i.kg = zext i32 %i.kf to i64
  %i.kh = shl nuw nsw i64 %i.kg, 23
  br label %bb.u

bb.u:                                             ; preds = %DivRound.exit16.i.i.i.i, %bb.t
  %indvars.iv.i.i.i.i = phi i64 [ 1, %bb.t ], [ %indvars.iv.next.i.i.i.i, %DivRound.exit16.i.i.i.i ] ; 3 uses
  %.01221.i.i.i.i = phi i64 [ %i.kh, %bb.t ], [ %i.kv, %DivRound.exit16.i.i.i.i ]
  %.01320.i.i.i.i = phi i64 [ 788529152, %bb.t ], [ %i.lb, %DivRound.exit16.i.i.i.i ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.i.i.i.i
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !3
  %i.kk = sub nuw nsw i64 256, %indvars.iv.i.i.i.i
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3
  %i.kn = add i32 %i.km, %i.kj
  %i.ko = zext i32 %i.kn to i64
  %i.kp = mul i64 %.01320.i.i.i.i, %i.ko          ; 3 uses
  %i.kq = icmp sgt i64 %i.kp, -1
  br i1 %i.kq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kr = add nuw nsw i64 %i.kp, 50
  %i.ks = udiv i64 %i.kr, 100
  br label %DivRound.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %.neg8.i.i.i.i.i = sub i64 50, %i.kp
  %i.kt = udiv i64 %.neg8.i.i.i.i.i, 100
  %.neg.i.i.i.i.i = sub nsw i64 0, %i.kt
  br label %DivRound.exit.i.i.i.i

DivRound.exit.i.i.i.i:                            ; preds = %bb.w, %bb.v
  %i.ku = phi i64 [ %i.ks, %bb.v ], [ %.neg.i.i.i.i.i, %bb.w ]
  %i.kv = add i64 %i.ku, %.01221.i.i.i.i          ; 4 uses
  %i.kw = mul i64 %.01320.i.i.i.i, 6              ; 3 uses
  %i.kx = icmp sgt i64 %i.kw, -1
  br i1 %i.kx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %DivRound.exit.i.i.i.i
  %i.ky = add nuw nsw i64 %i.kw, 4
  %i.kz = udiv i64 %i.ky, 10
  br label %DivRound.exit16.i.i.i.i

bb.y:                                             ; preds = %DivRound.exit.i.i.i.i
  %.neg8.i14.i.i.i.i = sub i64 4, %i.kw
  %i.la = udiv i64 %.neg8.i14.i.i.i.i, 10
  %.neg.i15.i.i.i.i = sub nsw i64 0, %i.la
  br label %DivRound.exit16.i.i.i.i

DivRound.exit16.i.i.i.i:                          ; preds = %bb.y, %bb.x
  %i.lb = phi i64 [ %i.kz, %bb.x ], [ %.neg.i15.i.i.i.i, %bb.y ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 16
  br i1 %exitcond.not.i.i.i.i, label %bb.z, label %bb.u, !llvm.loop !30

bb.z:                                             ; preds = %DivRound.exit16.i.i.i.i
  %i.lc = icmp sgt i64 %i.kv, -1
  br i1 %i.lc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ld = add nuw nsw i64 %i.kv, 5
  %i.le = udiv i64 %i.ld, 10
  br label %PredictionCostBias.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %.neg8.i17.i.i.i.i = sub i64 5, %i.kv
  %i.lf = udiv i64 %.neg8.i17.i.i.i.i, 10
  %.neg.i18.i.i.i.i = sub nsw i64 0, %i.lf
  br label %PredictionCostBias.exit.i.i.i

PredictionCostBias.exit.i.i.i:                    ; preds = %bb.ab, %bb.aa
  %i.lg = phi i64 [ %i.le, %bb.aa ], [ %.neg.i18.i.i.i.i, %bb.ab ]
  %i.lh = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.li = call i64 %i.lh(ptr noundef nonnull %gep.i.i, ptr noundef nonnull %i.ja) #10, !inline_history !32
  %i.lj = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 1024 ; 4 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !3
  %i.ll = zext i32 %i.lk to i64
  %i.lm = shl nuw nsw i64 %i.ll, 23
  br label %bb.ac

bb.ac:                                            ; preds = %DivRound.exit16.i.1.i.i.i, %PredictionCostBias.exit.i.i.i
  %indvars.iv.i.1.i.i.i = phi i64 [ 1, %PredictionCostBias.exit.i.i.i ], [ %indvars.iv.next.i.1.i.i.i, %DivRound.exit16.i.1.i.i.i ] ; 3 uses
  %.01221.i.1.i.i.i = phi i64 [ %i.lm, %PredictionCostBias.exit.i.i.i ], [ %i.ma, %DivRound.exit16.i.1.i.i.i ]
  %.01320.i.1.i.i.i = phi i64 [ 788529152, %PredictionCostBias.exit.i.i.i ], [ %i.mg, %DivRound.exit16.i.1.i.i.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i.1.i.i.i
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !3
  %i.lp = sub nuw nsw i64 256, %indvars.iv.i.1.i.i.i
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3
  %i.ls = add i32 %i.lr, %i.lo
  %i.lt = zext i32 %i.ls to i64
  %i.lu = mul i64 %.01320.i.1.i.i.i, %i.lt        ; 3 uses
  %i.lv = icmp sgt i64 %i.lu, -1
  br i1 %i.lv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.neg8.i.i.1.i.i.i = sub i64 50, %i.lu
  %i.lw = udiv i64 %.neg8.i.i.1.i.i.i, 100
  %.neg.i.i.1.i.i.i = sub nsw i64 0, %i.lw
  br label %DivRound.exit.i.1.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.lx = add nuw nsw i64 %i.lu, 50
  %i.ly = udiv i64 %i.lx, 100
  br label %DivRound.exit.i.1.i.i.i

DivRound.exit.i.1.i.i.i:                          ; preds = %bb.ae, %bb.ad
  %i.lz = phi i64 [ %i.ly, %bb.ae ], [ %.neg.i.i.1.i.i.i, %bb.ad ]
  %i.ma = add i64 %i.lz, %.01221.i.1.i.i.i        ; 4 uses
  %i.mb = mul i64 %.01320.i.1.i.i.i, 6            ; 3 uses
  %i.mc = icmp sgt i64 %i.mb, -1
  br i1 %i.mc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %DivRound.exit.i.1.i.i.i
  %.neg8.i14.i.1.i.i.i = sub i64 4, %i.mb
  %i.md = udiv i64 %.neg8.i14.i.1.i.i.i, 10
  %.neg.i15.i.1.i.i.i = sub nsw i64 0, %i.md
  br label %DivRound.exit16.i.1.i.i.i

bb.ag:                                            ; preds = %DivRound.exit.i.1.i.i.i
  %i.me = add nuw nsw i64 %i.mb, 4
  %i.mf = udiv i64 %i.me, 10
  br label %DivRound.exit16.i.1.i.i.i

DivRound.exit16.i.1.i.i.i:                        ; preds = %bb.ag, %bb.af
  %i.mg = phi i64 [ %i.mf, %bb.ag ], [ %.neg.i15.i.1.i.i.i, %bb.af ]
  %indvars.iv.next.i.1.i.i.i = add nuw nsw i64 %indvars.iv.i.1.i.i.i, 1 ; 2 uses
  %exitcond.not.i.1.i.i.i = icmp eq i64 %indvars.iv.next.i.1.i.i.i, 16
  br i1 %exitcond.not.i.1.i.i.i, label %bb.ah, label %bb.ac, !llvm.loop !30

bb.ah:                                            ; preds = %DivRound.exit16.i.1.i.i.i
  %i.mh = icmp sgt i64 %i.ma, -1
  br i1 %i.mh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.neg8.i17.i.1.i.i.i = sub i64 5, %i.ma
  %i.mi = udiv i64 %.neg8.i17.i.1.i.i.i, 10
  %.neg.i18.i.1.i.i.i = sub nsw i64 0, %i.mi
  br label %PredictionCostBias.exit.1.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.mj = add nuw nsw i64 %i.ma, 5
  %i.mk = udiv i64 %i.mj, 10
  br label %PredictionCostBias.exit.1.i.i.i

PredictionCostBias.exit.1.i.i.i:                  ; preds = %bb.aj, %bb.ai
  %i.ml = phi i64 [ %i.mk, %bb.aj ], [ %.neg.i18.i.1.i.i.i, %bb.ai ]
  %i.mm = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.mn = call i64 %i.mm(ptr noundef nonnull %i.lj, ptr noundef nonnull %i.kb) #10, !inline_history !32
  %i.mo = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 2048 ; 4 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = zext i32 %i.mp to i64
  %i.mr = shl nuw nsw i64 %i.mq, 23
  br label %bb.ak

bb.ak:                                            ; preds = %DivRound.exit16.i.2.i.i.i, %PredictionCostBias.exit.1.i.i.i
  %indvars.iv.i.2.i.i.i = phi i64 [ 1, %PredictionCostBias.exit.1.i.i.i ], [ %indvars.iv.next.i.2.i.i.i, %DivRound.exit16.i.2.i.i.i ] ; 3 uses
  %.01221.i.2.i.i.i = phi i64 [ %i.mr, %PredictionCostBias.exit.1.i.i.i ], [ %i.nf, %DivRound.exit16.i.2.i.i.i ]
  %.01320.i.2.i.i.i = phi i64 [ 788529152, %PredictionCostBias.exit.1.i.i.i ], [ %i.nl, %DivRound.exit16.i.2.i.i.i ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %indvars.iv.i.2.i.i.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3
  %i.mu = sub nuw nsw i64 256, %indvars.iv.i.2.i.i.i
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !3
  %i.mx = add i32 %i.mw, %i.mt
  %i.my = zext i32 %i.mx to i64
  %i.mz = mul i64 %.01320.i.2.i.i.i, %i.my        ; 3 uses
  %i.na = icmp sgt i64 %i.mz, -1
  br i1 %i.na, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.neg8.i.i.2.i.i.i = sub i64 50, %i.mz
  %i.nb = udiv i64 %.neg8.i.i.2.i.i.i, 100
  %.neg.i.i.2.i.i.i = sub nsw i64 0, %i.nb
  br label %DivRound.exit.i.2.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.nc = add nuw nsw i64 %i.mz, 50
  %i.nd = udiv i64 %i.nc, 100
  br label %DivRound.exit.i.2.i.i.i

DivRound.exit.i.2.i.i.i:                          ; preds = %bb.am, %bb.al
  %i.ne = phi i64 [ %i.nd, %bb.am ], [ %.neg.i.i.2.i.i.i, %bb.al ]
  %i.nf = add i64 %i.ne, %.01221.i.2.i.i.i        ; 4 uses
  %i.ng = mul i64 %.01320.i.2.i.i.i, 6            ; 3 uses
  %i.nh = icmp sgt i64 %i.ng, -1
  br i1 %i.nh, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %DivRound.exit.i.2.i.i.i
  %.neg8.i14.i.2.i.i.i = sub i64 4, %i.ng
  %i.ni = udiv i64 %.neg8.i14.i.2.i.i.i, 10
  %.neg.i15.i.2.i.i.i = sub nsw i64 0, %i.ni
  br label %DivRound.exit16.i.2.i.i.i

bb.ao:                                            ; preds = %DivRound.exit.i.2.i.i.i
  %i.nj = add nuw nsw i64 %i.ng, 4
  %i.nk = udiv i64 %i.nj, 10
  br label %DivRound.exit16.i.2.i.i.i

DivRound.exit16.i.2.i.i.i:                        ; preds = %bb.ao, %bb.an
  %i.nl = phi i64 [ %i.nk, %bb.ao ], [ %.neg.i15.i.2.i.i.i, %bb.an ]
  %indvars.iv.next.i.2.i.i.i = add nuw nsw i64 %indvars.iv.i.2.i.i.i, 1 ; 2 uses
  %exitcond.not.i.2.i.i.i = icmp eq i64 %indvars.iv.next.i.2.i.i.i, 16
  br i1 %exitcond.not.i.2.i.i.i, label %bb.ap, label %bb.ak, !llvm.loop !30

bb.ap:                                            ; preds = %DivRound.exit16.i.2.i.i.i
  %i.nm = icmp sgt i64 %i.nf, -1
  br i1 %i.nm, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.neg8.i17.i.2.i.i.i = sub i64 5, %i.nf
  %i.nn = udiv i64 %.neg8.i17.i.2.i.i.i, 10
  %.neg.i18.i.2.i.i.i = sub nsw i64 0, %i.nn
  br label %PredictionCostBias.exit.2.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.no = add nuw nsw i64 %i.nf, 5
  %i.np = udiv i64 %i.no, 10
  br label %PredictionCostBias.exit.2.i.i.i

PredictionCostBias.exit.2.i.i.i:                  ; preds = %bb.ar, %bb.aq
  %i.nq = phi i64 [ %i.np, %bb.ar ], [ %.neg.i18.i.2.i.i.i, %bb.aq ]
  %i.nr = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.ns = call i64 %i.nr(ptr noundef nonnull %i.mo, ptr noundef nonnull %i.kc) #10, !inline_history !32
  %i.nt = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 3072 ; 4 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.nv = zext i32 %i.nu to i64
  %i.nw = shl nuw nsw i64 %i.nv, 23
  br label %bb.as

bb.as:                                            ; preds = %DivRound.exit16.i.3.i.i.i, %PredictionCostBias.exit.2.i.i.i
  %indvars.iv.i.3.i.i.i = phi i64 [ 1, %PredictionCostBias.exit.2.i.i.i ], [ %indvars.iv.next.i.3.i.i.i, %DivRound.exit16.i.3.i.i.i ] ; 3 uses
  %.01221.i.3.i.i.i = phi i64 [ %i.nw, %PredictionCostBias.exit.2.i.i.i ], [ %i.ok, %DivRound.exit16.i.3.i.i.i ]
  %.01320.i.3.i.i.i = phi i64 [ 788529152, %PredictionCostBias.exit.2.i.i.i ], [ %i.oq, %DivRound.exit16.i.3.i.i.i ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %indvars.iv.i.3.i.i.i
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !3
  %i.nz = sub nuw nsw i64 256, %indvars.iv.i.3.i.i.i
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  %i.oc = add i32 %i.ob, %i.ny
  %i.od = zext i32 %i.oc to i64
  %i.oe = mul i64 %.01320.i.3.i.i.i, %i.od        ; 3 uses
  %i.of = icmp sgt i64 %i.oe, -1
  br i1 %i.of, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.neg8.i.i.3.i.i.i = sub i64 50, %i.oe
  %i.og = udiv i64 %.neg8.i.i.3.i.i.i, 100
  %.neg.i.i.3.i.i.i = sub nsw i64 0, %i.og
  br label %DivRound.exit.i.3.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.oh = add nuw nsw i64 %i.oe, 50
  %i.oi = udiv i64 %i.oh, 100
  br label %DivRound.exit.i.3.i.i.i

DivRound.exit.i.3.i.i.i:                          ; preds = %bb.au, %bb.at
  %i.oj = phi i64 [ %i.oi, %bb.au ], [ %.neg.i.i.3.i.i.i, %bb.at ]
  %i.ok = add i64 %i.oj, %.01221.i.3.i.i.i        ; 4 uses
  %i.ol = mul i64 %.01320.i.3.i.i.i, 6            ; 3 uses
  %i.om = icmp sgt i64 %i.ol, -1
  br i1 %i.om, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %DivRound.exit.i.3.i.i.i
  %.neg8.i14.i.3.i.i.i = sub i64 4, %i.ol
  %i.on = udiv i64 %.neg8.i14.i.3.i.i.i, 10
  %.neg.i15.i.3.i.i.i = sub nsw i64 0, %i.on
  br label %DivRound.exit16.i.3.i.i.i

bb.aw:                                            ; preds = %DivRound.exit.i.3.i.i.i
  %i.oo = add nuw nsw i64 %i.ol, 4
  %i.op = udiv i64 %i.oo, 10
  br label %DivRound.exit16.i.3.i.i.i

DivRound.exit16.i.3.i.i.i:                        ; preds = %bb.aw, %bb.av
  %i.oq = phi i64 [ %i.op, %bb.aw ], [ %.neg.i15.i.3.i.i.i, %bb.av ]
  %indvars.iv.next.i.3.i.i.i = add nuw nsw i64 %indvars.iv.i.3.i.i.i, 1 ; 2 uses
  %exitcond.not.i.3.i.i.i = icmp eq i64 %indvars.iv.next.i.3.i.i.i, 16
  br i1 %exitcond.not.i.3.i.i.i, label %bb.ax, label %bb.as, !llvm.loop !30

bb.ax:                                            ; preds = %DivRound.exit16.i.3.i.i.i
  %i.or = icmp sgt i64 %i.ok, -1
  br i1 %i.or, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.neg8.i17.i.3.i.i.i = sub i64 5, %i.ok
  %i.os = udiv i64 %.neg8.i17.i.3.i.i.i, 10
  %.neg.i18.i.3.i.i.i = sub nsw i64 0, %i.os
  br label %PredictionCostSpatialHistogram.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ot = add nuw nsw i64 %i.ok, 5
  %i.ou = udiv i64 %i.ot, 10
  br label %PredictionCostSpatialHistogram.exit.i.i

PredictionCostSpatialHistogram.exit.i.i:          ; preds = %bb.az, %bb.ay
  %i.ov = phi i64 [ %i.ou, %bb.az ], [ %.neg.i18.i.3.i.i.i, %bb.ay ]
  %i.ow = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.ox = call i64 %i.ow(ptr noundef nonnull %i.nt, ptr noundef nonnull %i.kd) #10, !inline_history !32
  %i.oy = add nsw i64 %i.lg, %i.ml
  %i.oz = add i64 %i.li, %i.mn
  %i.pa = add nsw i64 %i.oy, %i.nq
  %i.pb = add i64 %i.oz, %i.ns
  %i.pc = add nsw i64 %i.pa, %i.ov
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = add nsw i64 %i.pd, %i.ox                ; 2 uses
  %i.pf = icmp eq i64 %indvars.iv.i167.i, %i.jo
  %i.pg = add nsw i64 %i.pe, -125829120
  %spec.select.i.i.i = select i1 %i.pf, i64 %i.pg, i64 %i.pe ; 2 uses
  %i.ph = icmp eq i64 %indvars.iv.i167.i, %i.jz
  %i.pi = add nsw i64 %spec.select.i.i.i, -125829120
  %.2.i.i.i = select i1 %i.ph, i64 %i.pi, i64 %spec.select.i.i.i ; 2 uses
  %i.pj = icmp slt i64 %.2.i.i.i, %.04160.i.i     ; 2 uses
  %i.pk = trunc nuw nsw i64 %indvars.iv.i167.i to i32
  %.145.i.i = select i1 %i.pj, i32 %i.pk, i32 %.04458.i.i ; 3 uses
  %.143.i.i = select i1 %i.pj, ptr %gep.i.i, ptr %.04259.i.i ; 2 uses
  %.1.i.i = call i64 @llvm.smin.i64(i64 %.2.i.i.i, i64 %.04160.i.i)
  %indvars.iv.next.i169.i = add nuw nsw i64 %indvars.iv.i167.i, 1 ; 2 uses
  %exitcond.not.i170.i = icmp eq i64 %indvars.iv.next.i169.i, 14
  br i1 %exitcond.not.i170.i, label %GetBestPredictorForTile.exit.i, label %bb.t, !llvm.loop !33

GetBestPredictorForTile.exit.i:                   ; preds = %PredictionCostSpatialHistogram.exit.i.i
  %i.pl = mul nsw i32 %.0143.i, 14
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.pm
  %i.po = load ptr, ptr @VP8LAddVectorEq, align 8, !tbaa !31
  call void %i.po(ptr noundef %.143.i.i, ptr noundef nonnull %i.ja, i32 noundef 1024) #10, !inline_history !34
  %i.pp = shl nuw nsw i32 %.145.i.i, 8
  %i.pq = add nuw nsw i32 %i.pp, -16777216
  %i.pr = mul nsw i32 %i.ix, %i.it
  %i.ps = add nsw i32 %i.pr, %i.is
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.pt
  store i32 %i.pq, ptr %i.pu, align 4, !tbaa !3
  %i.pv = zext nneg i32 %.145.i.i to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pv ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !3
  %i.py = add i32 %i.px, 1
  store i32 %i.py, ptr %i.pw, align 4, !tbaa !3
  %i.pz = icmp eq i32 %.0143.i, %i.cq
  br i1 %i.pz, label %split.thread.i, label %bb.ba

split.thread.i:                                   ; preds = %GetBestPredictorForTile.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.ds, i1 false)
  %i.qa = add i32 %.0155185.i, 1
  %.1156.i = select i1 %i.io, i32 0, i32 %i.qa
  %i.qb = zext i1 %i.io to i32
  %.1153.i = add i32 %.0152186.i, %i.qb
  br label %bb.bl

bb.ba:                                            ; preds = %GetBestPredictorForTile.exit.i
  %i.qc = add i32 %.0143.i, 1                     ; 6 uses
  %i.qd = icmp ule i32 %i.qc, %i.de
  %.not161.i = icmp ugt i32 %i.qc, %i.cq
  %or.cond.i = or i1 %i.qd, %.not161.i
  br i1 %or.cond.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qe = load ptr, ptr @VP8LAddVectorEq, align 8, !tbaa !31
  %i.qf = mul i32 %i.qc, 14336
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.qg
  call void %i.qe(ptr noundef %invariant.gep.i166.i, ptr noundef nonnull %i.qh, i32 noundef 14336) #10, !inline_history !35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %i.io, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %notmask.i = shl nsw i32 -1, %i.qc
  %i.qi = or i32 %notmask.i, %i.ip
  %i.qj = icmp eq i32 %i.qi, -1
  br i1 %i.qj, label %bb.be, label %split.i

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.iq, label %.backedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %notmask162.i = shl nsw i32 -1, %i.qc
  %i.qk = or i32 %notmask162.i, %i.ir
  %i.ql = icmp eq i32 %i.qk, -1
  br i1 %i.ql, label %.backedge, label %split.i

.backedge:                                        ; preds = %bb.bf, %bb.be
  br label %bb.o

split.i:                                          ; preds = %bb.bf, %bb.bd
  %i.qm = add i32 %i.ka, 14336
  %i.qn = zext i32 %i.qm to i64
  %i.qo = shl nuw nsw i64 %i.qn, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.qo, i1 false)
  %i.qp = lshr i32 %.0145190.i, %.0143.i          ; 4 uses
  %i.qq = lshr i32 %.0147189.i, %.0143.i          ; 3 uses
  %i.qr = and i32 %i.qp, 1
  %i.qs = icmp eq i32 %i.qr, 0                    ; 2 uses
  %or.cond165.i = select i1 %i.io, i1 %i.qs, i1 false
  br i1 %or.cond165.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %split.i
  %i.qt = add i32 %i.qq, 1
  br label %bb.bk

bb.bh:                                            ; preds = %split.i
  br i1 %i.qs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.qu = or disjoint i32 %i.qp, 1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.qv = add i32 %i.qq, 1
  %i.qw = add nsw i32 %i.qp, -1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bg
  %.0142.i = phi i32 [ %i.qp, %bb.bg ], [ %i.qu, %bb.bi ], [ %i.qw, %bb.bj ]
  %.0141.i = phi i32 [ %i.qt, %bb.bg ], [ %i.qq, %bb.bi ], [ %i.qv, %bb.bj ]
  %i.qx = shl i32 %.0142.i, %.0143.i
  %i.qy = shl i32 %.0141.i, %.0143.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %split.thread.i
  %.2157.i = phi i32 [ %.1156.i, %split.thread.i ], [ %.0155185.i, %bb.bk ] ; 2 uses
  %.2154.i = phi i32 [ %.1153.i, %split.thread.i ], [ %.0152186.i, %bb.bk ] ; 2 uses
  %.1148.i = phi i32 [ 0, %split.thread.i ], [ %i.qy, %bb.bk ] ; 2 uses
  %.1146.i = phi i32 [ 0, %split.thread.i ], [ %i.qx, %bb.bk ] ; 2 uses
  %i.qz = shl i32 %.2157.i, %i.cq
  %i.ra = add i32 %.1146.i, %i.qz                 ; 2 uses
  %i.rb = shl i32 %.2154.i, %i.cq
  %i.rc = add i32 %i.rb, %.1148.i                 ; 3 uses
  %i.rd = icmp eq i32 %i.ra, 0
  br i1 %i.rd, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.re = mul i32 %i.rc, %12
  %i.rf = udiv i32 %i.re, %i.cp
  %i.rg = add i32 %i.rf, %i.db
  %i.rh = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %i.rg, ptr noundef nonnull %13) #10
  %.not163.i = icmp eq i32 %i.rh, 0
  br i1 %.not163.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @WebPSafeFree(ptr noundef nonnull %i.cw) #10
  br label %GetBestPredictorsAndSubSampling.exit

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.ri = icmp ult i32 %i.rc, %i.cp
  br i1 %i.ri, label %bb.f, label %.preheader.i.preheader, !llvm.loop !36

.preheader.i.preheader:                           ; preds = %bb.bo, %.preheader180.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.bq
  %.0 = phi ptr [ %.188, %bb.bq ], [ null, %.preheader.i.preheader ]
  %.0139194.i = phi i64 [ %.1.i, %bb.bq ], [ 9223372036854775807, %.preheader.i.preheader ] ; 2 uses
  %.2193.i = phi i32 [ %i.sl, %bb.bq ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.rj = shl nsw i32 %.2193.i, 10
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.rk ; 4 uses
  %i.rm = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.rn = mul i32 %.2193.i, 14
  %i.ro = zext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ro
  %i.rq = call i64 %i.rm(ptr noundef nonnull %i.rp, i32 noundef 14) #10, !inline_history !35
  %i.rr = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.rs = call i64 %i.rr(ptr noundef nonnull %i.rl, i32 noundef 256) #10, !inline_history !35
  %i.rt = add i64 %i.rs, %i.rq
  %i.ru = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rl, i64 1024
  %i.rw = call i64 %i.ru(ptr noundef nonnull %i.rv, i32 noundef 256) #10, !inline_history !35
  %i.rx = add i64 %i.rt, %i.rw
  %i.ry = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rl, i64 2048
  %i.sa = call i64 %i.ry(ptr noundef nonnull %i.rz, i32 noundef 256) #10, !inline_history !35
  %i.sb = add i64 %i.rx, %i.sa
  %i.sc = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rl, i64 3072
  %i.se = call i64 %i.sc(ptr noundef nonnull %i.sd, i32 noundef 256) #10, !inline_history !35
  %i.sf = add i64 %i.sb, %i.se                    ; 2 uses
  %i.sg = icmp slt i64 %i.sf, %.0139194.i
  br i1 %i.sg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.preheader.i
  %i.sh = add i32 %.2193.i, %2
  store i32 %i.sh, ptr %14, align 4, !tbaa !3
  %i.si = zext i32 %.2193.i to i64
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.si
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !19
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.preheader.i
  %.188 = phi ptr [ %i.sk, %bb.bp ], [ %.0, %.preheader.i ] ; 3 uses
  %.1.i = phi i64 [ %i.sf, %bb.bp ], [ %.0139194.i, %.preheader.i ]
  %i.sl = add i32 %.2193.i, 1                     ; 2 uses
  %.not.i = icmp ugt i32 %i.sl, %i.cq
  br i1 %.not.i, label %bb.br, label %.preheader.i, !llvm.loop !37

bb.br:                                            ; preds = %bb.bq
  call void @WebPSafeFree(ptr noundef nonnull %i.cw) #10
  %i.sm = load i32, ptr %14, align 4, !tbaa !3
  call void @VP8LOptimizeSampling(ptr noundef %.188, i32 noundef %0, i32 noundef %1, i32 noundef %i.sm, i32 noundef 9, ptr noundef nonnull %14)
  br label %GetBestPredictorsAndSubSampling.exit

GetBestPredictorsAndSubSampling.exit:             ; preds = %bb.bn, %bb.br
  %.2.ph = phi ptr [ null, %bb.bn ], [ %.188, %bb.br ]
  %.pr = load i32, ptr %14, align 4, !tbaa !3     ; 4 uses
  %i.sn = icmp eq i32 %.pr, 0
  br i1 %i.sn, label %GetBestPredictorsAndSubSampling.exit.thread, label %bb.bt

GetBestPredictorsAndSubSampling.exit.thread:      ; preds = %._crit_edge117, %GetBestPredictorsAndSubSampling.exit
  call void @WebPSafeFree(ptr noundef nonnull %i.bb) #10
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge112, %GetBestPredictorsAndSubSampling.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.by

bb.bt:                                            ; preds = %GetBestPredictorsAndSubSampling.exit
  %i.so = shl nuw i32 1, %.pr                     ; 2 uses
  %i.sp = add i32 %i.so, %i.ck
  %i.sq = lshr i32 %i.sp, %.pr
  %i.sr = add i32 %i.so, %i.cn
  %i.ss = lshr i32 %i.sr, %.pr
  %i.st = mul i32 %i.sq, %i.ss
  %i.su = zext i32 %i.st to i64
  %i.sv = shl nuw nsw i64 %i.su, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %.2.ph, i64 %i.sv, i1 false)
  call void @WebPSafeFree(ptr noundef nonnull %i.bb) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %.pre = load i32, ptr %14, align 4, !tbaa !3    ; 4 uses
  %.pre154 = shl nuw i32 1, %.pre                 ; 2 uses
  %.pre156 = add i32 %.pre154, %i.ck
  %.pre158 = lshr i32 %.pre156, %.pre
  %i.sw = sext i32 %0 to i64                      ; 8 uses
  %i.sx = getelementptr inbounds [4 x i8], ptr %6, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 4 ; 4 uses
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.sw
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4 ; 3 uses
  %i.tb = getelementptr inbounds i8, ptr %i.ta, i64 %i.sw ; 2 uses
  %i.tc = icmp sgt i32 %1, 0
  br i1 %i.tc, label %.lr.ph89.i, label %CopyImageWithPrediction.exit

.thread:                                          ; preds = %.lr.ph, %middle.block, %bb.b
  store i32 %3, ptr %14, align 4, !tbaa !3
  %i.td = icmp sgt i32 %1, 0
  br i1 %i.td, label %.lr.ph89.i.thread, label %CopyImageWithPrediction.exit

.lr.ph89.i.thread:                                ; preds = %.thread
  %i.te = sext i32 %0 to i64                      ; 2 uses
  %i.tf = zext nneg i32 %1 to i64                 ; 2 uses
  %i.tg = icmp ne i32 %1, 1
  %i.th = zext i1 %i.tg to i32
  %i.ti = add nsw i32 %0, %i.th
  %i.tj = sext i32 %i.ti to i64
  %i.tk = shl nsw i64 %i.tj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %5, i64 %i.tk, i1 false)
  %i.tl = load ptr, ptr @VP8LPredictorsSub, align 16, !tbaa !31
  tail call void %i.tl(ptr noundef %6, ptr noundef null, i32 noundef 1, ptr noundef %5) #10, !inline_history !38
  %i.tm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.tn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !31
  %i.to = getelementptr inbounds nuw i8, ptr %6, i64 4
  tail call void %i.tn(ptr noundef nonnull %i.to, ptr noundef null, i32 noundef %i.h, ptr noundef nonnull %i.tm) #10, !inline_history !38
  %exitcond.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not.i, label %CopyImageWithPrediction.exit, label %PredictBatch.exit.i.preheader

PredictBatch.exit.i.preheader:                    ; preds = %.lr.ph89.i.thread
  %i.tp = getelementptr inbounds [4 x i8], ptr %6, i64 %i.te
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  br label %PredictBatch.exit.i

.lr.ph89.i:                                       ; preds = %bb.bt
  %i.tr = icmp sgt i32 %.fr130, 1                 ; 2 uses
  %i.ts = zext nneg i32 %1 to i64                 ; 10 uses
  %i.tt = icmp sgt i32 %0, 0
  br i1 %i.tt, label %.lr.ph89.split.us.split.us.preheader.i, label %.lr.ph89.split.us.split.i

.lr.ph89.split.us.split.us.preheader.i:           ; preds = %.lr.ph89.i
  %i.tu = zext nneg i32 %0 to i64                 ; 2 uses
  br label %.lr.ph89.split.us.split.us.i

.lr.ph89.split.us.split.us.i:                     ; preds = %.PredictBatch.exit.loopexit_crit_edge.us.us.i, %.lr.ph89.split.us.split.us.preheader.i
  %indvars.iv113.i = phi i64 [ 0, %.lr.ph89.split.us.split.us.preheader.i ], [ %indvars.iv.next114.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 3 uses
  %.07288.us.us.i = phi ptr [ %6, %.lr.ph89.split.us.split.us.preheader.i ], [ %.07387.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 3 uses
  %.07387.us.us.i = phi ptr [ %i.sy, %.lr.ph89.split.us.split.us.preheader.i ], [ %.07288.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 2 uses
  %.07486.us.us.i = phi ptr [ %i.ta, %.lr.ph89.split.us.split.us.preheader.i ], [ %.1.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 4 uses
  %.07784.us.us.i = phi ptr [ %i.tb, %.lr.ph89.split.us.split.us.preheader.i ], [ %.178.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 3 uses
  %i.tv = mul nuw nsw i64 %indvars.iv113.i, %i.tu
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.tv ; 2 uses
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 4 uses
  %i.tx = icmp samesign ult i64 %indvars.iv.next114.i, %i.ts
  %i.ty = zext i1 %i.tx to i32
  %i.tz = add nuw nsw i32 %0, %i.ty
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = shl nuw nsw i64 %i.ua, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.07288.us.us.i, ptr align 4 %i.tw, i64 %i.ub, i1 false)
  %i.uc = trunc i64 %indvars.iv113.i to i32       ; 3 uses
  br i1 %i.tr, label %bb.bu, label %.lr.ph.us.us.i

bb.bu:                                            ; preds = %.lr.ph89.split.us.split.us.i
  %i.ud = add i32 %i.uc, 2
  %i.ue = icmp slt i32 %i.ud, %1
  br i1 %i.ue, label %bb.bv, label %.lr.ph.us.us.i

bb.bv:                                            ; preds = %bb.bu
  %i.uf = mul nuw nsw i64 %indvars.iv.next114.i, %i.tu
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.uf
  call fastcc void @MaxDiffsForRow(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.ug, ptr noundef %.07486.us.us.i, i32 noundef %10)
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph89.split.us.split.us.i, %bb.bv, %bb.bu
  %.178.us.us.i = phi ptr [ %.07486.us.us.i, %bb.bu ], [ %.07486.us.us.i, %bb.bv ], [ %.07784.us.us.i, %.lr.ph89.split.us.split.us.i ]
  %.1.us.us.i = phi ptr [ %.07784.us.us.i, %bb.bu ], [ %.07784.us.us.i, %bb.bv ], [ %.07486.us.us.i, %.lr.ph89.split.us.split.us.i ] ; 2 uses
  %i.uh = lshr i32 %i.uc, %.pre
  %i.ui = mul nsw i32 %i.uh, %.pre158
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.us.us.i
  %.07583.us.us.i = phi i32 [ 0, %.lr.ph.us.us.i ], [ %spec.select.us.us.i, %bb.bw ] ; 4 uses
  %i.uj = ashr i32 %.07583.us.us.i, %.pre
  %i.uk = add nsw i32 %i.uj, %i.ui
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ul
  %i.un = load i32, ptr %i.um, align 4, !tbaa !3
  %i.uo = lshr i32 %i.un, 8
  %i.up = and i32 %i.uo, 255
  %i.uq = add nsw i32 %.07583.us.us.i, %.pre154   ; 2 uses
  %spec.select.us.us.i = call i32 @llvm.smin.i32(i32 %i.uq, i32 %0) ; 2 uses
  %i.ur = sext i32 %.07583.us.us.i to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.ur
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.07387.us.us.i, ptr noundef %.07288.us.us.i, ptr noundef %.1.us.us.i, i32 noundef %i.up, i32 noundef %.07583.us.us.i, i32 noundef %spec.select.us.us.i, i32 noundef %i.uc, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef %i.us)
  %i.ut = icmp slt i32 %i.uq, %0
  br i1 %i.ut, label %bb.bw, label %.PredictBatch.exit.loopexit_crit_edge.us.us.i, !llvm.loop !39

.PredictBatch.exit.loopexit_crit_edge.us.us.i:    ; preds = %bb.bw
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next114.i, %i.ts
  br i1 %exitcond117.not.i, label %CopyImageWithPrediction.exit, label %.lr.ph89.split.us.split.us.i, !llvm.loop !40

.lr.ph89.split.us.split.i:                        ; preds = %.lr.ph89.i
  br i1 %i.tr, label %.lr.ph89.split.us.split.split.us.i, label %PredictBatch.exit.loopexit.us.i.preheader

PredictBatch.exit.loopexit.us.i.preheader:        ; preds = %.lr.ph89.split.us.split.i
  %xtraiter258 = and i64 %i.ts, 1
  %i.uu = icmp eq i32 %1, 1
  br i1 %i.uu, label %PredictBatch.exit.loopexit.us.i.epil.preheader, label %PredictBatch.exit.loopexit.us.i.preheader.new

PredictBatch.exit.loopexit.us.i.preheader.new:    ; preds = %PredictBatch.exit.loopexit.us.i.preheader
  %unroll_iter261 = and i64 %i.ts, 2147483646
  br label %PredictBatch.exit.loopexit.us.i

.lr.ph89.split.us.split.split.us.i:               ; preds = %.lr.ph89.split.us.split.i, %PredictBatch.exit.loopexit.us.us95.i
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %PredictBatch.exit.loopexit.us.us95.i ], [ 0, %.lr.ph89.split.us.split.i ] ; 3 uses
  %.07288.us.us90.i = phi ptr [ %.07387.us.us91.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %6, %.lr.ph89.split.us.split.i ] ; 2 uses
  %.07387.us.us91.i = phi ptr [ %.07288.us.us90.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %i.sy, %.lr.ph89.split.us.split.i ]
  %.07486.us.us92.i = phi ptr [ %.07784.us.us94.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %i.ta, %.lr.ph89.split.us.split.i ] ; 2 uses
  %.07784.us.us94.i = phi ptr [ %.07486.us.us92.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %i.tb, %.lr.ph89.split.us.split.i ]
  %i.uv = mul nsw i64 %indvars.iv108.i, %i.sw
  %i.uw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.uv
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 4 uses
  %i.ux = icmp samesign ult i64 %indvars.iv.next109.i, %i.ts
  %i.uy = zext i1 %i.ux to i32
  %i.uz = add nsw i32 %0, %i.uy
  %i.va = sext i32 %i.uz to i64
  %i.vb = shl nsw i64 %i.va, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.07288.us.us90.i, ptr align 4 %i.uw, i64 %i.vb, i1 false)
  %i.vc = add nuw nsw i64 %indvars.iv108.i, 2
  %i.vd = icmp samesign ult i64 %i.vc, %i.ts
  br i1 %i.vd, label %bb.bx, label %PredictBatch.exit.loopexit.us.us95.i

bb.bx:                                            ; preds = %.lr.ph89.split.us.split.split.us.i
  %i.ve = mul nsw i64 %indvars.iv.next109.i, %i.sw
  %i.vf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ve
  call fastcc void @MaxDiffsForRow(i32 noundef %0, i32 noundef %0, ptr noundef %i.vf, ptr noundef %.07486.us.us92.i, i32 noundef %10)
  br label %PredictBatch.exit.loopexit.us.us95.i

PredictBatch.exit.loopexit.us.us95.i:             ; preds = %bb.bx, %.lr.ph89.split.us.split.split.us.i
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %i.ts
  br i1 %exitcond112.not.i, label %CopyImageWithPrediction.exit, label %.lr.ph89.split.us.split.split.us.i, !llvm.loop !40

PredictBatch.exit.loopexit.us.i:                  ; preds = %PredictBatch.exit.loopexit.us.i, %PredictBatch.exit.loopexit.us.i.preheader.new
  %indvars.iv103.i = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader.new ], [ %indvars.iv.next104.i.1, %PredictBatch.exit.loopexit.us.i ] ; 3 uses
  %niter262 = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader.new ], [ %niter262.next.1, %PredictBatch.exit.loopexit.us.i ]
  %i.vg = mul nsw i64 %indvars.iv103.i, %i.sw
  %i.vh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vg
  %indvars.iv.next104.i = or disjoint i64 %indvars.iv103.i, 1 ; 2 uses
  %i.vi = icmp samesign ult i64 %indvars.iv.next104.i, %i.ts
  %i.vj = zext i1 %i.vi to i32
  %i.vk = add nsw i32 %0, %i.vj
  %i.vl = sext i32 %i.vk to i64
  %i.vm = shl nsw i64 %i.vl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %i.vh, i64 %i.vm, i1 false)
  %i.vn = mul nsw i64 %indvars.iv.next104.i, %i.sw
  %i.vo = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vn
  %indvars.iv.next104.i.1 = add nuw nsw i64 %indvars.iv103.i, 2 ; 3 uses
  %i.vp = icmp samesign ult i64 %indvars.iv.next104.i.1, %i.ts
  %i.vq = zext i1 %i.vp to i32
  %i.vr = add nsw i32 %0, %i.vq
  %i.vs = sext i32 %i.vr to i64
  %i.vt = shl nsw i64 %i.vs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sy, ptr align 4 %i.vo, i64 %i.vt, i1 false)
  %niter262.next.1 = add i64 %niter262, 2         ; 2 uses
  %niter262.ncmp.1 = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1, label %CopyImageWithPrediction.exit.loopexit241.unr-lcssa, label %PredictBatch.exit.loopexit.us.i, !llvm.loop !40

PredictBatch.exit.i:                              ; preds = %PredictBatch.exit.i.preheader, %PredictBatch.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %PredictBatch.exit.i ], [ 1, %PredictBatch.exit.i.preheader ] ; 2 uses
  %.07288.i = phi ptr [ %.07387.i, %PredictBatch.exit.i ], [ %i.tq, %PredictBatch.exit.i.preheader ] ; 4 uses
  %.07387.i = phi ptr [ %.07288.i, %PredictBatch.exit.i ], [ %6, %PredictBatch.exit.i.preheader ] ; 3 uses
  %i.vu = mul nsw i64 %indvars.iv.i, %i.te
  %i.vv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vu ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.vw = icmp samesign ult i64 %indvars.iv.next.i, %i.tf
  %i.vx = zext i1 %i.vw to i32
  %i.vy = add nsw i32 %0, %i.vx
  %i.vz = sext i32 %i.vy to i64
  %i.wa = shl nsw i64 %i.vz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.07288.i, ptr align 4 %i.vv, i64 %i.wa, i1 false)
  %i.wb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !31
  tail call void %i.wb(ptr noundef nonnull %.07288.i, ptr noundef nonnull %.07387.i, i32 noundef 1, ptr noundef %i.vv) #10, !inline_history !38
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.wd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 88), align 8, !tbaa !31
  %i.we = getelementptr inbounds nuw i8, ptr %.07288.i, i64 4
  %i.wf = getelementptr inbounds nuw i8, ptr %.07387.i, i64 4
  tail call void %i.wd(ptr noundef nonnull %i.we, ptr noundef nonnull %i.wf, i32 noundef %i.h, ptr noundef nonnull %i.wc) #10, !inline_history !38
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.tf
  br i1 %exitcond.not.i, label %CopyImageWithPrediction.exit, label %PredictBatch.exit.i, !llvm.loop !41

CopyImageWithPrediction.exit.loopexit241.unr-lcssa: ; preds = %PredictBatch.exit.loopexit.us.i
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod259.not, label %CopyImageWithPrediction.exit, label %PredictBatch.exit.loopexit.us.i.epil.preheader

PredictBatch.exit.loopexit.us.i.epil.preheader:   ; preds = %CopyImageWithPrediction.exit.loopexit241.unr-lcssa, %PredictBatch.exit.loopexit.us.i.preheader
  %indvars.iv103.i.epil.init = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader ], [ %indvars.iv.next104.i.1, %CopyImageWithPrediction.exit.loopexit241.unr-lcssa ] ; 2 uses
  %lcmp.mod260 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.wg = mul nsw i64 %indvars.iv103.i.epil.init, %i.sw
  %i.wh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.wg
  %indvars.iv.next104.i.epil = add nuw nsw i64 %indvars.iv103.i.epil.init, 1
  %i.wi = icmp samesign ult i64 %indvars.iv.next104.i.epil, %i.ts
  %i.wj = zext i1 %i.wi to i32
  %i.wk = add nsw i32 %0, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = shl nsw i64 %i.wl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %i.wh, i64 %i.wm, i1 false)
  br label %CopyImageWithPrediction.exit

CopyImageWithPrediction.exit:                     ; preds = %PredictBatch.exit.i, %PredictBatch.exit.loopexit.us.i.epil.preheader, %CopyImageWithPrediction.exit.loopexit241.unr-lcssa, %PredictBatch.exit.loopexit.us.us95.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i, %.thread, %bb.bt, %.lr.ph89.i.thread
  %i.wn = add nsw i32 %i.d, %12
  %i.wo = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %i.wn, ptr noundef nonnull %13) #10
  br label %bb.by

bb.by:                                            ; preds = %bb.bs, %CopyImageWithPrediction.exit
  %.1 = phi i32 [ %i.wo, %CopyImageWithPrediction.exit ], [ 0, %bb.bs ]
  ret i32 %.1
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LColorSpaceTransform(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef captures(none) %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef writeonly captures(none) %9) local_unnamed_addr #2 {
bb.a:
  %10 = alloca %struct.VP8LMultipliers, align 4   ; 4 uses
  %i.a = alloca [256 x i32], align 16             ; 6 uses
  %i.b = alloca [256 x i32], align 16             ; 6 uses
  %i.c = shl nuw i32 1, %2                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = add i32 %i.d, %0
  %i.f = lshr i32 %i.e, %2                        ; 3 uses
  %i.g = add i32 %i.d, %1
  %i.h = lshr i32 %i.g, %2                        ; 5 uses
  %i.i = load i32, ptr %8, align 4, !tbaa !3      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge193

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = icmp sgt i32 %i.f, 0
  %i.l = sext i32 %0 to i64                       ; 2 uses
  br i1 %i.k, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.m = add nsw i32 %0, 2
  %i.n = sext i32 %i.m to i64
  %i.o = zext nneg i32 %i.f to i64                ; 2 uses
  %wide.trip.count208 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.n
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %bb.n ] ; 5 uses
  %.sroa.0.0191.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.0.2.us, %bb.n ]
  %.sroa.6.0190.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.6.2.us, %bb.n ]
  %.sroa.8.0189.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.8.2.us, %bb.n ]
  %.sroa.0126.0188.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sink227.off0, %bb.n ]
  %.sroa.8133.sroa.0.0187.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.8133.sroa.0.0.extract.trunc.us, %bb.n ]
  %.sroa.8133.sroa.8.0186.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.8133.sroa.8.0.extract.trunc.us, %bb.n ]
  %i.p = trunc nuw nsw i64 %indvars.iv206 to i32  ; 2 uses
  %i.q = shl i32 %i.p, %2                         ; 5 uses
  %i.r = add nsw i32 %i.q, %i.c
  %i.s = call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %1) ; 2 uses
  %i.t = mul nuw nsw i64 %indvars.iv206, %i.o
  %.not113.us = icmp eq i64 %indvars.iv206, 0
  %i.u = sub nsw i32 %1, %i.q
  %i.v = call i32 @llvm.smin.i32(i32 %i.c, i32 %i.u) ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = mul i32 %i.q, %0                         ; 3 uses
  %i.y = icmp slt i32 %i.q, %i.s
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %._crit_edge171.us
  %indvars.iv203 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next204, %._crit_edge171.us ] ; 3 uses
  %.sroa.0.1177.us = phi i8 [ %.sroa.0.0191.us, %.preheader.us ], [ %.sroa.0.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.6.1176.us = phi i8 [ %.sroa.6.0190.us, %.preheader.us ], [ %.sroa.6.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.8.1175.us = phi i8 [ %.sroa.8.0189.us, %.preheader.us ], [ %.sroa.8.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.0126.1174.us = phi i8 [ %.sroa.0126.0188.us, %.preheader.us ], [ %.sink227.off0, %._crit_edge171.us ] ; 2 uses
  %.sroa.8133.sroa.0.1173.us = phi i8 [ %.sroa.8133.sroa.0.0187.us, %.preheader.us ], [ %.sroa.8133.sroa.0.0.extract.trunc.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.8133.sroa.8.1172.us = phi i8 [ %.sroa.8133.sroa.8.0186.us, %.preheader.us ], [ %.sroa.8133.sroa.8.0.extract.trunc.us, %._crit_edge171.us ] ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv203 to i32  ; 3 uses
  %i.aa = shl i32 %i.z, %2                        ; 5 uses
  %i.ab = add nsw i32 %i.aa, %i.c
  %i.ac = call noundef i32 @llvm.smin.i32(i32 %i.ab, i32 %0) ; 2 uses
  %i.ad = add nuw nsw i64 %indvars.iv203, %i.t    ; 2 uses
  br i1 %.not113.us, label %.split.us, label %.split107.us

.split107.us:                                     ; preds = %bb.b
  %i.ae = sub nsw i64 %i.ad, %i.o
  %i.af = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 4 uses
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = lshr i32 %i.ag, 8                       ; 2 uses
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = lshr i32 %i.ag, 16                      ; 2 uses
  %i.al = trunc i32 %i.ak to i8
  %.sroa.8133.sroa.8.0.insert.ext155.us = zext i8 %.sroa.8133.sroa.8.1172.us to i16
  %.sroa.8133.sroa.8.0.insert.shift156.us = shl nuw i16 %.sroa.8133.sroa.8.0.insert.ext155.us, 8
  %.sroa.8133.sroa.0.0.insert.ext145.us = zext i8 %.sroa.8133.sroa.0.1173.us to i16
  %.sroa.8133.sroa.0.0.insert.insert147.us = or disjoint i16 %.sroa.8133.sroa.8.0.insert.shift156.us, %.sroa.8133.sroa.0.0.insert.ext145.us
  %.sroa.8133.0.insert.ext138.us = zext i16 %.sroa.8133.sroa.0.0.insert.insert147.us to i24
  %.sroa.8133.0.insert.shift139.us = shl nuw i24 %.sroa.8133.0.insert.ext138.us, 8
  %.sroa.0126.0.insert.ext130.us = zext i8 %.sroa.0126.1174.us to i24
  %.sroa.0126.0.insert.insert132.us = or disjoint i24 %.sroa.8133.0.insert.shift139.us, %.sroa.0126.0.insert.ext130.us
  %i.am = trunc nuw nsw i32 %i.ak to i24
  %.sroa.8.0.insert.ext122.us = shl i24 %i.am, 16
  %i.an = trunc nuw i32 %i.ai to i24
  %.sroa.6.0.insert.ext118.us = shl i24 %i.an, 8
  %.sroa.6.0.insert.shift119.us = and i24 %.sroa.6.0.insert.ext118.us, 65280
  %.sroa.6.0.insert.insert121.us = or disjoint i24 %.sroa.6.0.insert.shift119.us, %.sroa.8.0.insert.ext122.us
  %i.ao = trunc i32 %i.ag to i24
  %.sroa.0.0.insert.ext115.us = and i24 %i.ao, 255
  %.sroa.0.0.insert.insert117.us = or disjoint i24 %.sroa.6.0.insert.insert121.us, %.sroa.0.0.insert.ext115.us
  %i.ap = call fastcc i24 @GetBestColorTransformForTile(i32 noundef %i.z, i32 noundef %i.p, i32 noundef %2, i24 %.sroa.0126.0.insert.insert132.us, i24 %.sroa.0.0.insert.insert117.us, i32 noundef %3, i32 noundef %0, i32 noundef %1, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4) ; 2 uses
  %extract.t229 = trunc i24 %i.ap to i8
  %extract232 = lshr i24 %i.ap, 8
  %extract.t233 = trunc nuw i24 %extract232 to i16
  br label %bb.c

.split.us:                                        ; preds = %bb.b
  %.sroa.8133.sroa.8.0.insert.ext151.us = zext i8 %.sroa.8133.sroa.8.1172.us to i16
  %.sroa.8133.sroa.8.0.insert.shift152.us = shl nuw i16 %.sroa.8133.sroa.8.0.insert.ext151.us, 8
  %.sroa.8133.sroa.0.0.insert.ext142.us = zext i8 %.sroa.8133.sroa.0.1173.us to i16
  %.sroa.8133.sroa.0.0.insert.insert144.us = or disjoint i16 %.sroa.8133.sroa.8.0.insert.shift152.us, %.sroa.8133.sroa.0.0.insert.ext142.us
  %.sroa.8133.0.insert.ext134.us = zext i16 %.sroa.8133.sroa.0.0.insert.insert144.us to i24
  %.sroa.8133.0.insert.shift135.us = shl nuw i24 %.sroa.8133.0.insert.ext134.us, 8
  %.sroa.0126.0.insert.ext127.us = zext i8 %.sroa.0126.1174.us to i24
  %.sroa.0126.0.insert.insert129.us = or disjoint i24 %.sroa.8133.0.insert.shift135.us, %.sroa.0126.0.insert.ext127.us
  %.sroa.8.0.insert.ext.us = zext i8 %.sroa.8.1175.us to i24
  %.sroa.8.0.insert.shift.us = shl nuw i24 %.sroa.8.0.insert.ext.us, 16
  %.sroa.6.0.insert.ext.us = zext i8 %.sroa.6.1176.us to i24
  %.sroa.6.0.insert.shift.us = shl nuw nsw i24 %.sroa.6.0.insert.ext.us, 8
  %.sroa.6.0.insert.insert.us = or disjoint i24 %.sroa.6.0.insert.shift.us, %.sroa.8.0.insert.shift.us
  %.sroa.0.0.insert.ext.us = zext i8 %.sroa.0.1177.us to i24
  %.sroa.0.0.insert.insert.us = or disjoint i24 %.sroa.6.0.insert.insert.us, %.sroa.0.0.insert.ext.us
  %i.aq = call fastcc i24 @GetBestColorTransformForTile(i32 noundef %i.z, i32 noundef 0, i32 noundef %2, i24 %.sroa.0126.0.insert.insert129.us, i24 %.sroa.0.0.insert.insert.us, i32 noundef %3, i32 noundef %0, i32 noundef %1, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4) ; 2 uses
  %extract.t228 = trunc i24 %i.aq to i8
  %extract230 = lshr i24 %i.aq, 8
  %extract.t231 = trunc nuw i24 %extract230 to i16
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %.split107.us
  %.sink227.off0 = phi i8 [ %extract.t228, %.split.us ], [ %extract.t229, %.split107.us ] ; 4 uses
  %.sink227.off8 = phi i16 [ %extract.t231, %.split.us ], [ %extract.t233, %.split107.us ] ; 4 uses
  %.sroa.8.2.us = phi i8 [ %.sroa.8.1175.us, %.split.us ], [ %i.al, %.split107.us ] ; 2 uses
  %.sroa.6.2.us = phi i8 [ %.sroa.6.1176.us, %.split.us ], [ %i.aj, %.split107.us ] ; 2 uses
  %.sroa.0.2.us = phi i8 [ %.sroa.0.1177.us, %.split.us ], [ %i.ah, %.split107.us ] ; 2 uses
  %.sroa.8133.sroa.0.0.extract.trunc.us = trunc i16 %.sink227.off8 to i8 ; 2 uses
  %.sroa.8133.sroa.8.0.extract.shift.us = lshr i16 %.sink227.off8, 8
  %.sroa.8133.sroa.8.0.extract.trunc.us = trunc nuw i16 %.sroa.8133.sroa.8.0.extract.shift.us to i8 ; 2 uses
  %i.ar = zext i16 %.sink227.off8 to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = zext i8 %.sink227.off0 to i32
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = or disjoint i32 %i.au, -16777216
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ad
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %.sroa.8133.0.insert.ext.us = zext i16 %.sink227.off8 to i24
  %.sroa.8133.0.insert.shift.us = shl nuw i24 %.sroa.8133.0.insert.ext.us, 8
  %.sroa.0126.0.insert.ext.us = zext i8 %.sink227.off0 to i24
  %.sroa.0126.0.insert.insert.us = or disjoint i24 %.sroa.8133.0.insert.shift.us, %.sroa.0126.0.insert.ext.us
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i24 %.sroa.0126.0.insert.insert.us, ptr %10, align 4
  %i.ax = sub nsw i32 %0, %i.aa
  %i.ay = call noundef i32 @llvm.smin.i32(i32 %i.c, i32 %i.ax)
  br i1 %i.w, label %.lr.ph.i.us, label %CopyTileWithColorTransform.exit.us

.lr.ph.i.us:                                      ; preds = %bb.c
  %i.az = add nsw i32 %i.aa, %i.x
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ba
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.us
  %.016.i.us = phi i32 [ %i.v, %.lr.ph.i.us ], [ %i.bc, %bb.d ] ; 2 uses
  %.01415.i.us = phi ptr [ %i.bb, %.lr.ph.i.us ], [ %i.be, %bb.d ] ; 2 uses
  %i.bc = add nsw i32 %.016.i.us, -1
  %i.bd = load ptr, ptr @VP8LTransformColor, align 8, !tbaa !31
  call void %i.bd(ptr noundef nonnull %10, ptr noundef %.01415.i.us, i32 noundef %i.ay) #10, !inline_history !43
  %i.be = getelementptr inbounds [4 x i8], ptr %.01415.i.us, i64 %i.l
  %i.bf = icmp samesign ugt i32 %.016.i.us, 1
  br i1 %i.bf, label %bb.d, label %CopyTileWithColorTransform.exit.us, !llvm.loop !44

CopyTileWithColorTransform.exit.us:               ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %i.y, label %.lr.ph170.us, label %._crit_edge171.us

._crit_edge171.us:                                ; preds = %._crit_edge.us, %CopyTileWithColorTransform.exit.us
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count
  br i1 %exitcond205.not, label %._crit_edge180.us, label %bb.b, !llvm.loop !45

bb.e:                                             ; preds = %.lr.ph170.us, %._crit_edge.us
  %indvars.iv199 = phi i32 [ %i.cv, %.lr.ph170.us ], [ %indvars.iv.next200, %._crit_edge.us ] ; 2 uses
  %indvars.iv = phi i32 [ %i.cu, %.lr.ph170.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.0103169.us = phi i32 [ %i.q, %.lr.ph170.us ], [ %i.bl, %._crit_edge.us ] ; 2 uses
  %i.bg = mul nsw i32 %.0103169.us, %0            ; 2 uses
  %i.bh = add nsw i32 %i.bg, %i.aa
  %i.bi = add i32 %i.bg, %i.ac
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.e
  %i.bk = sext i32 %indvars.iv to i64
  br label %.lr.ph.us

._crit_edge.us:                                   ; preds = %bb.m, %bb.e
  %i.bl = add nsw i32 %.0103169.us, 1             ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %0
  %indvars.iv.next200 = add i32 %indvars.iv199, %0
  %exitcond202.not = icmp eq i32 %i.bl, %i.s
  br i1 %exitcond202.not, label %._crit_edge171.us, label %bb.e, !llvm.loop !46

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.m
  %indvars.iv196 = phi i64 [ %i.bk, %.lr.ph.us.preheader ], [ %indvars.iv.next197, %bb.m ] ; 5 uses
  %i.bm = getelementptr [4 x i8], ptr %4, i64 %indvars.iv196 ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 5 uses
  %i.bo = icmp sgt i64 %indvars.iv196, 1
  br i1 %i.bo, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.us
  %i.bp = getelementptr i8, ptr %i.bm, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = icmp eq i32 %i.bn, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr i8, ptr %i.bm, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = icmp eq i32 %i.bn, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.us
  %.not114.us = icmp slt i64 %indvars.iv196, %i.n
  br i1 %.not114.us, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr i8, ptr %i.bm, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = sub nsw i64 %indvars.iv196, %i.l
  %i.by = getelementptr [4 x i8], ptr %4, i64 %i.bx ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = icmp eq i32 %i.bw, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr i8, ptr %i.bm, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = getelementptr i8, ptr %i.by, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ci = icmp eq i32 %i.bn, %i.ch
  br i1 %i.ci, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.cj = lshr i32 %i.bn, 16
  %i.ck = and i32 %i.cj, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !3
  %i.cp = and i32 %i.bn, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next197 to i32
  %exitcond201.not = icmp eq i32 %indvars.iv199, %lftr.wideiv
  br i1 %exitcond201.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !47

bb.n:                                             ; preds = %._crit_edge180.us
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count208
  br i1 %exitcond209.not, label %._crit_edge193, label %.preheader.us, !llvm.loop !48

.lr.ph170.us:                                     ; preds = %CopyTileWithColorTransform.exit.us
  %i.cu = add i32 %i.x, %i.aa
  %i.cv = add i32 %i.x, %i.ac
  br label %bb.e

._crit_edge180.us:                                ; preds = %._crit_edge171.us
  %i.cw = trunc i64 %indvars.iv206 to i32
  %i.cx = mul i32 %7, %i.cw
  %i.cy = sdiv i32 %i.cx, %i.h
  %i.cz = add nsw i32 %i.cy, %i.i
  %i.da = call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.cz, ptr noundef nonnull %8) #10
  %.not.us = icmp eq i32 %i.da, 0
  br i1 %.not.us, label %.loopexit, label %bb.n

bb.o:                                             ; preds = %.preheader
  %i.db = add nuw nsw i32 %.0102192, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.db, %i.h
  br i1 %exitcond.not, label %._crit_edge193, label %.preheader, !llvm.loop !48

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %.0102192 = phi i32 [ %i.db, %bb.o ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.dc = mul nsw i32 %.0102192, %7
  %i.dd = sdiv i32 %i.dc, %i.h
  %i.de = add nsw i32 %i.dd, %i.i
  %i.df = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.de, ptr noundef nonnull %8) #10
  %.not = icmp eq i32 %i.df, 0
  br i1 %.not, label %.loopexit, label %bb.o

._crit_edge193:                                   ; preds = %bb.o, %bb.n, %bb.a
  call void @VP8LOptimizeSampling(ptr noundef %5, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 9, ptr noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge180.us, %._crit_edge193
  %.0 = phi i32 [ 1, %._crit_edge193 ], [ 0, %._crit_edge180.us ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i24 @GetBestColorTransformForTile(i32 noundef %0, i32 noundef %1, i32 noundef %2, i24 %3, i24 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %10) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 8 uses
  %i.b = alloca [256 x i32], align 16             ; 8 uses
  %i.c = alloca [256 x i32], align 16             ; 8 uses
  %i.d = alloca [256 x i32], align 16             ; 8 uses
  %i.e = shl nuw i32 1, %2                        ; 2 uses
  %i.f = shl i32 %1, %2                           ; 3 uses
  %i.g = shl i32 %0, %2                           ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e
  %i.i = tail call noundef i32 @llvm.smin.i32(i32 %i.h, i32 %6)
  %i.j = add nsw i32 %i.f, %i.e
  %i.k = tail call noundef i32 @llvm.smin.i32(i32 %i.j, i32 %7)
  %i.l = sub nsw i32 %i.i, %i.g                   ; 4 uses
  %i.m = sub nsw i32 %i.k, %i.f                   ; 4 uses
  %i.n = mul nsw i32 %6, %i.f
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %10, i64 %i.o
  %i.q = sext i32 %i.g to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false)
  %i.s = load ptr, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !31
  call void %i.s(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 0, ptr noundef nonnull %i.d) #10, !inline_history !49
  %i.t = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.u = call i64 %i.t(ptr noundef nonnull %i.d, ptr noundef nonnull %8) #10, !inline_history !50
  %i.v = load i32, ptr %i.d, align 16, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 25165824
  br label %bb.b

bb.b:                                             ; preds = %DivRound.exit16.i.i.i.i, %bb.a
  %indvars.iv.i.i.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i.i.i, %DivRound.exit16.i.i.i.i ] ; 3 uses
  %.01221.i.i.i.i = phi i64 [ %i.x, %bb.a ], [ %i.al, %DivRound.exit16.i.i.i.i ]
  %.01320.i.i.i.i = phi i64 [ 2013265920, %bb.a ], [ %i.ar, %DivRound.exit16.i.i.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = sub nuw nsw i64 256, %indvars.iv.i.i.i.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %i.z
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul i64 %.01320.i.i.i.i, %i.ae          ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = add nuw nsw i64 %i.af, 50
  %i.ai = udiv i64 %i.ah, 100
  br label %DivRound.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %.neg8.i.i.i.i.i = sub i64 50, %i.af
  %i.aj = udiv i64 %.neg8.i.i.i.i.i, 100
  %.neg.i.i.i.i.i = sub nsw i64 0, %i.aj
  br label %DivRound.exit.i.i.i.i

DivRound.exit.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ak = phi i64 [ %i.ai, %bb.c ], [ %.neg.i.i.i.i.i, %bb.d ]
  %i.al = add i64 %i.ak, %.01221.i.i.i.i          ; 4 uses
  %i.am = mul i64 %.01320.i.i.i.i, 6              ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %DivRound.exit.i.i.i.i
  %i.ao = add nuw nsw i64 %i.am, 4
  %i.ap = udiv i64 %i.ao, 10
  br label %DivRound.exit16.i.i.i.i

bb.f:                                             ; preds = %DivRound.exit.i.i.i.i
  %.neg8.i14.i.i.i.i = sub i64 4, %i.am
  %i.aq = udiv i64 %.neg8.i14.i.i.i.i, 10
  %.neg.i15.i.i.i.i = sub nsw i64 0, %i.aq
  br label %DivRound.exit16.i.i.i.i

DivRound.exit16.i.i.i.i:                          ; preds = %bb.f, %bb.e
  %i.ar = phi i64 [ %i.ap, %bb.e ], [ %.neg.i15.i.i.i.i, %bb.f ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 16
  br i1 %exitcond.not.i.i.i.i, label %bb.g, label %bb.b, !llvm.loop !30

bb.g:                                             ; preds = %DivRound.exit16.i.i.i.i
  %i.as = mul nsw i32 %5, 7
  %i.at = ashr i32 %i.as, 8                       ; 2 uses
  %i.au = icmp sgt i64 %i.al, -1
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = add nuw nsw i64 %i.al, 5
  %i.aw = udiv i64 %i.av, 10
  br label %GetPredictionCostCrossColorRed.exit.i

bb.i:                                             ; preds = %bb.g
  %.neg8.i17.i.i.i.i = sub i64 5, %i.al
  %i.ax = udiv i64 %.neg8.i17.i.i.i.i, 10
  %.neg.i18.i.i.i.i = sub nsw i64 0, %i.ax
  br label %GetPredictionCostCrossColorRed.exit.i

GetPredictionCostCrossColorRed.exit.i:            ; preds = %bb.i, %bb.h
  %i.ay = phi i64 [ %i.aw, %bb.h ], [ %.neg.i18.i.i.i.i, %bb.i ]
  %i.az = and i24 %3, 255                         ; 2 uses
  %i.ba = zext nneg i24 %i.az to i32
  %i.bb = and i24 %4, 255                         ; 2 uses
  %i.bc = zext nneg i24 %i.bb to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %i.bd = icmp sgt i32 %i.at, -4
  br i1 %i.bd, label %.lr.ph72.preheader.i, label %GetBestGreenToRed.exit

.lr.ph72.preheader.i:                             ; preds = %GetPredictionCostCrossColorRed.exit.i
  %i.be = icmp eq i24 %i.az, 0
  %i.bf = sub nsw i64 %i.u, %i.ay                 ; 2 uses
  %i.bg = add nsw i64 %i.bf, -25165824
  %spec.select.i.i = select i1 %i.be, i64 %i.bg, i64 %i.bf
  %i.bh = icmp eq i24 %i.bb, 0
  %i.bi = select i1 %i.bh, i64 -50331648, i64 -25165824
  %i.bj = add i64 %spec.select.i.i, %i.bi
  %i.bk = add nsw i32 %i.at, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph72.preheader.i
  %.071.i = phi i32 [ %spec.select46.i, %._crit_edge.i ], [ 0, %.lr.ph72.preheader.i ]
  %.03970.i = phi i32 [ %i.de, %._crit_edge.i ], [ 0, %.lr.ph72.preheader.i ] ; 3 uses
  %.04169.i = phi i64 [ %spec.select.i, %._crit_edge.i ], [ %i.bj, %.lr.ph72.preheader.i ]
  %i.bl = lshr i32 32, %.03970.i                  ; 3 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = shl nuw nsw i32 %i.bl, 1
  br label %bb.j

bb.j:                                             ; preds = %GetPredictionCostCrossColorRed.exit62.i, %.lr.ph.i
  %.167.i = phi i32 [ %.071.i, %.lr.ph.i ], [ %spec.select46.i, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %.04066.i = phi i32 [ %i.bm, %.lr.ph.i ], [ %i.dd, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %.14265.i = phi i64 [ %.04169.i, %.lr.ph.i ], [ %spec.select.i, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %i.bo = add nsw i32 %.04066.i, %.167.i          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.bp = load ptr, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !31
  call void %i.bp(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.bo, ptr noundef nonnull %i.c) #10, !inline_history !49
  %i.bq = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.br = call i64 %i.bq(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #10, !inline_history !50
  %i.bs = load i32, ptr %i.c, align 16, !tbaa !3
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 25165824
  br label %bb.k

bb.k:                                             ; preds = %DivRound.exit16.i.i.i55.i, %bb.j
  %indvars.iv.i.i.i47.i = phi i64 [ 1, %bb.j ], [ %indvars.iv.next.i.i.i56.i, %DivRound.exit16.i.i.i55.i ] ; 3 uses
  %.01221.i.i.i48.i = phi i64 [ %i.bu, %bb.j ], [ %i.ci, %DivRound.exit16.i.i.i55.i ]
  %.01320.i.i.i49.i = phi i64 [ 2013265920, %bb.j ], [ %i.co, %DivRound.exit16.i.i.i55.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.i47.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = sub nuw nsw i64 256, %indvars.iv.i.i.i47.i
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = add i32 %i.bz, %i.bw
  %i.cb = zext i32 %i.ca to i64
  %i.cc = mul i64 %.01320.i.i.i49.i, %i.cb        ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = add nuw nsw i64 %i.cc, 50
  %i.cf = udiv i64 %i.ce, 100
  br label %DivRound.exit.i.i.i52.i

bb.m:                                             ; preds = %bb.k
  %.neg8.i.i.i.i50.i = sub i64 50, %i.cc
  %i.cg = udiv i64 %.neg8.i.i.i.i50.i, 100
  %.neg.i.i.i.i51.i = sub nsw i64 0, %i.cg
  br label %DivRound.exit.i.i.i52.i

DivRound.exit.i.i.i52.i:                          ; preds = %bb.m, %bb.l
  %i.ch = phi i64 [ %i.cf, %bb.l ], [ %.neg.i.i.i.i51.i, %bb.m ]
  %i.ci = add i64 %i.ch, %.01221.i.i.i48.i        ; 4 uses
  %i.cj = mul i64 %.01320.i.i.i49.i, 6            ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %DivRound.exit.i.i.i52.i
  %i.cl = add nuw nsw i64 %i.cj, 4
  %i.cm = udiv i64 %i.cl, 10
  br label %DivRound.exit16.i.i.i55.i

bb.o:                                             ; preds = %DivRound.exit.i.i.i52.i
  %.neg8.i14.i.i.i53.i = sub i64 4, %i.cj
  %i.cn = udiv i64 %.neg8.i14.i.i.i53.i, 10
  %.neg.i15.i.i.i54.i = sub nsw i64 0, %i.cn
  br label %DivRound.exit16.i.i.i55.i

DivRound.exit16.i.i.i55.i:                        ; preds = %bb.o, %bb.n
  %i.co = phi i64 [ %i.cm, %bb.n ], [ %.neg.i15.i.i.i54.i, %bb.o ]
  %indvars.iv.next.i.i.i56.i = add nuw nsw i64 %indvars.iv.i.i.i47.i, 1 ; 2 uses
  %exitcond.not.i.i.i57.i = icmp eq i64 %indvars.iv.next.i.i.i56.i, 16
  br i1 %exitcond.not.i.i.i57.i, label %bb.p, label %bb.k, !llvm.loop !30

bb.p:                                             ; preds = %DivRound.exit16.i.i.i55.i
  %i.cp = icmp sgt i64 %i.ci, -1
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = add nuw nsw i64 %i.ci, 5
  %i.cr = udiv i64 %i.cq, 10
  br label %GetPredictionCostCrossColorRed.exit62.i

bb.r:                                             ; preds = %bb.p
  %.neg8.i17.i.i.i58.i = sub i64 5, %i.ci
  %i.cs = udiv i64 %.neg8.i17.i.i.i58.i, 10
  %.neg.i18.i.i.i59.i = sub nsw i64 0, %i.cs
  br label %GetPredictionCostCrossColorRed.exit62.i

GetPredictionCostCrossColorRed.exit62.i:          ; preds = %bb.r, %bb.q
  %i.ct = phi i64 [ %i.cr, %bb.q ], [ %.neg.i18.i.i.i59.i, %bb.r ]
  %i.cu = sub nsw i64 %i.br, %i.ct                ; 2 uses
  %i.cv = and i32 %i.bo, 255                      ; 2 uses
  %i.cw = icmp eq i32 %i.cv, %i.ba
  %i.cx = add nsw i64 %i.cu, -25165824
  %spec.select.i60.i = select i1 %i.cw, i64 %i.cx, i64 %i.cu ; 2 uses
  %i.cy = icmp eq i32 %i.cv, %i.bc
  %i.cz = add nsw i64 %spec.select.i60.i, -25165824
  %.1.i61.i = select i1 %i.cy, i64 %i.cz, i64 %spec.select.i60.i ; 2 uses
  %i.da = icmp eq i32 %i.bo, 0
  %i.db = add nsw i64 %.1.i61.i, -25165824
  %.2.i.i = select i1 %i.da, i64 %i.db, i64 %.1.i61.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.dc = icmp slt i64 %.2.i.i, %.14265.i
  %spec.select.i = call i64 @llvm.smin.i64(i64 %.2.i.i, i64 %.14265.i) ; 2 uses
  %spec.select46.i = select i1 %i.dc, i32 %i.bo, i32 %.167.i ; 3 uses
  %i.dd = add nsw i32 %.04066.i, %i.bn            ; 2 uses
  %.not.i = icmp sgt i32 %i.dd, %i.bl
  br i1 %.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !51

._crit_edge.i:                                    ; preds = %GetPredictionCostCrossColorRed.exit62.i
  %i.de = add nuw nsw i32 %.03970.i, 1
  %exitcond.not.i = icmp eq i32 %.03970.i, %i.bk
  br i1 %exitcond.not.i, label %._crit_edge73.loopexit.i, label %.lr.ph.i, !llvm.loop !52

._crit_edge73.loopexit.i:                         ; preds = %._crit_edge.i
  %i.df = trunc i32 %spec.select46.i to i8
  br label %GetBestGreenToRed.exit

GetBestGreenToRed.exit:                           ; preds = %GetPredictionCostCrossColorRed.exit.i, %._crit_edge73.loopexit.i
  %.0.lcssa.i = phi i8 [ 0, %GetPredictionCostCrossColorRed.exit.i ], [ %i.df, %._crit_edge73.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.dg = load ptr, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !31
  call void %i.dg(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10, !inline_history !53
  %i.dh = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.di = call i64 %i.dh(ptr noundef nonnull %i.a, ptr noundef nonnull %9) #10, !inline_history !54
  %i.dj = load i32, ptr %i.a, align 16, !tbaa !3
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.dk, 25165824
  br label %bb.s

bb.s:                                             ; preds = %DivRound.exit16.i.i.i, %GetBestGreenToRed.exit
  %indvars.iv.i.i.i = phi i64 [ 1, %GetBestGreenToRed.exit ], [ %indvars.iv.next.i.i.i, %DivRound.exit16.i.i.i ] ; 3 uses
  %.01221.i.i.i = phi i64 [ %i.dl, %GetBestGreenToRed.exit ], [ %i.dz, %DivRound.exit16.i.i.i ]
  %.01320.i.i.i = phi i64 [ 2013265920, %GetBestGreenToRed.exit ], [ %i.ef, %DivRound.exit16.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = sub nuw nsw i64 256, %indvars.iv.i.i.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = add i32 %i.dq, %i.dn
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul i64 %.01320.i.i.i, %i.ds            ; 3 uses
  %i.du = icmp sgt i64 %i.dt, -1
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dv = add nuw nsw i64 %i.dt, 50
  %i.dw = udiv i64 %i.dv, 100
  br label %DivRound.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %.neg8.i.i.i.i = sub i64 50, %i.dt
  %i.dx = udiv i64 %.neg8.i.i.i.i, 100
  %.neg.i.i.i.i = sub nsw i64 0, %i.dx
  br label %DivRound.exit.i.i.i

DivRound.exit.i.i.i:                              ; preds = %bb.u, %bb.t
  %i.dy = phi i64 [ %i.dw, %bb.t ], [ %.neg.i.i.i.i, %bb.u ]
  %i.dz = add i64 %i.dy, %.01221.i.i.i            ; 4 uses
  %i.ea = mul i64 %.01320.i.i.i, 6                ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %DivRound.exit.i.i.i
  %i.ec = add nuw nsw i64 %i.ea, 4
  %i.ed = udiv i64 %i.ec, 10
  br label %DivRound.exit16.i.i.i

bb.w:                                             ; preds = %DivRound.exit.i.i.i
  %.neg8.i14.i.i.i = sub i64 4, %i.ea
  %i.ee = udiv i64 %.neg8.i14.i.i.i, 10
  %.neg.i15.i.i.i = sub nsw i64 0, %i.ee
  br label %DivRound.exit16.i.i.i

DivRound.exit16.i.i.i:                            ; preds = %bb.w, %bb.v
  %i.ef = phi i64 [ %i.ed, %bb.v ], [ %.neg.i15.i.i.i, %bb.w ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %bb.x, label %bb.s, !llvm.loop !30

bb.x:                                             ; preds = %DivRound.exit16.i.i.i
  %i.eg = icmp sgt i32 %5, 24                     ; 2 uses
  %i.eh = icmp samesign ugt i32 %5, 50
  %i.ei = select i1 %i.eh, i64 7, i64 4
  %i.ej = icmp sgt i64 %i.dz, -1
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = add nuw nsw i64 %i.dz, 5
  %i.el = udiv i64 %i.ek, 10
  br label %GetPredictionCostCrossColorBlue.exit

bb.z:                                             ; preds = %bb.x
  %.neg8.i17.i.i.i = sub i64 5, %i.dz
  %i.em = udiv i64 %.neg8.i17.i.i.i, 10
  %.neg.i18.i.i.i = sub nsw i64 0, %i.em
  br label %GetPredictionCostCrossColorBlue.exit

GetPredictionCostCrossColorBlue.exit:             ; preds = %bb.y, %bb.z
  %i.en = phi i64 [ %i.el, %bb.y ], [ %.neg.i18.i.i.i, %bb.z ]
  %.sroa.2.0.extract.shift.i = lshr i24 %4, 16    ; 2 uses
  %.sroa.2.0.extract.trunc.i = zext nneg i24 %.sroa.2.0.extract.shift.i to i32
  %.sroa.1.0.extract.shift.i = lshr i24 %4, 8
  %.sroa.221.0.extract.shift.i = lshr i24 %3, 16  ; 2 uses
  %.sroa.221.0.extract.trunc.i = zext nneg i24 %.sroa.221.0.extract.shift.i to i32
  %.sroa.120.0.extract.shift.i = lshr i24 %3, 8
  %i.eo = sub nsw i64 %i.di, %i.en                ; 2 uses
  %i.ep = and i24 %.sroa.120.0.extract.shift.i, 255 ; 2 uses
  %i.eq = zext nneg i24 %i.ep to i32
  %i.er = icmp eq i24 %i.ep, 0
  %i.es = add nsw i64 %i.eo, -25165824
  %spec.select.i57 = select i1 %i.er, i64 %i.es, i64 %i.eo ; 2 uses
  %i.et = and i24 %.sroa.1.0.extract.shift.i, 255 ; 2 uses
  %i.eu = zext nneg i24 %i.et to i32
  %i.ev = icmp eq i24 %i.et, 0
  %i.ew = add nsw i64 %spec.select.i57, -25165824
  %.1.i = select i1 %i.ev, i64 %i.ew, i64 %spec.select.i57 ; 2 uses
  %i.ex = icmp eq i24 %.sroa.221.0.extract.shift.i, 0
  %i.ey = add nsw i64 %.1.i, -25165824
  %.2.i58 = select i1 %i.ex, i64 %i.ey, i64 %.1.i
  %i.ez = icmp eq i24 %.sroa.2.0.extract.shift.i, 0
  %i.fa = select i1 %i.ez, i64 -75497472, i64 -50331648
  %i.fb = add i64 %i.fa, %.2.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.aa:                                            ; preds = %bb.al
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %i.fc = icmp samesign ugt i64 %i.ei, %indvars.iv.next85.i
  %i.fd = select i1 %i.eg, i1 %i.fc, i1 false
  br i1 %i.fd, label %bb.ab, label %GetBestGreenRedToBlue.exit, !llvm.loop !55

bb.ab:                                            ; preds = %bb.aa, %GetPredictionCostCrossColorBlue.exit
  %indvars.iv84.i = phi i64 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %indvars.iv.next85.i, %bb.aa ] ; 4 uses
  %.05879.i = phi i32 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %.2.i, %bb.aa ]
  %.06078.i = phi i32 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %.262.i, %bb.aa ]
  %.06676.i = phi i64 [ %i.fb, %GetPredictionCostCrossColorBlue.exit ], [ %.268.i, %bb.aa ]
  %i.fe = getelementptr inbounds nuw i8, ptr @__const.GetBestGreenRedToBlue.delta_lut, i64 %indvars.iv84.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !56
  %i.fg = sext i8 %i.ff to i32                    ; 2 uses
  %i.fh = icmp ne i64 %indvars.iv84.i, 4
  %or.cond.not82.i = or i1 %i.eg, %i.fh
  br label %bb.ac

bb.ac:                                            ; preds = %GetPredictionCostCrossColorBlue.exit.i, %bb.ab
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %GetPredictionCostCrossColorBlue.exit.i ], [ 0, %bb.ab ] ; 3 uses
  %.15975.i = phi i32 [ %.2.i, %GetPredictionCostCrossColorBlue.exit.i ], [ %.05879.i, %bb.ab ] ; 2 uses
  %.16174.i = phi i32 [ %.262.i, %GetPredictionCostCrossColorBlue.exit.i ], [ %.06078.i, %bb.ab ] ; 2 uses
  %.16773.i = phi i64 [ %.268.i, %GetPredictionCostCrossColorBlue.exit.i ], [ %.06676.i, %bb.ab ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @__const.GetBestGreenRedToBlue.offset, i64 %indvars.iv.i ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !56
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fg
  %i.fm = add nsw i32 %i.fl, %.15975.i            ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !56
  %i.fp = sext i8 %i.fo to i32
  %i.fq = mul nsw i32 %i.fp, %i.fg
  %i.fr = add nsw i32 %i.fq, %.16174.i            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.fs = load ptr, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !31
  call void %i.fs(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.fm, i32 noundef %i.fr, ptr noundef nonnull %i.b) #10, !inline_history !57
  %i.ft = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.fu = call i64 %i.ft(ptr noundef nonnull %i.b, ptr noundef nonnull %9) #10, !inline_history !58
  %i.fv = load i32, ptr %i.b, align 16, !tbaa !3
  %i.fw = zext i32 %i.fv to i64
  %i.fx = mul nuw nsw i64 %i.fw, 25165824
  br label %bb.ad

bb.ad:                                            ; preds = %DivRound.exit16.i.i.i.i50, %bb.ac
  %indvars.iv.i.i.i.i42 = phi i64 [ 1, %bb.ac ], [ %indvars.iv.next.i.i.i.i51, %DivRound.exit16.i.i.i.i50 ] ; 3 uses
  %.01221.i.i.i.i43 = phi i64 [ %i.fx, %bb.ac ], [ %i.gl, %DivRound.exit16.i.i.i.i50 ]
  %.01320.i.i.i.i44 = phi i64 [ 2013265920, %bb.ac ], [ %i.gr, %DivRound.exit16.i.i.i.i50 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.i42
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = sub nuw nsw i64 256, %indvars.iv.i.i.i.i42
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.gd = add i32 %i.gc, %i.fz
  %i.ge = zext i32 %i.gd to i64
  %i.gf = mul i64 %.01320.i.i.i.i44, %i.ge        ; 3 uses
  %i.gg = icmp sgt i64 %i.gf, -1
  br i1 %i.gg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gh = add nuw nsw i64 %i.gf, 50
  %i.gi = udiv i64 %i.gh, 100
  br label %DivRound.exit.i.i.i.i47

bb.af:                                            ; preds = %bb.ad
  %.neg8.i.i.i.i.i45 = sub i64 50, %i.gf
  %i.gj = udiv i64 %.neg8.i.i.i.i.i45, 100
  %.neg.i.i.i.i.i46 = sub nsw i64 0, %i.gj
  br label %DivRound.exit.i.i.i.i47

DivRound.exit.i.i.i.i47:                          ; preds = %bb.af, %bb.ae
  %i.gk = phi i64 [ %i.gi, %bb.ae ], [ %.neg.i.i.i.i.i46, %bb.af ]
  %i.gl = add i64 %i.gk, %.01221.i.i.i.i43        ; 4 uses
  %i.gm = mul i64 %.01320.i.i.i.i44, 6            ; 3 uses
  %i.gn = icmp sgt i64 %i.gm, -1
  br i1 %i.gn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %DivRound.exit.i.i.i.i47
  %i.go = add nuw nsw i64 %i.gm, 4
  %i.gp = udiv i64 %i.go, 10
  br label %DivRound.exit16.i.i.i.i50

bb.ah:                                            ; preds = %DivRound.exit.i.i.i.i47
  %.neg8.i14.i.i.i.i48 = sub i64 4, %i.gm
  %i.gq = udiv i64 %.neg8.i14.i.i.i.i48, 10
  %.neg.i15.i.i.i.i49 = sub nsw i64 0, %i.gq
  br label %DivRound.exit16.i.i.i.i50

DivRound.exit16.i.i.i.i50:                        ; preds = %bb.ah, %bb.ag
  %i.gr = phi i64 [ %i.gp, %bb.ag ], [ %.neg.i15.i.i.i.i49, %bb.ah ]
  %indvars.iv.next.i.i.i.i51 = add nuw nsw i64 %indvars.iv.i.i.i.i42, 1 ; 2 uses
  %exitcond.not.i.i.i.i52 = icmp eq i64 %indvars.iv.next.i.i.i.i51, 16
  br i1 %exitcond.not.i.i.i.i52, label %bb.ai, label %bb.ad, !llvm.loop !30

bb.ai:                                            ; preds = %DivRound.exit16.i.i.i.i50
  %i.gs = icmp sgt i64 %i.gl, -1
  br i1 %i.gs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gt = add nuw nsw i64 %i.gl, 5
  %i.gu = udiv i64 %i.gt, 10
  br label %GetPredictionCostCrossColorBlue.exit.i

bb.ak:                                            ; preds = %bb.ai
  %.neg8.i17.i.i.i.i53 = sub i64 5, %i.gl
  %i.gv = udiv i64 %.neg8.i17.i.i.i.i53, 10
  %.neg.i18.i.i.i.i54 = sub nsw i64 0, %i.gv
  br label %GetPredictionCostCrossColorBlue.exit.i

GetPredictionCostCrossColorBlue.exit.i:           ; preds = %bb.ak, %bb.aj
  %i.gw = phi i64 [ %i.gu, %bb.aj ], [ %.neg.i18.i.i.i.i54, %bb.ak ]
  %i.gx = sub nsw i64 %i.fu, %i.gw                ; 2 uses
  %i.gy = and i32 %i.fm, 255                      ; 2 uses
  %i.gz = icmp eq i32 %i.gy, %i.eq
  %i.ha = add nsw i64 %i.gx, -25165824
  %spec.select.i.i55 = select i1 %i.gz, i64 %i.ha, i64 %i.gx ; 2 uses
  %i.hb = icmp eq i32 %i.gy, %i.eu
  %i.hc = add nsw i64 %spec.select.i.i55, -25165824
  %.1.i.i = select i1 %i.hb, i64 %i.hc, i64 %spec.select.i.i55 ; 2 uses
  %i.hd = and i32 %i.fr, 255                      ; 2 uses
  %i.he = icmp eq i32 %i.hd, %.sroa.221.0.extract.trunc.i
  %i.hf = add nsw i64 %.1.i.i, -25165824
  %.2.i.i56 = select i1 %i.he, i64 %i.hf, i64 %.1.i.i ; 2 uses
  %i.hg = icmp eq i32 %i.hd, %.sroa.2.0.extract.trunc.i
  %i.hh = add nsw i64 %.2.i.i56, -25165824
  %.3.i.i = select i1 %i.hg, i64 %i.hh, i64 %.2.i.i56 ; 2 uses
  %i.hi = icmp eq i32 %i.fm, 0
  %i.hj = add nsw i64 %.3.i.i, -25165824
  %.4.i.i = select i1 %i.hi, i64 %i.hj, i64 %.3.i.i ; 2 uses
  %i.hk = icmp eq i32 %i.fr, 0
  %i.hl = add nsw i64 %.4.i.i, -25165824
  %.5.i.i = select i1 %i.hk, i64 %i.hl, i64 %.4.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.hm = icmp slt i64 %.5.i.i, %.16773.i         ; 2 uses
  %.268.i = call i64 @llvm.smin.i64(i64 %.5.i.i, i64 %.16773.i) ; 2 uses
  %.262.i = select i1 %i.hm, i32 %i.fr, i32 %.16174.i ; 4 uses
  %.2.i = select i1 %i.hm, i32 %i.fm, i32 %.15975.i ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hn = icmp samesign ult i64 %indvars.iv.i, 7
  %or.cond80.i = select i1 %or.cond.not82.i, i1 %i.hn, i1 false
  br i1 %or.cond80.i, label %bb.ac, label %bb.al, !llvm.loop !59

bb.al:                                            ; preds = %GetPredictionCostCrossColorBlue.exit.i
  %i.ho = trunc i64 %indvars.iv84.i to i32
  %i.hp = add i32 %i.ho, -4
  %i.hq = icmp ult i32 %i.hp, 3
  %i.hr = or i32 %.2.i, %.262.i
  %i.hs = icmp eq i32 %i.hr, 0
  %or.cond5.i = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond5.i, label %GetBestGreenRedToBlue.exit, label %bb.aa

GetBestGreenRedToBlue.exit:                       ; preds = %bb.aa, %bb.al
  %.464.i = phi i32 [ 0, %bb.al ], [ %.262.i, %bb.aa ]
  %.4.i = phi i32 [ 0, %bb.al ], [ %.2.i, %bb.aa ]
  %i.ht = trunc i32 %.464.i to i24
  %.sroa.5.0.insert.ext = shl i24 %i.ht, 16
  %i.hu = trunc i32 %.4.i to i24
  %.sroa.3.0.insert.ext = shl i24 %i.hu, 8
  %.sroa.3.0.insert.shift = and i24 %.sroa.3.0.insert.ext, 65280
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.5.0.insert.ext
  %.sroa.0.0.insert.ext = zext i8 %.0.lcssa.i to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

declare ptr @WebPSafeCalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @MaxDiffsForRow(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x i32>, ptr %2, align 4, !tbaa !3 ; 4 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr <2 x i32> %i.b, splat (i32 8)
  %i.d = and <2 x i32> %i.b, splat (i32 16711935)
  %i.e = and <2 x i32> %i.b, splat (i32 -16711936)
  %i.f = and <2 x i32> %i.c, splat (i32 255)      ; 2 uses
  %i.g = shl nuw nsw <2 x i32> %i.f, splat (i32 16)
  %i.h = add nuw nsw <2 x i32> %i.f, %i.d
  %i.i = add nuw nsw <2 x i32> %i.h, %i.g
  %i.j = and <2 x i32> %i.i, splat (i32 16711935)
  %i.k = or disjoint <2 x i32> %i.j, %i.e
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %i.l = phi <2 x i32> [ %i.k, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %smax = add nsw i32 %0, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.m
  %i.n = extractelement <2 x i32> %i.l, i64 0
  %i.o = extractelement <2 x i32> %i.l, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.136 = phi i32 [ %i.o, %.lr.ph.preheader ], [ %.2, %bb.e ] ; 5 uses
  %.13135 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %.136, %bb.e ] ; 4 uses
  %i.p = sub nsw i64 %indvars.iv, %i.m
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load i32, ptr %gep, align 4, !tbaa !3    ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3    ; 4 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = lshr i32 %i.r, 8
  %i.w = and i32 %i.v, 255                        ; 2 uses
  %i.x = and i32 %i.r, 16711935
  %i.y = shl nuw nsw i32 %i.w, 16
  %i.z = add nuw nsw i32 %i.w, %i.x
  %i.aa = add nuw nsw i32 %i.z, %i.y
  %i.ab = and i32 %i.aa, 16711935
  %i.ac = and i32 %i.r, -16711936
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = lshr i32 %i.s, 8
  %i.af = and i32 %i.ae, 255                      ; 2 uses
  %i.ag = and i32 %i.s, 16711935
  %i.ah = shl nuw nsw i32 %i.af, 16
  %i.ai = add nuw nsw i32 %i.af, %i.ag
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  %i.ak = and i32 %i.aj, 16711935
  %i.al = and i32 %i.s, -16711936
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = lshr i32 %i.u, 8
  %i.ao = and i32 %i.an, 255                      ; 2 uses
  %i.ap = and i32 %i.u, 16711935
  %i.aq = shl nuw nsw i32 %i.ao, 16
  %i.ar = add nuw nsw i32 %i.ao, %i.ap
  %i.as = add nuw nsw i32 %i.ar, %i.aq
  %i.at = and i32 %i.as, 16711935
  %i.au = and i32 %i.u, -16711936
  %i.av = or disjoint i32 %i.at, %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.033 = phi i32 [ %i.ad, %bb.d ], [ %i.r, %.lr.ph ] ; 4 uses
  %.032 = phi i32 [ %i.am, %bb.d ], [ %i.s, %.lr.ph ] ; 4 uses
  %.2 = phi i32 [ %i.av, %bb.d ], [ %i.u, %.lr.ph ] ; 5 uses
  %i.aw = lshr i32 %.136, 24                      ; 4 uses
  %i.ax = lshr i32 %.033, 24
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = lshr i32 %.136, 16
  %i.bb = and i32 %i.ba, 255                      ; 4 uses
  %i.bc = lshr i32 %.033, 16
  %i.bd = and i32 %i.bc, 255
  %i.be = sub nsw i32 %i.bb, %i.bd
  %i.bf = tail call i32 @llvm.abs.i32(i32 %i.be, i1 true)
  %i.bg = lshr i32 %.136, 8
  %i.bh = and i32 %i.bg, 255                      ; 4 uses
  %i.bi = lshr i32 %.033, 8
  %i.bj = and i32 %i.bi, 255
  %i.bk = sub nsw i32 %i.bh, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 true)
  %i.bm = and i32 %.136, 255                      ; 4 uses
  %i.bn = and i32 %.033, 255
  %i.bo = sub nsw i32 %i.bm, %i.bn
  %i.bp = tail call i32 @llvm.abs.i32(i32 %i.bo, i1 true)
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %i.bf)
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %i.bp)
  %i.bs = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.bq, i32 %i.br)
  %i.bt = lshr i32 %.032, 24
  %i.bu = sub nsw i32 %i.aw, %i.bt
  %i.bv = tail call i32 @llvm.abs.i32(i32 %i.bu, i1 true)
  %i.bw = lshr i32 %.032, 16
  %i.bx = and i32 %i.bw, 255
  %i.by = sub nsw i32 %i.bb, %i.bx
  %i.bz = tail call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = lshr i32 %.032, 8
  %i.cb = and i32 %i.ca, 255
  %i.cc = sub nsw i32 %i.bh, %i.cb
  %i.cd = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.ce = and i32 %.032, 255
  %i.cf = sub nsw i32 %i.bm, %i.ce
  %i.cg = tail call i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 %i.bz)
  %i.ci = tail call i32 @llvm.umax.i32(i32 %i.cd, i32 %i.cg)
  %i.cj = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.ch, i32 %i.ci)
  %i.ck = lshr i32 %.13135, 24
  %i.cl = sub nsw i32 %i.aw, %i.ck
  %i.cm = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.cn = lshr i32 %.13135, 16
  %i.co = and i32 %i.cn, 255
  %i.cp = sub nsw i32 %i.bb, %i.co
  %i.cq = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = lshr i32 %.13135, 8
  %i.cs = and i32 %i.cr, 255
  %i.ct = sub nsw i32 %i.bh, %i.cs
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = and i32 %.13135, 255
  %i.cw = sub nsw i32 %i.bm, %i.cv
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %i.cy = tail call i32 @llvm.umax.i32(i32 %i.cm, i32 %i.cq)
  %i.cz = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cx)
  %i.da = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.cy, i32 %i.cz)
  %i.db = lshr i32 %.2, 24
  %i.dc = sub nsw i32 %i.aw, %i.db
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = lshr i32 %.2, 16
  %i.df = and i32 %i.de, 255
  %i.dg = sub nsw i32 %i.bb, %i.df
  %i.dh = tail call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = lshr i32 %.2, 8
  %i.dj = and i32 %i.di, 255
  %i.dk = sub nsw i32 %i.bh, %i.dj
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = and i32 %.2, 255
  %i.dn = sub nsw i32 %i.bm, %i.dm
  %i.do = tail call i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %i.dp = tail call i32 @llvm.umax.i32(i32 %i.dd, i32 %i.dh)
  %i.dq = tail call i32 @llvm.umax.i32(i32 %i.dl, i32 %i.do)
  %i.dr = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.dp, i32 %i.dq)
  %i.ds = tail call i32 @llvm.umax.i32(i32 %i.bs, i32 %i.cj)
  %i.dt = tail call i32 @llvm.umax.i32(i32 %i.da, i32 %i.dr)
  %i.du = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.ds, i32 %i.dt)
  %i.dv = trunc nuw i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !56
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i32 noundef range(i32 -2147483648, 256) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i32 %7, %6                       ; 2 uses
  %i.b = icmp eq i32 %6, 0
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %8, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @VP8LPredictorsSub, align 16, !tbaa !31
  tail call void %i.d(ptr noundef %3, ptr noundef null, i32 noundef 1, ptr noundef %12) #10, !inline_history !61
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !31
  tail call void %i.e(ptr noundef %3, ptr noundef %2, i32 noundef 1, ptr noundef %12) #10, !inline_history !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.g = add nsw i32 %i.a, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.022.i = phi i32 [ %i.g, %bb.f ], [ %i.a, %bb.b ] ; 2 uses
  %.021.i = phi i32 [ 1, %bb.f ], [ %6, %bb.b ]   ; 2 uses
  %.0.i = phi ptr [ %i.f, %bb.f ], [ %12, %bb.b ] ; 2 uses
  %i.h = icmp eq i32 %8, 0
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !31
  %i.j = sext i32 %.021.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %3, i64 %i.j
  tail call void %i.i(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef %.022.i, ptr noundef %.0.i) #10, !inline_history !61
  br label %PredictBatch.exit

bb.i:                                             ; preds = %bb.g
  %i.l = sext i32 %5 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @VP8LPredictorsSub, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = sext i32 %.021.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o
  tail call void %i.n(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i32 noundef %.022.i, ptr noundef %.0.i) #10, !inline_history !61
  br label %PredictBatch.exit

bb.j:                                             ; preds = %bb.a
  %i.r = sext i32 %5 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @VP8LPredictors, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 3 uses
  %i.u = icmp slt i32 %6, %7
  br i1 %i.u, label %.lr.ph, label %PredictBatch.exit

.lr.ph:                                           ; preds = %bb.j
  %i.v = icmp eq i32 %8, 0
  %i.w = add i32 %1, -1
  %i.x = icmp eq i32 %8, %i.w
  %i.y = add nsw i32 %0, -1
  %.not43.i = icmp eq i32 %11, 0                  ; 2 uses
  %i.z = sext i32 %0 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.z ; 3 uses
  br i1 %i.v, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ab = sext i32 %6 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %7 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.m
  %indvars.iv111 = phi i64 [ %i.ab, %.lr.ph.split.us.preheader ], [ %indvars.iv.next112, %bb.m ] ; 5 uses
  %i.ac = icmp eq i64 %indvars.iv111, 0
  br i1 %i.ac, label %.thread.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.ad = getelementptr [4 x i8], ptr %3, i64 %indvars.iv111
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  br label %.thread.us

.thread.us:                                       ; preds = %bb.k, %.lr.ph.split.us
  %.06980.us = phi i32 [ %i.af, %bb.k ], [ -16777216, %.lr.ph.split.us ] ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv111 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 3 uses
  %i.ai = or i32 %i.ah, 16711680
  %i.aj = and i32 %.06980.us, -16711936
  %i.ak = sub i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = or i32 %i.ah, 65280
  %i.am = and i32 %.06980.us, 16711935
  %i.an = sub i32 %i.al, %i.am
  %i.ao = and i32 %i.ak, -16711936
  %i.ap = and i32 %i.an, 16711935
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp ult i32 %i.ah, 16777216
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread.us
  %i.as = and i32 %i.ak, -16777216
  %i.at = and i32 %.06980.us, 16777215
  store i32 %i.at, ptr %i.ag, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.us
  %.1.us = phi i32 [ %i.aq, %.thread.us ], [ %i.as, %bb.l ]
  %i.au = sub nsw i64 %indvars.iv111, %i.ab
  %i.av = getelementptr inbounds [4 x i8], ptr %12, i64 %i.au
  store i32 %.1.us, ptr %i.av, align 4, !tbaa !3
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond114.not, label %PredictBatch.exit, label %.lr.ph.split.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = icmp eq i32 %5, 0
  %i.ax = icmp eq i32 %9, 1
  %or.cond = or i1 %i.aw, %i.ax
  %i.ay = sext i32 %6 to i64                      ; 6 uses
  br i1 %or.cond, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.r
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %bb.r ], [ %i.ay, %.lr.ph.split ] ; 6 uses
  %i.az = icmp eq i64 %indvars.iv106, 0           ; 2 uses
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split.us
  %i.ba = getelementptr [4 x i8], ptr %3, i64 %indvars.iv106
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv106
  %i.bd = tail call i32 %i.t(ptr noundef %i.bb, ptr noundef nonnull %i.bc) #10
  br label %.thread.us86

bb.o:                                             ; preds = %.lr.ph.split.split.us
  %i.be = load i32, ptr %2, align 4, !tbaa !3
  br label %.thread.us86

.thread.us86:                                     ; preds = %bb.o, %bb.n
  %.069.us = phi i32 [ %i.bd, %bb.n ], [ %i.be, %bb.o ] ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv106 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 3 uses
  %i.bh = or i32 %i.bg, 16711680
  %i.bi = and i32 %.069.us, -16711936
  %i.bj = sub i32 %i.bh, %i.bi                    ; 2 uses
  %i.bk = or i32 %i.bg, 65280
  %i.bl = and i32 %.069.us, 16711935
  %i.bm = sub i32 %i.bk, %i.bl
  %i.bn = and i32 %i.bj, -16711936
  %i.bo = and i32 %i.bm, 16711935
  %i.bp = or disjoint i32 %i.bn, %i.bo
  %i.bq = icmp ult i32 %i.bg, 16777216
  br i1 %i.bq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.thread.us86
  %i.br = and i32 %i.bj, -16777216                ; 2 uses
  %i.bs = and i32 %.069.us, 16777215
  store i32 %i.bs, ptr %i.bf, align 4, !tbaa !3
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.aa, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread.us86
  %.1.us89 = phi i32 [ %i.br, %bb.q ], [ %i.br, %bb.p ], [ %i.bp, %.thread.us86 ]
  %i.bu = sub nsw i64 %indvars.iv106, %i.ay
  %i.bv = getelementptr inbounds [4 x i8], ptr %12, i64 %i.bu
  store i32 %.1.us89, ptr %i.bv, align 4, !tbaa !3
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, 1 ; 2 uses
  %lftr.wideiv109 = trunc i64 %indvars.iv.next107 to i32
  %exitcond110.not = icmp eq i32 %7, %lftr.wideiv109
  br i1 %exitcond110.not, label %PredictBatch.exit, label %.lr.ph.split.split.us, !llvm.loop !62

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.x, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %sext = sext i32 %i.y to i64
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.w
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.w ], [ %i.ay, %.lr.ph.split.split ] ; 6 uses
  %i.bw = icmp eq i64 %indvars.iv101, 0           ; 2 uses
  br i1 %i.bw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split.split.us
  %i.bx = getelementptr [4 x i8], ptr %3, i64 %indvars.iv101
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv101
  %i.ca = tail call i32 %i.t(ptr noundef %i.by, ptr noundef nonnull %i.bz) #10
  br label %.thread.us92

bb.t:                                             ; preds = %.lr.ph.split.split.split.us
  %i.cb = load i32, ptr %2, align 4, !tbaa !3
  br label %.thread.us92

.thread.us92:                                     ; preds = %bb.t, %bb.s
  %.069.us91 = phi i32 [ %i.ca, %bb.s ], [ %i.cb, %bb.t ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv101 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3  ; 3 uses
  %i.ce = or i32 %i.cd, 16711680
  %i.cf = and i32 %.069.us91, -16711936
  %i.cg = sub i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = or i32 %i.cd, 65280
  %i.ci = and i32 %.069.us91, 16711935
  %i.cj = sub i32 %i.ch, %i.ci
  %i.ck = and i32 %i.cg, -16711936
  %i.cl = and i32 %i.cj, 16711935
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = icmp ult i32 %i.cd, 16777216
  br i1 %i.cn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.thread.us92
  %i.co = and i32 %i.cg, -16777216                ; 2 uses
  %i.cp = and i32 %.069.us91, 16777215
  store i32 %i.cp, ptr %i.cc, align 4, !tbaa !3
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cq = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.cq, ptr %i.aa, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread.us92
  %.1.us95 = phi i32 [ %i.co, %bb.v ], [ %i.co, %bb.u ], [ %i.cm, %.thread.us92 ]
  %i.cr = sub nsw i64 %indvars.iv101, %i.ay
  %i.cs = getelementptr inbounds [4 x i8], ptr %12, i64 %i.cr
  store i32 %.1.us95, ptr %i.cs, align 4, !tbaa !3
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv104 = trunc i64 %indvars.iv.next102 to i32
  %exitcond105.not = icmp eq i32 %7, %lftr.wideiv104
  br i1 %exitcond105.not, label %PredictBatch.exit, label %.lr.ph.split.split.split.us, !llvm.loop !62

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.ay, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next, %bb.ao ] ; 11 uses
  %i.ct = icmp eq i64 %indvars.iv, 0              ; 2 uses
  br i1 %i.ct, label %.thread121, label %bb.x

.thread121:                                       ; preds = %.lr.ph.split.split.split
  %i.cu = load i32, ptr %2, align 4, !tbaa !3
  br label %bb.al

bb.x:                                             ; preds = %.lr.ph.split.split.split
  %i.cv = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.cy = tail call i32 %i.t(ptr noundef %i.cw, ptr noundef nonnull %i.cx) #10 ; 11 uses
  %i.cz = icmp eq i64 %indvars.iv, %sext
  br i1 %i.cz, label %bb.al, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3  ; 6 uses
  %i.dc = getelementptr inbounds i8, ptr %4, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !56  ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = icmp ult i8 %i.dd, 3
  br i1 %i.df, label %bb.z, label %.preheader.i

bb.z:                                             ; preds = %bb.y
  %i.dg = or i32 %i.db, 16711680
  %i.dh = and i32 %i.cy, -16711936                ; 2 uses
  %i.di = sub i32 %i.dg, %i.dh
  %i.dj = or i32 %i.db, 65280
  %i.dk = and i32 %i.cy, 16711935                 ; 2 uses
  %i.dl = sub i32 %i.dj, %i.dk
  %i.dm = and i32 %i.di, -16711936
  %i.dn = and i32 %i.dl, 16711935
  %i.do = or disjoint i32 %i.dm, %i.dn
  br label %.thread126

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %.037.i = phi i32 [ %i.dp, %.preheader.i ], [ %9, %bb.y ] ; 8 uses
  %.not.i = icmp slt i32 %.037.i, %i.de
  %i.dp = lshr i32 %.037.i, 1                     ; 5 uses
  br i1 %.not.i, label %bb.aa, label %.preheader.i, !llvm.loop !63

bb.aa:                                            ; preds = %.preheader.i
  %i.dq = lshr i32 %i.db, 24                      ; 3 uses
  %.off.i = add nsw i32 %i.dq, -1
  %switch.i = icmp ult i32 %.off.i, 254
  %i.dr = lshr i32 %i.cy, 24                      ; 2 uses
  %i.ds = sub nsw i32 %i.dq, %i.dr                ; 2 uses
  br i1 %switch.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.pre.i = sub i32 0, %.037.i
  br label %NearLosslessComponent.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dt = and i32 %i.ds, 255                      ; 4 uses
  %i.du = xor i32 %i.dr, 255                      ; 4 uses
  %i.dv = sub i32 0, %.037.i                      ; 3 uses
  %i.dw = and i32 %i.dt, %i.dv                    ; 5 uses
  %i.dx = add nsw i32 %i.dw, %.037.i              ; 3 uses
  %i.dy = xor i32 %i.dq, 255
  %i.dz = icmp samesign ult i32 %i.dy, %i.du
  %i.ea = zext i1 %i.dz to i32
  %i.eb = sub nsw i32 %i.dt, %i.dw
  %i.ec = sub nsw i32 %i.ea, %i.dt
  %i.ed = add i32 %i.ec, %i.dx
  %i.ee = icmp slt i32 %i.eb, %i.ed
  %i.ef = icmp samesign ule i32 %i.dt, %i.du      ; 2 uses
  %i.eg = add nuw i32 %i.dw, %i.dp                ; 2 uses
  br i1 %i.ee, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.not33.i.i = icmp samesign ugt i32 %i.dw, %i.du
  %or.cond.i.i = select i1 %i.ef, i1 true, i1 %.not33.i.i
  %spec.select.i = select i1 %or.cond.i.i, i32 %i.dw, i32 %i.eg
  br label %NearLosslessComponent.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.eh = icmp sgt i32 %i.dx, %i.du
  %or.cond34.i.i = and i1 %i.ef, %i.eh
  %spec.select73.i = select i1 %or.cond34.i.i, i32 %i.eg, i32 %i.dx
  br label %NearLosslessComponent.exit.i

NearLosslessComponent.exit.i:                     ; preds = %bb.ae, %bb.ad, %bb.ab
  %.pre-phi.i = phi i32 [ %i.dv, %bb.ad ], [ %i.dv, %bb.ae ], [ %.pre.i, %bb.ab ] ; 3 uses
  %.039.i = phi i32 [ %spec.select.i, %bb.ad ], [ %spec.select73.i, %bb.ae ], [ %i.ds, %bb.ab ]
  %i.ei = lshr i32 %i.db, 8                       ; 3 uses
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = lshr i32 %i.cy, 8                       ; 3 uses
  %i.el = trunc i32 %i.ek to i8
  %i.em = and i32 %i.ei, 255
  %i.en = and i32 %i.ek, 255
  %i.eo = sub nsw i32 %i.ei, %i.ek
  %i.ep = and i32 %i.eo, 255                      ; 4 uses
  %i.eq = xor i32 %i.en, 255                      ; 4 uses
  %i.er = and i32 %.pre-phi.i, %i.ep              ; 5 uses
  %i.es = add nsw i32 %i.er, %.037.i              ; 3 uses
  %i.et = xor i32 %i.em, 255
  %i.eu = icmp samesign ult i32 %i.et, %i.eq
  %i.ev = zext i1 %i.eu to i32
  %i.ew = sub nsw i32 %i.ep, %i.er
  %i.ex = sub nsw i32 %i.ev, %i.ep
  %i.ey = add i32 %i.ex, %i.es
  %i.ez = icmp slt i32 %i.ew, %i.ey
  %i.fa = icmp samesign ule i32 %i.ep, %i.eq      ; 2 uses
  %i.fb = add nuw i32 %i.er, %i.dp                ; 2 uses
  br i1 %i.ez, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %NearLosslessComponent.exit.i
  %.not33.i47.i = icmp samesign ugt i32 %i.er, %i.eq
  %or.cond.i48.i = select i1 %i.fa, i1 true, i1 %.not33.i47.i
  %spec.select74.i = select i1 %or.cond.i48.i, i32 %i.er, i32 %i.fb
  br label %NearLosslessComponent.exit49.i

bb.ag:                                            ; preds = %NearLosslessComponent.exit.i
  %i.fc = icmp sgt i32 %i.es, %i.eq
  %or.cond34.i44.i = and i1 %i.fa, %i.fc
  %spec.select75.i = select i1 %or.cond34.i44.i, i32 %i.fb, i32 %i.es
  br label %NearLosslessComponent.exit49.i

NearLosslessComponent.exit49.i:                   ; preds = %bb.ag, %bb.af
  %.0.in.i45.i = phi i32 [ %spec.select74.i, %bb.af ], [ %spec.select75.i, %bb.ag ] ; 2 uses
  %.0.i46.i = trunc i32 %.0.in.i45.i to i8
  %.narrow.i = add i8 %.0.i46.i, %i.el            ; 2 uses
  %.narrow.i50.i = sub i8 %.narrow.i, %i.ej
  %i.fd = xor i8 %.narrow.i, -1
  %.040.i = select i1 %.not43.i, i8 0, i8 %.narrow.i50.i ; 2 uses
  %i.fe = lshr i32 %i.db, 16
  %i.ff = trunc i32 %i.fe to i8
  %.narrow.i51.i = sub i8 %i.ff, %.040.i
  %i.fg = lshr i32 %i.cy, 16                      ; 2 uses
  %i.fh = zext i8 %.narrow.i51.i to i32           ; 2 uses
  %i.fi = sub nsw i32 %i.fh, %i.fg
  %i.fj = and i32 %i.fi, 255                      ; 4 uses
  %i.fk = zext i8 %i.fd to i32
  %i.fl = select i1 %.not43.i, i32 255, i32 %i.fk ; 4 uses
  %i.fm = sub nsw i32 %i.fl, %i.fg
  %i.fn = and i32 %i.fm, 255                      ; 4 uses
  %i.fo = and i32 %i.fj, %.pre-phi.i              ; 5 uses
  %i.fp = add nsw i32 %i.fo, %.037.i              ; 3 uses
  %i.fq = sub nsw i32 %i.fl, %i.fh
  %i.fr = and i32 %i.fq, 255
  %i.fs = icmp samesign ult i32 %i.fr, %i.fn
  %i.ft = zext i1 %i.fs to i32
  %i.fu = sub nsw i32 %i.fj, %i.fo
  %i.fv = sub i32 %i.fp, %i.fj
  %i.fw = add nsw i32 %i.fv, %i.ft
  %i.fx = icmp slt i32 %i.fu, %i.fw
  %i.fy = icmp samesign ule i32 %i.fj, %i.fn      ; 2 uses
  %i.fz = add nuw i32 %i.fo, %i.dp                ; 2 uses
  br i1 %i.fx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %NearLosslessComponent.exit49.i
  %.not33.i55.i = icmp samesign ugt i32 %i.fo, %i.fn
  %or.cond.i56.i = select i1 %i.fy, i1 true, i1 %.not33.i55.i
  %spec.select76.i = select i1 %or.cond.i56.i, i32 %i.fo, i32 %i.fz
  br label %NearLosslessComponent.exit57.i

bb.ai:                                            ; preds = %NearLosslessComponent.exit49.i
  %i.ga = icmp sgt i32 %i.fp, %i.fn
  %or.cond34.i52.i = and i1 %i.fy, %i.ga
  %spec.select77.i = select i1 %or.cond34.i52.i, i32 %i.fz, i32 %i.fp
  br label %NearLosslessComponent.exit57.i

NearLosslessComponent.exit57.i:                   ; preds = %bb.ai, %bb.ah
  %.0.in.i53.i = phi i32 [ %spec.select76.i, %bb.ah ], [ %spec.select77.i, %bb.ai ]
  %i.gb = trunc i32 %i.db to i8
  %.narrow.i58.i = sub i8 %i.gb, %.040.i
  %i.gc = zext i8 %.narrow.i58.i to i32           ; 2 uses
  %i.gd = sub i32 %i.gc, %i.cy
  %i.ge = and i32 %i.gd, 255                      ; 4 uses
  %i.gf = sub i32 %i.fl, %i.cy
  %i.gg = and i32 %i.gf, 255                      ; 4 uses
  %i.gh = and i32 %i.ge, %.pre-phi.i              ; 5 uses
  %i.gi = add nsw i32 %i.gh, %.037.i              ; 3 uses
  %i.gj = sub nsw i32 %i.fl, %i.gc
  %i.gk = and i32 %i.gj, 255
  %i.gl = icmp samesign ult i32 %i.gk, %i.gg
  %i.gm = zext i1 %i.gl to i32
  %i.gn = sub nsw i32 %i.ge, %i.gh
  %i.go = sub i32 %i.gi, %i.ge
  %i.gp = add nsw i32 %i.go, %i.gm
  %i.gq = icmp slt i32 %i.gn, %i.gp
  %i.gr = icmp samesign ule i32 %i.ge, %i.gg      ; 2 uses
  %i.gs = add nuw i32 %i.gh, %i.dp                ; 2 uses
  br i1 %i.gq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %NearLosslessComponent.exit57.i
  %.not33.i62.i = icmp samesign ugt i32 %i.gh, %i.gg
  %or.cond.i63.i = select i1 %i.gr, i1 true, i1 %.not33.i62.i
  %spec.select78.i = select i1 %or.cond.i63.i, i32 %i.gh, i32 %i.gs
  br label %NearLosslessComponent.exit64.i

bb.ak:                                            ; preds = %NearLosslessComponent.exit57.i
  %i.gt = icmp sgt i32 %i.gi, %i.gg
  %or.cond34.i59.i = and i1 %i.gr, %i.gt
  %spec.select79.i = select i1 %or.cond34.i59.i, i32 %i.gs, i32 %i.gi
  br label %NearLosslessComponent.exit64.i

NearLosslessComponent.exit64.i:                   ; preds = %bb.ak, %bb.aj
  %.0.in.i60.i = phi i32 [ %spec.select78.i, %bb.aj ], [ %spec.select79.i, %bb.ak ]
  %i.gu = shl i32 %.039.i, 24
  %i.gv = shl i32 %.0.in.i53.i, 16
  %i.gw = and i32 %i.gv, 16711680
  %i.gx = or disjoint i32 %i.gw, %i.gu
  %i.gy = shl i32 %.0.in.i45.i, 8
  %i.gz = and i32 %i.gy, 65280
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %i.hb = and i32 %.0.in.i60.i, 255
  %i.hc = or disjoint i32 %i.hb, %i.ha
  %.pre = and i32 %i.cy, -16711936
  %.pre115 = and i32 %i.cy, 16711935
  br label %.thread126

bb.al:                                            ; preds = %bb.x, %.thread121
  %.069124 = phi i32 [ %i.cu, %.thread121 ], [ %i.cy, %bb.x ] ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3  ; 3 uses
  %i.hf = or i32 %i.he, 16711680
  %i.hg = and i32 %.069124, -16711936
  %i.hh = sub i32 %i.hf, %i.hg                    ; 2 uses
  %i.hi = or i32 %i.he, 65280
  %i.hj = and i32 %.069124, 16711935
  %i.hk = sub i32 %i.hi, %i.hj
  %i.hl = and i32 %i.hh, -16711936
  %i.hm = and i32 %i.hk, 16711935
  %i.hn = or disjoint i32 %i.hl, %i.hm
  %i.ho = icmp ult i32 %i.he, 16777216
  br i1 %i.ho, label %bb.am, label %bb.ao

.thread126:                                       ; preds = %NearLosslessComponent.exit64.i, %bb.z
  %.pre-phi116 = phi i32 [ %i.dk, %bb.z ], [ %.pre115, %NearLosslessComponent.exit64.i ]
  %.pre-phi = phi i32 [ %i.dh, %bb.z ], [ %.pre, %NearLosslessComponent.exit64.i ]
  %.0.i75 = phi i32 [ %i.do, %bb.z ], [ %i.hc, %NearLosslessComponent.exit64.i ] ; 4 uses
  %i.hp = and i32 %.0.i75, -16711936
  %i.hq = add i32 %i.hp, %.pre-phi                ; 2 uses
  %i.hr = and i32 %.0.i75, 16711935
  %i.hs = add nuw nsw i32 %i.hr, %.pre-phi116
  %i.ht = and i32 %i.hq, -16711936
  %i.hu = and i32 %i.hs, 16711935
  %i.hv = or disjoint i32 %i.ht, %i.hu
  store i32 %i.hv, ptr %i.da, align 4, !tbaa !3
  %i.hw = icmp ult i32 %i.hq, 16777216
  br i1 %i.hw, label %.thread131, label %bb.ao

.thread131:                                       ; preds = %.thread126
  %i.hx = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.hy = and i32 %.0.i75, -16777216
  %i.hz = and i32 %i.cy, 16777215
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !3
  br label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ia = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.ib = and i32 %i.hh, -16777216                ; 2 uses
  %i.ic = and i32 %.069124, 16777215
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !3
  br i1 %i.ct, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.id = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.id, ptr %i.aa, align 4, !tbaa !3
  br label %bb.ao

bb.ao:                                            ; preds = %.thread131, %.thread126, %bb.am, %bb.an, %bb.al
  %.1 = phi i32 [ %i.ib, %bb.an ], [ %i.ib, %bb.am ], [ %i.hn, %bb.al ], [ %.0.i75, %.thread126 ], [ %i.hy, %.thread131 ]
  %i.ie = sub nsw i64 %indvars.iv, %i.ay
  %i.if = getelementptr inbounds [4 x i8], ptr %12, i64 %i.ie
  store i32 %.1, ptr %i.if, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond.not, label %PredictBatch.exit, label %.lr.ph.split.split.split, !llvm.loop !62

PredictBatch.exit:                                ; preds = %bb.ao, %bb.w, %bb.r, %bb.m, %bb.j, %bb.i, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !8, !16, !15}
!18 = distinct !{!18, !8}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 int", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = !{!21, !21, i64 0}
!32 = distinct !{null, null, null}
!33 = distinct !{!33, !8}
!34 = distinct !{null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{null, null}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8, !42}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = distinct !{null}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{null}
!54 = distinct !{null, null}
!55 = distinct !{!55, !8}
!56 = !{!5, !5, i64 0}
!57 = distinct !{null, null}
!58 = distinct !{null, null, null}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8}
!61 = distinct !{null}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
end_hunk_0
