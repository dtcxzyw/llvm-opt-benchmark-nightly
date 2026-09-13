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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.f = load i8, ptr %i.e, align 1, !tbaa !56    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @lv_memset(ptr noundef nonnull %1, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  call void @lv_memset(ptr noundef nonnull %i.m, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  call void @lv_memset(ptr noundef nonnull %i.n, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  store i8 -1, ptr %i.o, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 7 uses
  store i8 -1, ptr %i.p, align 1, !tbaa !14
  %i.q = icmp eq ptr %i.h, null                   ; 2 uses
  %i.r = zext i8 %i.f to i32
  %i.s = icmp ugt i8 %i.f, -4                     ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload45 = load i24, ptr %i.t, align 4
  %i.u = call i32 @lv_color_to_u32(i24 %.0.copyload45) #7 ; 12 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
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
  store <4 x i32> %i.ad, ptr %i.am, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %i.ad, ptr %i.an, align 4, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store <4 x i32> %i.ad, ptr %i.ao, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store <4 x i32> %i.ad, ptr %i.ap, align 4, !tbaa !61
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 16 ; 3 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next308, %i.aa
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 16
  br i1 %i.aq, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !36

.lr.ph263.us:                                     ; preds = %.lr.ph263.us.preheader372, %.lr.ph263.us
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %.lr.ph263.us ], [ %indvars.iv312.ph, %.lr.ph263.us.preheader372 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0152266.us, i64 %indvars.iv312
  store i32 %i.u, ptr %i.ar, align 4, !tbaa !61
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next313, %i.ab
  br i1 %i.as, label %.lr.ph263.us, label %._crit_edge264.us, !llvm.loop !37

._crit_edge264.us:                                ; preds = %.lr.ph263.us, %middle.block369, %..preheader_crit_edge.us
  %i.at = getelementptr inbounds nuw i8, ptr %.0152266.us, i64 %i.y
  %i.au = add nuw nsw i32 %.0155265.us, 1         ; 2 uses
  %exitcond315.not = icmp eq i32 %i.au, %i.d
  br i1 %exitcond315.not, label %.loopexit, label %.preheader225.us, !llvm.loop !38

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
  store <4 x i32> %broadcast.splat365, ptr %i.az, align 4, !tbaa !61
  store <4 x i32> %broadcast.splat365, ptr %i.ba, align 4, !tbaa !61
  %index.next368 = add nuw i64 %index367, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.bb, label %middle.block369, label %vector.body366, !llvm.loop !39

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
  store i32 %i.u, ptr %i.be, align 4, !tbaa !61
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.u, ptr %i.bg, align 4, !tbaa !61
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.u, ptr %i.bi, align 4, !tbaa !61
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.u, ptr %i.bk, align 4, !tbaa !61
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 %i.u, ptr %i.bm, align 4, !tbaa !61
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 %i.u, ptr %i.bo, align 4, !tbaa !61
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 %i.u, ptr %i.bq, align 4, !tbaa !61
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  store i32 %i.u, ptr %i.bs, align 4, !tbaa !61
  %indvars.iv.next302.7 = add nuw nsw i64 %indvars.iv301, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge264.unr-lcssa, label %.preheader225.new, !llvm.loop !40

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
  store i32 %i.u, ptr %i.bt, align 4, !tbaa !61
  %indvars.iv.next302.epil = add nuw nsw i64 %indvars.iv301.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge264, label %bb.d, !llvm.loop !41

._crit_edge264:                                   ; preds = %bb.d, %._crit_edge264.unr-lcssa
  %i.bu = getelementptr inbounds nuw i8, ptr %.0152266, i64 %i.y
  %i.bv = add nuw nsw i32 %.0155265, 1            ; 2 uses
  %exitcond306.not = icmp eq i32 %i.bv, %i.d
  br i1 %exitcond306.not, label %.loopexit, label %.preheader225, !llvm.loop !38

bb.e:                                             ; preds = %bb.a
  %i.bw = icmp ult i8 %i.f, -3
  %or.cond5 = select i1 %i.q, i1 %i.bw, i1 false
  br i1 %or.cond5, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload24 = load i24, ptr %i.bx, align 4
  %i.by = call i32 @lv_color_to_32(i24 %.0.copyload24, i8 noundef zeroext %i.f) #7
  %.fr268 = freeze i32 %i.by                      ; 12 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !60    ; 3 uses
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
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_color_to_argb8888:bb.a
  br label %lv_color_32_32_mix.exit215

bb.ag:                                            ; preds = %bb.ae
  %i.gz = load i8, ptr %i.gh, align 1, !tbaa !18
  %i.ha = zext i8 %i.gz to i32
  %.not.i193 = icmp eq i32 %.sroa.6.0.extract.shift.i190, %i.ha
  %i.hb = load i8, ptr %i.gi, align 1
  %i.hc = zext i8 %i.hb to i32
  %.not77.i212 = icmp eq i32 %.sroa.654.0.extract.shift.i189, %i.hc
  %or.cond224 = select i1 %.not.i193, i1 %.not77.i212, i1 false
  br i1 %or.cond224, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hd = xor i32 %.sroa.654.0.extract.shift.i189, 255
  %i.he = xor i32 %.sroa.6.0.extract.shift.i190, 255
  %i.hf = mul nuw nsw i32 %i.hd, %i.he
  %i.hg = lshr i32 %i.hf, 8
  %i.hh = trunc nuw i32 %i.hg to i8
  %i.hi = xor i8 %i.hh, -1                        ; 2 uses
  store i8 %i.hi, ptr %i.o, align 4, !tbaa !13
  %i.hj = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i189 to i16
  %.lhs.trunc.i194 = mul nuw i16 %i.hj, 255
  %.rhs.trunc.i195 = zext i8 %i.hi to i16
  %i.hk = udiv i16 %.lhs.trunc.i194, %.rhs.trunc.i195
  %i.hl = trunc i16 %i.hk to i8
  store i8 %i.hl, ptr %i.p, align 1, !tbaa !14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.hm = load i32, ptr %i.m, align 4
  %i.hn = call zeroext i1 @lv_color32_eq(i32 %i.gt, i32 %i.hm) #7
  br i1 %i.hn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ho = load i32, ptr %1, align 4
  %i.hp = call zeroext i1 @lv_color32_eq(i32 %.sroa.011.0.insert.insert, i32 %i.ho) #7
  br i1 %i.hp, label %._crit_edge.i207, label %bb.ak

._crit_edge.i207:                                 ; preds = %bb.aj
  %.sroa.074.0.copyload.pre.i209 = load i24, ptr %i.n, align 4
  %.sroa.5.0.copyload.pre.i211 = load i8, ptr %i.gj, align 1, !tbaa !19
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i32 %.sroa.011.0.insert.insert, ptr %1, align 4
  store i32 %i.gt, ptr %i.m, align 4
  %i.hq = load i8, ptr %i.p, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i196 = zext i8 %i.hq to i32
  %.sroa.654.0.insert.shift64.i197 = shl nuw i32 %.sroa.654.0.insert.ext63.i196, 24
  %.sroa.045.0.insert.insert53.i199 = or disjoint i32 %.sroa.654.0.insert.shift64.i197, %.sroa.011.0.insert.ext
  %i.hr = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i199, i32 %i.gt) #7 ; 2 uses
  store i32 %i.hr, ptr %i.n, align 4
  %i.hs = load i8, ptr %i.o, align 4, !tbaa !13   ; 2 uses
  store i8 %i.hs, ptr %i.gj, align 1, !tbaa !20
  %i.ht = trunc i32 %i.hr to i24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i207
  %.sroa.5.0.copyload.i200 = phi i8 [ %.sroa.5.0.copyload.pre.i211, %._crit_edge.i207 ], [ %i.hs, %bb.ak ]
  %.sroa.074.0.copyload.i201 = phi i24 [ %.sroa.074.0.copyload.pre.i209, %._crit_edge.i207 ], [ %i.ht, %bb.ak ]
  %i.hu = zext i8 %.sroa.5.0.copyload.i200 to i32
  br label %lv_color_32_32_mix.exit215

lv_color_32_32_mix.exit215:                       ; preds = %bb.ac, %bb.ad, %bb.af, %bb.al
  %.sroa.074.0.i202 = phi i24 [ %.sroa.074.0.copyload.i201, %bb.al ], [ %.sroa.045.0.extract.trunc.i188, %bb.ac ], [ %.sroa.074.0.extract.trunc.i213, %bb.af ], [ %.sroa.018.0.extract.trunc.i192, %bb.ad ]
  %.sroa.5.0.i203 = phi i32 [ %i.hu, %bb.al ], [ %.sroa.654.0.extract.shift.i189, %bb.ac ], [ %.sroa.5.0.extract.shift.i214, %bb.af ], [ %.sroa.6.0.extract.shift.i190, %bb.ad ]
  %.sroa.5.0.insert.shift.i204 = shl nuw i32 %.sroa.5.0.i203, 24
  %.sroa.074.0.insert.ext.i205 = zext i24 %.sroa.074.0.i202 to i32
  %.sroa.074.0.insert.insert.i206 = or disjoint i32 %.sroa.5.0.insert.shift.i204, %.sroa.074.0.insert.ext.i205
  store i32 %.sroa.074.0.insert.insert.i206, ptr %i.gr, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ac, !llvm.loop !50

._crit_edge:                                      ; preds = %lv_color_32_32_mix.exit215
  %i.hv = getelementptr inbounds nuw i8, ptr %.0235, i64 %i.gk
  %i.hw = getelementptr inbounds i8, ptr %.1234, i64 %i.gl
  %i.hx = add nuw nsw i32 %.3158233, 1            ; 2 uses
  %exitcond276.not = icmp eq i32 %i.hx, %i.d
  br i1 %exitcond276.not, label %.loopexit, label %.preheader230, !llvm.loop !51

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge237, %._crit_edge242.split.split, %._crit_edge242.split.split.us.us, %._crit_edge242.split.us.us, %._crit_edge264, %._crit_edge264.us, %bb.ab, %.preheader230.lr.ph, %bb.q, %.preheader228.lr.ph, %bb.f, %.preheader226.lr.ph, %bb.b, %.preheader225.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lv_color_to_u32(i24) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @lv_color_to_32(i24, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_image_to_argb8888(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 12 uses
  %2 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 12 uses
  %3 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 12 uses
  %4 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 32 uses
  %5 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 32 uses
  %6 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 27 uses
  %7 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  switch i32 %i.b, label %l8_image_blend.exit [
    i32 18, label %bb.b
    i32 27, label %bb.ax
    i32 15, label %bb.ct
    i32 17, label %bb.cu
    i32 26, label %bb.cv
    i32 16, label %bb.fq
    i32 6, label %bb.ib
    i32 21, label %bb.jg
    i32 7, label %bb.ku
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !24
  %.fr314.i = freeze i8 %i.h                      ; 9 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !25     ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !30   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @lv_memset(ptr noundef nonnull %7, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.t, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.u, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 9 uses
  store i8 -1, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 9 uses
  store i8 -1, ptr %i.w, align 1, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %.preheader286.i

.preheader286.i:                                  ; preds = %bb.b
  %i.aa = icmp sgt i32 %i.f, 0
  br i1 %i.aa, label %.preheader285.lr.ph.i, label %rgb565_image_blend.exit

.preheader285.lr.ph.i:                            ; preds = %.preheader286.i
  %i.ab = icmp sgt i32 %i.d, 0
  %i.ac = zext i8 %.fr314.i to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 7
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 11 ; 2 uses
  %i.ag = sext i32 %i.s to i64
  %i.ah = zext i32 %i.k to i64
  %i.ai = zext i32 %i.o to i64
  br i1 %i.ab, label %.preheader285.preheader.i, label %rgb565_image_blend.exit

.preheader285.preheader.i:                        ; preds = %.preheader285.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.preheader285.i

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp eq ptr %i.q, null
  br i1 %i.aj, label %.preheader278.i, label %bb.l

.preheader278.i:                                  ; preds = %bb.c
  %i.ak = icmp sgt i32 %i.f, 0
  br i1 %i.ak, label %.preheader.lr.ph.i, label %rgb565_image_blend.exit

.preheader.lr.ph.i:                               ; preds = %.preheader278.i
  %i.al = icmp sgt i32 %i.d, 0
  %.sroa.14.0.insert.ext.i = zext i8 %.fr314.i to i32 ; 5 uses
  %.sroa.14.0.insert.shift.i = shl nuw i32 %.sroa.14.0.insert.ext.i, 24 ; 3 uses
  %i.am = icmp ult i8 %.fr314.i, 3
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 7
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.ap = xor i32 %.sroa.14.0.insert.ext.i, 255
  %i.aq = zext i8 %.fr314.i to i16
  %.lhs.trunc.i.i = mul nuw i16 %i.aq, 255
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 11 ; 2 uses
  %i.as = zext i32 %i.k to i64                    ; 3 uses
  %i.at = zext i32 %i.o to i64                    ; 3 uses
  br i1 %i.al, label %.preheader.lr.ph.split.i, label %rgb565_image_blend.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.au = icmp ugt i8 %.fr314.i, -4
  %wide.trip.count342.i = zext nneg i32 %i.d to i64 ; 9 uses
  %i.av = add nsw i32 %i.f, -1
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = mul nuw i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i64 %wide.trip.count342.i, 2
  %i.az = getelementptr i8, ptr %i.i, i64 %i.ax
  %scevgep680 = getelementptr i8, ptr %i.az, i64 %i.ay ; 2 uses
  %i.ba = mul nuw i64 %i.at, %i.aw
  %i.bb = shl nuw nsw i64 %wide.trip.count342.i, 1
  %i.bc = getelementptr i8, ptr %i.m, i64 %i.ba
  %scevgep681 = getelementptr i8, ptr %i.bc, i64 %i.bb ; 2 uses
  br i1 %i.au, label %.preheader.us.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i
  %min.iters.check666 = icmp ult i32 %i.d, 4
  %bound0662 = icmp ult ptr %i.i, %scevgep681
  %bound1663 = icmp ult ptr %i.m, %scevgep680
  %found.conflict664 = and i1 %bound0662, %bound1663
  %n.vec668 = and i64 %wide.trip.count342.i, 2147483644 ; 3 uses
  %broadcast.splatinsert669 = insertelement <4 x i32> poison, i32 %.sroa.14.0.insert.ext.i, i64 0
  %broadcast.splat670 = shufflevector <4 x i32> %broadcast.splatinsert669, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n677 = icmp eq i64 %n.vec668, %wide.trip.count342.i
  br label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %min.iters.check686 = icmp ult i32 %i.d, 4
  %bound0682 = icmp ult ptr %i.i, %scevgep681
  %bound1683 = icmp ult ptr %i.m, %scevgep680
  %found.conflict684 = and i1 %bound0682, %bound1683
  %n.vec688 = and i64 %wide.trip.count342.i, 2147483644 ; 3 uses
  %broadcast.splatinsert689 = insertelement <4 x i32> poison, i32 %.sroa.14.0.insert.shift.i, i64 0
  %broadcast.splat690 = shufflevector <4 x i32> %broadcast.splatinsert689, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n696 = icmp eq i64 %n.vec688, %wide.trip.count342.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge306.split.us.us.i
  %.0311.us.i = phi i32 [ %i.cl, %._crit_edge306.split.us.us.i ], [ 0, %.preheader.us.i.preheader ]
  %.0162309.us.i = phi ptr [ %i.ck, %._crit_edge306.split.us.us.i ], [ %i.m, %.preheader.us.i.preheader ] ; 3 uses
  %.0166307.us.i = phi ptr [ %i.cj, %._crit_edge306.split.us.us.i ], [ %i.i, %.preheader.us.i.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check686, i1 true, i1 %found.conflict684
  br i1 %brmerge, label %lv_color_32_32_mix.exit.us.us.i.preheader, label %vector.body691

vector.body691:                                   ; preds = %.preheader.us.i, %vector.body691
  %index692 = phi i64 [ %index.next694, %vector.body691 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.0162309.us.i, i64 %index692
  %wide.load693 = load <4 x i16>, ptr %i.bd, align 2, !alias.scope !150 ; 3 uses
  %i.be = lshr <4 x i16> %wide.load693, splat (i16 11)
  %i.bf = mul nuw <4 x i16> %i.be, splat (i16 2106)
  %i.bg = lshr <4 x i16> %i.bf, splat (i16 8)
  %i.bh = zext nneg <4 x i16> %i.bg to <4 x i32>
  %i.bi = lshr <4 x i16> %wide.load693, splat (i16 5)
  %i.bj = and <4 x i16> %i.bi, splat (i16 63)
  %i.bk = mul nuw <4 x i16> %i.bj, splat (i16 1037)
  %i.bl = and <4 x i16> %i.bk, splat (i16 -256)
  %i.bm = and <4 x i16> %wide.load693, splat (i16 31)
  %i.bn = mul nuw <4 x i16> %i.bm, splat (i16 2106)
  %i.bo = lshr <4 x i16> %i.bn, splat (i16 8)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0166307.us.i, i64 %index692
  %i.bq = shl nuw nsw <4 x i32> %i.bh, splat (i32 16)
  %i.br = or disjoint <4 x i16> %i.bl, %i.bo
  %i.bs = zext <4 x i16> %i.br to <4 x i32>
  %i.bt = or disjoint <4 x i32> %i.bq, %i.bs
  %i.bu = or disjoint <4 x i32> %i.bt, %broadcast.splat690
  store <4 x i32> %i.bu, ptr %i.bp, align 1, !alias.scope !151, !noalias !150
  %index.next694 = add nuw i64 %index692, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next694, %n.vec688
  br i1 %i.bv, label %middle.block695, label %vector.body691, !llvm.loop !66

middle.block695:                                  ; preds = %vector.body691
  br i1 %cmp.n696, label %._crit_edge306.split.us.us.i, label %lv_color_32_32_mix.exit.us.us.i.preheader

lv_color_32_32_mix.exit.us.us.i.preheader:        ; preds = %.preheader.us.i, %middle.block695
  %indvars.iv339.i.ph = phi i64 [ %n.vec688, %middle.block695 ], [ 0, %.preheader.us.i ]
  br label %lv_color_32_32_mix.exit.us.us.i

lv_color_32_32_mix.exit.us.us.i:                  ; preds = %lv_color_32_32_mix.exit.us.us.i.preheader, %lv_color_32_32_mix.exit.us.us.i
  %indvars.iv339.i = phi i64 [ %indvars.iv.next340.i, %lv_color_32_32_mix.exit.us.us.i ], [ %indvars.iv339.i.ph, %lv_color_32_32_mix.exit.us.us.i.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.0162309.us.i, i64 %indvars.iv339.i
  %i.bx = load i16, ptr %i.bw, align 2            ; 3 uses
  %i.by = lshr i16 %i.bx, 11
  %narrow180.us.us.i = mul nuw i16 %i.by, 2106
  %i.bz = lshr i16 %narrow180.us.us.i, 8
  %.sroa.11.0.insert.ext.us.us.i = zext nneg i16 %i.bz to i32
  %i.ca = lshr i16 %i.bx, 5
  %i.cb = and i16 %i.ca, 63
  %narrow181.us.us.i = mul nuw i16 %i.cb, 1037
  %i.cc = and i16 %narrow181.us.us.i, -256
  %i.cd = and i16 %i.bx, 31
  %narrow182.us.us.i = mul nuw i16 %i.cd, 2106
  %i.ce = lshr i16 %narrow182.us.us.i, 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0166307.us.i, i64 %indvars.iv339.i
  %.sroa.11.0.insert.shift.us.us.i = shl nuw nsw i32 %.sroa.11.0.insert.ext.us.us.i, 16
  %i.cg = or disjoint i16 %i.cc, %i.ce
  %i.ch = zext i16 %i.cg to i32
  %i.ci = or disjoint i32 %.sroa.11.0.insert.shift.us.us.i, %i.ch
  %.sroa.074.0.insert.insert.i.us.us.i = or disjoint i32 %i.ci, %.sroa.14.0.insert.shift.i
  store i32 %.sroa.074.0.insert.insert.i.us.us.i, ptr %i.cf, align 1
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %indvars.iv.next340.i, %wide.trip.count342.i
  br i1 %exitcond343.not.i, label %._crit_edge306.split.us.us.i, label %lv_color_32_32_mix.exit.us.us.i, !llvm.loop !67

._crit_edge306.split.us.us.i:                     ; preds = %lv_color_32_32_mix.exit.us.us.i, %middle.block695
  %i.cj = getelementptr inbounds nuw i8, ptr %.0166307.us.i, i64 %i.as
  %i.ck = getelementptr inbounds nuw i8, ptr %.0162309.us.i, i64 %i.at
  %i.cl = add nuw nsw i32 %.0311.us.i, 1          ; 2 uses
  %exitcond344.not.i = icmp eq i32 %i.cl, %i.f
  br i1 %exitcond344.not.i, label %rgb565_image_blend.exit, label %.preheader.us.i, !llvm.loop !68

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge306.split.i
  %.0311.i = phi i32 [ %i.fm, %._crit_edge306.split.i ], [ 0, %.preheader.i.preheader ]
  %.0162309.i = phi ptr [ %i.fl, %._crit_edge306.split.i ], [ %i.m, %.preheader.i.preheader ] ; 4 uses
  %.0166307.i = phi ptr [ %i.fk, %._crit_edge306.split.i ], [ %i.i, %.preheader.i.preheader ] ; 4 uses
  br i1 %i.am, label %.preheader.i.split.us.preheader, label %.preheader.i.split

.preheader.i.split.us.preheader:                  ; preds = %.preheader.i
  %brmerge736 = select i1 %min.iters.check666, i1 true, i1 %found.conflict664
  br i1 %brmerge736, label %.preheader.i.split.us.preheader698, label %vector.body671

vector.body671:                                   ; preds = %.preheader.i.split.us.preheader, %vector.body671
  %index672 = phi i64 [ %index.next675, %vector.body671 ], [ 0, %.preheader.i.split.us.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0162309.i, i64 %index672
  %wide.load673 = load <4 x i16>, ptr %i.cm, align 2, !alias.scope !152 ; 3 uses
  %i.cn = lshr <4 x i16> %wide.load673, splat (i16 11)
  %i.co = mul nuw <4 x i16> %i.cn, splat (i16 2106)
  %i.cp = lshr <4 x i16> %i.co, splat (i16 8)
  %i.cq = zext nneg <4 x i16> %i.cp to <4 x i32>
  %i.cr = lshr <4 x i16> %wide.load673, splat (i16 5)
  %i.cs = and <4 x i16> %i.cr, splat (i16 63)
  %i.ct = mul nuw <4 x i16> %i.cs, splat (i16 1037)
  %i.cu = and <4 x i16> %i.ct, splat (i16 -256)
  %i.cv = and <4 x i16> %wide.load673, splat (i16 31)
  %i.cw = mul nuw <4 x i16> %i.cv, splat (i16 2106)
  %i.cx = lshr <4 x i16> %i.cw, splat (i16 8)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0166307.i, i64 %index672 ; 2 uses
  %i.cz = shl nuw nsw <4 x i32> %i.cq, splat (i32 16)
  %i.da = or disjoint <4 x i16> %i.cu, %i.cx
  %i.db = zext <4 x i16> %i.da to <4 x i32>
  %i.dc = or disjoint <4 x i32> %i.cz, %i.db
  %wide.load674 = load <4 x i32>, ptr %i.cy, align 1, !alias.scope !153, !noalias !152 ; 3 uses
  %i.dd = lshr <4 x i32> %wide.load674, splat (i32 24)
  %i.de = icmp ult <4 x i32> %wide.load674, splat (i32 50331648) ; 2 uses
  %i.df = select <4 x i1> %i.de, <4 x i32> %i.dc, <4 x i32> %wide.load674
  %i.dg = select <4 x i1> %i.de, <4 x i32> %broadcast.splat670, <4 x i32> %i.dd
  %i.dh = shl nuw <4 x i32> %i.dg, splat (i32 24)
  %i.di = and <4 x i32> %i.df, splat (i32 16777215)
  %i.dj = or disjoint <4 x i32> %i.dh, %i.di
  store <4 x i32> %i.dj, ptr %i.cy, align 1, !alias.scope !153, !noalias !152
  %index.next675 = add nuw i64 %index672, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next675, %n.vec668
  br i1 %i.dk, label %middle.block676, label %vector.body671, !llvm.loop !72

middle.block676:                                  ; preds = %vector.body671
  br i1 %cmp.n677, label %._crit_edge306.split.i, label %.preheader.i.split.us.preheader698

.preheader.i.split.us.preheader698:               ; preds = %.preheader.i.split.us.preheader, %middle.block676
  %indvars.iv333.i.us.ph = phi i64 [ %n.vec668, %middle.block676 ], [ 0, %.preheader.i.split.us.preheader ]
  br label %.preheader.i.split.us

.preheader.i.split.us:                            ; preds = %.preheader.i.split.us.preheader698, %.preheader.i.split.us
  %indvars.iv333.i.us = phi i64 [ %indvars.iv.next334.i.us, %.preheader.i.split.us ], [ %indvars.iv333.i.us.ph, %.preheader.i.split.us.preheader698 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.0162309.i, i64 %indvars.iv333.i.us
  %i.dm = load i16, ptr %i.dl, align 2            ; 3 uses
  %i.dn = lshr i16 %i.dm, 11
  %narrow180.i.us = mul nuw i16 %i.dn, 2106
  %i.do = lshr i16 %narrow180.i.us, 8
  %.sroa.11.0.insert.ext.i.us = zext nneg i16 %i.do to i32
  %i.dp = lshr i16 %i.dm, 5
  %i.dq = and i16 %i.dp, 63
  %narrow181.i.us = mul nuw i16 %i.dq, 1037
  %i.dr = and i16 %narrow181.i.us, -256
  %i.ds = and i16 %i.dm, 31
  %narrow182.i.us = mul nuw i16 %i.ds, 2106
  %i.dt = lshr i16 %narrow182.i.us, 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0166307.i, i64 %indvars.iv333.i.us ; 2 uses
  %.sroa.11.0.insert.shift.i.us = shl nuw nsw i32 %.sroa.11.0.insert.ext.i.us, 16
  %i.dv = or disjoint i16 %i.dr, %i.dt
  %i.dw = zext i16 %i.dv to i32
  %i.dx = or disjoint i32 %.sroa.11.0.insert.shift.i.us, %i.dw
  %i.dy = load i32, ptr %i.du, align 1            ; 3 uses
  %.sroa.6.0.extract.shift.i.i.us = lshr i32 %i.dy, 24
  %i.dz = icmp ult i32 %i.dy, 50331648            ; 2 uses
  %spec.select.v = select i1 %i.dz, i32 %i.dx, i32 %i.dy
  %spec.select401 = select i1 %i.dz, i32 %.sroa.14.0.insert.ext.i, i32 %.sroa.6.0.extract.shift.i.i.us
  %.sroa.5.0.insert.shift.i.i.us = shl nuw i32 %spec.select401, 24
  %.sroa.074.0.insert.ext.i.i.us = and i32 %spec.select.v, 16777215
  %.sroa.074.0.insert.insert.i.i.us = or disjoint i32 %.sroa.5.0.insert.shift.i.i.us, %.sroa.074.0.insert.ext.i.i.us
  store i32 %.sroa.074.0.insert.insert.i.i.us, ptr %i.du, align 1
  %indvars.iv.next334.i.us = add nuw nsw i64 %indvars.iv333.i.us, 1 ; 2 uses
  %exitcond337.not.i.us = icmp eq i64 %indvars.iv.next334.i.us, %wide.trip.count342.i
  br i1 %exitcond337.not.i.us, label %._crit_edge306.split.i, label %.preheader.i.split.us, !llvm.loop !73

.preheader.i.split:                               ; preds = %.preheader.i, %lv_color_32_32_mix.exit.i
  %indvars.iv333.i = phi i64 [ %indvars.iv.next334.i, %lv_color_32_32_mix.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.0162309.i, i64 %indvars.iv333.i
  %i.eb = load i16, ptr %i.ea, align 2            ; 3 uses
  %i.ec = lshr i16 %i.eb, 11
  %narrow180.i = mul nuw i16 %i.ec, 2106
  %i.ed = lshr i16 %narrow180.i, 8
  %.sroa.11.0.insert.ext.i = zext nneg i16 %i.ed to i32
  %i.ee = lshr i16 %i.eb, 5
  %i.ef = and i16 %i.ee, 63
  %narrow181.i = mul nuw i16 %i.ef, 1037
  %i.eg = and i16 %narrow181.i, -256
  %i.eh = and i16 %i.eb, 31
  %narrow182.i = mul nuw i16 %i.eh, 2106
  %i.ei = lshr i16 %narrow182.i, 8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0166307.i, i64 %indvars.iv333.i ; 2 uses
  %.sroa.11.0.insert.shift.i = shl nuw nsw i32 %.sroa.11.0.insert.ext.i, 16
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %.sroa.01.0.i.i = phi i32 [ %i.lb, %bb.aj ], [ %i.lq, %bb.ak ], [ %i.mg, %bb.al ], [ %i.mw, %bb.am ]
  %.sroa.11.0.insert.ext.i.i = shl nuw nsw i32 %.sroa.11.0.i.i, 16
  %.sroa.11.0.insert.shift.i.i = and i32 %.sroa.11.0.insert.ext.i.i, 16711680
  %.sroa.7.0.insert.ext.i.i = shl nuw nsw i32 %.sroa.7.0.i.i, 8
  %.sroa.7.0.insert.shift.i.i = and i32 %.sroa.7.0.insert.ext.i.i, 65280
  %i.mx = or i32 %.sroa.11.0.insert.shift.i.i, %.sroa.01.0.i.i
  %i.my = or i32 %i.mx, %.sroa.7.0.insert.shift.i.i ; 3 uses
  %.sroa.01.0.insert.insert.i.i = or i32 %i.my, %.sroa.6.0.insert.shift.i ; 6 uses
  %i.mz = load i32, ptr %i.kl, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i239.i = trunc nuw i32 %i.my to i24
  %.sroa.654.0.extract.shift.i240.i = lshr i32 %.sroa.01.0.insert.insert.i.i, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i241.i = lshr i32 %i.mz, 24 ; 4 uses
  %i.na = icmp ugt i32 %.sroa.01.0.insert.insert.i.i, -50331649
  %i.nb = icmp ult i32 %i.mz, 50331648
  %or.cond.i242.i = select i1 %i.na, i1 true, i1 %i.nb
  br i1 %or.cond.i242.i, label %lv_color_32_32_mix.exit266.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.018.0.extract.trunc.i243.i = trunc i32 %i.mz to i24
  %i.nc = icmp ult i32 %.sroa.01.0.insert.insert.i.i, 50331648
  br i1 %i.nc, label %lv_color_32_32_mix.exit266.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nd = icmp eq i32 %.sroa.6.0.extract.shift.i241.i, 255
  br i1 %i.nd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ne = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i, i32 %i.mz) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i264.i = trunc i32 %i.ne to i24
  %.sroa.5.0.extract.shift.i265.i = lshr i32 %i.ne, 24
  br label %lv_color_32_32_mix.exit266.i

bb.ar:                                            ; preds = %bb.ap
  %i.nf = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.ng = zext i8 %i.nf to i32
  %.not.i244.i = icmp eq i32 %.sroa.6.0.extract.shift.i241.i, %i.ng
  %i.nh = load i8, ptr %i.ae, align 1
  %i.ni = zext i8 %i.nh to i32
  %.not77.i263.i = icmp eq i32 %.sroa.654.0.extract.shift.i240.i, %i.ni
  %or.cond277.i = select i1 %.not.i244.i, i1 %.not77.i263.i, i1 false
  br i1 %or.cond277.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nj = xor i32 %.sroa.654.0.extract.shift.i240.i, 255
  %i.nk = xor i32 %.sroa.6.0.extract.shift.i241.i, 255
  %i.nl = mul nuw nsw i32 %i.nj, %i.nk
  %i.nm = lshr i32 %i.nl, 8
  %i.nn = trunc nuw i32 %i.nm to i8
  %i.no = xor i8 %i.nn, -1                        ; 2 uses
  store i8 %i.no, ptr %i.v, align 4, !tbaa !13
  %i.np = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i240.i to i16
  %.lhs.trunc.i245.i = mul nuw i16 %i.np, 255
  %.rhs.trunc.i246.i = zext i8 %i.no to i16
  %i.nq = udiv i16 %.lhs.trunc.i245.i, %.rhs.trunc.i246.i
  %i.nr = trunc i16 %i.nq to i8
  store i8 %i.nr, ptr %i.w, align 1, !tbaa !14
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ns = load i32, ptr %i.t, align 4
  %i.nt = call zeroext i1 @lv_color32_eq(i32 %i.mz, i32 %i.ns) #7
  br i1 %i.nt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nu = load i32, ptr %7, align 4
  %i.nv = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i, i32 %i.nu) #7
  br i1 %i.nv, label %._crit_edge.i258.i, label %bb.av

._crit_edge.i258.i:                               ; preds = %bb.au
  %.sroa.074.0.copyload.pre.i260.i = load i24, ptr %i.u, align 4
  %.sroa.5.0.copyload.pre.i262.i = load i8, ptr %i.af, align 1, !tbaa !19
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  store i32 %.sroa.01.0.insert.insert.i.i, ptr %7, align 4
  store i32 %i.mz, ptr %i.t, align 4
  %i.nw = load i8, ptr %i.w, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i247.i = zext i8 %i.nw to i32
  %.sroa.654.0.insert.shift64.i248.i = shl nuw i32 %.sroa.654.0.insert.ext63.i247.i, 24
  %.sroa.045.0.insert.insert53.i250.i = add nuw nsw i32 %.sroa.654.0.insert.shift64.i248.i, %i.my
  %i.nx = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i250.i, i32 %i.mz) #7 ; 2 uses
  store i32 %i.nx, ptr %i.u, align 4
  %i.ny = load i8, ptr %i.v, align 4, !tbaa !13   ; 2 uses
  store i8 %i.ny, ptr %i.af, align 1, !tbaa !20
  %i.nz = trunc i32 %i.nx to i24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i258.i
  %.sroa.5.0.copyload.i251.i = phi i8 [ %.sroa.5.0.copyload.pre.i262.i, %._crit_edge.i258.i ], [ %i.ny, %bb.av ]
  %.sroa.074.0.copyload.i252.i = phi i24 [ %.sroa.074.0.copyload.pre.i260.i, %._crit_edge.i258.i ], [ %i.nz, %bb.av ]
  %i.oa = zext i8 %.sroa.5.0.copyload.i251.i to i32
  br label %lv_color_32_32_mix.exit266.i

lv_color_32_32_mix.exit266.i:                     ; preds = %bb.aw, %bb.aq, %bb.ao, %bb.an
  %.sroa.074.0.i253.i = phi i24 [ %.sroa.074.0.copyload.i252.i, %bb.aw ], [ %.sroa.045.0.extract.trunc.i239.i, %bb.an ], [ %.sroa.074.0.extract.trunc.i264.i, %bb.aq ], [ %.sroa.018.0.extract.trunc.i243.i, %bb.ao ]
  %.sroa.5.0.i254.i = phi i32 [ %i.oa, %bb.aw ], [ %.sroa.654.0.extract.shift.i240.i, %bb.an ], [ %.sroa.5.0.extract.shift.i265.i, %bb.aq ], [ %.sroa.6.0.extract.shift.i241.i, %bb.ao ]
  %.sroa.5.0.insert.shift.i255.i = shl nuw i32 %.sroa.5.0.i254.i, 24
  %.sroa.074.0.insert.ext.i256.i = zext i24 %.sroa.074.0.i253.i to i32
  %.sroa.074.0.insert.insert.i257.i = or disjoint i32 %.sroa.5.0.insert.shift.i255.i, %.sroa.074.0.insert.ext.i256.i
  store i32 %.sroa.074.0.insert.insert.i257.i, ptr %i.kl, align 1
  br label %blend_non_normal_pixel.exit.i

blend_non_normal_pixel.exit.i:                    ; preds = %lv_color_32_32_mix.exit266.i, %bb.ai
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ag, !llvm.loop !79

._crit_edge.i:                                    ; preds = %blend_non_normal_pixel.exit.i
  %i.ob = getelementptr inbounds i8, ptr %.2160291.i, i64 %i.ag
  %.3161.i = select i1 %i.jw, ptr null, ptr %i.ob
  %i.oc = getelementptr inbounds nuw i8, ptr %.3169289.i, i64 %i.ah
  %i.od = getelementptr inbounds nuw i8, ptr %.3165290.i, i64 %i.ai
  %i.oe = add nuw nsw i32 %.3292.i, 1             ; 2 uses
  %exitcond320.not.i = icmp eq i32 %i.oe, %i.f
  br i1 %exitcond320.not.i, label %rgb565_image_blend.exit, label %.preheader285.i, !llvm.loop !80

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i, %._crit_edge294.i, %._crit_edge300.i, %._crit_edge306.split.i, %._crit_edge306.split.us.us.i, %.preheader286.i, %.preheader285.lr.ph.i, %.preheader278.i, %.preheader.lr.ph.i, %.preheader283.i, %.preheader282.lr.ph.i, %.preheader280.i, %.preheader279.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %l8_image_blend.exit

bb.ax:                                            ; preds = %bb.a
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.og = load i32, ptr %i.of, align 8, !tbaa !22 ; 10 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !23 ; 9 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ok = load i8, ptr %i.oj, align 8, !tbaa !24
  %.fr318.i = freeze i8 %i.ok                     ; 9 uses
  %i.ol = load ptr, ptr %0, align 8, !tbaa !25    ; 8 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.on = load i32, ptr %i.om, align 8, !tbaa !26 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !27 ; 8 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !28 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !29 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @lv_memset(ptr noundef nonnull %6, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.ow = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.ow, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.ox, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 9 uses
  store i8 -1, ptr %i.oy, align 4, !tbaa !13
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 9 uses
  store i8 -1, ptr %i.oz, align 1, !tbaa !14
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !31
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.ay, label %.preheader290.i

.preheader290.i:                                  ; preds = %bb.ax
  %i.pd = icmp sgt i32 %i.oi, 0
  br i1 %i.pd, label %.preheader289.lr.ph.i, label %rgb565_swapped_image_blend.exit

.preheader289.lr.ph.i:                            ; preds = %.preheader290.i
  %i.pe = icmp sgt i32 %i.og, 0
  %i.pf = zext i8 %.fr318.i to i16
  %i.pg = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.pi = getelementptr inbounds nuw i8, ptr %6, i64 11 ; 2 uses
  %i.pj = sext i32 %i.ov to i64
  %i.pk = zext i32 %i.on to i64
  %i.pl = zext i32 %i.or to i64
  br i1 %i.pe, label %.preheader289.preheader.i, label %rgb565_swapped_image_blend.exit

.preheader289.preheader.i:                        ; preds = %.preheader289.lr.ph.i
  %wide.trip.count.i10 = zext nneg i32 %i.og to i64
  br label %.preheader289.i

bb.ay:                                            ; preds = %bb.ax
  %i.pm = icmp eq ptr %i.ot, null
  br i1 %i.pm, label %.preheader282.i46, label %bb.bh

.preheader282.i46:                                ; preds = %bb.ay
  %i.pn = icmp sgt i32 %i.oi, 0
  br i1 %i.pn, label %.preheader.lr.ph.i47, label %rgb565_swapped_image_blend.exit

.preheader.lr.ph.i47:                             ; preds = %.preheader282.i46
  %i.po = icmp sgt i32 %i.og, 0
  %.sroa.14.0.insert.ext.i48 = zext i8 %.fr318.i to i32 ; 5 uses
  %.sroa.14.0.insert.shift.i49 = shl nuw i32 %.sroa.14.0.insert.ext.i48, 24 ; 3 uses
  %i.pp = icmp ult i8 %.fr318.i, 3
  %i.pq = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.pr = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.ps = xor i32 %.sroa.14.0.insert.ext.i48, 255
  %i.pt = zext i8 %.fr318.i to i16
  %.lhs.trunc.i.i50 = mul nuw i16 %i.pt, 255
  %i.pu = getelementptr inbounds nuw i8, ptr %6, i64 11 ; 2 uses
  %i.pv = zext i32 %i.on to i64                   ; 3 uses
  %i.pw = zext i32 %i.or to i64                   ; 3 uses
  br i1 %i.po, label %.preheader.lr.ph.split.i51, label %rgb565_swapped_image_blend.exit

.preheader.lr.ph.split.i51:                       ; preds = %.preheader.lr.ph.i47
  %i.px = icmp ugt i8 %.fr318.i, -4
  %wide.trip.count346.i = zext nneg i32 %i.og to i64 ; 9 uses
  %i.py = add nsw i32 %i.oi, -1
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = mul nuw i64 %i.pv, %i.pz
  %i.qb = shl nuw nsw i64 %wide.trip.count346.i, 2
  %i.qc = getelementptr i8, ptr %i.ol, i64 %i.qa
  %scevgep641 = getelementptr i8, ptr %i.qc, i64 %i.qb ; 2 uses
  %i.qd = mul nuw i64 %i.pw, %i.pz
  %i.qe = shl nuw nsw i64 %wide.trip.count346.i, 1
  %i.qf = getelementptr i8, ptr %i.op, i64 %i.qd
  %scevgep642 = getelementptr i8, ptr %i.qf, i64 %i.qe ; 2 uses
  br i1 %i.px, label %.preheader.us.i78.preheader, label %.preheader.i52.preheader

.preheader.i52.preheader:                         ; preds = %.preheader.lr.ph.split.i51
  %min.iters.check = icmp ult i32 %i.og, 4
  %bound0 = icmp ult ptr %i.ol, %scevgep642
  %bound1 = icmp ult ptr %i.op, %scevgep641
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count346.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.14.0.insert.ext.i48, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count346.i
  br label %.preheader.i52

.preheader.us.i78.preheader:                      ; preds = %.preheader.lr.ph.split.i51
  %min.iters.check647 = icmp ult i32 %i.og, 4
  %bound0643 = icmp ult ptr %i.ol, %scevgep642
  %bound1644 = icmp ult ptr %i.op, %scevgep641
  %found.conflict645 = and i1 %bound0643, %bound1644
  %n.vec649 = and i64 %wide.trip.count346.i, 2147483644 ; 3 uses
  %broadcast.splatinsert650 = insertelement <4 x i32> poison, i32 %.sroa.14.0.insert.shift.i49, i64 0
  %broadcast.splat651 = shufflevector <4 x i32> %broadcast.splatinsert650, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n657 = icmp eq i64 %n.vec649, %wide.trip.count346.i
  br label %.preheader.us.i78

.preheader.us.i78:                                ; preds = %.preheader.us.i78.preheader, %._crit_edge310.split.us.us.i
  %.0314.us.i = phi ptr [ %i.ro, %._crit_edge310.split.us.us.i ], [ %i.ol, %.preheader.us.i78.preheader ] ; 3 uses
  %.0158312.us.i = phi ptr [ %i.rp, %._crit_edge310.split.us.us.i ], [ %i.op, %.preheader.us.i78.preheader ] ; 3 uses
  %.0162311.us.i = phi i32 [ %i.rq, %._crit_edge310.split.us.us.i ], [ 0, %.preheader.us.i78.preheader ]
  %brmerge737 = select i1 %min.iters.check647, i1 true, i1 %found.conflict645
  br i1 %brmerge737, label %lv_color_32_32_mix.exit.us.us.i79.preheader, label %vector.body652

vector.body652:                                   ; preds = %.preheader.us.i78, %vector.body652
  %index653 = phi i64 [ %index.next655, %vector.body652 ], [ 0, %.preheader.us.i78 ] ; 3 uses
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.0158312.us.i, i64 %index653
  %wide.load654 = load <4 x i16>, ptr %i.qg, align 2, !tbaa !155, !alias.scope !156
  %i.qh = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load654) ; 3 uses
  %i.qi = lshr <4 x i16> %i.qh, splat (i16 11)
  %i.qj = mul nuw <4 x i16> %i.qi, splat (i16 2106)
  %i.qk = lshr <4 x i16> %i.qj, splat (i16 8)
  %i.ql = zext nneg <4 x i16> %i.qk to <4 x i32>
  %i.qm = lshr <4 x i16> %i.qh, splat (i16 5)
  %i.qn = and <4 x i16> %i.qm, splat (i16 63)
  %i.qo = mul nuw <4 x i16> %i.qn, splat (i16 1037)
  %i.qp = and <4 x i16> %i.qo, splat (i16 -256)
  %i.qq = and <4 x i16> %i.qh, splat (i16 31)
  %i.qr = mul nuw <4 x i16> %i.qq, splat (i16 2106)
  %i.qs = lshr <4 x i16> %i.qr, splat (i16 8)
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.0314.us.i, i64 %index653
  %i.qu = shl nuw nsw <4 x i32> %i.ql, splat (i32 16)
  %i.qv = or disjoint <4 x i16> %i.qp, %i.qs
  %i.qw = zext <4 x i16> %i.qv to <4 x i32>
  %i.qx = or disjoint <4 x i32> %i.qu, %i.qw
  %i.qy = or disjoint <4 x i32> %i.qx, %broadcast.splat651
  store <4 x i32> %i.qy, ptr %i.qt, align 1, !alias.scope !157, !noalias !156
  %index.next655 = add nuw i64 %index653, 4       ; 2 uses
  %i.qz = icmp eq i64 %index.next655, %n.vec649
  br i1 %i.qz, label %middle.block656, label %vector.body652, !llvm.loop !84

middle.block656:                                  ; preds = %vector.body652
  br i1 %cmp.n657, label %._crit_edge310.split.us.us.i, label %lv_color_32_32_mix.exit.us.us.i79.preheader

lv_color_32_32_mix.exit.us.us.i79.preheader:      ; preds = %.preheader.us.i78, %middle.block656
  %indvars.iv343.i.ph = phi i64 [ %n.vec649, %middle.block656 ], [ 0, %.preheader.us.i78 ]
  br label %lv_color_32_32_mix.exit.us.us.i79

lv_color_32_32_mix.exit.us.us.i79:                ; preds = %lv_color_32_32_mix.exit.us.us.i79.preheader, %lv_color_32_32_mix.exit.us.us.i79
  %indvars.iv343.i = phi i64 [ %indvars.iv.next344.i, %lv_color_32_32_mix.exit.us.us.i79 ], [ %indvars.iv343.i.ph, %lv_color_32_32_mix.exit.us.us.i79.preheader ] ; 3 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %.0158312.us.i, i64 %indvars.iv343.i
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !155
  %i.rc = call noundef i16 @llvm.bswap.i16(i16 %i.rb) ; 3 uses
  %i.rd = lshr i16 %i.rc, 11
  %narrow184.us.us.i = mul nuw i16 %i.rd, 2106
  %i.re = lshr i16 %narrow184.us.us.i, 8
  %.sroa.11.0.insert.ext.us.us.i80 = zext nneg i16 %i.re to i32
  %i.rf = lshr i16 %i.rc, 5
  %i.rg = and i16 %i.rf, 63
  %narrow185.us.us.i = mul nuw i16 %i.rg, 1037
  %i.rh = and i16 %narrow185.us.us.i, -256
  %i.ri = and i16 %i.rc, 31
  %narrow186.us.us.i = mul nuw i16 %i.ri, 2106
  %i.rj = lshr i16 %narrow186.us.us.i, 8
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.0314.us.i, i64 %indvars.iv343.i
  %.sroa.11.0.insert.shift.us.us.i81 = shl nuw nsw i32 %.sroa.11.0.insert.ext.us.us.i80, 16
  %i.rl = or disjoint i16 %i.rh, %i.rj
  %i.rm = zext i16 %i.rl to i32
  %i.rn = or disjoint i32 %.sroa.11.0.insert.shift.us.us.i81, %i.rm
  %.sroa.074.0.insert.insert.i.us.us.i82 = or disjoint i32 %i.rn, %.sroa.14.0.insert.shift.i49
  store i32 %.sroa.074.0.insert.insert.i.us.us.i82, ptr %i.rk, align 1
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %exitcond347.not.i = icmp eq i64 %indvars.iv.next344.i, %wide.trip.count346.i
  br i1 %exitcond347.not.i, label %._crit_edge310.split.us.us.i, label %lv_color_32_32_mix.exit.us.us.i79, !llvm.loop !85

._crit_edge310.split.us.us.i:                     ; preds = %lv_color_32_32_mix.exit.us.us.i79, %middle.block656
  %i.ro = getelementptr inbounds nuw i8, ptr %.0314.us.i, i64 %i.pv
  %i.rp = getelementptr inbounds nuw i8, ptr %.0158312.us.i, i64 %i.pw
  %i.rq = add nuw nsw i32 %.0162311.us.i, 1       ; 2 uses
  %exitcond348.not.i = icmp eq i32 %i.rq, %i.oi
  br i1 %exitcond348.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader.us.i78, !llvm.loop !86

.preheader.i52:                                   ; preds = %.preheader.i52.preheader, %._crit_edge310.split.i
  %.0314.i = phi ptr [ %i.us, %._crit_edge310.split.i ], [ %i.ol, %.preheader.i52.preheader ] ; 4 uses
  %.0158312.i = phi ptr [ %i.ut, %._crit_edge310.split.i ], [ %i.op, %.preheader.i52.preheader ] ; 4 uses
  %.0162311.i = phi i32 [ %i.uu, %._crit_edge310.split.i ], [ 0, %.preheader.i52.preheader ]
  br i1 %i.pp, label %.preheader.i52.split.us.preheader, label %.preheader.i52.split

.preheader.i52.split.us.preheader:                ; preds = %.preheader.i52
  %brmerge738 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge738, label %.preheader.i52.split.us.preheader704, label %vector.body

vector.body:                                      ; preds = %.preheader.i52.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i52.split.us.preheader ] ; 3 uses
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %.0158312.i, i64 %index
  %wide.load = load <4 x i16>, ptr %i.rr, align 2, !tbaa !155, !alias.scope !158
  %i.rs = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load) ; 3 uses
  %i.rt = lshr <4 x i16> %i.rs, splat (i16 11)
  %i.ru = mul nuw <4 x i16> %i.rt, splat (i16 2106)
  %i.rv = lshr <4 x i16> %i.ru, splat (i16 8)
  %i.rw = zext nneg <4 x i16> %i.rv to <4 x i32>
  %i.rx = lshr <4 x i16> %i.rs, splat (i16 5)
  %i.ry = and <4 x i16> %i.rx, splat (i16 63)
  %i.rz = mul nuw <4 x i16> %i.ry, splat (i16 1037)
  %i.sa = and <4 x i16> %i.rz, splat (i16 -256)
  %i.sb = and <4 x i16> %i.rs, splat (i16 31)
  %i.sc = mul nuw <4 x i16> %i.sb, splat (i16 2106)
  %i.sd = lshr <4 x i16> %i.sc, splat (i16 8)
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.0314.i, i64 %index ; 2 uses
  %i.sf = shl nuw nsw <4 x i32> %i.rw, splat (i32 16)
  %i.sg = or disjoint <4 x i16> %i.sa, %i.sd
  %i.sh = zext <4 x i16> %i.sg to <4 x i32>
  %i.si = or disjoint <4 x i32> %i.sf, %i.sh
  %wide.load639 = load <4 x i32>, ptr %i.se, align 1, !alias.scope !159, !noalias !158 ; 3 uses
  %i.sj = lshr <4 x i32> %wide.load639, splat (i32 24)
  %i.sk = icmp ult <4 x i32> %wide.load639, splat (i32 50331648) ; 2 uses
  %i.sl = select <4 x i1> %i.sk, <4 x i32> %i.si, <4 x i32> %wide.load639
  %i.sm = select <4 x i1> %i.sk, <4 x i32> %broadcast.splat, <4 x i32> %i.sj
  %i.sn = shl nuw <4 x i32> %i.sm, splat (i32 24)
  %i.so = and <4 x i32> %i.sl, splat (i32 16777215)
  %i.sp = or disjoint <4 x i32> %i.sn, %i.so
  store <4 x i32> %i.sp, ptr %i.se, align 1, !alias.scope !159, !noalias !158
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sq = icmp eq i64 %index.next, %n.vec
  br i1 %i.sq, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge310.split.i, label %.preheader.i52.split.us.preheader704

.preheader.i52.split.us.preheader704:             ; preds = %.preheader.i52.split.us.preheader, %middle.block
  %indvars.iv337.i.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i52.split.us.preheader ]
  br label %.preheader.i52.split.us

.preheader.i52.split.us:                          ; preds = %.preheader.i52.split.us.preheader704, %.preheader.i52.split.us
  %indvars.iv337.i.us = phi i64 [ %indvars.iv.next338.i.us, %.preheader.i52.split.us ], [ %indvars.iv337.i.us.ph, %.preheader.i52.split.us.preheader704 ] ; 3 uses
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %.0158312.i, i64 %indvars.iv337.i.us
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !155
  %i.st = call noundef i16 @llvm.bswap.i16(i16 %i.ss) ; 3 uses
  %i.su = lshr i16 %i.st, 11
  %narrow184.i.us = mul nuw i16 %i.su, 2106
  %i.sv = lshr i16 %narrow184.i.us, 8
  %.sroa.11.0.insert.ext.i53.us = zext nneg i16 %i.sv to i32
  %i.sw = lshr i16 %i.st, 5
  %i.sx = and i16 %i.sw, 63
  %narrow185.i.us = mul nuw i16 %i.sx, 1037
  %i.sy = and i16 %narrow185.i.us, -256
  %i.sz = and i16 %i.st, 31
  %narrow186.i.us = mul nuw i16 %i.sz, 2106
  %i.ta = lshr i16 %narrow186.i.us, 8
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.0314.i, i64 %indvars.iv337.i.us ; 2 uses
  %.sroa.11.0.insert.shift.i54.us = shl nuw nsw i32 %.sroa.11.0.insert.ext.i53.us, 16
  %i.tc = or disjoint i16 %i.sy, %i.ta
  %i.td = zext i16 %i.tc to i32
  %i.te = or disjoint i32 %.sroa.11.0.insert.shift.i54.us, %i.td
  %i.tf = load i32, ptr %i.tb, align 1            ; 3 uses
  %.sroa.6.0.extract.shift.i.i56.us = lshr i32 %i.tf, 24
  %i.tg = icmp ult i32 %i.tf, 50331648            ; 2 uses
  %spec.select402.v = select i1 %i.tg, i32 %i.te, i32 %i.tf
  %spec.select403 = select i1 %i.tg, i32 %.sroa.14.0.insert.ext.i48, i32 %.sroa.6.0.extract.shift.i.i56.us
  %.sroa.5.0.insert.shift.i.i70.us = shl nuw i32 %spec.select403, 24
  %.sroa.074.0.insert.ext.i.i71.us = and i32 %spec.select402.v, 16777215
  %.sroa.074.0.insert.insert.i.i72.us = or disjoint i32 %.sroa.5.0.insert.shift.i.i70.us, %.sroa.074.0.insert.ext.i.i71.us
  store i32 %.sroa.074.0.insert.insert.i.i72.us, ptr %i.tb, align 1
  %indvars.iv.next338.i.us = add nuw nsw i64 %indvars.iv337.i.us, 1 ; 2 uses
  %exitcond341.not.i.us = icmp eq i64 %indvars.iv.next338.i.us, %wide.trip.count346.i
  br i1 %exitcond341.not.i.us, label %._crit_edge310.split.i, label %.preheader.i52.split.us, !llvm.loop !91

.preheader.i52.split:                             ; preds = %.preheader.i52, %lv_color_32_32_mix.exit.i67
  %indvars.iv337.i = phi i64 [ %indvars.iv.next338.i, %lv_color_32_32_mix.exit.i67 ], [ 0, %.preheader.i52 ] ; 3 uses
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %.0158312.i, i64 %indvars.iv337.i
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !155
  %i.tj = call noundef i16 @llvm.bswap.i16(i16 %i.ti) ; 3 uses
  %i.tk = lshr i16 %i.tj, 11
  %narrow184.i = mul nuw i16 %i.tk, 2106
  %i.tl = lshr i16 %narrow184.i, 8
  %.sroa.11.0.insert.ext.i53 = zext nneg i16 %i.tl to i32
  %i.tm = lshr i16 %i.tj, 5
  %i.tn = and i16 %i.tm, 63
  %narrow185.i = mul nuw i16 %i.tn, 1037
  %i.to = and i16 %narrow185.i, -256
end_hunk_2
