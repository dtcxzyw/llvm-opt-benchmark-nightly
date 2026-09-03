Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb888?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_color_to_rgb888(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.f = load i8, ptr %i.e, align 1, !tbaa !44    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !47   ; 5 uses
  %i.m = icmp eq ptr %i.h, null                   ; 2 uses
  %i.n = zext i8 %i.f to i16
  %i.o = icmp ugt i8 %i.f, -4                     ; 2 uses
  %or.cond = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %.loopexit [
    i32 3, label %bb.c
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !48     ; 5 uses
  %i.q = mul i32 %i.b, 3                          ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge239

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.v = zext nneg i32 %i.q to i64
  %2 = add nsw i64 %i.v, -1
  %3 = udiv i64 %2, 3                             ; 2 uses
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %5 = icmp ult i32 %i.q, 4
  br i1 %5, label %.epil.preheader317, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter322 = and i64 %4, 9223372036854775806
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %niter323 = phi i64 [ 0, %.lr.ph.new ], [ %niter323.next.1, %bb.d ]
  %6 = load i8, ptr %i.s, align 4, !tbaa !49
  %7 = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 3 uses
  store i8 %6, ptr %7, align 1, !tbaa !11
  %8 = load i8, ptr %i.t, align 1, !tbaa !50
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !11
  %10 = load i8, ptr %i.u, align 2, !tbaa !51
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !11
  %i.w = load i8, ptr %i.s, align 4, !tbaa !49
  %12 = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 3
  store i8 %i.w, ptr %i.x, align 1, !tbaa !11
  %i.y = load i8, ptr %i.t, align 1, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i8 %i.y, ptr %i.z, align 1, !tbaa !11
  %i.aa = load i8, ptr %i.u, align 2, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %niter323.next.1 = add i64 %niter323, 2         ; 2 uses
  %niter323.ncmp.1.not = icmp eq i64 %niter323.next.1, %unroll_iter322
  br i1 %niter323.ncmp.1.not, label %._crit_edge239.loopexit.unr-lcssa, label %bb.d, !llvm.loop !26

._crit_edge239.loopexit.unr-lcssa:                ; preds = %bb.d
  %13 = and i64 %3, 1
  %lcmp.mod320.not.not = icmp eq i64 %13, 0
  br i1 %lcmp.mod320.not.not, label %.epil.preheader317, label %._crit_edge239

.epil.preheader317:                               ; preds = %._crit_edge239.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge239.loopexit.unr-lcssa ]
  %lcmp.mod321 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod321)
  %14 = load i8, ptr %i.s, align 4, !tbaa !49
  %15 = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.epil.init ; 3 uses
  store i8 %14, ptr %15, align 1, !tbaa !11
  %16 = load i8, ptr %i.t, align 1, !tbaa !50
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 1
  store i8 %16, ptr %17, align 1, !tbaa !11
  %18 = load i8, ptr %i.u, align 2, !tbaa !51
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 2
  store i8 %18, ptr %19, align 1, !tbaa !11
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %.epil.preheader317, %._crit_edge239.loopexit.unr-lcssa, %bb.c
  %i.ac = sext i32 %i.l to i64
  %i.ad = icmp sgt i32 %i.d, 1
  br i1 %i.ad, label %.lr.ph243, label %.loopexit

.lr.ph243:                                        ; preds = %._crit_edge239
  %i.ae = sext i32 %i.q to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph243, %bb.e
  %.pn241 = phi ptr [ %i.p, %.lr.ph243 ], [ %.0182, %bb.e ]
  %.0183240 = phi i32 [ 1, %.lr.ph243 ], [ %i.ag, %bb.e ]
  %.0182 = getelementptr inbounds i8, ptr %.pn241, i64 %i.ac ; 2 uses
  %i.af = tail call ptr @lv_memcpy(ptr noundef %.0182, ptr noundef %i.p, i64 noundef %i.ae) #5 ; 0 uses
  %i.ag = add nuw nsw i32 %.0183240, 1            ; 2 uses
  %exitcond260.not = icmp eq i32 %i.ag, %i.d
  br i1 %exitcond260.not, label %.loopexit, label %bb.e, !llvm.loop !27

bb.f:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload40 = load i24, ptr %i.ah, align 4
  %i.ai = tail call i32 @lv_color_to_u32(i24 %.0.copyload40) #5 ; 12 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.ak = icmp sgt i32 %i.d, 0
  br i1 %i.ak, label %.preheader212.lr.ph, label %.loopexit

.preheader212.lr.ph:                              ; preds = %bb.f
  %.not244 = icmp slt i32 %i.b, 16
  %i.al = zext i32 %i.l to i64                    ; 2 uses
  br i1 %.not244, label %.preheader212.lr.ph.split.us, label %.preheader212.preheader

.preheader212.preheader:                          ; preds = %.preheader212.lr.ph
  %i.am = add nsw i32 %i.b, -16
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ap = lshr i64 %i.an, 4                       ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.ar = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.as = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.at = icmp eq i64 %i.ap, 0
  %unroll_iter = and i64 %i.aq, 536870910
  %i.au = and i64 %i.an, 16
  %lcmp.mod.not.not = icmp eq i64 %i.au, 0
  %lcmp.mod310 = trunc i64 %i.aq to i1
  %i.av = and i64 %i.an, 4294967280               ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, 17
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ao) ; 2 uses
  %i.ay = add nsw i64 %i.ax, -16
  %i.az = sub nsw i64 %i.ay, %i.av                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 8
  %i.ba = and i64 %i.ax, 7                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.az, %i.ba           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.ba, 0
  br label %.preheader212

.preheader212.lr.ph.split.us:                     ; preds = %.preheader212.lr.ph
  %i.bb = icmp sgt i32 %i.b, 0
  br i1 %i.bb, label %.preheader212.us.preheader, label %.loopexit

.preheader212.us.preheader:                       ; preds = %.preheader212.lr.ph.split.us
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter312 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.bc = icmp ult i32 %i.b, 8
  %unroll_iter315 = and i64 %wide.trip.count, 2147483640
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  %lcmp.mod314 = icmp ne i64 %xtraiter312, 0
  br label %.preheader212.us

.preheader212.us:                                 ; preds = %.preheader212.us.preheader, %._crit_edge249.us
  %.0180251.us = phi ptr [ %i.bt, %._crit_edge249.us ], [ %i.aj, %.preheader212.us.preheader ] ; 10 uses
  %.1184250.us = phi i32 [ %i.bu, %._crit_edge249.us ], [ 0, %.preheader212.us.preheader ]
  br i1 %i.bc, label %.epil.preheader311, label %.preheader212.us.new

.preheader212.us.new:                             ; preds = %.preheader212.us, %.preheader212.us.new
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.7, %.preheader212.us.new ], [ 0, %.preheader212.us ] ; 9 uses
  %niter316 = phi i64 [ %niter316.next.7, %.preheader212.us.new ], [ 0, %.preheader212.us ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  store i32 %i.ai, ptr %i.bd, align 4, !tbaa !52
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.ai, ptr %i.bf, align 4, !tbaa !52
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %i.ai, ptr %i.bh, align 4, !tbaa !52
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %i.ai, ptr %i.bj, align 4, !tbaa !52
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 %i.ai, ptr %i.bl, align 4, !tbaa !52
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store i32 %i.ai, ptr %i.bn, align 4, !tbaa !52
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 %i.ai, ptr %i.bp, align 4, !tbaa !52
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  store i32 %i.ai, ptr %i.br, align 4, !tbaa !52
  %indvars.iv.next271.7 = add nuw nsw i64 %indvars.iv270, 8 ; 2 uses
  %niter316.next.7 = add i64 %niter316, 8         ; 2 uses
  %niter316.ncmp.7 = icmp eq i64 %niter316.next.7, %unroll_iter315
  br i1 %niter316.ncmp.7, label %._crit_edge249.us.unr-lcssa, label %.preheader212.us.new, !llvm.loop !28

._crit_edge249.us.unr-lcssa:                      ; preds = %.preheader212.us.new
  br i1 %lcmp.mod313.not, label %._crit_edge249.us, label %.epil.preheader311

.epil.preheader311:                               ; preds = %._crit_edge249.us.unr-lcssa, %.preheader212.us
  %indvars.iv270.epil.init = phi i64 [ 0, %.preheader212.us ], [ %indvars.iv.next271.7, %._crit_edge249.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod314)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader311
  %indvars.iv270.epil = phi i64 [ %indvars.iv270.epil.init, %.epil.preheader311 ], [ %indvars.iv.next271.epil, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader311 ], [ %epil.iter.next, %bb.g ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0180251.us, i64 %indvars.iv270.epil
  store i32 %i.ai, ptr %i.bs, align 4, !tbaa !52
  %indvars.iv.next271.epil = add nuw nsw i64 %indvars.iv270.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter312
  br i1 %epil.iter.cmp.not, label %._crit_edge249.us, label %bb.g, !llvm.loop !29

._crit_edge249.us:                                ; preds = %bb.g, %._crit_edge249.us.unr-lcssa
  %i.bt = getelementptr inbounds nuw i8, ptr %.0180251.us, i64 %i.al
  %i.bu = add nuw nsw i32 %.1184250.us, 1         ; 2 uses
  %exitcond274.not = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond274.not, label %.loopexit, label %.preheader212.us, !llvm.loop !30

.preheader212:                                    ; preds = %.preheader212.preheader, %._crit_edge249
  %.0180251 = phi ptr [ %i.cr, %._crit_edge249 ], [ %i.aj, %.preheader212.preheader ] ; 6 uses
  %.1184250 = phi i32 [ %i.cs, %._crit_edge249 ], [ 0, %.preheader212.preheader ]
  br i1 %i.at, label %.epil.preheader, label %.preheader212.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader212.new
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 16
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader_crit_edge

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader212
  %indvars.iv264.epil.init = phi i64 [ 16, %.preheader212 ], [ %indvars.iv.next265.1, %..preheader_crit_edge.unr-lcssa ]
  %indvars.iv261.epil.init = phi i64 [ 0, %.preheader212 ], [ %indvars.iv.next262.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.0180251, i64 %indvars.iv261.epil.init ; 4 uses
  store <4 x i32> %i.as, ptr %i.bv, align 4, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x i32> %i.as, ptr %i.bw, align 4, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store <4 x i32> %i.as, ptr %i.bx, align 4, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store <4 x i32> %i.as, ptr %i.by, align 4, !tbaa !52
  %indvars.iv.next262.epil = add nuw nsw i64 %indvars.iv261.epil.init, 16
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv264.lcssa = phi i64 [ %indvars.iv.next265, %..preheader_crit_edge.unr-lcssa ], [ %indvars.iv264.epil.init, %.epil.preheader ] ; 3 uses
  %indvars.iv.next262.lcssa = phi i64 [ %indvars.iv.next262.1, %..preheader_crit_edge.unr-lcssa ], [ %indvars.iv.next262.epil, %.epil.preheader ]
  %i.bz = trunc nuw nsw i64 %indvars.iv.next262.lcssa to i32
  %i.ca = icmp sgt i32 %i.b, %i.bz
  br i1 %i.ca, label %.lr.ph248.preheader, label %._crit_edge249

.lr.ph248.preheader:                              ; preds = %..preheader_crit_edge
  br i1 %min.iters.check, label %.lr.ph248.preheader303, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph248.preheader
  %i.cb = add i64 %indvars.iv264.lcssa, %n.vec
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.0180251, i64 %indvars.iv264.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cd, align 4, !tbaa !52
  store <4 x i32> %broadcast.splat, ptr %i.ce, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge249, label %.lr.ph248.preheader303

.lr.ph248.preheader303:                           ; preds = %.lr.ph248.preheader, %middle.block
  %indvars.iv266.ph = phi i64 [ %indvars.iv264.lcssa, %.lr.ph248.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph248

.preheader212.new:                                ; preds = %.preheader212, %.preheader212.new
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.1, %.preheader212.new ], [ 16, %.preheader212 ] ; 2 uses
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.1, %.preheader212.new ], [ 0, %.preheader212 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader212.new ], [ 0, %.preheader212 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0180251, i64 %indvars.iv261 ; 4 uses
  store <4 x i32> %i.as, ptr %i.cg, align 4, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x i32> %i.as, ptr %i.ch, align 4, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store <4 x i32> %i.as, ptr %i.ci, align 4, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store <4 x i32> %i.as, ptr %i.cj, align 4, !tbaa !52
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0180251, i64 %indvars.iv261 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  store <4 x i32> %i.as, ptr %i.cl, align 4, !tbaa !52
end_hunk_0
