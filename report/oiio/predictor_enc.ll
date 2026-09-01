Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/predictor_enc?download=true
inline.NumInlined: 92
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
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
  store i32 %3, ptr %5, align 4, !tbaa !3
  %i.h = icmp slt i32 %3, %4
  br i1 %i.h, label %.lr.ph115, label %.thread.thread

.lr.ph115:                                        ; preds = %bb.a
  %i.i = sext i32 %.fr to i64                     ; 3 uses
  %i.j = shl nsw i64 %i.i, 2
  %i.k = sext i32 %.fr131 to i64
  %6 = add i32 %4, 1
  %7 = sub i32 %6, %3
  br label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.b
  %indvars.iv.next = add i32 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %7
  br i1 %exitcond.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph115, %.loopexit
  %indvars.iv = phi i32 [ 1, %.lr.ph115 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.090114 = phi i32 [ %3, %.lr.ph115 ], [ %i.l, %.loopexit ] ; 3 uses
  %8 = shl nuw i32 1, %indvars.iv
  %9 = sext i32 %8 to i64
  %i.l = add nsw i32 %.090114, 1
  %i.m = sub nsw i32 %.090114, %3
  %i.n = shl nuw i32 1, %i.m                      ; 2 uses
  %i.o = icmp slt i32 %i.n, %.fr131
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %invariant.op = sub nsw i64 %i.k, %i.p
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, %9 ; 2 uses
  %i.q = icmp slt i64 %indvars.iv.next.a, %invariant.op
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.a, %bb.c ] ; 3 uses
  %i.r = add nsw i64 %indvars.iv.a, %i.p
  %i.s = mul nsw i64 %indvars.iv.a, %i.i
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = mul nsw i64 %i.r, %i.i
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %bcmp = tail call i32 @bcmp(ptr %i.t, ptr %i.v, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %.loopexit, %.lr.ph
  %.090112 = phi i32 [ %.090114, %.lr.ph ], [ %4, %.loopexit ] ; 6 uses
  %i.w = icmp eq i32 %.090112, %3
  br i1 %i.w, label %.thread.thread, label %.preheader108

.preheader108:                                    ; preds = %.thread
  %i.x = icmp sgt i32 %.fr131, 0
  %i.y = icmp sgt i32 %.fr, 0
  %or.cond173 = and i1 %i.x, %i.y
  br i1 %or.cond173, label %.preheader108.split.us.split.us.preheader, label %.split.us

.preheader108.split.us.split.us.preheader:        ; preds = %.preheader108
  %i.z = zext nneg i32 %.fr to i64                ; 2 uses
  %i.aa = zext nneg i32 %.fr131 to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %.090112, i32 %3) ; 2 uses
  %i.ab = icmp sgt i32 %.090112, %3
  br i1 %i.ab, label %.preheader107.us.us.us.preheader.lr.ph, label %.split.us

.preheader107.us.us.us.preheader.lr.ph:           ; preds = %.preheader108.split.us.split.us.preheader
  %10 = sub i32 %.090112, %3
  br label %.preheader107.lr.ph.us.us

.preheader107.lr.ph.us.us:                        ; preds = %.preheader107.us.us.us.preheader.lr.ph, %._crit_edge119.split.us.us.us
  %.3.us.us183 = phi i32 [ %.090112, %.preheader107.us.us.us.preheader.lr.ph ], [ %i.am, %._crit_edge119.split.us.us.us ] ; 2 uses
  %indvars.iv139187 = phi i32 [ %10, %.preheader107.us.us.us.preheader.lr.ph ], [ %indvars.iv.next140, %._crit_edge119.split.us.us.us ] ; 2 uses
  %i.ac = shl nuw i32 1, %indvars.iv139187
  %i.ad = sext i32 %i.ac to i64
  br label %.preheader107.us.us.us

.preheader107.us.us.us:                           ; preds = %.preheader107.lr.ph.us.us, %._crit_edge.us.us.us
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %._crit_edge.us.us.us ], [ 0, %.preheader107.lr.ph.us.us ] ; 2 uses
  %i.ae = mul nuw nsw i64 %indvars.iv143, %i.z    ; 2 uses
  %invariant.gep169 = getelementptr [4 x i8], ptr %0, i64 %i.ae
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ae
  br label %.preheader106.us.us.us

bb.d:                                             ; preds = %.lr.ph181
  %indvars.iv.next140.a = add nsw i64 %indvars.iv.next140180, 1 ; 2 uses
  %.not160.not = icmp slt i64 %indvars.iv.next140.a, %i.aj
  br i1 %.not160.not, label %.lr.ph181, label %._crit_edge182, !llvm.loop !9

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %bb.d
  %indvars.iv.next140180 = phi i64 [ %indvars.iv.next140.a, %bb.d ], [ %indvars.iv.next140178, %.lr.ph181.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next140180
  %i.af = load i32, ptr %gep, align 4, !tbaa !3
  %.not104.us.us.us = icmp eq i32 %i.af, %i.ak
  br i1 %.not104.us.us.us, label %bb.d, label %._crit_edge119.split.us.us.us, !llvm.loop !9

._crit_edge182:                                   ; preds = %bb.d, %.preheader106.us.us.us
  %i.ag = icmp slt i64 %indvars.iv.next138, %i.z
  br i1 %i.ag, label %.preheader106.us.us.us, label %._crit_edge.us.us.us, !llvm.loop !10

.preheader106.us.us.us:                           ; preds = %._crit_edge182, %.preheader107.us.us.us
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %._crit_edge182 ], [ 0, %.preheader107.us.us.us ] ; 3 uses
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, %i.ad ; 3 uses
  %i.ah = trunc nsw i64 %indvars.iv.next138 to i32
  %i.ai = tail call noundef i32 @llvm.smin.i32(i32 %i.ah, i32 %.fr)
  %gep170 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv137
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %indvars.iv.next140178 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %.not160.not179 = icmp slt i64 %indvars.iv.next140178, %i.aj
  br i1 %.not160.not179, label %.lr.ph181.preheader, label %._crit_edge182

.lr.ph181.preheader:                              ; preds = %.preheader106.us.us.us
  %i.ak = load i32, ptr %gep170, align 4, !tbaa !3
  br label %.lr.ph181

._crit_edge.us.us.us:                             ; preds = %._crit_edge182
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next144, %i.aa
  br i1 %i.al, label %.preheader107.us.us.us, label %.split.us, !llvm.loop !11

._crit_edge119.split.us.us.us:                    ; preds = %.lr.ph181
  %i.am = add nsw i32 %.3.us.us183, -1            ; 2 uses
  %indvars.iv.next140 = add i32 %indvars.iv139187, -1
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
  %11 = zext nneg i32 %i.as to i64
  %wide.trip.count153 = zext nneg i32 %i.au to i64
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i32 %i.as, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod188 = trunc i32 %i.as to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv150.a = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next151, %._crit_edge ] ; 3 uses
  %i.az = mul i64 %indvars.iv150.a, %i.ax         ; 3 uses
  %12 = mul nuw nsw i64 %indvars.iv150.a, %11
  %invariant.gep171 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %12 ; 3 uses
  br i1 %i.ay, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ba = add i64 %indvars.iv146, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = shl i32 %i.bb, %i.ap
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %gep172 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep171, i64 %indvars.iv146
  store i32 %i.bf, ptr %gep172, align 4, !tbaa !3
  %indvars.iv.next147 = or disjoint i64 %indvars.iv146, 1 ; 2 uses
  %i.bg = add i64 %indvars.iv.next147, %i.az
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = shl i32 %i.bh, %i.ap
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %gep172.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next147
  store i32 %i.bl, ptr %gep172.1, align 4, !tbaa !3
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !12

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv146.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next147.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.bm = add i64 %indvars.iv146.epil.init, %i.az
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = shl i32 %i.bn, %i.ap
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %gep172.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep171, i64 %indvars.iv146.epil.init
  store i32 %i.br, ptr %gep172.epil, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150.a, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge130.split, label %.preheader, !llvm.loop !13

._crit_edge130.split:                             ; preds = %._crit_edge, %bb.e
  store i32 %.us-phi125, ptr %5, align 4, !tbaa !3
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
  %i.d = load i32, ptr %13, align 4, !tbaa !3
  %.neg.i = sdiv i32 %8, -20
  %i.e = add nsw i32 %.neg.i, 5
  %i.f = shl nuw i32 1, %i.e
  %.fr122 = freeze i32 %i.f                       ; 6 uses
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
  br i1 %min.iters.check, label %.lr.ph.preheader219, label %vector.ph

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
  br i1 %cmp.n, label %.thread, label %.lr.ph.preheader219

.lr.ph.preheader219:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader219, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader219 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store i32 -16774400, ptr %i.s, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !17

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not8499 = icmp sgt i32 %2, %3
  br i1 %.not8499, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.c
  %i.t = add i32 %0, -1                           ; 3 uses
  %i.u = add i32 %1, -1                           ; 3 uses
  %i.v = sext i32 %2 to i64                       ; 2 uses
  %i.w = add i32 %3, 1
  %i.x = sub i32 %i.w, %2                         ; 3 uses
  %xtraiter = and i32 %i.x, 1
  %i.y = icmp eq i32 %3, %2
  br i1 %i.y, label %.epil.preheader, label %.lr.ph103.new

.lr.ph103.new:                                    ; preds = %.lr.ph103
  %unroll_iter = and i32 %i.x, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph103.new
  %indvars.iv135 = phi i64 [ %i.v, %.lr.ph103.new ], [ %indvars.iv.next136.1, %bb.d ] ; 4 uses
  %.077101 = phi i32 [ 0, %.lr.ph103.new ], [ %i.aq, %bb.d ]
  %niter = phi i32 [ 0, %.lr.ph103.new ], [ %niter.next.1, %bb.d ]
  %i.z = trunc nsw i64 %indvars.iv135 to i32      ; 3 uses
  %i.aa = shl nuw i32 1, %i.z                     ; 2 uses
  %i.ab = add i32 %i.t, %i.aa
  %i.ac = lshr i32 %i.ab, %i.z
  %i.ad = add i32 %i.u, %i.aa
  %i.ae = lshr i32 %i.ad, %i.z
  %i.af = mul nsw i32 %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv135
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = add i32 %i.af, %.077101
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv.next136 to i32 ; 3 uses
  %i.aj = shl nuw i32 1, %i.ai                    ; 2 uses
  %i.ak = add i32 %i.t, %i.aj
  %i.al = lshr i32 %i.ak, %i.ai
  %i.am = add i32 %i.u, %i.aj
  %i.an = lshr i32 %i.am, %i.ai
  %i.ao = mul nsw i32 %i.al, %i.an                ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next136
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add i32 %i.ao, %i.ah                    ; 3 uses
  %indvars.iv.next136.1 = add nsw i64 %indvars.iv135, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge104.loopexit.unr-lcssa, label %bb.d, !llvm.loop !18

._crit_edge104.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge104.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge104.loopexit.unr-lcssa, %.lr.ph103
  %indvars.iv135.epil.init = phi i64 [ %i.v, %.lr.ph103 ], [ %indvars.iv.next136.1, %._crit_edge104.loopexit.unr-lcssa ] ; 2 uses
  %.077101.epil.init = phi i32 [ 0, %.lr.ph103 ], [ %i.aq, %._crit_edge104.loopexit.unr-lcssa ]
  %lcmp.mod221 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.ar = trunc nsw i64 %indvars.iv135.epil.init to i32 ; 3 uses
  %i.as = shl nuw i32 1, %i.ar                    ; 2 uses
  %i.at = add i32 %i.t, %i.as
  %i.au = lshr i32 %i.at, %i.ar
  %i.av = add i32 %i.u, %i.as
  %i.aw = lshr i32 %i.av, %i.ar
  %i.ax = mul nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv135.epil.init
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !3
  %i.az = add i32 %i.ax, %.077101.epil.init
  br label %._crit_edge104.loopexit

._crit_edge104.loopexit:                          ; preds = %._crit_edge104.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa217 = phi i32 [ %i.aq, %._crit_edge104.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  %i.ba = zext i32 %.lcssa217 to i64
  br label %._crit_edge104

end_hunk_0
begin_hunk_1_@VP8LResidualImage:bb.a
.lr.ph89.i:                                       ; preds = %bb.aw
  %i.py = icmp sgt i32 %.fr122, 1                 ; 2 uses
  %i.pz = zext nneg i32 %1 to i64                 ; 10 uses
  %i.qa = icmp sgt i32 %0, 0
  br i1 %i.qa, label %.lr.ph89.split.us.split.us.preheader.i, label %.lr.ph89.split.us.split.i

.lr.ph89.split.us.split.us.preheader.i:           ; preds = %.lr.ph89.i
  %i.qb = zext nneg i32 %0 to i64                 ; 2 uses
  br label %.lr.ph89.split.us.split.us.i

.lr.ph89.split.us.split.us.i:                     ; preds = %.PredictBatch.exit.loopexit_crit_edge.us.us.i, %.lr.ph89.split.us.split.us.preheader.i
  %indvars.iv113.i = phi i64 [ 0, %.lr.ph89.split.us.split.us.preheader.i ], [ %indvars.iv.next114.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 3 uses
  %.07487.us.us.i = phi ptr [ %i.pi, %.lr.ph89.split.us.split.us.preheader.i ], [ %.1.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 3 uses
  %.07586.us.us.i = phi ptr [ %i.ph, %.lr.ph89.split.us.split.us.preheader.i ], [ %.176.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 4 uses
  %.07885.us.us.i = phi ptr [ %i.pf, %.lr.ph89.split.us.split.us.preheader.i ], [ %.07984.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 2 uses
  %.07984.us.us.i = phi ptr [ %6, %.lr.ph89.split.us.split.us.preheader.i ], [ %.07885.us.us.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i ] ; 3 uses
  %i.qc = mul nuw nsw i64 %indvars.iv113.i, %i.qb
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.qc ; 2 uses
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 4 uses
  %i.qe = icmp samesign ult i64 %indvars.iv.next114.i, %i.pz
  %i.qf = zext i1 %i.qe to i32
  %i.qg = add nuw nsw i32 %0, %i.qf
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = shl nuw nsw i64 %i.qh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.07984.us.us.i, ptr align 4 %i.qd, i64 %i.qi, i1 false)
  %i.qj = trunc i64 %indvars.iv113.i to i32       ; 3 uses
  br i1 %i.py, label %bb.ax, label %.lr.ph.us.us.i

bb.ax:                                            ; preds = %.lr.ph89.split.us.split.us.i
  %i.qk = add i32 %i.qj, 2
  %i.ql = icmp slt i32 %i.qk, %1
  br i1 %i.ql, label %bb.ay, label %.lr.ph.us.us.i

bb.ay:                                            ; preds = %bb.ax
  %i.qm = mul nuw nsw i64 %indvars.iv.next114.i, %i.qb
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.qm
  call fastcc void @MaxDiffsForRow(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.qn, ptr noundef %.07586.us.us.i, i32 noundef %10)
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph89.split.us.split.us.i, %bb.ay, %bb.ax
  %.176.us.us.i = phi ptr [ %.07487.us.us.i, %bb.ax ], [ %.07487.us.us.i, %bb.ay ], [ %.07586.us.us.i, %.lr.ph89.split.us.split.us.i ] ; 2 uses
  %.1.us.us.i = phi ptr [ %.07586.us.us.i, %bb.ax ], [ %.07586.us.us.i, %bb.ay ], [ %.07487.us.us.i, %.lr.ph89.split.us.split.us.i ]
  %i.qo = lshr i32 %i.qj, %.pre
  %i.qp = mul nsw i32 %i.qo, %.pre148
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.us.us.i
  %.07283.us.us.i = phi i32 [ 0, %.lr.ph.us.us.i ], [ %spec.select.us.us.i, %bb.az ] ; 4 uses
  %i.qq = ashr i32 %.07283.us.us.i, %.pre
  %i.qr = add nsw i32 %i.qq, %i.qp
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %7, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !3
  %i.qv = lshr i32 %i.qu, 8
  %i.qw = and i32 %i.qv, 255
  %i.qx = add nsw i32 %.07283.us.us.i, %.pre144   ; 2 uses
  %spec.select.us.us.i = call i32 @llvm.smin.i32(i32 %i.qx, i32 %0) ; 2 uses
  %i.qy = sext i32 %.07283.us.us.i to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.qy
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.07885.us.us.i, ptr noundef %.07984.us.us.i, ptr noundef %.176.us.us.i, i32 noundef %i.qw, i32 noundef %.07283.us.us.i, i32 noundef %spec.select.us.us.i, i32 noundef %i.qj, i32 noundef %.fr122, i32 noundef %9, i32 noundef %10, ptr noundef %i.qz)
  %i.ra = icmp slt i32 %i.qx, %0
  br i1 %i.ra, label %bb.az, label %.PredictBatch.exit.loopexit_crit_edge.us.us.i, !llvm.loop !40

.PredictBatch.exit.loopexit_crit_edge.us.us.i:    ; preds = %bb.az
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next114.i, %i.pz
  br i1 %exitcond117.not.i, label %CopyImageWithPrediction.exit, label %.lr.ph89.split.us.split.us.i, !llvm.loop !41

.lr.ph89.split.us.split.i:                        ; preds = %.lr.ph89.i
  br i1 %i.py, label %.lr.ph89.split.us.split.split.us.i, label %PredictBatch.exit.loopexit.us.i.preheader

PredictBatch.exit.loopexit.us.i.preheader:        ; preds = %.lr.ph89.split.us.split.i
  %xtraiter224 = and i64 %i.pz, 1
  %i.rb = icmp eq i32 %1, 1
  br i1 %i.rb, label %PredictBatch.exit.loopexit.us.i.epil.preheader, label %PredictBatch.exit.loopexit.us.i.preheader.new

PredictBatch.exit.loopexit.us.i.preheader.new:    ; preds = %PredictBatch.exit.loopexit.us.i.preheader
  %unroll_iter227 = and i64 %i.pz, 2147483646
  br label %PredictBatch.exit.loopexit.us.i

.lr.ph89.split.us.split.split.us.i:               ; preds = %.lr.ph89.split.us.split.i, %PredictBatch.exit.loopexit.us.us95.i
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %PredictBatch.exit.loopexit.us.us95.i ], [ 0, %.lr.ph89.split.us.split.i ] ; 3 uses
  %.07487.us.us91.i = phi ptr [ %.07586.us.us92.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %i.pi, %.lr.ph89.split.us.split.i ]
  %.07586.us.us92.i = phi ptr [ %.07487.us.us91.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %i.ph, %.lr.ph89.split.us.split.i ] ; 2 uses
  %.07885.us.us93.i = phi ptr [ %.07984.us.us94.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %i.pf, %.lr.ph89.split.us.split.i ]
  %.07984.us.us94.i = phi ptr [ %.07885.us.us93.i, %PredictBatch.exit.loopexit.us.us95.i ], [ %6, %.lr.ph89.split.us.split.i ] ; 2 uses
  %i.rc = mul nsw i64 %indvars.iv108.i, %i.pd
  %i.rd = getelementptr inbounds [4 x i8], ptr %5, i64 %i.rc
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 4 uses
  %i.re = icmp samesign ult i64 %indvars.iv.next109.i, %i.pz
  %i.rf = zext i1 %i.re to i32
  %i.rg = add nsw i32 %0, %i.rf
  %i.rh = sext i32 %i.rg to i64
  %i.ri = shl nsw i64 %i.rh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.07984.us.us94.i, ptr align 4 %i.rd, i64 %i.ri, i1 false)
  %i.rj = add nuw nsw i64 %indvars.iv108.i, 2
  %i.rk = icmp samesign ult i64 %i.rj, %i.pz
  br i1 %i.rk, label %bb.ba, label %PredictBatch.exit.loopexit.us.us95.i

bb.ba:                                            ; preds = %.lr.ph89.split.us.split.split.us.i
  %i.rl = mul nsw i64 %indvars.iv.next109.i, %i.pd
  %i.rm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.rl
  call fastcc void @MaxDiffsForRow(i32 noundef %0, i32 noundef %0, ptr noundef %i.rm, ptr noundef %.07586.us.us92.i, i32 noundef %10)
  br label %PredictBatch.exit.loopexit.us.us95.i

PredictBatch.exit.loopexit.us.us95.i:             ; preds = %bb.ba, %.lr.ph89.split.us.split.split.us.i
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %i.pz
  br i1 %exitcond112.not.i, label %CopyImageWithPrediction.exit, label %.lr.ph89.split.us.split.split.us.i, !llvm.loop !41

PredictBatch.exit.loopexit.us.i:                  ; preds = %PredictBatch.exit.loopexit.us.i, %PredictBatch.exit.loopexit.us.i.preheader.new
  %indvars.iv103.i = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader.new ], [ %indvars.iv.next104.i.1, %PredictBatch.exit.loopexit.us.i ] ; 3 uses
  %niter228 = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader.new ], [ %niter228.next.1, %PredictBatch.exit.loopexit.us.i ]
  %i.rn = mul nsw i64 %indvars.iv103.i, %i.pd
  %i.ro = getelementptr inbounds [4 x i8], ptr %5, i64 %i.rn
  %indvars.iv.next104.i = or disjoint i64 %indvars.iv103.i, 1 ; 2 uses
  %i.rp = icmp samesign ult i64 %indvars.iv.next104.i, %i.pz
  %i.rq = zext i1 %i.rp to i32
  %i.rr = add nsw i32 %0, %i.rq
  %i.rs = sext i32 %i.rr to i64
  %i.rt = shl nsw i64 %i.rs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %i.ro, i64 %i.rt, i1 false)
  %i.ru = mul nsw i64 %indvars.iv.next104.i, %i.pd
  %i.rv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ru
  %indvars.iv.next104.i.1 = add nuw nsw i64 %indvars.iv103.i, 2 ; 3 uses
  %i.rw = icmp samesign ult i64 %indvars.iv.next104.i.1, %i.pz
  %i.rx = zext i1 %i.rw to i32
  %i.ry = add nsw i32 %0, %i.rx
  %i.rz = sext i32 %i.ry to i64
  %i.sa = shl nsw i64 %i.rz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pf, ptr align 4 %i.rv, i64 %i.sa, i1 false)
  %niter228.next.1 = add i64 %niter228, 2         ; 2 uses
  %niter228.ncmp.1 = icmp eq i64 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1, label %CopyImageWithPrediction.exit.loopexit209.unr-lcssa, label %PredictBatch.exit.loopexit.us.i, !llvm.loop !41

PredictBatch.exit.i:                              ; preds = %PredictBatch.exit.i.preheader, %PredictBatch.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %PredictBatch.exit.i ], [ 1, %PredictBatch.exit.i.preheader ] ; 2 uses
  %.07885.i = phi ptr [ %.07984.i, %PredictBatch.exit.i ], [ %6, %PredictBatch.exit.i.preheader ] ; 3 uses
  %.07984.i = phi ptr [ %.07885.i, %PredictBatch.exit.i ], [ %i.px, %PredictBatch.exit.i.preheader ] ; 4 uses
  %i.sb = mul nsw i64 %indvars.iv.i, %i.pl
  %i.sc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.sb ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.sd = icmp samesign ult i64 %indvars.iv.next.i, %i.pm
  %i.se = zext i1 %i.sd to i32
  %i.sf = add nsw i32 %0, %i.se
  %i.sg = sext i32 %i.sf to i64
  %i.sh = shl nsw i64 %i.sg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.07984.i, ptr align 4 %i.sc, i64 %i.sh, i1 false)
  %i.si = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !31
  tail call void %i.si(ptr noundef nonnull %.07984.i, ptr noundef nonnull %.07885.i, i32 noundef 1, ptr noundef %i.sc) #10, !inline_history !39
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.sk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 88), align 8, !tbaa !31
  %i.sl = getelementptr inbounds nuw i8, ptr %.07984.i, i64 4
  %i.sm = getelementptr inbounds nuw i8, ptr %.07885.i, i64 4
  tail call void %i.sk(ptr noundef nonnull %i.sl, ptr noundef nonnull %i.sm, i32 noundef %i.h, ptr noundef nonnull %i.sj) #10, !inline_history !39
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.pm
  br i1 %exitcond.not.i, label %CopyImageWithPrediction.exit, label %PredictBatch.exit.i, !llvm.loop !42

CopyImageWithPrediction.exit.loopexit209.unr-lcssa: ; preds = %PredictBatch.exit.loopexit.us.i
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %CopyImageWithPrediction.exit, label %PredictBatch.exit.loopexit.us.i.epil.preheader

PredictBatch.exit.loopexit.us.i.epil.preheader:   ; preds = %CopyImageWithPrediction.exit.loopexit209.unr-lcssa, %PredictBatch.exit.loopexit.us.i.preheader
  %indvars.iv103.i.epil.init = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader ], [ %indvars.iv.next104.i.1, %CopyImageWithPrediction.exit.loopexit209.unr-lcssa ] ; 2 uses
  %lcmp.mod226 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod226)
  %i.sn = mul nsw i64 %indvars.iv103.i.epil.init, %i.pd
  %i.so = getelementptr inbounds [4 x i8], ptr %5, i64 %i.sn
  %indvars.iv.next104.i.epil = add nuw nsw i64 %indvars.iv103.i.epil.init, 1
  %i.sp = icmp samesign ult i64 %indvars.iv.next104.i.epil, %i.pz
  %i.sq = zext i1 %i.sp to i32
  %i.sr = add nsw i32 %0, %i.sq
  %i.ss = sext i32 %i.sr to i64
  %i.st = shl nsw i64 %i.ss, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %i.so, i64 %i.st, i1 false)
  br label %CopyImageWithPrediction.exit

CopyImageWithPrediction.exit:                     ; preds = %PredictBatch.exit.i, %PredictBatch.exit.loopexit.us.i.epil.preheader, %CopyImageWithPrediction.exit.loopexit209.unr-lcssa, %PredictBatch.exit.loopexit.us.us95.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i, %.thread, %bb.aw, %.lr.ph89.i.thread
  %i.su = add nsw i32 %i.d, %12
  %i.sv = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %i.su, ptr noundef nonnull %13) #10
  br label %bb.bb

bb.bb:                                            ; preds = %bb.av, %CopyImageWithPrediction.exit
  %.1 = phi i32 [ %i.sv, %CopyImageWithPrediction.exit ], [ 0, %bb.av ]
  ret i32 %.1
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LColorSpaceTransform(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #2 {
bb.a:
  %10 = alloca %struct.VP8LMultipliers, align 4   ; 4 uses
  %i.a = alloca [256 x i32], align 16             ; 6 uses
  %i.b = alloca [256 x i32], align 16             ; 6 uses
  %i.c = shl nuw i32 1, %2                        ; 7 uses
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
  %i.l = sext i32 %0 to i64                       ; 3 uses
  br i1 %i.k, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.m = add nsw i32 %0, 2
  %11 = shl i32 %0, %2
  %i.n = sext i32 %i.m to i64
  %i.o = zext nneg i32 %i.f to i64                ; 2 uses
  %wide.trip.count208 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.n
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %bb.n ] ; 5 uses
  %indvars.iv203 = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next204, %bb.n ] ; 2 uses
  %indvars.iv = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %.sroa.0.0191.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.0.2.us, %bb.n ]
  %.sroa.6.0190.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.6.2.us, %bb.n ]
  %.sroa.8.0189.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.8.2.us, %bb.n ]
  %.sroa.0126.0188.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sink226.off0, %bb.n ]
  %.sroa.8133.sroa.0.0187.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.8133.sroa.0.0.extract.trunc.us, %bb.n ]
  %.sroa.8133.sroa.8.0186.us = phi i16 [ 0, %.preheader.us.preheader ], [ %.sroa.8133.sroa.8.0.extract.shift.us, %bb.n ]
  %12 = sext i32 %indvars.iv203 to i64
  %i.p = trunc nuw nsw i64 %indvars.iv206 to i32  ; 2 uses
  %i.q = shl i32 %i.p, %2                         ; 4 uses
  %i.r = add nsw i32 %i.q, %i.c
  %i.s = call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %1) ; 2 uses
  %i.t = mul nuw nsw i64 %indvars.iv206, %i.o
  %.not113.us = icmp eq i64 %indvars.iv206, 0
  %i.u = sub nsw i32 %1, %i.q
  %i.v = call i32 @llvm.smin.i32(i32 %i.c, i32 %i.u) ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = mul nsw i32 %i.q, %0
  %i.y = icmp slt i32 %i.q, %i.s
  %13 = sext i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %._crit_edge171.us
  %indvars.iv203.a = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next204.a, %._crit_edge171.us ] ; 3 uses
  %indvars.iv196 = phi i32 [ %indvars.iv, %.preheader.us ], [ %indvars.iv.next197, %._crit_edge171.us ] ; 2 uses
  %.sroa.0.1177.us = phi i8 [ %.sroa.0.0191.us, %.preheader.us ], [ %.sroa.0.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.6.1176.us = phi i8 [ %.sroa.6.0190.us, %.preheader.us ], [ %.sroa.6.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.8.1175.us = phi i8 [ %.sroa.8.0189.us, %.preheader.us ], [ %.sroa.8.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.0126.1174.us = phi i8 [ %.sroa.0126.0188.us, %.preheader.us ], [ %.sink226.off0, %._crit_edge171.us ] ; 2 uses
  %.sroa.8133.sroa.0.1173.us = phi i8 [ %.sroa.8133.sroa.0.0187.us, %.preheader.us ], [ %.sroa.8133.sroa.0.0.extract.trunc.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.8133.sroa.8.1172.us = phi i16 [ %.sroa.8133.sroa.8.0186.us, %.preheader.us ], [ %.sroa.8133.sroa.8.0.extract.shift.us, %._crit_edge171.us ] ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv203.a to i32 ; 3 uses
  %i.aa = shl i32 %i.z, %2                        ; 4 uses
  %i.ab = add nsw i32 %i.aa, %i.c
  %i.ac = call noundef i32 @llvm.smin.i32(i32 %i.ab, i32 %0)
  %i.ad = add nuw nsw i64 %indvars.iv203.a, %i.t  ; 2 uses
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
  %.sroa.8133.sroa.8.0.insert.shift156.us = shl nuw i16 %.sroa.8133.sroa.8.1172.us, 8
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
  %extract.t228 = trunc i24 %i.ap to i8
  %extract231 = lshr i24 %i.ap, 8
  %extract.t232 = trunc nuw i24 %extract231 to i16
  br label %bb.c

.split.us:                                        ; preds = %bb.b
  %.sroa.8133.sroa.8.0.insert.shift152.us = shl nuw i16 %.sroa.8133.sroa.8.1172.us, 8
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
  %extract.t227 = trunc i24 %i.aq to i8
  %extract229 = lshr i24 %i.aq, 8
  %extract.t230 = trunc nuw i24 %extract229 to i16
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %.split107.us
  %.sink226.off0 = phi i8 [ %extract.t227, %.split.us ], [ %extract.t228, %.split107.us ] ; 4 uses
  %.sink226.off8 = phi i16 [ %extract.t230, %.split.us ], [ %extract.t232, %.split107.us ] ; 4 uses
  %.sroa.8.2.us = phi i8 [ %.sroa.8.1175.us, %.split.us ], [ %i.al, %.split107.us ] ; 2 uses
  %.sroa.6.2.us = phi i8 [ %.sroa.6.1176.us, %.split.us ], [ %i.aj, %.split107.us ] ; 2 uses
  %.sroa.0.2.us = phi i8 [ %.sroa.0.1177.us, %.split.us ], [ %i.ah, %.split107.us ] ; 2 uses
  %.sroa.8133.sroa.0.0.extract.trunc.us = trunc i16 %.sink226.off8 to i8 ; 2 uses
  %.sroa.8133.sroa.8.0.extract.shift.us = lshr i16 %.sink226.off8, 8 ; 2 uses
  %i.ar = zext i16 %.sink226.off8 to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = zext i8 %.sink226.off0 to i32
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = or disjoint i32 %i.au, -16777216
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ad
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %.sroa.8133.0.insert.ext.us = zext i16 %.sink226.off8 to i24
  %.sroa.8133.0.insert.shift.us = shl nuw i24 %.sroa.8133.0.insert.ext.us, 8
  %.sroa.0126.0.insert.ext.us = zext i8 %.sink226.off0 to i24
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
  call void %i.bd(ptr noundef nonnull %10, ptr noundef %.01415.i.us, i32 noundef %i.ay) #10, !inline_history !44
  %i.be = getelementptr inbounds [4 x i8], ptr %.01415.i.us, i64 %i.l
  %i.bf = icmp samesign ugt i32 %.016.i.us, 1
  br i1 %i.bf, label %bb.d, label %CopyTileWithColorTransform.exit.us, !llvm.loop !45

CopyTileWithColorTransform.exit.us:               ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %i.y, label %.lr.ph170.us, label %._crit_edge171.us

bb.e:                                             ; preds = %.lr.ph170.us, %._crit_edge.us
  %indvars.iv205 = phi i64 [ %12, %.lr.ph170.us ], [ %indvars.iv.next206, %._crit_edge.us ] ; 2 uses
  %indvars.iv199 = phi i32 [ %indvars.iv196, %.lr.ph170.us ], [ %indvars.iv.next200, %._crit_edge.us ] ; 2 uses
  %14 = mul nsw i64 %indvars.iv205, %i.l          ; 2 uses
  %15 = add nsw i64 %14, %20
  %16 = trunc nsw i64 %14 to i32
  %i.bg = add i32 %i.ac, %16
  %17 = sext i32 %i.bg to i64                     ; 2 uses
  %i.bh = icmp slt i64 %15, %17
  br i1 %i.bh, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.e
  %i.bi = sext i32 %indvars.iv199 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.m
  %indvars.iv196.a = phi i64 [ %i.bi, %.lr.ph.us.preheader ], [ %indvars.iv.next197.a, %bb.m ] ; 5 uses
  %i.bj = getelementptr [4 x i8], ptr %4, i64 %indvars.iv196.a ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3  ; 5 uses
  %i.bl = icmp sgt i64 %indvars.iv196.a, 1
  br i1 %i.bl, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.us
  %i.bm = getelementptr i8, ptr %i.bj, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = icmp eq i32 %i.bk, %i.bq
  br i1 %i.br, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.us
  %.not114.us = icmp slt i64 %indvars.iv196.a, %i.n
  br i1 %.not114.us, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr i8, ptr %i.bj, i64 -8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = sub nsw i64 %indvars.iv196.a, %i.l
  %i.bv = getelementptr [4 x i8], ptr %4, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = icmp eq i32 %i.bt, %i.bx
  br i1 %i.by, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr i8, ptr %i.bj, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = getelementptr i8, ptr %i.bv, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ce = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.cf = icmp eq i32 %i.bk, %i.ce
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.cg = lshr i32 %i.bk, 16
  %i.ch = and i32 %i.cg, 255
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !3
  %i.cm = and i32 %i.bk, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g
  %indvars.iv.next197.a = add nsw i64 %indvars.iv196.a, 1 ; 2 uses
  %18 = icmp slt i64 %indvars.iv.next197.a, %17
  br i1 %18, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !46

._crit_edge.us:                                   ; preds = %bb.m, %bb.e
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1 ; 2 uses
  %19 = icmp slt i64 %indvars.iv.next206, %13
  %indvars.iv.next200 = add i32 %indvars.iv199, %0
  br i1 %19, label %bb.e, label %._crit_edge171.us, !llvm.loop !47

._crit_edge171.us:                                ; preds = %._crit_edge.us, %CopyTileWithColorTransform.exit.us
  %indvars.iv.next204.a = add nuw nsw i64 %indvars.iv203.a, 1 ; 2 uses
  %indvars.iv.next197 = add i32 %indvars.iv196, %i.c
  %exitcond205.not = icmp eq i64 %indvars.iv.next204.a, %wide.trip.count
  br i1 %exitcond205.not, label %._crit_edge180.us, label %bb.b, !llvm.loop !48

bb.n:                                             ; preds = %._crit_edge180.us
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %11
  %indvars.iv.next204 = add i32 %indvars.iv203, %i.c
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count208
  br i1 %exitcond209.not, label %._crit_edge193, label %.preheader.us, !llvm.loop !49

.lr.ph170.us:                                     ; preds = %CopyTileWithColorTransform.exit.us
  %20 = sext i32 %i.aa to i64
  br label %bb.e

._crit_edge180.us:                                ; preds = %._crit_edge171.us
  %i.cr = trunc i64 %indvars.iv206 to i32
  %i.cs = mul i32 %7, %i.cr
  %i.ct = sdiv i32 %i.cs, %i.h
  %i.cu = add nsw i32 %i.ct, %i.i
  %i.cv = call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.cu, ptr noundef nonnull %8) #10
  %.not.us = icmp eq i32 %i.cv, 0
  br i1 %.not.us, label %.loopexit, label %bb.n

bb.o:                                             ; preds = %.preheader
  %i.cw = add nuw nsw i32 %.0102192, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %i.h
  br i1 %exitcond.not, label %._crit_edge193, label %.preheader, !llvm.loop !49

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %.0102192 = phi i32 [ %i.cw, %bb.o ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.cx = mul nsw i32 %.0102192, %7
  %i.cy = sdiv i32 %i.cx, %i.h
  %i.cz = add nsw i32 %i.cy, %i.i
  %i.da = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.cz, ptr noundef nonnull %8) #10
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %.loopexit, label %bb.o

._crit_edge193:                                   ; preds = %bb.o, %bb.n, %bb.a
  call void @VP8LOptimizeSampling(ptr noundef %5, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 9, ptr noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge180.us, %._crit_edge193
  %.0100 = phi i32 [ 1, %._crit_edge193 ], [ 0, %._crit_edge180.us ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0100
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
  call void %i.s(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 0, ptr noundef nonnull %i.d) #10, !inline_history !50
  %i.t = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.u = call i64 %i.t(ptr noundef nonnull %i.d, ptr noundef nonnull %8) #10, !inline_history !51
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
  call void %i.bp(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.bo, ptr noundef nonnull %i.c) #10, !inline_history !50
  %i.bq = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.br = call i64 %i.bq(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #10, !inline_history !51
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
end_hunk_1
