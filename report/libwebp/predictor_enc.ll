Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/predictor_enc?download=true
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
define hidden void @VP8LOptimizeSampling(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
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
  store i32 %3, ptr %5, align 4, !tbaa !9
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
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !14

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
  %or.cond173 = and i1 %i.aa, %i.ab
  br i1 %or.cond173, label %.preheader108.split.us.split.us.preheader, label %.split.us

.preheader108.split.us.split.us.preheader:        ; preds = %.preheader108
  %i.ac = zext nneg i32 %.fr to i64               ; 2 uses
  %i.ad = zext nneg i32 %.fr131 to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %.090112, i32 %3) ; 2 uses
  %i.ae = icmp sgt i32 %.090112, %3
  br i1 %i.ae, label %.preheader107.lr.ph.us.us, label %.split.us

.preheader107.lr.ph.us.us:                        ; preds = %.preheader108.split.us.split.us.preheader, %._crit_edge119.split.us.us.us
  %.3.us.us183 = phi i32 [ %i.am, %._crit_edge119.split.us.us.us ], [ %.090112, %.preheader108.split.us.split.us.preheader ] ; 3 uses
  %i.af = sub nsw i32 %.3.us.us183, %3
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = sext i32 %i.ag to i64
  br label %.preheader107.us.us.us

.preheader107.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader107.lr.ph.us.us
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %._crit_edge.us.us.us ], [ 0, %.preheader107.lr.ph.us.us ] ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv143, %i.ac   ; 2 uses
  %invariant.gep169 = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ai
  br label %.preheader106.us.us.us

bb.d:                                             ; preds = %.lr.ph181.a
  %indvars.iv.next140.a = add nsw i64 %indvars.iv.next140180, 1 ; 2 uses
  %.not160.not.a = icmp slt i64 %indvars.iv.next140.a, %8
  br i1 %.not160.not.a, label %.lr.ph181.a, label %._crit_edge182.a, !llvm.loop !15

.lr.ph181.a:                                      ; preds = %.lr.ph181.preheader, %bb.d
  %indvars.iv.next140180 = phi i64 [ %indvars.iv.next140.a, %bb.d ], [ %indvars.iv.next140178, %.lr.ph181.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next140180
  %i.aj = load i32, ptr %gep, align 4, !tbaa !9
  %.not104.us.us.us = icmp eq i32 %i.aj, %9
  br i1 %.not104.us.us.us, label %bb.d, label %._crit_edge119.split.us.us.us, !llvm.loop !15

._crit_edge182.a:                                 ; preds = %bb.d, %.preheader106.us.us.us
  %i.ak = icmp slt i64 %indvars.iv.next138, %i.ac
  br i1 %i.ak, label %.preheader106.us.us.us, label %._crit_edge.us.us.us, !llvm.loop !16

.preheader106.us.us.us:                           ; preds = %._crit_edge182.a, %.preheader107.us.us.us
  %indvars.iv137.a = phi i64 [ %indvars.iv.next138, %._crit_edge182.a ], [ 0, %.preheader107.us.us.us ] ; 3 uses
  %indvars.iv.next138 = add nsw i64 %indvars.iv137.a, %i.ah ; 3 uses
  %6 = trunc nsw i64 %indvars.iv.next138 to i32
  %7 = tail call noundef i32 @llvm.smin.i32(i32 %6, i32 %.fr)
  %gep170.a = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv137.a
  %8 = sext i32 %7 to i64                         ; 2 uses
  %indvars.iv.next140178 = add nsw i64 %indvars.iv137.a, 1 ; 2 uses
  %.not160.not179 = icmp slt i64 %indvars.iv.next140178, %8
  br i1 %.not160.not179, label %.lr.ph181.preheader, label %._crit_edge182.a

.lr.ph181.preheader:                              ; preds = %.preheader106.us.us.us
  %9 = load i32, ptr %gep170.a, align 4, !tbaa !9
  br label %.lr.ph181.a

._crit_edge.us.us.us:                             ; preds = %._crit_edge182.a
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next144, %i.ad
  br i1 %i.al, label %.preheader107.us.us.us, label %.split.us, !llvm.loop !17

._crit_edge119.split.us.us.us:                    ; preds = %.lr.ph181.a
  %i.am = add nsw i32 %.3.us.us183, -1            ; 2 uses
  %i.an = icmp sgt i32 %i.am, %3
  br i1 %i.an, label %.preheader107.lr.ph.us.us, label %.split.us

.split.us:                                        ; preds = %._crit_edge119.split.us.us.us, %._crit_edge.us.us.us, %.preheader108.split.us.split.us.preheader, %.preheader108
  %.us-phi125 = phi i32 [ %smin, %.preheader108.split.us.split.us.preheader ], [ %.090112, %.preheader108 ], [ %.3.us.us183, %._crit_edge.us.us.us ], [ %smin, %._crit_edge119.split.us.us.us ] ; 6 uses
  %i.ao = icmp eq i32 %.us-phi125, %3
  br i1 %i.ao, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %.split.us
  %i.ap = sub nsw i32 %.us-phi125, %3             ; 3 uses
  %i.aq = shl nuw i32 1, %.us-phi125              ; 2 uses
  %i.ar = add i32 %i.aq, %i.b
  %i.as = lshr i32 %i.ar, %.us-phi125             ; 5 uses
  %i.at = add i32 %i.aq, %i.e
  %i.au = lshr i32 %i.at, %.us-phi125             ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  %i.aw = icmp sgt i32 %i.as, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge130.split

.preheader.preheader:                             ; preds = %bb.e
  %i.ax = zext i32 %.fr to i64
  %wide.trip.count153 = zext nneg i32 %i.au to i64
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i32 %i.as, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod188 = trunc i32 %i.as to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv150 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next151, %._crit_edge ] ; 3 uses
  %i.az = mul i64 %indvars.iv150, %i.ax           ; 3 uses
  %i.ba = trunc i64 %indvars.iv150 to i32
  %i.bb = mul i32 %i.as, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %invariant.gep171 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc ; 3 uses
  br i1 %i.ay, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bd = add i64 %indvars.iv146, %i.az
  %i.be = trunc i64 %i.bd to i32
  %i.bf = shl i32 %i.be, %i.ap
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9
  %gep172 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep171, i64 %indvars.iv146
  store i32 %i.bi, ptr %gep172, align 4, !tbaa !9
  %indvars.iv.next147 = or disjoint i64 %indvars.iv146, 1 ; 2 uses
  %i.bj = add i64 %indvars.iv.next147, %i.az
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = shl i32 %i.bk, %i.ap
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9
  %gep172.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next147
  store i32 %i.bo, ptr %gep172.1, align 4, !tbaa !9
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !18

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv146.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next147.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.bp = add i64 %indvars.iv146.epil.init, %i.az
  %i.bq = trunc i64 %i.bp to i32
  %i.br = shl i32 %i.bq, %i.ap
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !9
  %gep172.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep171, i64 %indvars.iv146.epil.init
  store i32 %i.bu, ptr %gep172.epil, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge130.split, label %.preheader, !llvm.loop !19

._crit_edge130.split:                             ; preds = %._crit_edge, %bb.e
  store i32 %.us-phi125, ptr %5, align 4, !tbaa !9
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.a, %.split.us, %.thread, %._crit_edge130.split
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LResidualImage(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr nofree noundef captures(none) %14) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 7 uses
  %i.b = alloca [10 x ptr], align 16              ; 9 uses
  %i.c = alloca [10 x i32], align 16              ; 11 uses
  %i.d = load i32, ptr %13, align 4, !tbaa !9
  %.neg.i = sdiv i32 %8, -20
  %i.e = add nsw i32 %.neg.i, 5
  %i.f = shl nuw i32 1, %i.e
  %.fr124 = freeze i32 %i.f                       ; 6 uses
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
  br i1 %i.o, label %.lr.ph.preheader, label %.thread180

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> splat (i32 -16774400), ptr %i.p, align 4, !tbaa !9
  store <4 x i32> splat (i32 -16774400), ptr %i.q, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.thread180, label %.lr.ph.preheader223

.lr.ph.preheader223:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader223, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader223 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store i32 -16774400, ptr %i.s, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread180, label %.lr.ph, !llvm.loop !21

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not85101 = icmp sgt i32 %2, %3
  br i1 %.not85101, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.c
  %i.t = add i32 %0, -1                           ; 3 uses
  %i.u = add i32 %1, -1                           ; 3 uses
  %i.v = sext i32 %2 to i64                       ; 2 uses
  %i.w = add i32 %3, 1
  %i.x = sub i32 %i.w, %2                         ; 3 uses
  %xtraiter = and i32 %i.x, 1
  %i.y = icmp eq i32 %3, %2
  br i1 %i.y, label %.epil.preheader, label %.lr.ph105.new

.lr.ph105.new:                                    ; preds = %.lr.ph105
  %unroll_iter = and i32 %i.x, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph105.new
  %indvars.iv137 = phi i64 [ %i.v, %.lr.ph105.new ], [ %indvars.iv.next138.1, %bb.d ] ; 4 uses
  %.078103 = phi i32 [ 0, %.lr.ph105.new ], [ %i.aq, %bb.d ]
  %niter = phi i32 [ 0, %.lr.ph105.new ], [ %niter.next.1, %bb.d ]
  %i.z = trunc nsw i64 %indvars.iv137 to i32      ; 3 uses
  %i.aa = shl nuw i32 1, %i.z                     ; 2 uses
  %i.ab = add i32 %i.t, %i.aa
  %i.ac = lshr i32 %i.ab, %i.z
  %i.ad = add i32 %i.u, %i.aa
  %i.ae = lshr i32 %i.ad, %i.z
  %i.af = mul nsw i32 %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv137
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !9
  %i.ah = add i32 %i.af, %.078103
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv.next138 to i32 ; 3 uses
  %i.aj = shl nuw i32 1, %i.ai                    ; 2 uses
  %i.ak = add i32 %i.t, %i.aj
end_hunk_0
begin_hunk_1_@VP8LResidualImage:bb.a

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %bb.c
  %.078.lcssa = phi i64 [ 0, %bb.c ], [ %i.ba, %._crit_edge106.loopexit ]
  %i.bb = tail call ptr @WebPSafeMalloc(i64 noundef %.078.lcssa, i64 noundef 4) #10 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge106
  %i.bd = tail call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #10
  br label %.thread

bb.f:                                             ; preds = %._crit_edge106
  %i.be = sext i32 %2 to i64                      ; 5 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.be ; 3 uses
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !44
  %.not86.not107 = icmp slt i32 %2, %3
  br i1 %.not86.not107, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.f
  %wide.trip.count144 = sext i32 %3 to i64        ; 3 uses
  %i.bg = sub nsw i64 %wide.trip.count144, %i.be
  %xtraiter226 = and i64 %i.bg, 3                 ; 2 uses
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader, %.lr.ph110.prol
  %i.bh = phi ptr [ %i.bl, %.lr.ph110.prol ], [ %i.bb, %.lr.ph110.preheader ]
  %indvars.iv141.prol = phi i64 [ %indvars.iv.next142.prol, %.lr.ph110.prol ], [ %i.be, %.lr.ph110.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader ]
  %indvars.iv.next142.prol = add nsw i64 %indvars.iv141.prol, 1 ; 3 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv141.prol
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !9
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next142.prol
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !44
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter226
  br i1 %prol.iter.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !23

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader
  %.unr = phi ptr [ %i.bb, %.lr.ph110.preheader ], [ %i.bl, %.lr.ph110.prol ]
  %indvars.iv141.unr = phi i64 [ %i.be, %.lr.ph110.preheader ], [ %indvars.iv.next142.prol, %.lr.ph110.prol ]
  %i.bn = sub nsw i64 %i.be, %wide.trip.count144
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %i.bp = phi ptr [ %i.ci, %.lr.ph110 ], [ %.unr, %.lr.ph110.prol.loopexit ]
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.3, %.lr.ph110 ], [ %indvars.iv141.unr, %.lr.ph110.prol.loopexit ] ; 5 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv141
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next142
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !44
  %indvars.iv.next142.1 = add nsw i64 %indvars.iv141, 2 ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next142
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next142.1
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !44
  %indvars.iv.next142.2 = add nsw i64 %indvars.iv141, 3 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next142.1
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next142.2
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !44
  %indvars.iv.next142.3 = add nsw i64 %indvars.iv141, 4 ; 3 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next142.2
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !9
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next142.3
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !44
  %exitcond145.not.3 = icmp eq i64 %indvars.iv.next142.3, %wide.trip.count144
  br i1 %exitcond145.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !24

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %bb.f
  %i.ck = shl nuw i32 1, %2                       ; 5 uses
  %i.cl = add i32 %0, -1                          ; 4 uses
  %i.cm = add i32 %i.ck, %i.cl
  %i.cn = lshr i32 %i.cm, %2
  %i.co = add i32 %1, -1                          ; 2 uses
  %i.cp = add i32 %i.ck, %i.co
  %i.cq = lshr i32 %i.cp, %2                      ; 4 uses
  %i.cr = sub nsw i32 %3, %2                      ; 7 uses
  %i.cs = add i32 %i.cr, 1                        ; 3 uses
  %i.ct = mul i32 %i.cs, 14336
  %i.cu = shl i32 %i.cs, 10
  %i.cv = mul i32 %i.cs, 15374
  %i.cw = sext i32 %i.cv to i64
  %i.cx = tail call ptr @WebPSafeCalloc(i64 noundef %i.cw, i64 noundef 4) #10 ; 11 uses
  %i.cy = sext i32 %i.ct to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy ; 3 uses
  %i.da = sext i32 %i.cu to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %13, align 4, !tbaa !9
  %i.dd = tail call noundef i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %3, i32 4) ; 2 uses
  %i.de = tail call noundef i32 @llvm.smax.i32(i32 %i.dd, i32 %2)
  %i.df = sub nsw i32 %i.de, %2                   ; 2 uses
  store i32 0, ptr %14, align 4, !tbaa !9
  %i.dg = icmp eq ptr %i.cx, null
  br i1 %i.dg, label %bb.g, label %.preheader175.i

.preheader175.i:                                  ; preds = %._crit_edge111
  %.not188.i = icmp eq i32 %i.cq, 0
  br i1 %.not188.i, label %.preheader.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader175.i
  %i.dh = sext i32 %0 to i64                      ; 5 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 5 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 4 uses
  %i.dm = icmp sgt i32 %.fr124, 1                 ; 2 uses
  %.not.i.i = icmp sge i32 %2, %i.dd
  %i.dn = add i32 %i.df, 1
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %i.dn, i32 2)
  %i.do = sext i32 %1 to i64
  %invariant.op.i.i = add nsw i64 %i.do, -1       ; 3 uses
  %i.dp = add i32 %i.cn, -1
  %i.dq = add i32 %i.cq, -1
  %.pre.i = mul i32 %i.cr, 14336
  %i.dr = add i32 %.pre.i, 14336
  %i.ds = zext i32 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 2
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge111
  %i.du = tail call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #10 ; 0 uses
  br label %GetBestPredictorsAndSubSampling.exit

bb.h:                                             ; preds = %bb.at, %.lr.ph.i
  %.0144183.i = phi i32 [ 0, %.lr.ph.i ], [ %i.nl, %bb.at ] ; 3 uses
  %.0145182.i = phi i32 [ 0, %.lr.ph.i ], [ %i.nj, %bb.at ] ; 3 uses
  %.0146181.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %bb.at ] ; 2 uses
  %.0147180.i = phi i32 [ 0, %.lr.ph.i ], [ %.2149.i, %bb.at ] ; 2 uses
  %.0150179.i = phi i32 [ 0, %.lr.ph.i ], [ %.1151.i, %bb.at ] ; 2 uses
  %.0152178.i = phi i32 [ 0, %.lr.ph.i ], [ %.1153.i, %bb.at ] ; 2 uses
  %i.dv = shl i32 %.0145182.i, %2                 ; 7 uses
  %i.dw = shl i32 %.0144183.i, %2                 ; 4 uses
  %i.dx = sub nsw i32 %1, %i.dw
  %i.dy = call noundef i32 @llvm.smin.i32(i32 %i.ck, i32 %i.dx) ; 2 uses
  %i.dz = sub nsw i32 %0, %i.dv                   ; 3 uses
  %i.ea = call noundef i32 @llvm.smin.i32(i32 %i.ck, i32 %i.dz) ; 4 uses
  %i.eb = icmp sgt i32 %i.dv, 0
  %i.ec = zext i1 %i.eb to i32                    ; 2 uses
  %i.ed = sub nsw i32 %i.dv, %i.ec
  %i.ee = add nsw i32 %i.ea, %i.ec                ; 5 uses
  %i.ef = icmp slt i32 %i.ck, %i.dz
  %i.eg = zext i1 %i.ef to i32
  %i.eh = add nsw i32 %i.ee, %i.eg                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ei = icmp sgt i32 %i.dw, 0                   ; 4 uses
  %i.ej = icmp sgt i32 %i.dy, 0
  %i.ek = sext i32 %i.ed to i64                   ; 10 uses
  %i.el = add nsw i32 %i.dw, -1
  %i.em = mul nsw i32 %i.el, %0
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %5, i64 %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ek ; 17 uses
  %i.eq = add nsw i32 %i.ee, 1
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i64 %i.er, 2                    ; 17 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %5, i64 %i.ek ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.dl, i64 %i.ek ; 2 uses
  %i.eu = add nsw i32 %i.ea, %i.dv                ; 3 uses
  br i1 %i.ej, label %.split.us.preheader.i.i, label %.split.i.i

.split.us.preheader.i.i:                          ; preds = %bb.h
  %i.ev = icmp sgt i32 %i.dz, 0
  %i.ew = icmp eq i32 %i.ea, 0
  %i.ex = sext i32 %i.dw to i64                   ; 3 uses
  %wide.trip.count146.i.i = zext nneg i32 %i.dy to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ea to i64 ; 2 uses
  %brmerge.i.i = or i1 %.not.i.i, %i.ew
  br i1 %i.ev, label %.split.us.i.us.i, label %.split.us.i.i.preheader

.split.us.i.i.preheader:                          ; preds = %.split.us.preheader.i.i
  br i1 %i.dm, label %.split.us.i.i.us, label %.split.us.i.i

.split.us.i.i.us:                                 ; preds = %.split.us.i.i.preheader, %._crit_edge127.us.i.split.i.split.us120
  %indvars.iv148.i.i.us = phi i64 [ %indvars.iv.next149.i.i.us, %._crit_edge127.us.i.split.i.split.us120 ], [ 0, %.split.us.i.i.preheader ] ; 2 uses
  %.0101130.us.i.i.us = phi ptr [ %.1104122.us.i.i.us115, %._crit_edge127.us.i.split.i.split.us120 ], [ %i.dj, %.split.us.i.i.preheader ] ; 2 uses
  %.0103129.us.i.i.us = phi ptr [ %.1102123.us.i.i.us114, %._crit_edge127.us.i.split.i.split.us120 ], [ %6, %.split.us.i.i.preheader ]
  br i1 %i.ei, label %bb.i, label %.lr.ph126.us.i.i.us

bb.i:                                             ; preds = %.split.us.i.i.us
  %i.ey = getelementptr inbounds [4 x i8], ptr %.0101130.us.i.i.us, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ey, ptr readonly align 4 %i.ep, i64 %i.es, i1 false)
  br label %.lr.ph126.us.i.i.us

.lr.ph126.us.i.i.us:                              ; preds = %bb.i, %.split.us.i.i.us
  %i.ez = trunc nuw nsw i64 %indvars.iv148.i.i.us to i32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph126.us.i.i.us, %.loopexit.split.us.i.i.us117
  %indvars.iv143.i.i.us113 = phi i64 [ 0, %.lr.ph126.us.i.i.us ], [ %indvars.iv.next144.i.i.us118, %.loopexit.split.us.i.i.us117 ] ; 2 uses
  %.1102123.us.i.i.us114 = phi ptr [ %.0101130.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1104122.us.i.i.us115, %.loopexit.split.us.i.i.us117 ] ; 3 uses
  %.1104122.us.i.i.us115 = phi ptr [ %.0103129.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1102123.us.i.i.us114, %.loopexit.split.us.i.i.us117 ] ; 4 uses
  %i.fa = add nsw i64 %indvars.iv143.i.i.us113, %i.ex ; 4 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %.1104122.us.i.i.us115, i64 %i.ek
  %i.fc = mul nsw i64 %i.fa, %i.dh
  %gep.us.i.i.us116 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.fc ; 2 uses
  %i.fd = icmp slt i64 %i.fa, %invariant.op.i.i   ; 2 uses
  %i.fe = zext i1 %i.fd to i32
  %i.ff = add nsw i32 %i.ee, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = shl nsw i64 %i.fg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fb, ptr readonly align 4 %gep.us.i.i.us116, i64 %i.fh, i1 false)
  %i.fi = icmp sgt i64 %i.fa, 0
  %brmerge.not.us.i.i.us = select i1 %i.fi, i1 %i.fd, i1 false
  br i1 %brmerge.not.us.i.i.us, label %bb.k, label %.loopexit.split.us.i.i.us117

bb.k:                                             ; preds = %bb.j
  call fastcc void @MaxDiffsForRow(i32 noundef %i.eh, i32 noundef %0, ptr noundef readonly %gep.us.i.i.us116, ptr noundef nonnull %i.et, i32 noundef %10)
  br label %.loopexit.split.us.i.i.us117

.loopexit.split.us.i.i.us117:                     ; preds = %bb.k, %bb.j
  %i.fj = trunc nsw i64 %i.fa to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1102123.us.i.i.us114, ptr noundef %.1104122.us.i.i.us115, ptr noundef nonnull %i.dl, i32 noundef %i.ez, i32 noundef %i.dv, i32 noundef %i.eu, i32 noundef %i.fj, i32 noundef %.fr124, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  %indvars.iv.next144.i.i.us118 = add nuw nsw i64 %indvars.iv143.i.i.us113, 1 ; 2 uses
  %exitcond147.not.i.i.us119 = icmp eq i64 %indvars.iv.next144.i.i.us118, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.i.us119, label %._crit_edge127.us.i.split.i.split.us120, label %bb.j, !llvm.loop !25

._crit_edge127.us.i.split.i.split.us120:          ; preds = %.loopexit.split.us.i.i.us117
  %indvars.iv.next149.i.i.us = add nuw nsw i64 %indvars.iv148.i.i.us, 1 ; 2 uses
  %exitcond151.not.i.i.us = icmp eq i64 %indvars.iv.next149.i.i.us, 14
  br i1 %exitcond151.not.i.i.us, label %ComputeResidualsForTile.exit.i, label %.split.us.i.i.us, !llvm.loop !26

.split.us.i.us.i:                                 ; preds = %.split.us.preheader.i.i, %._crit_edge127.us.i.split.us.us.i
  %indvars.iv148.i.us.i = phi i64 [ %indvars.iv.next149.i.us.i, %._crit_edge127.us.i.split.us.us.i ], [ 0, %.split.us.preheader.i.i ] ; 3 uses
  %.0101130.us.i.us.i = phi ptr [ %.1104122.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %i.dj, %.split.us.preheader.i.i ] ; 2 uses
  %.0103129.us.i.us.i = phi ptr [ %.1102123.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %6, %.split.us.preheader.i.i ]
  %.idx.i.us.i = shl nuw nsw i64 %indvars.iv148.i.us.i, 12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.us.i ; 4 uses
  br i1 %i.ei, label %bb.l, label %.lr.ph126.us.i.us.i

bb.l:                                             ; preds = %.split.us.i.us.i
  %i.fl = getelementptr inbounds [4 x i8], ptr %.0101130.us.i.us.i, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fl, ptr readonly align 4 %i.ep, i64 %i.es, i1 false)
  br label %.lr.ph126.us.i.us.i

.lr.ph126.us.i.us.i:                              ; preds = %bb.l, %.split.us.i.us.i
  %i.fm = trunc nuw nsw i64 %indvars.iv148.i.us.i to i32 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split.us.i.us.us.i, %.lr.ph126.us.i.us.i
  %indvars.iv143.i.us.us.i = phi i64 [ 0, %.lr.ph126.us.i.us.i ], [ %indvars.iv.next144.i.us.us.i, %.loopexit.split.us.i.us.us.i ] ; 2 uses
  %.1102123.us.i.us.us.i = phi ptr [ %.0101130.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1104122.us.i.us.us.i, %.loopexit.split.us.i.us.us.i ] ; 3 uses
  %.1104122.us.i.us.us.i = phi ptr [ %.0103129.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1102123.us.i.us.us.i, %.loopexit.split.us.i.us.us.i ] ; 4 uses
  %i.fn = add nsw i64 %indvars.iv143.i.us.us.i, %i.ex ; 4 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %.1104122.us.i.us.us.i, i64 %i.ek
  %i.fp = mul nsw i64 %i.fn, %i.dh
  %gep.us.i.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.fp ; 2 uses
  %i.fq = icmp slt i64 %i.fn, %invariant.op.i.i   ; 2 uses
  %i.fr = zext i1 %i.fq to i32
  %i.fs = add nsw i32 %i.ee, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fo, ptr readonly align 4 %gep.us.i.us.us.i, i64 %i.fu, i1 false)
  %i.fv = icmp sgt i64 %i.fn, 0
  %or.cond.not112.not115.us.i.us.us.i = select i1 %i.dm, i1 %i.fv, i1 false
  %brmerge.not.us.i.us.us.i = select i1 %or.cond.not112.not115.us.i.us.us.i, i1 %i.fq, i1 false
  br i1 %brmerge.not.us.i.us.us.i, label %bb.n, label %.lr.ph.us.i.preheader.us.us.i

bb.n:                                             ; preds = %bb.m
  call fastcc void @MaxDiffsForRow(i32 noundef %i.eh, i32 noundef %0, ptr noundef readonly %gep.us.i.us.us.i, ptr noundef nonnull %i.et, i32 noundef %10)
  br label %.lr.ph.us.i.preheader.us.us.i

.lr.ph.us.i.preheader.us.us.i:                    ; preds = %bb.n, %bb.m
  %i.fw = trunc nsw i64 %i.fn to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1102123.us.i.us.us.i, ptr noundef %.1104122.us.i.us.us.i, ptr noundef nonnull %i.dl, i32 noundef %i.fm, i32 noundef %i.dv, i32 noundef %i.eu, i32 noundef %i.fw, i32 noundef %.fr124, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  br label %.lr.ph.us.i.us.us.i

.lr.ph.us.i.us.us.i:                              ; preds = %.lr.ph.us.i.us.us.i, %.lr.ph.us.i.preheader.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.lr.ph.us.i.us.us.i ], [ 0, %.lr.ph.us.i.preheader.us.us.i ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !9  ; 4 uses
  %i.fz = lshr i32 %i.fy, 24
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !9
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !9
  %i.ge = lshr i32 %i.fy, 16
  %i.gf = and i32 %i.ge, 255
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1024 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !9
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !9
  %i.gl = lshr i32 %i.fy, 8
  %i.gm = and i32 %i.gl, 255
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2048 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !9
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !9
  %i.gs = and i32 %i.fy, 255
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 3072 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !9
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !9
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.us.i.us.us.i, label %.lr.ph.us.i.us.us.i, !llvm.loop !27

._crit_edge.us.i.us.us.i:                         ; preds = %.lr.ph.us.i.us.us.i
  br i1 %brmerge.i.i, label %.loopexit.split.us.i.us.us.i, label %.lr.ph119.us.i.us.us.i

.lr.ph119.us.i.us.us.i:                           ; preds = %._crit_edge.us.i.us.us.i, %._crit_edge120.us.i.us.us.i
  %.0121.us.i.us.us.i = phi i32 [ %i.ie, %._crit_edge120.us.i.us.us.i ], [ 1, %._crit_edge.us.i.us.us.i ] ; 2 uses
  %i.gy = mul nsw i32 %.0121.us.i.us.us.i, 14
  %i.gz = add nsw i32 %i.gy, %i.fm
  %i.ha = shl nsw i32 %i.gz, 10
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.hb ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph119.us.i.us.us.i
  %indvars.iv137.i.us.us.i = phi i64 [ %indvars.iv.next138.i.us.us.i, %bb.o ], [ 0, %.lr.ph119.us.i.us.us.i ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv137.i.us.us.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !9  ; 4 uses
  %i.hf = lshr i32 %i.he, 24
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !9
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !9
  %i.hk = lshr i32 %i.he, 16
  %i.hl = and i32 %i.hk, 255
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1024 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !9
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !9
  %i.hr = lshr i32 %i.he, 8
  %i.hs = and i32 %i.hr, 255
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 2048 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !9
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !9
  %i.hy = and i32 %i.he, 255
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 3072 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !9
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !9
  %indvars.iv.next138.i.us.us.i = add nuw nsw i64 %indvars.iv137.i.us.us.i, 1 ; 2 uses
  %exitcond141.not.i.us.us.i = icmp eq i64 %indvars.iv.next138.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond141.not.i.us.us.i, label %._crit_edge120.us.i.us.us.i, label %bb.o, !llvm.loop !28

._crit_edge120.us.i.us.us.i:                      ; preds = %bb.o
  %i.ie = add nuw i32 %.0121.us.i.us.us.i, 1      ; 2 uses
  %exitcond142.i.us.us.i = icmp eq i32 %i.ie, %umax.i.i
  br i1 %exitcond142.i.us.us.i, label %.loopexit.split.us.i.us.us.i, label %.lr.ph119.us.i.us.us.i, !llvm.loop !29

.loopexit.split.us.i.us.us.i:                     ; preds = %._crit_edge120.us.i.us.us.i, %._crit_edge.us.i.us.us.i
  %indvars.iv.next144.i.us.us.i = add nuw nsw i64 %indvars.iv143.i.us.us.i, 1 ; 2 uses
  %exitcond147.not.i.us.us.i = icmp eq i64 %indvars.iv.next144.i.us.us.i, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.us.us.i, label %._crit_edge127.us.i.split.us.us.i, label %bb.m, !llvm.loop !25

._crit_edge127.us.i.split.us.us.i:                ; preds = %.loopexit.split.us.i.us.us.i
  %indvars.iv.next149.i.us.i = add nuw nsw i64 %indvars.iv148.i.us.i, 1 ; 2 uses
  %exitcond151.not.i.us.i = icmp eq i64 %indvars.iv.next149.i.us.i, 14
  br i1 %exitcond151.not.i.us.i, label %ComputeResidualsForTile.exit.i, label %.split.us.i.us.i, !llvm.loop !26

.split.us.i.i:                                    ; preds = %.split.us.i.i.preheader, %._crit_edge127.us.i.split.i.split.us
  %indvars.iv148.i.i = phi i64 [ %indvars.iv.next149.i.i, %._crit_edge127.us.i.split.i.split.us ], [ 0, %.split.us.i.i.preheader ] ; 2 uses
  %.0101130.us.i.i = phi ptr [ %.1104122.us.i.i.us, %._crit_edge127.us.i.split.i.split.us ], [ %i.dj, %.split.us.i.i.preheader ] ; 2 uses
  %.0103129.us.i.i = phi ptr [ %.1102123.us.i.i.us, %._crit_edge127.us.i.split.i.split.us ], [ %6, %.split.us.i.i.preheader ]
  br i1 %i.ei, label %bb.p, label %.lr.ph126.us.i.i

bb.p:                                             ; preds = %.split.us.i.i
  %i.if = getelementptr inbounds [4 x i8], ptr %.0101130.us.i.i, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.if, ptr readonly align 4 %i.ep, i64 %i.es, i1 false)
  br label %.lr.ph126.us.i.i

.lr.ph126.us.i.i:                                 ; preds = %bb.p, %.split.us.i.i
  %i.ig = trunc nuw nsw i64 %indvars.iv148.i.i to i32
  br label %.loopexit.split.us.i.i.us

.loopexit.split.us.i.i.us:                        ; preds = %.loopexit.split.us.i.i.us, %.lr.ph126.us.i.i
  %indvars.iv143.i.i.us = phi i64 [ 0, %.lr.ph126.us.i.i ], [ %indvars.iv.next144.i.i.us, %.loopexit.split.us.i.i.us ] ; 2 uses
  %.1102123.us.i.i.us = phi ptr [ %.0101130.us.i.i, %.lr.ph126.us.i.i ], [ %.1104122.us.i.i.us, %.loopexit.split.us.i.i.us ] ; 3 uses
  %.1104122.us.i.i.us = phi ptr [ %.0103129.us.i.i, %.lr.ph126.us.i.i ], [ %.1102123.us.i.i.us, %.loopexit.split.us.i.i.us ] ; 4 uses
  %i.ih = add nsw i64 %indvars.iv143.i.i.us, %i.ex ; 3 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %.1104122.us.i.i.us, i64 %i.ek
end_hunk_1
