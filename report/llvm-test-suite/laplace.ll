Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/laplace?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @GenerateSeqLaplacian(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %1, %0                       ; 5 uses
  %i.b = mul nsw i32 %i.a, %2                     ; 14 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = tail call ptr @hypre_CAlloc(i32 noundef %i.c, i32 noundef 4) #3 ; 14 uses
  %i.e = tail call ptr @hypre_CAlloc(i32 noundef %i.b, i32 noundef 8) #3 ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = tail call ptr @hypre_CAlloc(i32 noundef %i.b, i32 noundef 8) #3 ; 6 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = tail call ptr @hypre_CAlloc(i32 noundef %i.b, i32 noundef 8) #3 ; 7 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 14
  br i1 %min.iters.check, label %.lr.ph.preheader312, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = sub i64 %i.h, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.h, %i.f
  %diff.check303 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check303
  %i.n = sub i64 %i.j, %i.f
  %diff.check304 = icmp ugt i64 %i.n, -32
  %conflict.rdx305 = or i1 %conflict.rdx, %diff.check304
  br i1 %conflict.rdx305, label %.lr.ph.preheader312, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x double> zeroinitializer, ptr %i.o, align 8, !tbaa !21
  store <2 x double> zeroinitializer, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> zeroinitializer, ptr %i.q, align 8, !tbaa !21
  store <2 x double> zeroinitializer, ptr %i.r, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.s, align 8, !tbaa !21
  store <2 x double> splat (double 1.000000e+00), ptr %i.t, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader312

.lr.ph.preheader312:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader312
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.ph
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.ph
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.ph
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !21
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader312
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader312 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = add nsw i64 %wide.trip.count, -1
  %i.z = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store double 1.000000e+00, ptr %i.af, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.ag = icmp sgt i32 %2, 0                      ; 2 uses
  %i.ah = icmp sgt i32 %1, 0
  %i.ai = icmp sgt i32 %0, 0
  %i.aj = and i1 %i.ah, %i.ai
  %or.cond294 = and i1 %i.aj, %i.ag
  br i1 %or.cond294, label %.preheader190.us.preheader, label %._crit_edge211.split

.preheader190.us.preheader:                       ; preds = %._crit_edge
  %.not = icmp ne i32 %0, 1                       ; 2 uses
  %exitcond249.peel.not = icmp eq i32 %0, 1
  %.not287 = icmp ne i32 %0, 1
  %exitcond254.peel.not = icmp eq i32 %0, 1
  %i.ak = add nsw i32 %0, -1                      ; 6 uses
  %i.al = add nsw i32 %0, -2                      ; 2 uses
  %i.am = zext i1 %.not to i32
  %xtraiter313 = and i32 %i.ak, 1
  %i.an = icmp eq i32 %i.al, 0
  %unroll_iter = and i32 %i.ak, -2
  %lcmp.mod314.not = icmp eq i32 %xtraiter313, 0
  %lcmp.mod316 = trunc i32 %i.ak to i1
  %i.ao = zext i1 %.not287 to i32
  %xtraiter318 = and i32 %i.ak, 1
  %i.ap = icmp eq i32 %i.al, 0
  %unroll_iter322 = and i32 %i.ak, -2
  %lcmp.mod319.not = icmp eq i32 %xtraiter318, 0
  %lcmp.mod321 = trunc i32 %i.ak to i1
  br label %.preheader190.us

.preheader190.us:                                 ; preds = %.preheader190.us.preheader, %._crit_edge198.split.us.us
  %.0166210.us = phi i64 [ %.us-phi.us.us.in, %._crit_edge198.split.us.us ], [ 1, %.preheader190.us.preheader ]
  %.0169209.us = phi i32 [ %i.aq, %._crit_edge198.split.us.us ], [ 0, %.preheader190.us.preheader ] ; 2 uses
  %.not184.us = icmp eq i32 %.0169209.us, 0
  %spec.select.v.us = select i1 %.not184.us, i32 1, i32 2 ; 3 uses
  %i.aq = add nuw nsw i32 %.0169209.us, 1         ; 3 uses
  %i.ar = icmp slt i32 %i.aq, %2                  ; 12 uses
  %i.as = or i1 %.not, %i.ar
  %i.at = zext i1 %i.ar to i32
  %invariant.op331 = add i32 %i.am, %i.at
  %i.au = zext i1 %i.ar to i32
  %i.av = zext i1 %i.ar to i32
  %i.aw = zext i1 %i.ar to i32
  %storemerge.v = select i1 %i.ar, i32 2, i32 1
  %invariant.op332 = add i32 %i.ao, %storemerge.v
  %storemerge288.v = select i1 %i.ar, i32 2, i32 1
  %storemerge288.v.1 = select i1 %i.ar, i32 2, i32 1
  %storemerge288.v.epil = select i1 %i.ar, i32 2, i32 1
  br label %.preheader189.us.us

.preheader189.us.us:                              ; preds = %._crit_edge195.us.us, %.preheader190.us
  %.1167197.us.us = phi i64 [ %.0166210.us, %.preheader190.us ], [ %.us-phi.us.us.in, %._crit_edge195.us.us ]
  %.0171196.us.us = phi i32 [ 0, %.preheader190.us ], [ %i.ax, %._crit_edge195.us.us ] ; 2 uses
  %.not185.us.us = icmp ne i32 %.0171196.us.us, 0
  %i.ax = add nuw nsw i32 %.0171196.us.us, 1      ; 3 uses
  %i.ay = icmp slt i32 %i.ax, %1
  %sext = shl i64 %.1167197.us.us, 32             ; 3 uses
  %i.az = ashr exact i64 %sext, 32                ; 3 uses
  %i.ba = getelementptr [4 x i8], ptr %i.d, i64 %i.az ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %spec.select.us.us.us.peel = add nsw i32 %i.bc, %spec.select.v.us
  %i.bd = zext i1 %.not185.us.us to i32           ; 3 uses
  %spec.select187.us.us.us.peel = add nsw i32 %spec.select.us.us.us.peel, %i.bd ; 3 uses
  br i1 %i.ay, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader189.us.us
  %simplifycfg.merge.reass = add i32 %spec.select187.us.us.us.peel, %invariant.op331
  %storemerge298 = select i1 %i.as, i32 %simplifycfg.merge.reass, i32 %spec.select187.us.us.us.peel
  store i32 %storemerge298, ptr %i.ba, align 4, !tbaa !7
  %indvars.iv.next247.peel = add nsw i64 %i.az, 1 ; 3 uses
  br i1 %exitcond249.peel.not, label %._crit_edge195.us.us, label %.lr.ph194.split.us200.us.peel.next

.lr.ph194.split.us200.us.peel.next:               ; preds = %bb.b
  %invariant.op = add nuw nsw i32 %spec.select.v.us, %i.bd ; 3 uses
  %i.be = ashr exact i64 %sext, 30
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.be
  %load_initial = load i32, ptr %scevgep, align 4 ; 2 uses
  br i1 %i.an, label %.epil.preheader, label %.lr.ph194.split.us200.us.peel.next.new

bb.c:                                             ; preds = %.preheader189.us.us
  %storemerge.reass = add i32 %spec.select187.us.us.us.peel, %invariant.op332
  store i32 %storemerge.reass, ptr %i.ba, align 4, !tbaa !7
  %indvars.iv.next252.peel = add nsw i64 %i.az, 1 ; 3 uses
  br i1 %exitcond254.peel.not, label %._crit_edge195.us.us, label %.lr.ph194.split.us.us.us.peel.next

.lr.ph194.split.us.us.us.peel.next:               ; preds = %bb.c
  %invariant.op293 = add nuw nsw i32 %spec.select.v.us, %i.bd ; 3 uses
  %i.bf = ashr exact i64 %sext, 30
  %scevgep306 = getelementptr i8, ptr %i.d, i64 %i.bf
  %load_initial307 = load i32, ptr %scevgep306, align 4 ; 2 uses
  br i1 %i.ap, label %.epil.preheader317, label %.lr.ph194.split.us.us.us.peel.next.new

.lr.ph194.split.us200.us.peel.next.new:           ; preds = %.lr.ph194.split.us200.us.peel.next, %.lr.ph194.split.us200.us.peel.next.new
  %store_forwarded = phi i32 [ %storemerge299.1, %.lr.ph194.split.us200.us.peel.next.new ], [ %load_initial, %.lr.ph194.split.us200.us.peel.next ]
  %indvars.iv246 = phi i64 [ %indvars.iv.next247.1, %.lr.ph194.split.us200.us.peel.next.new ], [ %indvars.iv.next247.peel, %.lr.ph194.split.us200.us.peel.next ] ; 3 uses
  %.0173192.us202.us = phi i32 [ %i.bq, %.lr.ph194.split.us200.us.peel.next.new ], [ 1, %.lr.ph194.split.us200.us.peel.next ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph194.split.us200.us.peel.next.new ], [ 0, %.lr.ph194.split.us200.us.peel.next ]
  %i.bg = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv246
  %spec.select187.us204.us.reass = add i32 %store_forwarded, %invariant.op ; 2 uses
  %i.bh = add nsw i32 %spec.select187.us204.us.reass, 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.0173192.us202.us, 1
  %i.bj = icmp slt i32 %i.bi, %0                  ; 2 uses
  %i.bk = or i1 %i.bj, %i.ar
  %i.bl = add nsw i32 %spec.select187.us204.us.reass, 2
  %i.bm = select i1 %i.bj, i32 %i.bl, i32 %i.bh
  %simplifycfg.merge295 = add nsw i32 %i.bm, %i.au
  %storemerge299 = select i1 %i.bk, i32 %simplifycfg.merge295, i32 %i.bh ; 2 uses
  store i32 %storemerge299, ptr %i.bg, align 4, !tbaa !7
  %i.bn = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv246
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %spec.select187.us204.us.reass.1 = add i32 %storemerge299, %invariant.op ; 2 uses
  %i.bp = add nsw i32 %spec.select187.us204.us.reass.1, 1 ; 2 uses
  %i.bq = add nuw nsw i32 %.0173192.us202.us, 2   ; 3 uses
  %i.br = icmp slt i32 %i.bq, %0                  ; 2 uses
  %i.bs = or i1 %i.br, %i.ar
  %i.bt = add nsw i32 %spec.select187.us204.us.reass.1, 2
  %i.bu = select i1 %i.br, i32 %i.bt, i32 %i.bp
  %simplifycfg.merge295.1 = add nsw i32 %i.bu, %i.av
  %storemerge299.1 = select i1 %i.bs, i32 %simplifycfg.merge295.1, i32 %i.bp ; 3 uses
  store i32 %storemerge299.1, ptr %i.bo, align 4, !tbaa !7
  %indvars.iv.next247.1 = add nsw i64 %indvars.iv246, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge195.us.us.loopexit311.unr-lcssa, label %.lr.ph194.split.us200.us.peel.next.new, !llvm.loop !10

.lr.ph194.split.us.us.us.peel.next.new:           ; preds = %.lr.ph194.split.us.us.us.peel.next, %.lr.ph194.split.us.us.us.peel.next.new
  %store_forwarded308 = phi i32 [ %storemerge288.1, %.lr.ph194.split.us.us.us.peel.next.new ], [ %load_initial307, %.lr.ph194.split.us.us.us.peel.next ]
  %indvars.iv251 = phi i64 [ %indvars.iv.next252.1, %.lr.ph194.split.us.us.us.peel.next.new ], [ %indvars.iv.next252.peel, %.lr.ph194.split.us.us.us.peel.next ] ; 3 uses
  %.0173192.us.us.us = phi i32 [ %i.ca, %.lr.ph194.split.us.us.us.peel.next.new ], [ 1, %.lr.ph194.split.us.us.us.peel.next ] ; 2 uses
  %niter323 = phi i32 [ %niter323.next.1, %.lr.ph194.split.us.us.us.peel.next.new ], [ 0, %.lr.ph194.split.us.us.us.peel.next ]
  %i.bv = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv251
  %spec.select187.us.us.us.reass = add i32 %store_forwarded308, %invariant.op293
  %i.bw = add nuw nsw i32 %.0173192.us.us.us, 1
  %i.bx = icmp slt i32 %i.bw, %0
  %spec.select296.v = select i1 %i.bx, i32 2, i32 1
  %spec.select296 = add nsw i32 %spec.select187.us.us.us.reass, %spec.select296.v
  %storemerge288 = add nsw i32 %spec.select296, %storemerge288.v ; 2 uses
  store i32 %storemerge288, ptr %i.bv, align 4, !tbaa !7
  %i.by = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv251
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %spec.select187.us.us.us.reass.1 = add i32 %storemerge288, %invariant.op293
  %i.ca = add nuw nsw i32 %.0173192.us.us.us, 2   ; 3 uses
  %i.cb = icmp slt i32 %i.ca, %0
  %spec.select296.v.1 = select i1 %i.cb, i32 2, i32 1
  %spec.select296.1 = add nsw i32 %spec.select187.us.us.us.reass.1, %spec.select296.v.1
  %storemerge288.1 = add nsw i32 %spec.select296.1, %storemerge288.v.1 ; 3 uses
  store i32 %storemerge288.1, ptr %i.bz, align 4, !tbaa !7
  %indvars.iv.next252.1 = add nsw i64 %indvars.iv251, 2 ; 3 uses
  %niter323.next.1 = add i32 %niter323, 2         ; 2 uses
  %niter323.ncmp.1 = icmp eq i32 %niter323.next.1, %unroll_iter322
  br i1 %niter323.ncmp.1, label %._crit_edge195.us.us.loopexit.unr-lcssa, label %.lr.ph194.split.us.us.us.peel.next.new, !llvm.loop !11

._crit_edge195.us.us.loopexit.unr-lcssa:          ; preds = %.lr.ph194.split.us.us.us.peel.next.new
  br i1 %lcmp.mod319.not, label %._crit_edge195.us.us, label %.epil.preheader317

.epil.preheader317:                               ; preds = %._crit_edge195.us.us.loopexit.unr-lcssa, %.lr.ph194.split.us.us.us.peel.next
  %store_forwarded308.epil.init = phi i32 [ %load_initial307, %.lr.ph194.split.us.us.us.peel.next ], [ %storemerge288.1, %._crit_edge195.us.us.loopexit.unr-lcssa ]
  %indvars.iv251.epil.init = phi i64 [ %indvars.iv.next252.peel, %.lr.ph194.split.us.us.us.peel.next ], [ %indvars.iv.next252.1, %._crit_edge195.us.us.loopexit.unr-lcssa ] ; 2 uses
  %.0173192.us.us.us.epil.init = phi i32 [ 1, %.lr.ph194.split.us.us.us.peel.next ], [ %i.ca, %._crit_edge195.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod321)
  %i.cc = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv251.epil.init
  %spec.select187.us.us.us.reass.epil = add i32 %store_forwarded308.epil.init, %invariant.op293
  %i.cd = add nuw nsw i32 %.0173192.us.us.us.epil.init, 1
  %i.ce = icmp slt i32 %i.cd, %0
  %spec.select296.v.epil = select i1 %i.ce, i32 2, i32 1
  %spec.select296.epil = add nsw i32 %spec.select187.us.us.us.reass.epil, %spec.select296.v.epil
  %storemerge288.epil = add nsw i32 %spec.select296.epil, %storemerge288.v.epil
  store i32 %storemerge288.epil, ptr %i.cc, align 4, !tbaa !7
  %indvars.iv.next252.epil = add nsw i64 %indvars.iv251.epil.init, 1
  br label %._crit_edge195.us.us

._crit_edge195.us.us.loopexit311.unr-lcssa:       ; preds = %.lr.ph194.split.us200.us.peel.next.new
  br i1 %lcmp.mod314.not, label %._crit_edge195.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge195.us.us.loopexit311.unr-lcssa, %.lr.ph194.split.us200.us.peel.next
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph194.split.us200.us.peel.next ], [ %storemerge299.1, %._crit_edge195.us.us.loopexit311.unr-lcssa ]
  %indvars.iv246.epil.init = phi i64 [ %indvars.iv.next247.peel, %.lr.ph194.split.us200.us.peel.next ], [ %indvars.iv.next247.1, %._crit_edge195.us.us.loopexit311.unr-lcssa ] ; 2 uses
  %.0173192.us202.us.epil.init = phi i32 [ 1, %.lr.ph194.split.us200.us.peel.next ], [ %i.bq, %._crit_edge195.us.us.loopexit311.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %i.cf = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv246.epil.init
  %spec.select187.us204.us.reass.epil = add i32 %store_forwarded.epil.init, %invariant.op ; 2 uses
  %i.cg = add nsw i32 %spec.select187.us204.us.reass.epil, 1 ; 2 uses
  %i.ch = add nuw nsw i32 %.0173192.us202.us.epil.init, 1
  %i.ci = icmp slt i32 %i.ch, %0                  ; 2 uses
  %i.cj = or i1 %i.ci, %i.ar
  %i.ck = add nsw i32 %spec.select187.us204.us.reass.epil, 2
  %i.cl = select i1 %i.ci, i32 %i.ck, i32 %i.cg
  %simplifycfg.merge295.epil = add nsw i32 %i.cl, %i.aw
  %storemerge299.epil = select i1 %i.cj, i32 %simplifycfg.merge295.epil, i32 %i.cg
  store i32 %storemerge299.epil, ptr %i.cf, align 4, !tbaa !7
  %indvars.iv.next247.epil = add nsw i64 %indvars.iv246.epil.init, 1
  br label %._crit_edge195.us.us

._crit_edge195.us.us:                             ; preds = %.epil.preheader, %._crit_edge195.us.us.loopexit311.unr-lcssa, %.epil.preheader317, %._crit_edge195.us.us.loopexit.unr-lcssa, %bb.b, %bb.c
  %.us-phi.us.us.in = phi i64 [ %indvars.iv.next252.epil, %.epil.preheader317 ], [ %indvars.iv.next252.peel, %bb.c ], [ %indvars.iv.next247.peel, %bb.b ], [ %indvars.iv.next252.1, %._crit_edge195.us.us.loopexit.unr-lcssa ], [ %indvars.iv.next247.1, %._crit_edge195.us.us.loopexit311.unr-lcssa ], [ %indvars.iv.next247.epil, %.epil.preheader ] ; 2 uses
  %exitcond256.not = icmp eq i32 %i.ax, %1
  br i1 %exitcond256.not, label %._crit_edge198.split.us.us, label %.preheader189.us.us, !llvm.loop !12

._crit_edge198.split.us.us:                       ; preds = %._crit_edge195.us.us
  %exitcond257.not = icmp eq i32 %i.aq, %2
  br i1 %exitcond257.not, label %._crit_edge211.split, label %.preheader190.us, !llvm.loop !13

._crit_edge211.split:                             ; preds = %._crit_edge198.split.us.us, %._crit_edge
  %i.cm = sext i32 %i.b to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cm ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = tail call ptr @hypre_CAlloc(i32 noundef %i.co, i32 noundef 4) #3 ; 14 uses
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cr = tail call ptr @hypre_CAlloc(i32 noundef %i.cq, i32 noundef 8) #3 ; 19 uses
  br i1 %i.ag, label %.preheader188.lr.ph, label %._crit_edge230.split

.preheader188.lr.ph:                              ; preds = %._crit_edge211.split
  %i.cs = icmp sgt i32 %1, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cw = icmp sgt i32 %0, 0
  %or.cond297 = and i1 %i.cs, %i.cw
  br i1 %or.cond297, label %.preheader188.us.preheader, label %._crit_edge230.split

.preheader188.us.preheader:                       ; preds = %.preheader188.lr.ph
  %.not289 = icmp eq i32 %0, 1
  %exitcond258.peel.not = icmp eq i32 %0, 1
  br label %.preheader188.us

.preheader188.us:                                 ; preds = %.preheader188.us.preheader, %._crit_edge223.split.us.us
  %.0164229.us = phi i32 [ %.lcssa, %._crit_edge223.split.us.us ], [ 0, %.preheader188.us.preheader ]
  %.3228.us = phi i32 [ %.11.us.us.lcssa, %._crit_edge223.split.us.us ], [ 0, %.preheader188.us.preheader ]
  %.1170227.us = phi i32 [ %i.cx, %._crit_edge223.split.us.us ], [ 0, %.preheader188.us.preheader ] ; 2 uses
  %.not.us = icmp eq i32 %.1170227.us, 0          ; 2 uses
  %i.cx = add nuw nsw i32 %.1170227.us, 1         ; 3 uses
  %i.cy = icmp slt i32 %i.cx, %2                  ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge218.us.us, %.preheader188.us
  %.1165222.us.us = phi i32 [ %.0164229.us, %.preheader188.us ], [ %.lcssa, %._crit_edge218.us.us ] ; 7 uses
  %.4221.us.us = phi i32 [ %.3228.us, %.preheader188.us ], [ %.11.us.us.lcssa, %._crit_edge218.us.us ] ; 3 uses
  %.1172220.us.us = phi i32 [ 0, %.preheader188.us ], [ %i.cz, %._crit_edge218.us.us ] ; 2 uses
  %.not182.us.us = icmp eq i32 %.1172220.us.us, 0 ; 2 uses
  %i.cz = add nuw nsw i32 %.1172220.us.us, 1      ; 3 uses
  %i.da = icmp slt i32 %i.cz, %1                  ; 2 uses
  %i.db = sext i32 %.4221.us.us to i64            ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.db
  store i32 %.1165222.us.us, ptr %i.dc, align 4, !tbaa !7
  %i.dd = load double, ptr %3, align 8, !tbaa !21
  %i.de = add nsw i32 %.4221.us.us, 1             ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.db
  store double %i.dd, ptr %i.df, align 8, !tbaa !21
  br i1 %.not.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.us.us
  %i.dg = sub nsw i32 %.1165222.us.us, %i.a
  %i.dh = sext i32 %i.de to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dh
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !7
  %i.dj = load double, ptr %i.ct, align 8, !tbaa !21
  %i.dk = add nsw i32 %.4221.us.us, 2
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dh
  store double %i.dj, ptr %i.dl, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.us.us
  %.6.us.us.peel = phi i32 [ %i.dk, %bb.d ], [ %i.de, %.preheader.us.us ] ; 3 uses
  br i1 %.not182.us.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = sub nsw i32 %.1165222.us.us, %0
  %i.dn = sext i32 %.6.us.us.peel to i64          ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dn
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !7
  %i.dp = load double, ptr %i.cu, align 8, !tbaa !21
  %i.dq = add nsw i32 %.6.us.us.peel, 1
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dn
  store double %i.dp, ptr %i.dr, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.7.us.us.peel = phi i32 [ %i.dq, %bb.f ], [ %.6.us.us.peel, %bb.e ] ; 3 uses
  br i1 %.not289, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ds = add nsw i32 %.1165222.us.us, 1
  %i.dt = sext i32 %.7.us.us.peel to i64          ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dt
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !7
  %i.dv = load double, ptr %i.cv, align 8, !tbaa !21
  %i.dw = add nsw i32 %.7.us.us.peel, 1
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dt
  store double %i.dv, ptr %i.dx, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.9.us.us.peel = phi i32 [ %i.dw, %bb.h ], [ %.7.us.us.peel, %bb.g ] ; 3 uses
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dy = add nsw i32 %.1165222.us.us, %0
  %i.dz = sext i32 %.9.us.us.peel to i64          ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dz
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !7
  %i.eb = load double, ptr %i.cu, align 8, !tbaa !21
  %i.ec = add nsw i32 %.9.us.us.peel, 1
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dz
  store double %i.eb, ptr %i.ed, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.10.us.us.peel = phi i32 [ %i.ec, %bb.j ], [ %.9.us.us.peel, %bb.i ] ; 3 uses
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ee = add nsw i32 %.1165222.us.us, %i.a
  %i.ef = sext i32 %.10.us.us.peel to i64         ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ef
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !7
  %i.eh = load double, ptr %i.ct, align 8, !tbaa !21
  %i.ei = add nsw i32 %.10.us.us.peel, 1
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ef
  store double %i.eh, ptr %i.ej, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.11.us.us.peel = phi i32 [ %i.ei, %bb.l ], [ %.10.us.us.peel, %bb.k ] ; 2 uses
  %i.ek = add nsw i32 %.1165222.us.us, 1          ; 2 uses
  br i1 %exitcond258.peel.not, label %._crit_edge218.us.us, label %.peel.next

.peel.next:                                       ; preds = %bb.m, %bb.w
  %.2216.us.us = phi i32 [ %i.gc, %bb.w ], [ %i.ek, %bb.m ] ; 8 uses
  %.5215.us.us = phi i32 [ %.11.us.us, %bb.w ], [ %.11.us.us.peel, %bb.m ] ; 3 uses
  %.1174214.us.us = phi i32 [ %i.fi, %bb.w ], [ 1, %bb.m ]
  %i.el = sext i32 %.5215.us.us to i64            ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.el
  store i32 %.2216.us.us, ptr %i.em, align 4, !tbaa !7
  %i.en = load double, ptr %3, align 8, !tbaa !21
  %i.eo = add nsw i32 %.5215.us.us, 1             ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.el
  store double %i.en, ptr %i.ep, align 8, !tbaa !21
  br i1 %.not.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.peel.next
  %i.eq = sub nsw i32 %.2216.us.us, %i.a
  %i.er = sext i32 %i.eo to i64                   ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.er
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !7
  %i.et = load double, ptr %i.ct, align 8, !tbaa !21
  %i.eu = add nsw i32 %.5215.us.us, 2
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.er
  store double %i.et, ptr %i.ev, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.peel.next
  %.6.us.us = phi i32 [ %i.eu, %bb.n ], [ %i.eo, %.peel.next ] ; 3 uses
  br i1 %.not182.us.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = sub nsw i32 %.2216.us.us, %0
  %i.ex = sext i32 %.6.us.us to i64               ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ex
  store i32 %i.ew, ptr %i.ey, align 4, !tbaa !7
  %i.ez = load double, ptr %i.cu, align 8, !tbaa !21
  %i.fa = add nsw i32 %.6.us.us, 1
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ex
  store double %i.ez, ptr %i.fb, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.7.us.us = phi i32 [ %i.fa, %bb.p ], [ %.6.us.us, %bb.o ] ; 3 uses
  %i.fc = add nsw i32 %.2216.us.us, -1
  %i.fd = sext i32 %.7.us.us to i64               ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.fd
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !7
  %i.ff = load double, ptr %i.cv, align 8, !tbaa !21
  %i.fg = add nsw i32 %.7.us.us, 1                ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.fd
  store double %i.ff, ptr %i.fh, align 8, !tbaa !21
  %i.fi = add nuw nsw i32 %.1174214.us.us, 1      ; 3 uses
  %i.fj = icmp slt i32 %i.fi, %0
  br i1 %i.fj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fk = add nsw i32 %.2216.us.us, 1
end_hunk_0
