Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_8_curves?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @Optimize8ByJoiningCurves(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %i.b = alloca [3 x float], align 4              ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !24     ; 3 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !9      ; 4 uses
  %i.e = and i32 %i.d, 4194304
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %5, align 4, !tbaa !9      ; 3 uses
  %i.g = and i32 %i.f, 4194304
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.d, 7
  %.not30 = icmp eq i32 %i.h, 1
  %i.i = and i32 %i.f, 7
  %.not31 = icmp eq i32 %i.i, 1
  %or.cond = and i1 %.not30, %.not31
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i32 %i.d, 3
  %i.k = and i32 %i.j, 15                         ; 4 uses
  %i.l = lshr i32 %i.f, 3
  %i.m = and i32 %i.l, 15
  %.not32 = icmp eq i32 %i.k, %i.m
  %i.n = and i32 %i.d, 104
  %or.cond.not = icmp eq i32 %i.n, 8
  %or.cond37 = and i1 %or.cond.not, %.not32
  br i1 %or.cond37, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @cmsPipelineGetPtrToFirstStage(ptr noundef %i.c) #6 ; 2 uses
  %.not3338 = icmp eq ptr %i.o, null
  br i1 %.not3338, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.039 = phi ptr [ %i.q, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = tail call i32 @cmsStageType(ptr noundef nonnull %.039) #6
  %.not36 = icmp eq i32 %i.p, 1668707188
  br i1 %.not36, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.q = tail call ptr @cmsStageNext(ptr noundef nonnull %.039) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.q, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.r = tail call ptr @cmsGetPipelineContextID(ptr noundef %i.c) #6
  %i.s = tail call ptr @_cmsMallocZero(ptr noundef %i.r, i32 noundef 4112) #6 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %ComputeCompositeCurves.exit, label %.preheader22.i

.preheader22.i:                                   ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.k, 4
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge27.us.us.i, %.preheader22.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader22.i ], [ %indvars.iv.next45.i, %._crit_edge27.us.us.i ] ; 3 uses
  %i.v = trunc nuw nsw i64 %indvars.iv44.i to i32
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fdiv float %i.w, 2.550000e+02            ; 2 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.x, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %broadcast.splat, ptr %i.y, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4
  br label %vector.body, !llvm.loop !18

scalar.ph:                                        ; preds = %.preheader.us.us.i, %scalar.ph
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.a
  store float %i.x, ptr %i.z, align 4, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %scalar.ph, !llvm.loop !19

._crit_edge.us.us.i:                              ; preds = %scalar.ph
  call void @cmsPipelineEvalFloat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.c) #6
  %invariant.gep.us.us.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv44.i
  br label %bb.g

bb.g:                                             ; preds = %_cmsSaturateWord.exit.us.us.i, %._crit_edge.us.us.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %_cmsSaturateWord.exit.us.us.i ], [ 0, %._crit_edge.us.us.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv39.i
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !26
  %i.ac = fpext float %i.ab to double
  %i.ad = fmul double %i.ac, 6.553500e+04
  %i.ae = fadd double %i.ad, 5.000000e-01         ; 3 uses
  %i.af = fcmp ugt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.h, label %_cmsSaturateWord.exit.us.us.i

bb.h:                                             ; preds = %bb.g
  %i.ag = fcmp ult double %i.ae, 6.553500e+04
  br i1 %i.ag, label %bb.i, label %_cmsSaturateWord.exit.us.us.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call double @llvm.floor.f64(double %i.ae)
  %i.ai = fptoui double %i.ah to i16
  %i.aj = zext i16 %i.ai to i32
  %i.ak = mul nuw nsw i32 %i.aj, 65281
  %i.al = add nuw nsw i32 %i.ak, 8388608
  %i.am = lshr i32 %i.al, 24
  %i.an = trunc nuw nsw i32 %i.am to i8
  br label %_cmsSaturateWord.exit.us.us.i

_cmsSaturateWord.exit.us.us.i:                    ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.us.us.i = phi i8 [ %i.an, %bb.i ], [ 0, %bb.g ], [ -1, %bb.h ]
  %gep.us.us.i = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep.us.us.i, i64 %indvars.iv39.i
  store i8 %.0.i.us.us.i, ptr %gep.us.us.i, align 1, !tbaa !11
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count.i
  br i1 %exitcond43.not.i, label %._crit_edge27.us.us.i, label %bb.g, !llvm.loop !20

._crit_edge27.us.us.i:                            ; preds = %_cmsSaturateWord.exit.us.us.i
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next45.i, 256
  br i1 %exitcond47.not.i, label %ComputeCompositeCurves.exit, label %.preheader.us.us.i, !llvm.loop !21

ComputeCompositeCurves.exit:                      ; preds = %._crit_edge27.us.us.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ao = load i32, ptr %6, align 4, !tbaa !9
  %i.ap = and i32 %i.ao, -33554497
  %i.aq = or disjoint i32 %i.ap, 64
  store i32 %i.aq, ptr %6, align 4, !tbaa !9
  store ptr %i.s, ptr %1, align 8, !tbaa !29
  store ptr @_fast_float_free_user_data, ptr %2, align 8, !tbaa !29
  %i.ar = icmp eq i32 %i.k, 1
  %i.as = call fastcc i32 @AllCurvesAreLinear(ptr noundef %i.s)
  %.not35 = icmp eq i32 %i.as, 0                  ; 2 uses
  %i.at = select i1 %.not35, ptr @FastEvaluateRGBCurves8, ptr @FastRGBIdentity8
  %i.au = select i1 %.not35, ptr @FastEvaluateGrayCurves8, ptr @FastGrayIdentity8
  %storemerge = select i1 %i.ar, ptr %i.au, ptr %i.at
  store ptr %storemerge, ptr %0, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b, %ComputeCompositeCurves.exit
  %.027 = phi i32 [ 1, %ComputeCompositeCurves.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @cmsPipelineGetPtrToFirstStage(ptr noundef) local_unnamed_addr #2

declare i32 @cmsStageType(ptr noundef) local_unnamed_addr #2

declare ptr @cmsStageNext(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_fast_float_free_user_data(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  tail call void @_cmsFree(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @AllCurvesAreLinear(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  br label %bb.e

bb.a:                                             ; preds = %bb.e
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
  %.not.128 = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %.not.128, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %indvars.iv.next.129 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.129
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = zext i8 %i.f to i64
  %.not.231 = icmp eq i64 %indvars.iv.next.129, %i.g
  br i1 %.not.231, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.232 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.232
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i64
  %.not.3 = icmp eq i64 %indvars.iv.next.232, %i.j
  br i1 %.not.3, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %.preheader.1, label %bb.e, !llvm.loop !30

bb.e:                                             ; preds = %bb.d, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %bb.d ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i64
  %.not = icmp eq i64 %indvars.iv, %i.m
  br i1 %.not, label %bb.a, label %.loopexit

.preheader.1:                                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next.1.3, %bb.j ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i64
  %.not.1 = icmp eq i64 %indvars.iv.1, %i.q
  br i1 %.not.1, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next.1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i64
  %.not.1.1 = icmp eq i64 %indvars.iv.next.1, %i.t
  br i1 %.not.1.1, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.1.1 = or disjoint i64 %indvars.iv.1, 2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next.1.1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i64
  %.not.1.2 = icmp eq i64 %indvars.iv.next.1.1, %i.w
  br i1 %.not.1.2, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.1.2 = or disjoint i64 %indvars.iv.1, 3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next.1.2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %.not.1.3 = icmp eq i64 %indvars.iv.next.1.2, %i.z
  br i1 %.not.1.3, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %indvars.iv.next.1.3, 256
  br i1 %exitcond.1.not.3, label %.preheader.2, label %bb.f, !llvm.loop !30

.preheader.2:                                     ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.preheader.2
  %indvars.iv.2 = phi i64 [ 0, %.preheader.2 ], [ %indvars.iv.next.2.3, %bb.o ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = zext i8 %i.ac to i64
  %.not.2 = icmp eq i64 %indvars.iv.2, %i.ad
  br i1 %.not.2, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  %.not.2.1 = icmp eq i64 %indvars.iv.next.2, %i.ag
  br i1 %.not.2.1, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.2.1 = or disjoint i64 %indvars.iv.2, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.2.1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = zext i8 %i.ai to i64
  %.not.2.2 = icmp eq i64 %indvars.iv.next.2.1, %i.aj
  br i1 %.not.2.2, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.2.2 = or disjoint i64 %indvars.iv.2, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.2.2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = zext i8 %i.al to i64
  %.not.2.3 = icmp eq i64 %indvars.iv.next.2.2, %i.am
  br i1 %.not.2.3, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %exitcond.2.not.3 = icmp eq i64 %indvars.iv.next.2.3, 256
  br i1 %exitcond.2.not.3, label %.loopexit, label %bb.k, !llvm.loop !30

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.09 = phi i32 [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %bb.k ], [ 1, %bb.o ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define internal void @FastGrayIdentity8(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(address) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 5 uses
  %i.d = alloca [16 x i32], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  call void @_cmsComputeComponentIncrements(i32 noundef %i.f, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.i = call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  call void @_cmsComputeComponentIncrements(i32 noundef %i.i, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.l = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.m = and i32 %i.l, 67108864
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not61 = icmp eq i32 %4, 0
  br i1 %.not61, label %._crit_edge60.split, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not62 = icmp eq i32 %3, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  br i1 %.not62, label %._crit_edge60.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph59, %._crit_edge
  %.057 = phi i64 [ %i.bd, %._crit_edge ], [ 0, %.lr.ph59 ] ; 3 uses
  %.03356 = phi i64 [ %i.ba, %._crit_edge ], [ 0, %.lr.ph59 ] ; 3 uses
  %.03455 = phi ptr [ %.3, %._crit_edge ], [ null, %.lr.ph59 ]
  %.03654 = phi ptr [ %.339, %._crit_edge ], [ null, %.lr.ph59 ]
  %.04253 = phi i32 [ %i.be, %._crit_edge ], [ 0, %.lr.ph59 ]
  %i.s = load i32, ptr %i.a, align 16, !tbaa !9
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03356
  %i.w = load i32, ptr %i.e, align 4, !tbaa !9
  %.not43 = icmp eq i32 %i.w, 0                   ; 2 uses
  %i.x = load i32, ptr %i.n, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.03356
  %.137 = select i1 %.not43, ptr %.03654, ptr %i.aa
  %i.ab = load i32, ptr %i.c, align 16, !tbaa !9
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.057
  %i.af = load i32, ptr %i.o, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.057
  %.1 = select i1 %.not43, ptr %.03455, ptr %i.ai
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.251 = phi ptr [ %.1, %.lr.ph ], [ %.3, %bb.f ] ; 3 uses
  %.03550 = phi ptr [ %i.ae, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  %.23849 = phi ptr [ %.137, %.lr.ph ], [ %.339, %bb.f ] ; 3 uses
  %.04048 = phi ptr [ %i.v, %.lr.ph ], [ %i.an, %bb.f ] ; 2 uses
  %.04147 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.f ]
  %i.aj = load i8, ptr %.04048, align 1, !tbaa !11
  store i8 %i.aj, ptr %.03550, align 1, !tbaa !11
  %.not45 = icmp eq ptr %.23849, null             ; 2 uses
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %.23849, align 1, !tbaa !11
  store i8 %i.ak, ptr %.251, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = load i32, ptr %i.b, align 16, !tbaa !9
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.04048, i64 %i.am
  %i.ao = load i32, ptr %i.p, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.23849, i64 %i.ap
  %.339 = select i1 %.not45, ptr null, ptr %i.aq  ; 2 uses
  %i.ar = load i32, ptr %i.d, align 16, !tbaa !9
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.03550, i64 %i.as
  %.not46 = icmp eq ptr %.251, null
  %i.au = load i32, ptr %i.q, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.251, i64 %i.av
  %.3 = select i1 %.not46, ptr null, ptr %i.aw    ; 2 uses
  %i.ax = add nuw i32 %.04147, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.f
  %i.ay = load i32, ptr %5, align 4, !tbaa !15
  %i.az = zext i32 %i.ay to i64
  %i.ba = add i64 %.03356, %i.az
  %i.bb = load i32, ptr %i.r, align 4, !tbaa !16
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add i64 %.057, %i.bc
  %i.be = add nuw i32 %.04253, 1                  ; 2 uses
  %exitcond63.not = icmp eq i32 %i.be, %4
  br i1 %exitcond63.not, label %._crit_edge60.split, label %.lr.ph, !llvm.loop !32

._crit_edge60.split:                              ; preds = %._crit_edge, %.lr.ph59, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FastEvaluateGrayCurves8(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(address) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 5 uses
  %i.d = alloca [16 x i32], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #6
  %i.g = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  call void @_cmsComputeComponentIncrements(i32 noundef %i.g, i32 noundef %i.i, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.j = call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  call void @_cmsComputeComponentIncrements(i32 noundef %i.j, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.m = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.n = and i32 %i.m, 67108864
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not63 = icmp eq i32 %4, 0
  br i1 %.not63, label %._crit_edge62.split, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not64 = icmp eq i32 %3, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  br i1 %.not64, label %._crit_edge62.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph61, %._crit_edge
  %.059 = phi i64 [ %i.bi, %._crit_edge ], [ 0, %.lr.ph61 ] ; 3 uses
  %.03558 = phi i64 [ %i.bf, %._crit_edge ], [ 0, %.lr.ph61 ] ; 3 uses
  %.03657 = phi ptr [ %.3, %._crit_edge ], [ null, %.lr.ph61 ]
  %.03856 = phi ptr [ %.341, %._crit_edge ], [ null, %.lr.ph61 ]
  %.04455 = phi i32 [ %i.bj, %._crit_edge ], [ 0, %.lr.ph61 ]
  %i.u = load i32, ptr %i.a, align 16, !tbaa !9
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.03558
  %i.y = load i32, ptr %i.e, align 4, !tbaa !9
  %.not45 = icmp eq i32 %i.y, 0                   ; 2 uses
  %i.z = load i32, ptr %i.o, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.03558
  %.139 = select i1 %.not45, ptr %.03856, ptr %i.ac
  %i.ad = load i32, ptr %i.c, align 16, !tbaa !9
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.059
  %i.ah = load i32, ptr %i.p, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.059
  %.1 = select i1 %.not45, ptr %.03657, ptr %i.ak
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.253 = phi ptr [ %.1, %.lr.ph ], [ %.3, %bb.f ] ; 3 uses
  %.03752 = phi ptr [ %i.ag, %.lr.ph ], [ %i.ay, %bb.f ] ; 2 uses
  %.24051 = phi ptr [ %.139, %.lr.ph ], [ %.341, %bb.f ] ; 3 uses
  %.04250 = phi ptr [ %i.x, %.lr.ph ], [ %i.as, %bb.f ] ; 2 uses
  %.04349 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %bb.f ]
  %i.al = load i8, ptr %.04250, align 1, !tbaa !11
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  store i8 %i.ao, ptr %.03752, align 1, !tbaa !11
  %.not47 = icmp eq ptr %.24051, null             ; 2 uses
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load i8, ptr %.24051, align 1, !tbaa !11
  store i8 %i.ap, ptr %.253, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = load i32, ptr %i.b, align 16, !tbaa !9
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.04250, i64 %i.ar
  %i.at = load i32, ptr %i.r, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.24051, i64 %i.au
  %.341 = select i1 %.not47, ptr null, ptr %i.av  ; 2 uses
  %i.aw = load i32, ptr %i.d, align 16, !tbaa !9
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.03752, i64 %i.ax
  %.not48 = icmp eq ptr %.253, null
  %i.az = load i32, ptr %i.s, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.253, i64 %i.ba
  %.3 = select i1 %.not48, ptr null, ptr %i.bb    ; 2 uses
  %i.bc = add nuw i32 %.04349, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.f
  %i.bd = load i32, ptr %5, align 4, !tbaa !15
  %i.be = zext i32 %i.bd to i64
  %i.bf = add i64 %.03558, %i.be
  %i.bg = load i32, ptr %i.t, align 4, !tbaa !16
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %.059, %i.bh
  %i.bj = add nuw i32 %.04455, 1                  ; 2 uses
  %exitcond65.not = icmp eq i32 %i.bj, %4
  br i1 %exitcond65.not, label %._crit_edge62.split, label %.lr.ph, !llvm.loop !34

._crit_edge62.split:                              ; preds = %._crit_edge, %.lr.ph61, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FastRGBIdentity8(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(address) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 7 uses
  %i.c = alloca [16 x i32], align 16              ; 7 uses
  %i.d = alloca [16 x i32], align 16              ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  call void @_cmsComputeComponentIncrements(i32 noundef %i.f, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.i = call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  call void @_cmsComputeComponentIncrements(i32 noundef %i.i, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.l = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.m = and i32 %i.l, 67108864
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not85 = icmp eq i32 %4, 0
  br i1 %.not85, label %._crit_edge84.split, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.not86 = icmp eq i32 %3, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 4
  br i1 %.not86, label %._crit_edge84.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph83, %._crit_edge
  %.081 = phi i64 [ %i.cp, %._crit_edge ], [ 0, %.lr.ph83 ] ; 5 uses
  %.04980 = phi i64 [ %i.cm, %._crit_edge ], [ 0, %.lr.ph83 ] ; 5 uses
  %.05079 = phi ptr [ %.3, %._crit_edge ], [ null, %.lr.ph83 ]
  %.05478 = phi ptr [ %.357, %._crit_edge ], [ null, %.lr.ph83 ]
  %.06277 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %.lr.ph83 ]
  %i.aa = load i32, ptr %i.a, align 16, !tbaa !9
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.04980
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !9
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.04980
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !9
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.04980
  %i.am = load i32, ptr %i.e, align 4, !tbaa !9
  %.not63 = icmp eq i32 %i.am, 0                  ; 2 uses
  %i.an = load i32, ptr %i.p, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.04980
  %.155 = select i1 %.not63, ptr %.05478, ptr %i.aq
  %i.ar = load i32, ptr %i.c, align 16, !tbaa !9
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.081
  %i.av = load i32, ptr %i.q, align 4, !tbaa !9
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.081
  %i.az = load i32, ptr %i.r, align 8, !tbaa !9
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.081
  %i.bd = load i32, ptr %i.s, align 4
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.081
  %.1 = select i1 %.not63, ptr %.05079, ptr %i.bg
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.275 = phi ptr [ %.1, %.lr.ph ], [ %.3, %bb.f ] ; 3 uses
  %.05174 = phi ptr [ %i.bc, %.lr.ph ], [ %i.cf, %bb.f ] ; 2 uses
  %.05273 = phi ptr [ %i.ay, %.lr.ph ], [ %i.cc, %bb.f ] ; 2 uses
  %.05372 = phi ptr [ %i.au, %.lr.ph ], [ %i.bz, %bb.f ] ; 2 uses
  %.25671 = phi ptr [ %.155, %.lr.ph ], [ %.357, %bb.f ] ; 3 uses
  %.05870 = phi ptr [ %i.al, %.lr.ph ], [ %i.bt, %bb.f ] ; 2 uses
  %.05969 = phi ptr [ %i.ah, %.lr.ph ], [ %i.bq, %bb.f ] ; 2 uses
  %.06068 = phi ptr [ %i.ad, %.lr.ph ], [ %i.bn, %bb.f ] ; 2 uses
  %.06167 = phi i32 [ 0, %.lr.ph ], [ %i.cj, %bb.f ]
  %i.bh = load i8, ptr %.06068, align 1, !tbaa !11
  store i8 %i.bh, ptr %.05372, align 1, !tbaa !11
  %i.bi = load i8, ptr %.05969, align 1, !tbaa !11
  store i8 %i.bi, ptr %.05273, align 1, !tbaa !11
  %i.bj = load i8, ptr %.05870, align 1, !tbaa !11
  store i8 %i.bj, ptr %.05174, align 1, !tbaa !11
  %.not65 = icmp eq ptr %.25671, null             ; 2 uses
  br i1 %.not65, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load i8, ptr %.25671, align 1, !tbaa !11
  store i8 %i.bk, ptr %.275, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = load i32, ptr %i.b, align 16, !tbaa !9
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.06068, i64 %i.bm
  %i.bo = load i32, ptr %i.t, align 4, !tbaa !9
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.05969, i64 %i.bp
  %i.br = load i32, ptr %i.u, align 8, !tbaa !9
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.05870, i64 %i.bs
  %i.bu = load i32, ptr %i.v, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.25671, i64 %i.bv
  %.357 = select i1 %.not65, ptr null, ptr %i.bw  ; 2 uses
  %i.bx = load i32, ptr %i.d, align 16, !tbaa !9
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.05372, i64 %i.by
  %i.ca = load i32, ptr %i.w, align 4, !tbaa !9
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.05273, i64 %i.cb
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !9
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.05174, i64 %i.ce
  %.not66 = icmp eq ptr %.275, null
  %i.cg = load i32, ptr %i.y, align 4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.275, i64 %i.ch
  %.3 = select i1 %.not66, ptr null, ptr %i.ci    ; 2 uses
  %i.cj = add nuw i32 %.06167, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.f
  %i.ck = load i32, ptr %5, align 4, !tbaa !15
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add i64 %.04980, %i.cl
  %i.cn = load i32, ptr %i.z, align 4, !tbaa !16
  %i.co = zext i32 %i.cn to i64
  %i.cp = add i64 %.081, %i.co
  %i.cq = add nuw i32 %.06277, 1                  ; 2 uses
  %exitcond87.not = icmp eq i32 %i.cq, %4
  br i1 %exitcond87.not, label %._crit_edge84.split, label %.lr.ph, !llvm.loop !36

._crit_edge84.split:                              ; preds = %._crit_edge, %.lr.ph83, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FastEvaluateRGBCurves8(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(address) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 7 uses
  %i.c = alloca [16 x i32], align 16              ; 7 uses
  %i.d = alloca [16 x i32], align 16              ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #6 ; 3 uses
  %i.g = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  call void @_cmsComputeComponentIncrements(i32 noundef %i.g, i32 noundef %i.i, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.j = call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  call void @_cmsComputeComponentIncrements(i32 noundef %i.j, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.m = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.n = and i32 %i.m, 67108864
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not89 = icmp eq i32 %4, 0
  br i1 %.not89, label %._crit_edge88.split, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.not90 = icmp eq i32 %3, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 524
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  br i1 %.not90, label %._crit_edge88.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph87, %._crit_edge
  %.085 = phi i64 [ %i.dc, %._crit_edge ], [ 0, %.lr.ph87 ] ; 5 uses
  %.05384 = phi i64 [ %i.cz, %._crit_edge ], [ 0, %.lr.ph87 ] ; 5 uses
  %.05483 = phi ptr [ %.3, %._crit_edge ], [ null, %.lr.ph87 ]
  %.05882 = phi ptr [ %.361, %._crit_edge ], [ null, %.lr.ph87 ]
  %.06681 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.lr.ph87 ]
  %i.ae = load i32, ptr %i.a, align 16, !tbaa !9
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.05384
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !9
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.05384
  %i.am = load i32, ptr %i.p, align 8, !tbaa !9
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.05384
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !9
  %.not67 = icmp eq i32 %i.aq, 0                  ; 2 uses
  %i.ar = load i32, ptr %i.q, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.05384
  %.159 = select i1 %.not67, ptr %.05882, ptr %i.au
  %i.av = load i32, ptr %i.c, align 16, !tbaa !9
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.085
  %i.az = load i32, ptr %i.r, align 4, !tbaa !9
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.085
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !9
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.085
  %i.bh = load i32, ptr %i.t, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.085
  %.1 = select i1 %.not67, ptr %.05483, ptr %i.bk
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.279 = phi ptr [ %.1, %.lr.ph ], [ %.3, %bb.f ] ; 3 uses
  %.05578 = phi ptr [ %i.bg, %.lr.ph ], [ %i.cs, %bb.f ] ; 2 uses
  %.05677 = phi ptr [ %i.bc, %.lr.ph ], [ %i.cp, %bb.f ] ; 2 uses
  %.05776 = phi ptr [ %i.ay, %.lr.ph ], [ %i.cm, %bb.f ] ; 2 uses
  %.26075 = phi ptr [ %.159, %.lr.ph ], [ %.361, %bb.f ] ; 3 uses
  %.06274 = phi ptr [ %i.ap, %.lr.ph ], [ %i.cg, %bb.f ] ; 2 uses
  %.06373 = phi ptr [ %i.al, %.lr.ph ], [ %i.cd, %bb.f ] ; 2 uses
  %.06472 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ca, %bb.f ] ; 2 uses
  %.06571 = phi i32 [ 0, %.lr.ph ], [ %i.cw, %bb.f ]
  %i.bl = load i8, ptr %.06472, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11
  store i8 %i.bo, ptr %.05776, align 1, !tbaa !11
  %i.bp = load i8, ptr %.06373, align 1, !tbaa !11
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  store i8 %i.bs, ptr %.05677, align 1, !tbaa !11
  %i.bt = load i8, ptr %.06274, align 1, !tbaa !11
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  store i8 %i.bw, ptr %.05578, align 1, !tbaa !11
  %.not69 = icmp eq ptr %.26075, null             ; 2 uses
  br i1 %.not69, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = load i8, ptr %.26075, align 1, !tbaa !11
  store i8 %i.bx, ptr %.279, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.by = load i32, ptr %i.b, align 16, !tbaa !9
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.06472, i64 %i.bz
  %i.cb = load i32, ptr %i.x, align 4, !tbaa !9
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.06373, i64 %i.cc
  %i.ce = load i32, ptr %i.y, align 8, !tbaa !9
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.06274, i64 %i.cf
  %i.ch = load i32, ptr %i.z, align 4
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.26075, i64 %i.ci
  %.361 = select i1 %.not69, ptr null, ptr %i.cj  ; 2 uses
  %i.ck = load i32, ptr %i.d, align 16, !tbaa !9
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.05776, i64 %i.cl
  %i.cn = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.05677, i64 %i.co
  %i.cq = load i32, ptr %i.ab, align 8, !tbaa !9
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.05578, i64 %i.cr
  %.not70 = icmp eq ptr %.279, null
  %i.ct = load i32, ptr %i.ac, align 4
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.279, i64 %i.cu
  %.3 = select i1 %.not70, ptr null, ptr %i.cv    ; 2 uses
  %i.cw = add nuw i32 %.06571, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.f
  %i.cx = load i32, ptr %5, align 4, !tbaa !15
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add i64 %.05384, %i.cy
  %i.da = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.db = zext i32 %i.da to i64
  %i.dc = add i64 %.085, %i.db
  %i.dd = add nuw i32 %.06681, 1                  ; 2 uses
  %exitcond91.not = icmp eq i32 %i.dd, %4
  br i1 %exitcond91.not, label %._crit_edge88.split, label %.lr.ph, !llvm.loop !38

._crit_edge88.split:                              ; preds = %._crit_edge, %.lr.ph87, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_cmsMallocZero(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cmsGetPipelineContextID(ptr noundef) local_unnamed_addr #2

declare void @cmsPipelineEvalFloat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare void @_cmsFree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_cmsComputeComponentIncrements(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cmsGetTransformInputFormat(ptr noundef) local_unnamed_addr #2

declare i32 @cmsGetTransformOutputFormat(ptr noundef) local_unnamed_addr #2

declare i32 @_cmsGetTransformFlags(ptr noundef) local_unnamed_addr #2

declare ptr @_cmsGetTransformUserData(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!5, !5, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!13 = !{!12, !6, i64 8}
!14 = !{!12, !6, i64 12}
!15 = !{!12, !6, i64 0}
!16 = !{!12, !6, i64 4}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !27, !28}
!19 = distinct !{!19, !10, !28, !27}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"p1 _ZTS19_cmsPipeline_struct", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"float", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!22, !22, i64 0}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
end_hunk_0
