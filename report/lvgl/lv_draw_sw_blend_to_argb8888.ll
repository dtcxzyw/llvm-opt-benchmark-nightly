Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_argb8888?download=true
inline.NumInlined: 160
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_color_mix_alpha_cache_t = type { %struct.lv_color32_t, %struct.lv_color32_t, %struct.lv_color32_t, i8, i8 }
%struct.lv_color32_t = type { i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_color_to_argb8888(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @lv_memset(ptr noundef nonnull %1, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  call void @lv_memset(ptr noundef nonnull %i.m, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  call void @lv_memset(ptr noundef nonnull %i.n, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  store i8 -1, ptr %i.o, align 4, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 7 uses
  store i8 -1, ptr %i.p, align 1, !tbaa !22
  %i.q = icmp eq ptr %i.h, null                   ; 2 uses
  %i.r = zext i8 %i.f to i32
  %i.s = icmp ugt i8 %i.f, -4                     ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload45 = load i24, ptr %i.t, align 4
  %i.u = call i32 @lv_color_to_u32(i24 %.0.copyload45) #7 ; 12 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.w = icmp sgt i32 %i.d, 0
  br i1 %i.w, label %.preheader225.lr.ph, label %.loopexit

.preheader225.lr.ph:                              ; preds = %bb.b
  %i.x = icmp sgt i32 %i.b, 15
  %i.y = zext i32 %i.l to i64                     ; 2 uses
  br i1 %i.x, label %.preheader225.us.preheader, label %.preheader225.lr.ph.split

.preheader225.us.preheader:                       ; preds = %.preheader225.lr.ph
  %i.z = add nsw i32 %i.b, -15
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ac = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %i.ad = shufflevector <4 x i32> %i.ac, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ae = call i64 @llvm.umax.i64(i64 %i.aa, i64 16)
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = and i64 %i.af, -16                      ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 17
  %i.ai = call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ab) ; 2 uses
  %i.aj = add i64 %i.ai, -16
  %i.ak = sub i64 %i.aj, %i.ag                    ; 2 uses
  %min.iters.check361 = icmp ult i64 %i.ak, 8
  %i.al = and i64 %i.ai, 7                        ; 2 uses
  %n.vec363 = sub nuw i64 %i.ak, %i.al            ; 2 uses
  %broadcast.splatinsert364 = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat365 = shufflevector <4 x i32> %broadcast.splatinsert364, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n370 = icmp eq i64 %i.al, 0
  br label %.preheader225.us

.preheader225.us:                                 ; preds = %.preheader225.us.preheader, %._crit_edge264.us
  %.0152266.us = phi ptr [ %i.at, %._crit_edge264.us ], [ %i.v, %.preheader225.us.preheader ] ; 4 uses
  %.0155265.us = phi i32 [ %i.au, %._crit_edge264.us ], [ 0, %.preheader225.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader225.us, %bb.c
  %indvars.iv310 = phi i64 [ 16, %.preheader225.us ], [ %indvars.iv.next311, %bb.c ] ; 4 uses
  %indvars.iv307 = phi i64 [ 0, %.preheader225.us ], [ %indvars.iv.next308, %bb.c ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0152266.us, i64 %indvars.iv307 ; 4 uses
  store <4 x i32> %i.ad, ptr %i.am, align 4, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %i.ad, ptr %i.an, align 4, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store <4 x i32> %i.ad, ptr %i.ao, align 4, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store <4 x i32> %i.ad, ptr %i.ap, align 4, !tbaa !24
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 16 ; 3 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next308, %i.aa
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 16
  br i1 %i.aq, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !25

.lr.ph263.us:                                     ; preds = %.lr.ph263.us.preheader372, %.lr.ph263.us
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %.lr.ph263.us ], [ %indvars.iv312.ph, %.lr.ph263.us.preheader372 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0152266.us, i64 %indvars.iv312
  store i32 %i.u, ptr %i.ar, align 4, !tbaa !24
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next313, %i.ab
  br i1 %i.as, label %.lr.ph263.us, label %._crit_edge264.us, !llvm.loop !27

._crit_edge264.us:                                ; preds = %.lr.ph263.us, %middle.block369, %..preheader_crit_edge.us
  %i.at = getelementptr inbounds nuw i8, ptr %.0152266.us, i64 %i.y
  %i.au = add nuw nsw i32 %.0155265.us, 1         ; 2 uses
  %exitcond315.not = icmp eq i32 %i.au, %i.d
  br i1 %exitcond315.not, label %.loopexit, label %.preheader225.us, !llvm.loop !30

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.av = trunc nuw nsw i64 %indvars.iv.next308 to i32
  %i.aw = icmp sgt i32 %i.b, %i.av
  br i1 %i.aw, label %.lr.ph263.us.preheader, label %._crit_edge264.us

.lr.ph263.us.preheader:                           ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check361, label %.lr.ph263.us.preheader372, label %vector.ph362

vector.ph362:                                     ; preds = %.lr.ph263.us.preheader
  %i.ax = add i64 %indvars.iv310, %n.vec363
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.0152266.us, i64 %indvars.iv310
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph362
  %index367 = phi i64 [ 0, %vector.ph362 ], [ %index.next368, %vector.body366 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index367 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %broadcast.splat365, ptr %i.az, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat365, ptr %i.ba, align 4, !tbaa !24
  %index.next368 = add nuw i64 %index367, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.bb, label %middle.block369, label %vector.body366, !llvm.loop !31

middle.block369:                                  ; preds = %vector.body366
  br i1 %cmp.n370, label %._crit_edge264.us, label %.lr.ph263.us.preheader372

.lr.ph263.us.preheader372:                        ; preds = %.lr.ph263.us.preheader, %middle.block369
  %indvars.iv312.ph = phi i64 [ %indvars.iv310, %.lr.ph263.us.preheader ], [ %i.ax, %middle.block369 ]
  br label %.lr.ph263.us

.preheader225.lr.ph.split:                        ; preds = %.preheader225.lr.ph
  %i.bc = icmp sgt i32 %i.b, 0
  br i1 %i.bc, label %.preheader225.preheader, label %.loopexit

.preheader225.preheader:                          ; preds = %.preheader225.lr.ph.split
  %wide.trip.count304 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count304, 7      ; 3 uses
  %i.bd = icmp ult i32 %i.b, 8
  %unroll_iter = and i64 %wide.trip.count304, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod379 = icmp ne i64 %xtraiter, 0
  br label %.preheader225

.preheader225:                                    ; preds = %.preheader225.preheader, %._crit_edge264
  %.0152266 = phi ptr [ %i.bu, %._crit_edge264 ], [ %i.v, %.preheader225.preheader ] ; 10 uses
  %.0155265 = phi i32 [ %i.bv, %._crit_edge264 ], [ 0, %.preheader225.preheader ]
  br i1 %i.bd, label %.epil.preheader, label %.preheader225.new

.preheader225.new:                                ; preds = %.preheader225, %.preheader225.new
  %indvars.iv301 = phi i64 [ %indvars.iv.next302.7, %.preheader225.new ], [ 0, %.preheader225 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader225.new ], [ 0, %.preheader225 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  store i32 %i.u, ptr %i.be, align 4, !tbaa !24
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.u, ptr %i.bg, align 4, !tbaa !24
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.u, ptr %i.bi, align 4, !tbaa !24
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.u, ptr %i.bk, align 4, !tbaa !24
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 %i.u, ptr %i.bm, align 4, !tbaa !24
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 %i.u, ptr %i.bo, align 4, !tbaa !24
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 %i.u, ptr %i.bq, align 4, !tbaa !24
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  store i32 %i.u, ptr %i.bs, align 4, !tbaa !24
  %indvars.iv.next302.7 = add nuw nsw i64 %indvars.iv301, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge264.unr-lcssa, label %.preheader225.new, !llvm.loop !32

._crit_edge264.unr-lcssa:                         ; preds = %.preheader225.new
  br i1 %lcmp.mod.not, label %._crit_edge264, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge264.unr-lcssa, %.preheader225
  %indvars.iv301.epil.init = phi i64 [ 0, %.preheader225 ], [ %indvars.iv.next302.7, %._crit_edge264.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv301.epil = phi i64 [ %indvars.iv301.epil.init, %.epil.preheader ], [ %indvars.iv.next302.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301.epil
  store i32 %i.u, ptr %i.bt, align 4, !tbaa !24
  %indvars.iv.next302.epil = add nuw nsw i64 %indvars.iv301.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge264, label %bb.d, !llvm.loop !33

._crit_edge264:                                   ; preds = %bb.d, %._crit_edge264.unr-lcssa
  %i.bu = getelementptr inbounds nuw i8, ptr %.0152266, i64 %i.y
  %i.bv = add nuw nsw i32 %.0155265, 1            ; 2 uses
  %exitcond306.not = icmp eq i32 %i.bv, %i.d
  br i1 %exitcond306.not, label %.loopexit, label %.preheader225, !llvm.loop !30

bb.e:                                             ; preds = %bb.a
  %i.bw = icmp ult i8 %i.f, -3
  %or.cond5 = select i1 %i.q, i1 %i.bw, i1 false
  br i1 %or.cond5, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload24 = load i24, ptr %i.bx, align 4
  %i.by = call i32 @lv_color_to_32(i24 %.0.copyload24, i8 noundef zeroext %i.f) #7
  %.fr268 = freeze i32 %i.by                      ; 12 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.ca = icmp sgt i32 %i.d, 0
  br i1 %i.ca, label %.preheader226.lr.ph, label %.loopexit

.preheader226.lr.ph:                              ; preds = %bb.f
  %i.cb = icmp sgt i32 %i.b, 0
  %.sroa.045.0.extract.trunc.i = trunc i32 %.fr268 to i24
  %.sroa.654.0.extract.shift.i = lshr i32 %.fr268, 24 ; 6 uses
  %i.cc = icmp ult i32 %.fr268, 50331648
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cf = xor i32 %.sroa.654.0.extract.shift.i, 255
  %i.cg = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i to i16
  %.lhs.trunc.i = mul nuw i16 %i.cg, 255
  %.sroa.045.0.insert.ext51.i = and i32 %.fr268, 16777215
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.ci = zext i32 %i.l to i64                    ; 3 uses
  br i1 %i.cb, label %.preheader226.lr.ph.split, label %.loopexit

.preheader226.lr.ph.split:                        ; preds = %.preheader226.lr.ph
  %i.cj = icmp ugt i32 %.fr268, -50331649
  %wide.trip.count298 = zext nneg i32 %i.b to i64 ; 7 uses
  br i1 %i.cj, label %.preheader226.us.preheader, label %.preheader226.lr.ph.split.split

.preheader226.us.preheader:                       ; preds = %.preheader226.lr.ph.split
  %min.iters.check349 = icmp ult i32 %i.b, 8
  %n.vec351 = and i64 %wide.trip.count298, 2147483640 ; 3 uses
  %broadcast.splatinsert352 = insertelement <4 x i32> poison, i32 %.fr268, i64 0
  %broadcast.splat353 = shufflevector <4 x i32> %broadcast.splatinsert352, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n358 = icmp eq i64 %n.vec351, %wide.trip.count298
  br label %.preheader226.us

.preheader226.us:                                 ; preds = %.preheader226.us.preheader, %._crit_edge242.split.us.us
  %.0151253.us = phi ptr [ %i.co, %._crit_edge242.split.us.us ], [ %i.bz, %.preheader226.us.preheader ] ; 3 uses
  %.1156252.us = phi i32 [ %i.cp, %._crit_edge242.split.us.us ], [ 0, %.preheader226.us.preheader ]
  br i1 %min.iters.check349, label %lv_color_32_32_mix.exit.us.us.preheader, label %vector.body354

vector.body354:                                   ; preds = %.preheader226.us, %vector.body354
  %index355 = phi i64 [ %index.next356, %vector.body354 ], [ 0, %.preheader226.us ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0151253.us, i64 %index355 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x i32> %broadcast.splat353, ptr %i.ck, align 1
  store <4 x i32> %broadcast.splat353, ptr %i.cl, align 1
  %index.next356 = add nuw i64 %index355, 8       ; 2 uses
end_hunk_0
