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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
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
  %i.q = icmp eq ptr %i.h, null                   ; 3 uses
  %i.r = icmp ugt i8 %i.f, -4                     ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload45 = load i24, ptr %i.s, align 4
  %i.t = call i32 @lv_color_to_u32(i24 %.0.copyload45) #7 ; 12 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.v = icmp sgt i32 %i.d, 0
  br i1 %i.v, label %.preheader225.lr.ph, label %.loopexit

.preheader225.lr.ph:                              ; preds = %bb.b
  %i.w = icmp sgt i32 %i.b, 15
  %i.x = zext i32 %i.l to i64                     ; 2 uses
  br i1 %i.w, label %.preheader225.us.preheader, label %.preheader225.lr.ph.split

.preheader225.us.preheader:                       ; preds = %.preheader225.lr.ph
  %i.y = add nsw i32 %i.b, -15
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ab = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ad = call i64 @llvm.umax.i64(i64 %i.z, i64 16)
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, -16                      ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 17
  %i.ah = call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.aa) ; 2 uses
  %i.ai = add i64 %i.ah, -16
  %i.aj = sub i64 %i.ai, %i.af                    ; 2 uses
  %min.iters.check360 = icmp ult i64 %i.aj, 8
  %i.ak = and i64 %i.ah, 7                        ; 2 uses
  %n.vec362 = sub nuw i64 %i.aj, %i.ak            ; 2 uses
  %broadcast.splatinsert363 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat364 = shufflevector <4 x i32> %broadcast.splatinsert363, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n369 = icmp eq i64 %i.ak, 0
  br label %.preheader225.us

.preheader225.us:                                 ; preds = %.preheader225.us.preheader, %._crit_edge264.us
  %.0152266.us = phi ptr [ %i.as, %._crit_edge264.us ], [ %i.u, %.preheader225.us.preheader ] ; 4 uses
  %.0155265.us = phi i32 [ %i.at, %._crit_edge264.us ], [ 0, %.preheader225.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader225.us, %bb.c
  %indvars.iv310 = phi i64 [ 16, %.preheader225.us ], [ %indvars.iv.next311, %bb.c ] ; 4 uses
  %indvars.iv307 = phi i64 [ 0, %.preheader225.us ], [ %indvars.iv.next308, %bb.c ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0152266.us, i64 %indvars.iv307 ; 4 uses
  store <4 x i32> %i.ac, ptr %i.al, align 4, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %i.ac, ptr %i.am, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store <4 x i32> %i.ac, ptr %i.an, align 4, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store <4 x i32> %i.ac, ptr %i.ao, align 4, !tbaa !61
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 16 ; 3 uses
  %i.ap = icmp samesign ult i64 %indvars.iv.next308, %i.z
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 16
  br i1 %i.ap, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !36

.lr.ph263.us:                                     ; preds = %.lr.ph263.us.preheader371, %.lr.ph263.us
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %.lr.ph263.us ], [ %indvars.iv312.ph, %.lr.ph263.us.preheader371 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0152266.us, i64 %indvars.iv312
  store i32 %i.t, ptr %i.aq, align 4, !tbaa !61
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next313, %i.aa
  br i1 %i.ar, label %.lr.ph263.us, label %._crit_edge264.us, !llvm.loop !37

._crit_edge264.us:                                ; preds = %.lr.ph263.us, %middle.block368, %..preheader_crit_edge.us
  %i.as = getelementptr inbounds nuw i8, ptr %.0152266.us, i64 %i.x
  %i.at = add nuw nsw i32 %.0155265.us, 1         ; 2 uses
  %exitcond315.not = icmp eq i32 %i.at, %i.d
  br i1 %exitcond315.not, label %.loopexit, label %.preheader225.us, !llvm.loop !38

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.au = trunc nuw nsw i64 %indvars.iv.next308 to i32
  %i.av = icmp sgt i32 %i.b, %i.au
  br i1 %i.av, label %.lr.ph263.us.preheader, label %._crit_edge264.us

.lr.ph263.us.preheader:                           ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check360, label %.lr.ph263.us.preheader371, label %vector.ph361

vector.ph361:                                     ; preds = %.lr.ph263.us.preheader
  %i.aw = add i64 %indvars.iv310, %n.vec362
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0152266.us, i64 %indvars.iv310
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph361
  %index366 = phi i64 [ 0, %vector.ph361 ], [ %index.next367, %vector.body365 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index366 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %broadcast.splat364, ptr %i.ay, align 4, !tbaa !61
  store <4 x i32> %broadcast.splat364, ptr %i.az, align 4, !tbaa !61
  %index.next367 = add nuw i64 %index366, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next367, %n.vec362
  br i1 %i.ba, label %middle.block368, label %vector.body365, !llvm.loop !39

middle.block368:                                  ; preds = %vector.body365
  br i1 %cmp.n369, label %._crit_edge264.us, label %.lr.ph263.us.preheader371

.lr.ph263.us.preheader371:                        ; preds = %.lr.ph263.us.preheader, %middle.block368
  %indvars.iv312.ph = phi i64 [ %indvars.iv310, %.lr.ph263.us.preheader ], [ %i.aw, %middle.block368 ]
  br label %.lr.ph263.us

.preheader225.lr.ph.split:                        ; preds = %.preheader225.lr.ph
  %i.bb = icmp sgt i32 %i.b, 0
  br i1 %i.bb, label %.preheader225.preheader, label %.loopexit

.preheader225.preheader:                          ; preds = %.preheader225.lr.ph.split
  %wide.trip.count304 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count304, 7      ; 3 uses
  %i.bc = icmp ult i32 %i.b, 8
  %unroll_iter = and i64 %wide.trip.count304, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod378 = icmp ne i64 %xtraiter, 0
  br label %.preheader225

.preheader225:                                    ; preds = %.preheader225.preheader, %._crit_edge264
  %.0152266 = phi ptr [ %i.bt, %._crit_edge264 ], [ %i.u, %.preheader225.preheader ] ; 10 uses
  %.0155265 = phi i32 [ %i.bu, %._crit_edge264 ], [ 0, %.preheader225.preheader ]
  br i1 %i.bc, label %.epil.preheader, label %.preheader225.new

.preheader225.new:                                ; preds = %.preheader225, %.preheader225.new
  %indvars.iv301 = phi i64 [ %indvars.iv.next302.7, %.preheader225.new ], [ 0, %.preheader225 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader225.new ], [ 0, %.preheader225 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  store i32 %i.t, ptr %i.bd, align 4, !tbaa !61
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.t, ptr %i.bf, align 4, !tbaa !61
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %i.t, ptr %i.bh, align 4, !tbaa !61
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %i.t, ptr %i.bj, align 4, !tbaa !61
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 %i.t, ptr %i.bl, align 4, !tbaa !61
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store i32 %i.t, ptr %i.bn, align 4, !tbaa !61
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 %i.t, ptr %i.bp, align 4, !tbaa !61
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  store i32 %i.t, ptr %i.br, align 4, !tbaa !61
  %indvars.iv.next302.7 = add nuw nsw i64 %indvars.iv301, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge264.unr-lcssa, label %.preheader225.new, !llvm.loop !40

._crit_edge264.unr-lcssa:                         ; preds = %.preheader225.new
  br i1 %lcmp.mod.not, label %._crit_edge264, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge264.unr-lcssa, %.preheader225
  %indvars.iv301.epil.init = phi i64 [ 0, %.preheader225 ], [ %indvars.iv.next302.7, %._crit_edge264.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod378)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv301.epil = phi i64 [ %indvars.iv301.epil.init, %.epil.preheader ], [ %indvars.iv.next302.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0152266, i64 %indvars.iv301.epil
  store i32 %i.t, ptr %i.bs, align 4, !tbaa !61
  %indvars.iv.next302.epil = add nuw nsw i64 %indvars.iv301.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge264, label %bb.d, !llvm.loop !41

._crit_edge264:                                   ; preds = %bb.d, %._crit_edge264.unr-lcssa
  %i.bt = getelementptr inbounds nuw i8, ptr %.0152266, i64 %i.x
  %i.bu = add nuw nsw i32 %.0155265, 1            ; 2 uses
  %exitcond306.not = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond306.not, label %.loopexit, label %.preheader225, !llvm.loop !38

bb.e:                                             ; preds = %bb.a
  %i.bv = icmp ult i8 %i.f, -3
  %or.cond5 = select i1 %i.q, i1 %i.bv, i1 false
  br i1 %or.cond5, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload24 = load i24, ptr %i.bw, align 4
  %i.bx = call i32 @lv_color_to_32(i24 %.0.copyload24, i8 noundef zeroext %i.f) #7
  %.fr268 = freeze i32 %i.bx                      ; 12 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !60    ; 3 uses
  %i.bz = icmp sgt i32 %i.d, 0
  br i1 %i.bz, label %.preheader226.lr.ph, label %.loopexit

.preheader226.lr.ph:                              ; preds = %bb.f
  %i.ca = icmp sgt i32 %i.b, 0
  %.sroa.045.0.extract.trunc.i = trunc i32 %.fr268 to i24
  %.sroa.654.0.extract.shift.i = lshr i32 %.fr268, 24 ; 6 uses
  %i.cb = icmp ult i32 %.fr268, 50331648
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ce = xor i32 %.sroa.654.0.extract.shift.i, 255
  %i.cf = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i to i16
  %.lhs.trunc.i = mul nuw i16 %i.cf, 255
  %.sroa.045.0.insert.ext51.i = and i32 %.fr268, 16777215
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.ch = zext i32 %i.l to i64                    ; 3 uses
  br i1 %i.ca, label %.preheader226.lr.ph.split, label %.loopexit

.preheader226.lr.ph.split:                        ; preds = %.preheader226.lr.ph
  %i.ci = icmp ugt i32 %.fr268, -50331649
  %wide.trip.count298 = zext nneg i32 %i.b to i64 ; 7 uses
  br i1 %i.ci, label %.preheader226.us.preheader, label %.preheader226.lr.ph.split.split

.preheader226.us.preheader:                       ; preds = %.preheader226.lr.ph.split
  %min.iters.check348 = icmp ult i32 %i.b, 8
  %n.vec350 = and i64 %wide.trip.count298, 2147483640 ; 3 uses
  %broadcast.splatinsert351 = insertelement <4 x i32> poison, i32 %.fr268, i64 0
  %broadcast.splat352 = shufflevector <4 x i32> %broadcast.splatinsert351, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n357 = icmp eq i64 %n.vec350, %wide.trip.count298
  br label %.preheader226.us

.preheader226.us:                                 ; preds = %.preheader226.us.preheader, %._crit_edge242.split.us.us
  %.0151253.us = phi ptr [ %i.cn, %._crit_edge242.split.us.us ], [ %i.by, %.preheader226.us.preheader ] ; 3 uses
  %.1156252.us = phi i32 [ %i.co, %._crit_edge242.split.us.us ], [ 0, %.preheader226.us.preheader ]
  br i1 %min.iters.check348, label %lv_color_32_32_mix.exit.us.us.preheader, label %vector.body353

vector.body353:                                   ; preds = %.preheader226.us, %vector.body353
  %index354 = phi i64 [ %index.next355, %vector.body353 ], [ 0, %.preheader226.us ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0151253.us, i64 %index354 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <4 x i32> %broadcast.splat352, ptr %i.cj, align 1, !tbaa !18
  store <4 x i32> %broadcast.splat352, ptr %i.ck, align 1, !tbaa !18
  %index.next355 = add nuw i64 %index354, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next355, %n.vec350
  br i1 %i.cl, label %middle.block356, label %vector.body353, !llvm.loop !42

middle.block356:                                  ; preds = %vector.body353
  br i1 %cmp.n357, label %._crit_edge242.split.us.us, label %lv_color_32_32_mix.exit.us.us.preheader

lv_color_32_32_mix.exit.us.us.preheader:          ; preds = %.preheader226.us, %middle.block356
  %indvars.iv295.ph = phi i64 [ 0, %.preheader226.us ], [ %n.vec350, %middle.block356 ]
  br label %lv_color_32_32_mix.exit.us.us

lv_color_32_32_mix.exit.us.us:                    ; preds = %lv_color_32_32_mix.exit.us.us.preheader, %lv_color_32_32_mix.exit.us.us
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %lv_color_32_32_mix.exit.us.us ], [ %indvars.iv295.ph, %lv_color_32_32_mix.exit.us.us.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0151253.us, i64 %indvars.iv295
  store i32 %.fr268, ptr %i.cm, align 1, !tbaa !18
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count298
  br i1 %exitcond299.not, label %._crit_edge242.split.us.us, label %lv_color_32_32_mix.exit.us.us, !llvm.loop !43

._crit_edge242.split.us.us:                       ; preds = %lv_color_32_32_mix.exit.us.us, %middle.block356
  %i.cn = getelementptr inbounds nuw i8, ptr %.0151253.us, i64 %i.ch
  %i.co = add nuw nsw i32 %.1156252.us, 1         ; 2 uses
  %exitcond300.not = icmp eq i32 %i.co, %i.d
  br i1 %exitcond300.not, label %.loopexit, label %.preheader226.us, !llvm.loop !44

.preheader226.lr.ph.split.split:                  ; preds = %.preheader226.lr.ph.split
  br i1 %i.cb, label %.preheader226.us258.preheader, label %.preheader226

.preheader226.us258.preheader:                    ; preds = %.preheader226.lr.ph.split.split
  %min.iters.check = icmp ult i32 %i.b, 8
  %n.vec = and i64 %wide.trip.count298, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.fr268, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert344 = insertelement <4 x i32> poison, i32 %.sroa.654.0.extract.shift.i, i64 0
  %broadcast.splat345 = shufflevector <4 x i32> %broadcast.splatinsert344, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count298
  br label %.preheader226.us258

.preheader226.us258:                              ; preds = %.preheader226.us258.preheader, %._crit_edge242.split.split.us.us
  %.0151253.us259 = phi ptr [ %i.dj, %._crit_edge242.split.split.us.us ], [ %i.by, %.preheader226.us258.preheader ] ; 3 uses
  %.1156252.us260 = phi i32 [ %i.dk, %._crit_edge242.split.split.us.us ], [ 0, %.preheader226.us258.preheader ]
  br i1 %min.iters.check, label %lv_color_32_32_mix.exit.us245.us.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader226.us258, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader226.us258 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0151253.us259, i64 %index ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cp, align 1 ; 3 uses
  %wide.load346 = load <4 x i32>, ptr %i.cq, align 1 ; 3 uses
  %i.cr = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.cs = lshr <4 x i32> %wide.load346, splat (i32 24)
  %i.ct = icmp ult <4 x i32> %wide.load, splat (i32 50331648) ; 2 uses
  %i.cu = icmp ult <4 x i32> %wide.load346, splat (i32 50331648) ; 2 uses
  %i.cv = select <4 x i1> %i.ct, <4 x i32> %broadcast.splat, <4 x i32> %wide.load
  %i.cw = select <4 x i1> %i.cu, <4 x i32> %broadcast.splat, <4 x i32> %wide.load346
  %i.cx = select <4 x i1> %i.ct, <4 x i32> %broadcast.splat345, <4 x i32> %i.cr
  %i.cy = select <4 x i1> %i.cu, <4 x i32> %broadcast.splat345, <4 x i32> %i.cs
  %i.cz = shl nuw <4 x i32> %i.cx, splat (i32 24)
  %i.da = shl nuw <4 x i32> %i.cy, splat (i32 24)
  %i.db = and <4 x i32> %i.cv, splat (i32 16777215)
  %i.dc = and <4 x i32> %i.cw, splat (i32 16777215)
  %i.dd = or disjoint <4 x i32> %i.cz, %i.db
  %i.de = or disjoint <4 x i32> %i.da, %i.dc
  store <4 x i32> %i.dd, ptr %i.cp, align 1, !tbaa !18
  store <4 x i32> %i.de, ptr %i.cq, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge242.split.split.us.us, label %lv_color_32_32_mix.exit.us245.us.preheader

end_hunk_0
