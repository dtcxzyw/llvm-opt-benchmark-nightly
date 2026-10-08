Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_float_cmyk?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OptimizeCLUTCMYKTransform(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !16     ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %FloatCMYKAlloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %4, align 4, !tbaa !10     ; 2 uses
  %i.d = and i32 %i.c, 4194304
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %FloatCMYKAlloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %5, align 4, !tbaa !10     ; 2 uses
  %i.f = and i32 %i.e, 4194304
  %.not36 = icmp eq i32 %i.f, 0
  br i1 %.not36, label %FloatCMYKAlloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.e, 7
  %.not38 = icmp eq i32 %i.g, 4
  %i.h = and i32 %i.c, 2031623
  %i.i = icmp eq i32 %i.h, 393220
  %or.cond42 = and i1 %i.i, %.not38
  br i1 %or.cond42, label %bb.e, label %FloatCMYKAlloc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @cmsGetPipelineContextID(ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.k = load i32, ptr %6, align 4, !tbaa !10
  %i.l = tail call i32 @_cmsReasonableGridpointsByColorspace(i32 noundef 1380401696, i32 noundef %i.k) #6
  %i.m = tail call ptr @cmsGetPipelineContextID(ptr noundef nonnull %i.a) #6
  %i.n = tail call i32 @cmsPipelineOutputChannels(ptr noundef nonnull %i.a) #6
  %i.o = tail call ptr @cmsPipelineAlloc(ptr noundef %i.m, i32 noundef 4, i32 noundef %i.n) #6 ; 4 uses
  %cond = icmp eq ptr %i.o, null
  br i1 %cond, label %FloatCMYKAlloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @cmsPipelineOutputChannels(ptr noundef nonnull %i.a) #6
  %i.q = tail call ptr @cmsStageAllocCLutFloat(ptr noundef %i.j, i32 noundef %i.l, i32 noundef 4, i32 noundef %i.p, ptr noundef null) #6 ; 3 uses
  %i.r = tail call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.o, i32 noundef 0, ptr noundef %i.q) #6 ; 0 uses
  %i.s = tail call i32 @cmsStageSampleCLutFloat(ptr noundef %i.q, ptr noundef nonnull @XFormSampler, ptr noundef nonnull %i.a, i32 noundef 0) #6
  %.not40 = icmp eq i32 %i.s, 0
  br i1 %.not40, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @cmsStageData(ptr noundef %i.q) #6
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = tail call ptr @_cmsMallocZero(ptr noundef %i.j, i32 noundef 16) #6 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %FloatCMYKAlloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.j, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.y, align 8, !tbaa !14
  tail call void @cmsPipelineFree(ptr noundef nonnull %i.a) #6
  store ptr %i.o, ptr %3, align 8, !tbaa !16
  store ptr @FloatCMYKCLUTEval, ptr %0, align 8, !tbaa !20
  store ptr %i.w, ptr %1, align 8, !tbaa !20
  store ptr @_fast_float_free_user_data, ptr %2, align 8, !tbaa !20
  %i.z = load i32, ptr %6, align 4, !tbaa !10
  %i.aa = and i32 %i.z, -33554433
  store i32 %i.aa, ptr %6, align 4, !tbaa !10
  br label %FloatCMYKAlloc.exit.thread

bb.i:                                             ; preds = %bb.f
  tail call void @cmsPipelineFree(ptr noundef nonnull %i.o) #6
  br label %FloatCMYKAlloc.exit.thread

FloatCMYKAlloc.exit.thread:                       ; preds = %bb.g, %bb.e, %bb.i, %bb.d, %bb.b, %bb.c, %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.i ], [ 1, %bb.h ], [ 0, %bb.c ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @cmsGetPipelineContextID(ptr noundef) local_unnamed_addr #2

declare i32 @_cmsReasonableGridpointsByColorspace(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cmsPipelineAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cmsPipelineOutputChannels(ptr noundef) local_unnamed_addr #2

declare ptr @cmsStageAllocCLutFloat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cmsPipelineInsertStage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cmsStageSampleCLutFloat(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @XFormSampler(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  tail call void @cmsPipelineEvalFloat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  ret i32 1
}

declare ptr @cmsStageData(ptr noundef) local_unnamed_addr #2

declare void @cmsPipelineFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @FloatCMYKCLUTEval(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 9 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.c = alloca [16 x float], align 16            ; 6 uses
  %i.d = alloca [16 x ptr], align 16              ; 12 uses
  %i.e = alloca [16 x i32], align 16              ; 8 uses
  %i.f = alloca [16 x i32], align 16              ; 8 uses
  %i.g = alloca [16 x i32], align 16              ; 9 uses
  %i.h = alloca [16 x i32], align 16              ; 7 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !35   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 200 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.r = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.s = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
  call void @_cmsComputeComponentIncrements(i32 noundef %i.r, i32 noundef %i.u, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  call void @_cmsComputeComponentIncrements(i32 noundef %i.s, i32 noundef %i.w, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #6
  %i.x = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.y = and i32 %i.x, 67108864
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not602 = icmp eq i32 %4, 0
  br i1 %.not602, label %._crit_edge586, label %.lr.ph585

.lr.ph585:                                        ; preds = %bb.c
  %i.z = load i32, ptr %i.e, align 16, !tbaa !10
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !10
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.j, align 4, !tbaa !10
  %.fr = freeze i32 %i.ao
  %.not524 = icmp eq i32 %.fr, 0                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.not603 = icmp eq i32 %3, 0
  %i.aq = load i32, ptr %i.f, align 16
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %.not604 = icmp eq i32 %i.o, 0                  ; 2 uses
  %i.bb = zext i32 %i.o to i64                    ; 10 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %i.bf = load i32, ptr %5, align 4, !tbaa !40
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  br i1 %.not603, label %.lr.ph585.split, label %.lr.ph585.split.us

.lr.ph585.split.us:                               ; preds = %.lr.ph585
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 140
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !10
  %i.br = uitofp i32 %i.bq to float
  %i.bs = load <3 x i32>, ptr %i.bo, align 4, !tbaa !10
  %i.bt = shufflevector <3 x i32> %i.bs, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.bu = uitofp <4 x i32> %i.bt to <4 x float>
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !10 ; 2 uses
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !10 ; 2 uses
  %i.bx = load i32, ptr %i.bk, align 8, !tbaa !10 ; 2 uses
  %i.by = load i32, ptr %i.bn, align 4, !tbaa !10 ; 2 uses
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ca = load i32, ptr %i.n, align 8, !tbaa !35  ; 4 uses
  %.not607 = icmp eq i32 %i.ca, 0
  %wide.trip.count627 = zext i32 %i.ca to i64     ; 3 uses
  %i.cb = add nsw i64 %i.bb, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 12
  %i.cc = trunc i64 %i.cb to i32                  ; 4 uses
  %i.cd = icmp ugt i64 %i.cb, 4294967295
  %n.vec = and i64 %i.bb, 4294967292              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %wide.trip.count627, 1
  %i.ce = icmp eq i32 %i.ca, 1
  %unroll_iter = and i64 %wide.trip.count627, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod723 = trunc i32 %i.ca to i1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge577.us, %.lr.ph585.split.us
  %.0583.us = phi i64 [ 0, %.lr.ph585.split.us ], [ %i.ti, %._crit_edge577.us ] ; 2 uses
  %.0498582.us = phi i64 [ 0, %.lr.ph585.split.us ], [ %i.th, %._crit_edge577.us ] ; 6 uses
  %.0499581.us = phi ptr [ null, %.lr.ph585.split.us ], [ %.3.us, %._crit_edge577.us ]
  %.0506580.us = phi i32 [ 0, %.lr.ph585.split.us ], [ %i.tj, %._crit_edge577.us ]
  %.0507579.us = phi ptr [ %i.q, %.lr.ph585.split.us ], [ %i.mt, %._crit_edge577.us ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0498582.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0498582.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0498582.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0498582.us
  %i.cj = load i32, ptr %i.ap, align 16
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.0498582.us
  %.1.us = select i1 %.not524, ptr %.0499581.us, ptr %i.cm ; 2 uses
  %.not525.us = icmp ne ptr %.1.us, null
  %i.cn = zext i1 %.not525.us to i32
  %.0509.us = add i32 %i.o, %i.cn                 ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %.0583.us ; 3 uses
  %.not609 = icmp eq i32 %.0509.us, 0
  br i1 %.not609, label %.preheader559.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext i32 %.0509.us to i64    ; 3 uses
  %min.iters.check677 = icmp ult i32 %.0509.us, 4
  br i1 %min.iters.check677, label %.lr.ph.us.preheader721, label %vector.ph678

vector.ph678:                                     ; preds = %.lr.ph.us.preheader
  %n.vec679 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph678
  %index681 = phi i64 [ 0, %vector.ph678 ], [ %index.next685, %vector.body680 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index681 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %wide.load682 = load <2 x i32>, ptr %i.co, align 16, !tbaa !10
  %wide.load683 = load <2 x i32>, ptr %i.cp, align 8, !tbaa !10
  %i.cq = zext <2 x i32> %wide.load682 to <2 x i64>
  %i.cr = zext <2 x i32> %wide.load683 to <2 x i64>
  %wide.gep = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.cq
  %wide.gep684 = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index681 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cs, align 16, !tbaa !43
  store <2 x ptr> %wide.gep684, ptr %i.ct, align 16, !tbaa !43
  %index.next685 = add nuw i64 %index681, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next685, %n.vec679
  br i1 %i.cu, label %middle.block686, label %vector.body680, !llvm.loop !21

middle.block686:                                  ; preds = %vector.body680
  %cmp.n687 = icmp eq i64 %n.vec679, %wide.trip.count
  br i1 %cmp.n687, label %.preheader559.us, label %.lr.ph.us.preheader721

.lr.ph.us.preheader721:                           ; preds = %.lr.ph.us.preheader, %middle.block686
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec679, %middle.block686 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader721, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ %indvars.iv.ph, %.lr.ph.us.preheader721 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %i.cx = zext i32 %i.cw to i64
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.cx
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %gep.us, ptr %i.cy, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader559.us, label %.lr.ph.us, !llvm.loop !22

.preheader559.us:                                 ; preds = %.lr.ph.us, %middle.block686, %bb.d
  %i.cz = load i32, ptr %i.bd, align 16
  %i.da = zext i32 %i.cz to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader559.us, %bb.ad
  %.2575.us = phi ptr [ %.1.us, %.preheader559.us ], [ %.3.us, %bb.ad ] ; 3 uses
  %.0500574.us = phi ptr [ %i.ci, %.preheader559.us ], [ %i.do, %bb.ad ] ; 2 uses
  %.0501573.us = phi ptr [ %i.ch, %.preheader559.us ], [ %i.dn, %bb.ad ] ; 2 uses
  %.0502572.us = phi ptr [ %i.cg, %.preheader559.us ], [ %i.dm, %bb.ad ] ; 2 uses
  %.0503571.us = phi ptr [ %i.cf, %.preheader559.us ], [ %i.dl, %bb.ad ] ; 2 uses
  %.1505570.us = phi i32 [ 0, %.preheader559.us ], [ %i.sf, %bb.ad ]
  %.1508569.us = phi ptr [ %.0507579.us, %.preheader559.us ], [ %i.mt, %bb.ad ] ; 25 uses
  %.1508569.us663 = ptrtoaddr ptr %.1508569.us to i64 ; 3 uses
  %i.db = load float, ptr %.0503571.us, align 4, !tbaa !48 ; 4 uses
  %i.dc = fcmp olt float %i.db, f0x3089705F
  %i.dd = fcmp uno float %i.db, 0.000000e+00
  %or.cond.i.us = or i1 %i.dc, %i.dd
  %i.de = fcmp ogt float %i.db, 1.000000e+02
  %i.df = select i1 %i.de, float 1.000000e+02, float %i.db
  %i.dg = fdiv float %i.df, 1.000000e+02
  %i.dh = select i1 %or.cond.i.us, float 0.000000e+00, float %i.dg ; 2 uses
  %i.di = load float, ptr %.0502572.us, align 4, !tbaa !48 ; 2 uses
  %i.dj = load float, ptr %.0501573.us, align 4, !tbaa !48 ; 2 uses
  %i.dk = load float, ptr %.0500574.us, align 4, !tbaa !48 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0503571.us, i64 %i.ar
  %i.dm = getelementptr inbounds nuw i8, ptr %.0502572.us, i64 %i.au
  %i.dn = getelementptr inbounds nuw i8, ptr %.0501573.us, i64 %i.ax
  %i.do = getelementptr inbounds nuw i8, ptr %.0500574.us, i64 %i.ba
  %i.dp = fmul float %i.dh, %i.br                 ; 2 uses
  %i.dq = fpext float %i.dp to double
  %i.dr = fadd double %i.dq, f0x4238000000000000
  %i.ds = bitcast double %i.dr to i64
  %.sroa.0.0.extract.trunc.i.us = trunc i64 %i.ds to i32
  %i.dt = ashr i32 %.sroa.0.0.extract.trunc.i.us, 16 ; 2 uses
  %i.du = sitofp i32 %i.dt to float
  %i.dv = fsub float %i.dp, %i.du                 ; 3 uses
  %i.dw = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.dk, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.di, i64 1 ; 3 uses
  %i.dy = insertelement <4 x float> <float f0x3089705F, float f0x3089705F, float poison, float poison>, float %i.dk, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dj, i64 3 ; 3 uses
  %i.ea = fcmp uno <4 x float> %i.dx, %i.dz
  %i.eb = fcmp olt <4 x float> %i.dx, %i.dz
  %i.ec = shufflevector <4 x i1> %i.eb, <4 x i1> %i.ea, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ed = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.dx, <4 x float> <float poison, float poison, float f0x3089705F, float f0x3089705F>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ef = fcmp olt <4 x float> %i.ed, %i.ee
  %i.eg = fcmp uno <4 x float> %i.ed, %i.ee
  %i.eh = shufflevector <4 x i1> %i.eg, <4 x i1> %i.ef, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ei = or <4 x i1> %i.ec, %i.eh
  %i.ej = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.dk, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.di, i64 2
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 0> ; 2 uses
  %i.en = fcmp ogt <4 x float> %i.em, splat (float 1.000000e+02)
  %i.eo = select <4 x i1> %i.en, <4 x float> splat (float 1.000000e+02), <4 x float> %i.em
  %i.ep = fdiv <4 x float> %i.eo, splat (float 1.000000e+02)
  %i.eq = select <4 x i1> %i.ei, <4 x float> zeroinitializer, <4 x float> %i.ep ; 4 uses
  %i.er = fmul <4 x float> %i.eq, %i.bu           ; 2 uses
  %i.es = fpext <4 x float> %i.er to <4 x double>
  %i.et = fadd <4 x double> %i.es, splat (double f0x4238000000000000)
  %i.eu = bitcast <4 x double> %i.et to <4 x i64>
  %i.ev = trunc <4 x i64> %i.eu to <4 x i32>
  %i.ew = ashr <4 x i32> %i.ev, splat (i32 16)    ; 4 uses
  %i.ex = sitofp <4 x i32> %i.ew to <4 x float>
  %i.ey = fsub <4 x float> %i.er, %i.ex           ; 11 uses
  %i.ez = mul i32 %i.dt, %i.bv
  %i.fa = fcmp ult float %i.dh, 1.000000e+00
  %spec.select.us = select i1 %i.fa, i32 %i.bv, i32 0
  %i.fb = add i32 %i.ez, %spec.select.us
  %i.fc = extractelement <4 x i32> %i.ew, i64 1
  %i.fd = mul i32 %i.fc, %i.bw                    ; 7 uses
  %i.fe = extractelement <4 x float> %i.eq, i64 1
  %i.ff = fcmp ult float %i.fe, 1.000000e+00
  %i.fg = select i1 %i.ff, i32 %i.bw, i32 0
  %i.fh = add i32 %i.fd, %i.fg                    ; 6 uses
  %i.fi = extractelement <4 x i32> %i.ew, i64 3
  %i.fj = mul i32 %i.fi, %i.bx                    ; 7 uses
  %i.fk = extractelement <4 x float> %i.eq, i64 3
  %i.fl = fcmp ult float %i.fk, 1.000000e+00
  %i.fm = select i1 %i.fl, i32 %i.bx, i32 0
  %i.fn = add i32 %i.fj, %i.fm                    ; 6 uses
  %i.fo = extractelement <4 x i32> %i.ew, i64 0
  %i.fp = mul i32 %i.fo, %i.by                    ; 9 uses
  %i.fq = extractelement <4 x float> %i.eq, i64 0
  %i.fr = fcmp ult float %i.fq, 1.000000e+00
  %i.fs = select i1 %i.fr, i32 %i.by, i32 0
  %i.ft = add i32 %i.fp, %i.fs                    ; 12 uses
  br i1 %.not604, label %._crit_edge.us, label %.lr.ph562.us

.lr.ph562.us:                                     ; preds = %bb.e
  %i.fu = add i32 %i.fj, %i.fd                    ; 2 uses
  %i.fv = add i32 %i.fu, %i.fp                    ; 5 uses
  %i.fw = extractelement <4 x float> %i.ey, i64 1 ; 6 uses
  %i.fx = extractelement <4 x float> %i.ey, i64 3 ; 6 uses
  %i.fy = fcmp ult float %i.fw, %i.fx             ; 2 uses
  %i.fz = extractelement <4 x float> %i.ey, i64 0 ; 6 uses
  %i.ga = fcmp ult float %i.fx, %i.fz             ; 2 uses
  %or.cond.us = select i1 %i.fy, i1 true, i1 %i.ga
  %i.gb = add i32 %i.fh, %i.fj                    ; 2 uses
  %i.gc = add i32 %i.gb, %i.fp                    ; 5 uses
  %i.gd = add i32 %i.fn, %i.fh                    ; 2 uses
  %i.ge = add i32 %i.gd, %i.fp                    ; 5 uses
  %i.gf = add i32 %i.gd, %i.ft                    ; 9 uses
  %i.gg = fcmp ult float %i.fw, %i.fz             ; 2 uses
  %i.gh = fcmp ult float %i.fz, %i.fx             ; 2 uses
  %or.cond529.us = or i1 %i.gg, %i.gh
  %i.gi = add nsw i32 %i.ft, %i.gb
  %i.gj = fcmp ult float %i.fz, %i.fw             ; 2 uses
  %brmerge.us = or i1 %i.fy, %i.gj
  %i.gk = add i32 %i.ft, %i.fh
  %i.gl = add i32 %i.gk, %i.fj
  %i.gm = add nsw i32 %i.ft, %i.fu                ; 2 uses
  %i.gn = fcmp ult float %i.fx, %i.fw             ; 2 uses
  %brmerge534.us = or i1 %i.gn, %i.gg
  %i.go = add nsw i32 %i.fn, %i.fd                ; 2 uses
  %i.gp = add nsw i32 %i.go, %i.fp                ; 2 uses
  %brmerge536.us = or i1 %i.ga, %i.gj
  %i.gq = add nsw i32 %i.go, %i.ft
  %brmerge538.us = or i1 %i.gn, %i.gh
  %i.gr = add i32 %i.ft, %i.fn
  %i.gs = add i32 %i.gr, %i.fd
  br i1 %or.cond.us, label %.lr.ph562.split.us.us, label %.lr.ph562.split.us587.preheader

.lr.ph562.split.us587.preheader:                  ; preds = %.lr.ph562.us
  br i1 %min.iters.check, label %.lr.ph562.split.us587.preheader719, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph562.split.us587.preheader
  %i.gt = xor i32 %i.fv, -1
  %i.gu = icmp ult i32 %i.gt, %i.cc
  %i.gv = xor i32 %i.gc, -1
  %i.gw = icmp ult i32 %i.gv, %i.cc
  %i.gx = or i1 %i.gw, %i.cd
  %i.gy = xor i32 %i.ge, -1
  %i.gz = icmp ult i32 %i.gy, %i.cc
  %i.ha = xor i32 %i.gf, -1
  %i.hb = icmp ult i32 %i.ha, %i.cc
  %i.hc = or i1 %i.gu, %i.gx
  %i.hd = or i1 %i.gz, %i.hc
  %i.he = or i1 %i.hb, %i.hd
  br i1 %i.he, label %.lr.ph562.split.us587.preheader719, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %6 = sub i64 %i.b, %.1508569.us663              ; 2 uses
  %i.hf = zext i32 %i.gf to i64
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %i.hh = sub i64 %i.hg, %6
  %diff.check = icmp ugt i64 %i.hh, -16
  %i.hi = zext i32 %i.ge to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2
  %i.hk = sub i64 %i.hj, %6
  %diff.check664 = icmp ugt i64 %i.hk, -16
  %conflict.rdx = or i1 %diff.check, %diff.check664
  %i.hl = zext i32 %i.gc to i64
  %i.hm = shl nuw nsw i64 %i.hl, 2
  %i.hn = add i64 %i.hm, %.1508569.us663
  %i.ho = sub i64 %i.hn, %i.b
  %diff.check665 = icmp ugt i64 %i.ho, -16
  %conflict.rdx666 = or i1 %conflict.rdx, %diff.check665
  %i.hp = zext i32 %i.fv to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = add i64 %i.hq, %.1508569.us663
  %i.hs = sub i64 %i.hr, %i.b
  %diff.check667 = icmp ugt i64 %i.hs, -16
  %conflict.rdx668 = or i1 %conflict.rdx666, %diff.check667
  br i1 %conflict.rdx668, label %.lr.ph562.split.us587.preheader719, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat670 = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat672 = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ht = trunc nuw i64 %index to i32             ; 4 uses
  %i.hu = add i32 %i.fv, %i.ht
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hv
  %wide.load = load <4 x float>, ptr %i.hw, align 4, !tbaa !48 ; 2 uses
  %i.hx = add i32 %i.gc, %i.ht
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hy
  %wide.load673 = load <4 x float>, ptr %i.hz, align 4, !tbaa !48 ; 2 uses
  %i.ia = fsub <4 x float> %wide.load673, %wide.load
  %i.ib = add i32 %i.ge, %i.ht
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ic
  %wide.load674 = load <4 x float>, ptr %i.id, align 4, !tbaa !48 ; 2 uses
  %i.ie = fsub <4 x float> %wide.load674, %wide.load673
  %i.if = add i32 %i.gf, %i.ht
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ig
  %wide.load675 = load <4 x float>, ptr %i.ih, align 4, !tbaa !48
  %i.ii = fsub <4 x float> %wide.load675, %wide.load674
  %i.ij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ia, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %broadcast.splat670, <4 x float> %i.ij)
  %i.il = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %broadcast.splat672, <4 x float> %i.ik)
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.il, ptr %i.im, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph562.split.us587.preheader719

.lr.ph562.split.us587.preheader719:               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph562.split.us587.preheader, %middle.block
  %indvars.iv614.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph562.split.us587.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph562.split.us587

.lr.ph562.split.us587:                            ; preds = %.lr.ph562.split.us587.preheader719, %.lr.ph562.split.us587
  %indvars.iv614 = phi i64 [ %indvars.iv.next615, %.lr.ph562.split.us587 ], [ %indvars.iv614.ph, %.lr.ph562.split.us587.preheader719 ] ; 3 uses
  %i.io = trunc nuw i64 %indvars.iv614 to i32     ; 4 uses
  %i.ip = add i32 %i.fv, %i.io
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.iq
  %i.is = load float, ptr %i.ir, align 4, !tbaa !48 ; 2 uses
  %i.it = add i32 %i.gc, %i.io
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !48 ; 2 uses
  %i.ix = fsub float %i.iw, %i.is
  %i.iy = add i32 %i.ge, %i.io
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !48 ; 2 uses
  %i.jc = fsub float %i.jb, %i.iw
  %i.jd = add i32 %i.gf, %i.io
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !48
  %i.jh = fsub float %i.jg, %i.jb
  %i.ji = call float @llvm.fmuladd.f32(float %i.ix, float %i.fw, float %i.is)
  %i.jj = call float @llvm.fmuladd.f32(float %i.jc, float %i.fx, float %i.ji)
  %i.jk = call float @llvm.fmuladd.f32(float %i.jh, float %i.fz, float %i.jj)
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv614
  store float %i.jk, ptr %i.jl, align 4, !tbaa !48
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %exitcond618.not = icmp eq i64 %indvars.iv.next615, %i.bb
  br i1 %exitcond618.not, label %._crit_edge.us, label %.lr.ph562.split.us587, !llvm.loop !24

.lr.ph562.split.us.us:                            ; preds = %.lr.ph562.us, %bb.o
  %indvars.iv619 = phi i64 [ %indvars.iv.next620, %bb.o ], [ 0, %.lr.ph562.us ] ; 3 uses
  %i.jm = trunc nuw i64 %indvars.iv619 to i32     ; 16 uses
  %i.jn = add i32 %i.fv, %i.jm
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !48 ; 6 uses
  br i1 %or.cond529.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph562.split.us.us
  %i.jr = add i32 %i.gc, %i.jm
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.js
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !48 ; 2 uses
  %i.jv = fsub float %i.ju, %i.jq
  %i.jw = add i32 %i.gf, %i.jm
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.jx
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !48
  %i.ka = add i32 %i.gi, %i.jm
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kb
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !48 ; 2 uses
  %i.ke = fsub float %i.jz, %i.kd
  %i.kf = fsub float %i.kd, %i.ju
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph562.split.us.us
  br i1 %brmerge.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kg = add i32 %i.gl, %i.jm
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kh
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !48 ; 2 uses
  %i.kk = add i32 %i.gm, %i.jm
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kl
  %i.kn = load float, ptr %i.km, align 4, !tbaa !48 ; 2 uses
  %i.ko = fsub float %i.kj, %i.kn
  %i.kp = add i32 %i.gf, %i.jm
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kq
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !48
  %i.kt = fsub float %i.ks, %i.kj
  %i.ku = fsub float %i.kn, %i.jq
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  br i1 %brmerge534.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.kv = add i32 %i.ge, %i.jm
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kw
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !48 ; 2 uses
  %i.kz = add i32 %i.gp, %i.jm
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !48 ; 2 uses
  %i.ld = fsub float %i.ky, %i.lc
  %i.le = fsub float %i.lc, %i.jq
  %i.lf = add i32 %i.gf, %i.jm
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !48
  %i.lj = fsub float %i.li, %i.ky
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  br i1 %brmerge536.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.lk = add i32 %i.gf, %i.jm
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !48
  %i.lo = add i32 %i.gq, %i.jm
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !48 ; 2 uses
  %i.ls = fsub float %i.ln, %i.lr
  %i.lt = add i32 %i.gp, %i.jm
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lu
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !48 ; 2 uses
  %i.lx = fsub float %i.lw, %i.jq
  %i.ly = fsub float %i.lr, %i.lw
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  br i1 %brmerge538.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.lz = add i32 %i.gf, %i.jm
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !48
  %i.md = add i32 %i.gs, %i.jm
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.me
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !48 ; 2 uses
  %i.mh = fsub float %i.mc, %i.mg
  %i.mi = add i32 %i.gm, %i.jm
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.mj
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !48 ; 2 uses
  %i.mm = fsub float %i.mg, %i.ml
  %i.mn = fsub float %i.ml, %i.jq
end_hunk_0
