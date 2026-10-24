Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_argb8888?download=true
inline.NumInlined: 160
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %i.cnt = add nuw nsw i32 %.4140191.i, 1         ; 2 uses
  %exitcond229.not.i334 = icmp eq i32 %i.cnt, %i.cbq
  br i1 %exitcond229.not.i334, label %._crit_edge193.split.i, label %.preheader186.i, !llvm.loop !148

._crit_edge193.split.i:                           ; preds = %._crit_edge.i333, %.preheader186.lr.ph.i, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %l8_image_blend.exit

l8_image_blend.exit:                              ; preds = %._crit_edge196.i, %._crit_edge203.i, %._crit_edge210.i, %._crit_edge217.i, %._crit_edge198.i, %._crit_edge205.i, %._crit_edge212.i, %._crit_edge218.i, %._crit_edge192.i, %._crit_edge199.i, %._crit_edge206.i, %._crit_edge213.i, %._crit_edge193.split.i, %.preheader183.lr.ph.i, %bb.lc, %.preheader180.lr.ph.i, %.preheader181.i, %.preheader177.lr.ph.i, %.preheader178.i360, %.preheader.lr.ph.i370, %.preheader176.i369, %._crit_edge195.split.i, %.preheader185.lr.ph.i, %bb.jw, %.preheader182.lr.ph.i283, %.preheader183.i, %.preheader179.lr.ph.i286, %.preheader180.i, %.preheader.lr.ph.i292, %.preheader178.i, %._crit_edge189.split.i, %.preheader179.lr.ph.i, %bb.ij, %.preheader176.lr.ph.i, %.preheader177.i, %.preheader173.lr.ph.i, %.preheader174.i, %.preheader.lr.ph.i228, %.preheader172.i, %bb.a, %argb8888_image_blend.exit, %argb8888_premultiplied_image_blend.exit, %bb.cu, %bb.ct, %rgb565_swapped_image_blend.exit, %rgb565_image_blend.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.fr434 = freeze i8 %i.f                        ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.r, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.s, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  store i8 -1, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 9 uses
  store i8 -1, ptr %i.u, align 1, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %.preheader355

.preheader355:                                    ; preds = %bb.a
  %i.y = icmp sgt i32 %i.d, 0
  br i1 %i.y, label %.preheader354.lr.ph, label %.loopexit

.preheader354.lr.ph:                              ; preds = %.preheader355
  %i.z = icmp sgt i32 %i.b, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.ad = sext i32 %i.q to i64
  %i.ae = zext i32 %i.i to i64
  %i.af = zext i32 %i.m to i64
  br i1 %i.z, label %.preheader354.preheader, label %.loopexit

.preheader354.preheader:                          ; preds = %.preheader354.lr.ph
  %i.ag = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader354

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp eq ptr %i.o, null                  ; 3 uses
  %i.ai = zext i8 %.fr434 to i32                  ; 5 uses
  %i.aj = icmp ugt i8 %.fr434, -4                 ; 2 uses
  %or.cond = and i1 %i.ah, %i.aj
  br i1 %or.cond, label %bb.c, label %.loopexit350

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp eq i8 %1, 4
  %i.al = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %i.ak, label %bb.d, label %.preheader352

.preheader352:                                    ; preds = %bb.c
  br i1 %i.al, label %.preheader351.lr.ph, label %.loopexit

.preheader351.lr.ph:                              ; preds = %.preheader352
  %i.am = icmp sgt i32 %i.b, 0
  %i.an = zext i32 %i.i to i64
  %i.ao = zext i32 %i.m to i64
  br i1 %i.am, label %.preheader351.us.preheader, label %.loopexit

.preheader351.us.preheader:                       ; preds = %.preheader351.lr.ph
  %wide.trip.count472 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count472, 1
  %i.ap = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count472, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod587 = trunc i32 %i.b to i1
  br label %.preheader351.us

.preheader351.us:                                 ; preds = %.preheader351.us.preheader, %._crit_edge365.us
  %.1368.us = phi i32 [ %i.by, %._crit_edge365.us ], [ 0, %.preheader351.us.preheader ]
  %.1229367.us = phi ptr [ %i.bx, %._crit_edge365.us ], [ %i.k, %.preheader351.us.preheader ] ; 4 uses
  %.1235366.us = phi ptr [ %i.bw, %._crit_edge365.us ], [ %i.g, %.preheader351.us.preheader ] ; 4 uses
  br i1 %i.ap, label %.epil.preheader, label %.preheader351.us.new

.preheader351.us.new:                             ; preds = %.preheader351.us, %.preheader351.us.new
  %indvars.iv467 = phi i64 [ %indvars.iv.next468.1, %.preheader351.us.new ], [ 0, %.preheader351.us ] ; 3 uses
  %indvars.iv465 = phi i64 [ %indvars.iv.next466.1, %.preheader351.us.new ], [ 0, %.preheader351.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader351.us.new ], [ 0, %.preheader351.us ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %indvars.iv465 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.1235366.us, i64 %indvars.iv467 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 %i.as, ptr %i.au, align 1, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !33
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !18
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  store i8 -1, ptr %i.az, align 1, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %indvars.iv465 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.1235366.us, i64 %indvars.iv467 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i8 %i.bd, ptr %i.bg, align 1, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !33
  %i.bk = load i8, ptr %i.bb, align 1, !tbaa !18
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 7
  store i8 -1, ptr %i.bl, align 1, !tbaa !35
  %indvars.iv.next468.1 = add nuw nsw i64 %indvars.iv467, 2 ; 2 uses
  %indvars.iv.next466.1 = add nuw nsw i64 %indvars.iv465, 6 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge365.us.unr-lcssa, label %.preheader351.us.new, !llvm.loop !163

._crit_edge365.us.unr-lcssa:                      ; preds = %.preheader351.us.new
  br i1 %lcmp.mod.not, label %._crit_edge365.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge365.us.unr-lcssa, %.preheader351.us
  %indvars.iv467.epil.init = phi i64 [ 0, %.preheader351.us ], [ %indvars.iv.next468.1, %._crit_edge365.us.unr-lcssa ]
  %indvars.iv465.epil.init = phi i64 [ 0, %.preheader351.us ], [ %indvars.iv.next466.1, %._crit_edge365.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod587)
  %i.bm = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %indvars.iv465.epil.init ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.1235366.us, i64 %indvars.iv467.epil.init ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !33
  %i.bu = load i8, ptr %i.bm, align 1, !tbaa !18
  store i8 %i.bu, ptr %i.bp, align 1, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  store i8 -1, ptr %i.bv, align 1, !tbaa !35
  br label %._crit_edge365.us

._crit_edge365.us:                                ; preds = %._crit_edge365.us.unr-lcssa, %.epil.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %.1235366.us, i64 %i.an ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %i.ao ; 2 uses
  %i.by = add nuw nsw i32 %.1368.us, 1            ; 2 uses
  %exitcond474.not = icmp eq i32 %i.by, %i.d
  br i1 %exitcond474.not, label %.loopexit350, label %.preheader351.us, !llvm.loop !164

bb.d:                                             ; preds = %bb.c
  br i1 %i.al, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.bz = shl nsw i32 %i.b, 2
  %i.ca = zext i32 %i.bz to i64
  %i.cb = zext i32 %i.i to i64
  %i.cc = zext i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0373 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %bb.e ]
  %.0228372 = phi ptr [ %i.k, %.lr.ph ], [ %i.cf, %bb.e ] ; 2 uses
  %.0234371 = phi ptr [ %i.g, %.lr.ph ], [ %i.ce, %bb.e ] ; 2 uses
  %i.cd = call ptr @lv_memcpy(ptr noundef %.0234371, ptr noundef %.0228372, i64 noundef %i.ca) #7 ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0234371, i64 %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %.0228372, i64 %i.cc
  %i.cg = add nuw nsw i32 %.0373, 1               ; 2 uses
  %exitcond475.not = icmp eq i32 %i.cg, %i.d
  br i1 %exitcond475.not, label %.loopexit, label %bb.e, !llvm.loop !165

.loopexit350:                                     ; preds = %._crit_edge365.us, %bb.b
  %.2236 = phi ptr [ %i.g, %bb.b ], [ %i.bw, %._crit_edge365.us ] ; 3 uses
  %.2230 = phi ptr [ %i.k, %bb.b ], [ %i.bx, %._crit_edge365.us ] ; 3 uses
  %i.ch = icmp ult i8 %.fr434, -3                 ; 2 uses
  %or.cond5 = and i1 %i.ah, %i.ch
  %i.ci = icmp sgt i32 %i.d, 0                    ; 3 uses
  %or.cond431 = select i1 %or.cond5, i1 %i.ci, i1 false
  br i1 %or.cond431, label %.preheader347.lr.ph, label %.loopexit349

.preheader347.lr.ph:                              ; preds = %.loopexit350
  %i.cj = icmp sgt i32 %i.b, 0
  %.sroa.14.0.insert.shift = shl nuw i32 %i.ai, 24
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cm = xor i32 %i.ai, 255
  %i.cn = zext i8 %.fr434 to i16
  %.lhs.trunc.i = mul nuw i16 %i.cn, 255
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.cp = zext i32 %i.i to i64                    ; 2 uses
  %i.cq = zext i32 %i.m to i64                    ; 2 uses
  br i1 %i.cj, label %.preheader347.lr.ph.split.us, label %.loopexit

.preheader347.lr.ph.split.us:                     ; preds = %.preheader347.lr.ph
  %i.cr = icmp ult i8 %.fr434, 3
  %i.cs = zext nneg i8 %1 to i64                  ; 2 uses
  %wide.trip.count495 = zext nneg i32 %i.b to i64 ; 2 uses
  br i1 %i.cr, label %.preheader347.us.us, label %.preheader347.us

.preheader347.us.us:                              ; preds = %.preheader347.lr.ph.split.us, %._crit_edge380.split.us.us.us
  %.2385.us.us = phi i32 [ %i.de, %._crit_edge380.split.us.us.us ], [ 0, %.preheader347.lr.ph.split.us ]
  %.3231383.us.us = phi ptr [ %i.dd, %._crit_edge380.split.us.us.us ], [ %.2230, %.preheader347.lr.ph.split.us ] ; 2 uses
  %.3237381.us.us = phi ptr [ %i.dc, %._crit_edge380.split.us.us.us ], [ %.2236, %.preheader347.lr.ph.split.us ] ; 2 uses
  br label %lv_color_32_32_mix.exit.us.us.us

lv_color_32_32_mix.exit.us.us.us:                 ; preds = %lv_color_32_32_mix.exit.us.us.us, %.preheader347.us.us
  %indvars.iv490 = phi i64 [ %indvars.iv.next491, %lv_color_32_32_mix.exit.us.us.us ], [ 0, %.preheader347.us.us ] ; 2 uses
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %lv_color_32_32_mix.exit.us.us.us ], [ 0, %.preheader347.us.us ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.3231383.us.us, i64 %indvars.iv488 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !18
  %i.cw = load i16, ptr %i.ct, align 1
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.3237381.us.us, i64 %indvars.iv490 ; 2 uses
  %.sroa.11.0.insert.ext.us.us.us = zext i8 %i.cv to i32
  %.sroa.11.0.insert.shift.us.us.us = shl nuw nsw i32 %.sroa.11.0.insert.ext.us.us.us, 16
  %i.cz = or disjoint i32 %.sroa.11.0.insert.shift.us.us.us, %i.cx
  %i.da = load i32, ptr %i.cy, align 1            ; 3 uses
  %.sroa.6.0.extract.shift.i.us.us.us = lshr i32 %i.da, 24
  %i.db = icmp ult i32 %i.da, 50331648            ; 2 uses
  %spec.select.v = select i1 %i.db, i32 %i.cz, i32 %i.da
  %spec.select430 = select i1 %i.db, i32 %i.ai, i32 %.sroa.6.0.extract.shift.i.us.us.us
  %.sroa.5.0.insert.shift.i.us.us.us = shl nuw i32 %spec.select430, 24
  %.sroa.074.0.insert.ext.i.us.us.us = and i32 %spec.select.v, 16777215
  %.sroa.074.0.insert.insert.i.us.us.us = or disjoint i32 %.sroa.5.0.insert.shift.i.us.us.us, %.sroa.074.0.insert.ext.i.us.us.us
  store i32 %.sroa.074.0.insert.insert.i.us.us.us, ptr %i.cy, align 1, !tbaa !18
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, %i.cs
  %exitcond496.not = icmp eq i64 %indvars.iv.next491, %wide.trip.count495
  br i1 %exitcond496.not, label %._crit_edge380.split.us.us.us, label %lv_color_32_32_mix.exit.us.us.us, !llvm.loop !166

._crit_edge380.split.us.us.us:                    ; preds = %lv_color_32_32_mix.exit.us.us.us
  %i.dc = getelementptr inbounds nuw i8, ptr %.3237381.us.us, i64 %i.cp ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.3231383.us.us, i64 %i.cq ; 2 uses
  %i.de = add nuw nsw i32 %.2385.us.us, 1         ; 2 uses
  %exitcond497.not = icmp eq i32 %i.de, %i.d
  br i1 %exitcond497.not, label %.loopexit349, label %.preheader347.us.us, !llvm.loop !167

.preheader347.us:                                 ; preds = %.preheader347.lr.ph.split.us, %._crit_edge380.split.us403
  %.2385.us = phi i32 [ %i.el, %._crit_edge380.split.us403 ], [ 0, %.preheader347.lr.ph.split.us ]
  %.3231383.us = phi ptr [ %i.ek, %._crit_edge380.split.us403 ], [ %.2230, %.preheader347.lr.ph.split.us ] ; 2 uses
  %.3237381.us = phi ptr [ %i.ej, %._crit_edge380.split.us403 ], [ %.2236, %.preheader347.lr.ph.split.us ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %lv_color_32_32_mix.exit.us397, %.preheader347.us
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %lv_color_32_32_mix.exit.us397 ], [ 0, %.preheader347.us ] ; 2 uses
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %lv_color_32_32_mix.exit.us397 ], [ 0, %.preheader347.us ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.3231383.us, i64 %indvars.iv478 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !18
  %i.di = load i16, ptr %i.df, align 1
  %i.dj = zext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.3237381.us, i64 %indvars.iv480 ; 2 uses
  %.sroa.11.0.insert.ext.us391 = zext i8 %i.dh to i32
  %.sroa.11.0.insert.shift.us392 = shl nuw nsw i32 %.sroa.11.0.insert.ext.us391, 16
  %i.dl = or disjoint i32 %.sroa.11.0.insert.shift.us392, %i.dj ; 3 uses
  %.sroa.071.0.insert.insert.us394 = or disjoint i32 %i.dl, %.sroa.14.0.insert.shift ; 3 uses
  %i.dm = load i32, ptr %i.dk, align 1            ; 6 uses
  %.sroa.045.0.extract.trunc.i.us395 = trunc nuw i32 %i.dl to i24
  %.sroa.6.0.extract.shift.i.us396 = lshr i32 %i.dm, 24 ; 3 uses
  %i.dn = icmp ult i32 %i.dm, 50331648
  br i1 %i.dn, label %lv_color_32_32_mix.exit.us397, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = icmp eq i32 %.sroa.6.0.extract.shift.i.us396, 255
  br i1 %i.do, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dp = load i8, ptr %i.ck, align 1, !tbaa !19
  %i.dq = zext i8 %i.dp to i32
  %.not.i.us = icmp eq i32 %.sroa.6.0.extract.shift.i.us396, %i.dq
  %i.dr = load i8, ptr %i.cl, align 1
  %.not77.i.us = icmp eq i8 %.fr434, %i.dr
  %or.cond333.us = select i1 %.not.i.us, i1 %.not77.i.us, i1 false
  br i1 %or.cond333.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ds = xor i32 %.sroa.6.0.extract.shift.i.us396, 255
  %i.dt = mul nuw nsw i32 %i.ds, %i.cm
  %i.du = lshr i32 %i.dt, 8
  %i.dv = trunc nuw i32 %i.du to i8
  %i.dw = xor i8 %i.dv, -1                        ; 2 uses
  store i8 %i.dw, ptr %i.t, align 4, !tbaa !13
  %.rhs.trunc.i.us = zext i8 %i.dw to i16
  %i.dx = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i.us
  %i.dy = trunc i16 %i.dx to i8
  store i8 %i.dy, ptr %i.u, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dz = load i32, ptr %i.r, align 4
  %i.ea = call zeroext i1 @lv_color32_eq(i32 %i.dm, i32 %i.dz) #7
  br i1 %i.ea, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eb = load i32, ptr %2, align 4
  %i.ec = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert.us394, i32 %i.eb) #7
  br i1 %i.ec, label %._crit_edge.i.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %.sroa.071.0.insert.insert.us394, ptr %2, align 4
  store i32 %i.dm, ptr %i.r, align 4
  %i.ed = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.us = zext i8 %i.ed to i32
  %.sroa.654.0.insert.shift64.i.us = shl nuw i32 %.sroa.654.0.insert.ext63.i.us, 24
  %.sroa.045.0.insert.insert53.i.us = or disjoint i32 %.sroa.654.0.insert.shift64.i.us, %i.dl
  %i.ee = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.us, i32 %i.dm) #7 ; 2 uses
  store i32 %i.ee, ptr %i.s, align 4, !tbaa !18
  %i.ef = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.ef, ptr %i.co, align 1, !tbaa !20
  %i.eg = trunc i32 %i.ee to i24
  br label %bb.m

._crit_edge.i.us:                                 ; preds = %bb.k
  %.sroa.074.0.copyload.pre.i.us = load i24, ptr %i.s, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i.us = load i8, ptr %i.co, align 1, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.us, %bb.l
  %.sroa.5.0.copyload.i.us = phi i8 [ %.sroa.5.0.copyload.pre.i.us, %._crit_edge.i.us ], [ %i.ef, %bb.l ]
  %.sroa.074.0.copyload.i.us = phi i24 [ %.sroa.074.0.copyload.pre.i.us, %._crit_edge.i.us ], [ %i.eg, %bb.l ]
  %i.eh = zext i8 %.sroa.5.0.copyload.i.us to i32
  br label %lv_color_32_32_mix.exit.us397

bb.n:                                             ; preds = %bb.g
  %i.ei = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert.us394, i32 %i.dm) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.us = trunc i32 %i.ei to i24
  %.sroa.5.0.extract.shift.i.us = lshr i32 %i.ei, 24
  br label %lv_color_32_32_mix.exit.us397

lv_color_32_32_mix.exit.us397:                    ; preds = %bb.n, %bb.m, %bb.f
  %.sroa.074.0.i.us398 = phi i24 [ %.sroa.074.0.copyload.i.us, %bb.m ], [ %.sroa.045.0.extract.trunc.i.us395, %bb.f ], [ %.sroa.074.0.extract.trunc.i.us, %bb.n ]
  %.sroa.5.0.i.us399 = phi i32 [ %i.eh, %bb.m ], [ %i.ai, %bb.f ], [ %.sroa.5.0.extract.shift.i.us, %bb.n ]
  %.sroa.5.0.insert.shift.i.us400 = shl nuw i32 %.sroa.5.0.i.us399, 24
  %.sroa.074.0.insert.ext.i.us401 = zext i24 %.sroa.074.0.i.us398 to i32
  %.sroa.074.0.insert.insert.i.us402 = or disjoint i32 %.sroa.5.0.insert.shift.i.us400, %.sroa.074.0.insert.ext.i.us401
  store i32 %.sroa.074.0.insert.insert.i.us402, ptr %i.dk, align 1, !tbaa !18
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, %i.cs
  %exitcond486.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count495
  br i1 %exitcond486.not, label %._crit_edge380.split.us403, label %bb.f, !llvm.loop !166

._crit_edge380.split.us403:                       ; preds = %lv_color_32_32_mix.exit.us397
  %i.ej = getelementptr inbounds nuw i8, ptr %.3237381.us, i64 %i.cp ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.3231383.us, i64 %i.cq ; 2 uses
  %i.el = add nuw nsw i32 %.2385.us, 1            ; 2 uses
  %exitcond487.not = icmp eq i32 %i.el, %i.d
  br i1 %exitcond487.not, label %.loopexit349, label %.preheader347.us, !llvm.loop !167

.loopexit349:                                     ; preds = %._crit_edge380.split.us403, %._crit_edge380.split.us.us.us, %.loopexit350
  %.4238 = phi ptr [ %.2236, %.loopexit350 ], [ %i.dc, %._crit_edge380.split.us.us.us ], [ %i.ej, %._crit_edge380.split.us403 ] ; 3 uses
  %.4232 = phi ptr [ %.2230, %.loopexit350 ], [ %i.dd, %._crit_edge380.split.us.us.us ], [ %i.ek, %._crit_edge380.split.us403 ] ; 3 uses
  %.not = xor i1 %i.ah, true
  %or.cond8 = and i1 %i.aj, %.not
  %or.cond432 = select i1 %or.cond8, i1 %i.ci, i1 false
  br i1 %or.cond432, label %.preheader344.lr.ph, label %.loopexit346

.preheader344.lr.ph:                              ; preds = %.loopexit349
  %i.em = icmp sgt i32 %i.b, 0
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.eq = zext i32 %i.i to i64                    ; 2 uses
  %i.er = zext i32 %i.m to i64                    ; 2 uses
  %i.es = sext i32 %i.q to i64                    ; 2 uses
  br i1 %i.em, label %.preheader344.us.preheader, label %.preheader344.preheader

.preheader344.preheader:                          ; preds = %.preheader344.lr.ph
  %i.et = zext nneg i32 %i.d to i64               ; 3 uses
  %i.eu = mul nuw nsw i64 %i.et, %i.eq
  %scevgep498 = getelementptr i8, ptr %.4238, i64 %i.eu
  %i.ev = mul nuw nsw i64 %i.et, %i.er
  %scevgep499 = getelementptr i8, ptr %.4232, i64 %i.ev
  %i.ew = mul nsw i64 %i.et, %i.es
  %scevgep500 = getelementptr i8, ptr %i.o, i64 %i.ew
  br label %.loopexit346

.preheader344.us.preheader:                       ; preds = %.preheader344.lr.ph
  %i.ex = zext nneg i8 %1 to i64
  %wide.trip.count508 = zext nneg i32 %i.b to i64
  br label %.preheader344.us

.preheader344.us:                                 ; preds = %.preheader344.us.preheader, %._crit_edge411.us
  %.3415.us = phi i32 [ %i.gk, %._crit_edge411.us ], [ 0, %.preheader344.us.preheader ]
  %.0223414.us = phi ptr [ %i.gj, %._crit_edge411.us ], [ %i.o, %.preheader344.us.preheader ] ; 2 uses
  %.5233413.us = phi ptr [ %i.gi, %._crit_edge411.us ], [ %.4232, %.preheader344.us.preheader ] ; 2 uses
  %.5239412.us = phi ptr [ %i.gh, %._crit_edge411.us ], [ %.4238, %.preheader344.us.preheader ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader344.us, %lv_color_32_32_mix.exit274.us
  %indvars.iv503 = phi i64 [ 0, %.preheader344.us ], [ %indvars.iv.next504, %lv_color_32_32_mix.exit274.us ] ; 3 uses
  %indvars.iv501 = phi i64 [ 0, %.preheader344.us ], [ %indvars.iv.next502, %lv_color_32_32_mix.exit274.us ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0223414.us, i64 %indvars.iv503
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !18  ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.5233413.us, i64 %indvars.iv501 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fd = load i16, ptr %i.fa, align 1
  %i.fe = zext i16 %i.fd to i32
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.5239412.us, i64 %indvars.iv503 ; 2 uses
  %.sroa.14.0.insert.ext101.us = zext i8 %i.ez to i32 ; 3 uses
  %.sroa.14.0.insert.shift102.us = shl nuw i32 %.sroa.14.0.insert.ext101.us, 24
  %.sroa.11.0.insert.ext91.us = zext i8 %i.fc to i32
  %.sroa.11.0.insert.shift92.us = shl nuw nsw i32 %.sroa.11.0.insert.ext91.us, 16
  %.sroa.11.0.insert.insert94.us = or disjoint i32 %.sroa.11.0.insert.shift92.us, %.sroa.14.0.insert.shift102.us
  %.sroa.071.0.insert.insert75.us = or disjoint i32 %.sroa.11.0.insert.insert94.us, %i.fe ; 5 uses
  %i.fg = load i32, ptr %i.ff, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i247.us = trunc i32 %.sroa.071.0.insert.insert75.us to i24
  %.sroa.6.0.extract.shift.i249.us = lshr i32 %i.fg, 24 ; 4 uses
  %i.fh = icmp ugt i8 %i.ez, -4
  %i.fi = icmp ult i32 %i.fg, 50331648
  %or.cond.i250.us = select i1 %i.fh, i1 true, i1 %i.fi
  br i1 %or.cond.i250.us, label %lv_color_32_32_mix.exit274.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.018.0.extract.trunc.i251.us = trunc i32 %i.fg to i24
  %i.fj = icmp ult i8 %i.ez, 3
  br i1 %i.fj, label %lv_color_32_32_mix.exit274.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = icmp eq i32 %.sroa.6.0.extract.shift.i249.us, 255
  br i1 %i.fk, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fl = load i8, ptr %i.en, align 1, !tbaa !19
  %i.fm = zext i8 %i.fl to i32
  %.not.i252.us = icmp eq i32 %.sroa.6.0.extract.shift.i249.us, %i.fm
  %i.fn = load i8, ptr %i.eo, align 1
  %.not77.i271.us = icmp eq i8 %i.ez, %i.fn
  %or.cond336.us = select i1 %.not.i252.us, i1 %.not77.i271.us, i1 false
  br i1 %or.cond336.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fo = xor i32 %.sroa.14.0.insert.ext101.us, 255
  %i.fp = xor i32 %.sroa.6.0.extract.shift.i249.us, 255
  %i.fq = mul nuw nsw i32 %i.fp, %i.fo
  %i.fr = lshr i32 %i.fq, 8
  %i.fs = trunc nuw i32 %i.fr to i8
  %i.ft = xor i8 %i.fs, -1                        ; 2 uses
  store i8 %i.ft, ptr %i.t, align 4, !tbaa !13
  %i.fu = zext i8 %i.ez to i16
  %.lhs.trunc.i253.us = mul nuw i16 %i.fu, 255
  %.rhs.trunc.i254.us = zext i8 %i.ft to i16
  %i.fv = udiv i16 %.lhs.trunc.i253.us, %.rhs.trunc.i254.us
  %i.fw = trunc i16 %i.fv to i8
  store i8 %i.fw, ptr %i.u, align 1, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fx = load i32, ptr %i.r, align 4
  %i.fy = call zeroext i1 @lv_color32_eq(i32 %i.fg, i32 %i.fx) #7
  br i1 %i.fy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fz = load i32, ptr %2, align 4
  %i.ga = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert75.us, i32 %i.fz) #7
  br i1 %i.ga, label %._crit_edge.i266.us, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 %.sroa.071.0.insert.insert75.us, ptr %2, align 4
  store i32 %i.fg, ptr %i.r, align 4
  %i.gb = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i255.us = zext i8 %i.gb to i32
  %.sroa.654.0.insert.shift64.i256.us = shl nuw i32 %.sroa.654.0.insert.ext63.i255.us, 24
  %.sroa.045.0.insert.ext51.i257.us = and i32 %.sroa.071.0.insert.insert75.us, 16777215
  %.sroa.045.0.insert.insert53.i258.us = or disjoint i32 %.sroa.654.0.insert.shift64.i256.us, %.sroa.045.0.insert.ext51.i257.us
  %i.gc = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i258.us, i32 %i.fg) #7 ; 2 uses
  store i32 %i.gc, ptr %i.s, align 4, !tbaa !18
  %i.gd = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.gd, ptr %i.ep, align 1, !tbaa !20
  %i.ge = trunc i32 %i.gc to i24
  br label %bb.w

._crit_edge.i266.us:                              ; preds = %bb.u
  %.sroa.074.0.copyload.pre.i268.us = load i24, ptr %i.s, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i270.us = load i8, ptr %i.ep, align 1, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i266.us, %bb.v
  %.sroa.5.0.copyload.i259.us = phi i8 [ %.sroa.5.0.copyload.pre.i270.us, %._crit_edge.i266.us ], [ %i.gd, %bb.v ]
  %.sroa.074.0.copyload.i260.us = phi i24 [ %.sroa.074.0.copyload.pre.i268.us, %._crit_edge.i266.us ], [ %i.ge, %bb.v ]
  %i.gf = zext i8 %.sroa.5.0.copyload.i259.us to i32
  br label %lv_color_32_32_mix.exit274.us

bb.x:                                             ; preds = %bb.q
  %i.gg = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert75.us, i32 %i.fg) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i272.us = trunc i32 %i.gg to i24
  %.sroa.5.0.extract.shift.i273.us = lshr i32 %i.gg, 24
  br label %lv_color_32_32_mix.exit274.us

lv_color_32_32_mix.exit274.us:                    ; preds = %bb.x, %bb.w, %bb.p, %bb.o
  %.sroa.074.0.i261.us = phi i24 [ %.sroa.074.0.copyload.i260.us, %bb.w ], [ %.sroa.045.0.extract.trunc.i247.us, %bb.o ], [ %.sroa.074.0.extract.trunc.i272.us, %bb.x ], [ %.sroa.018.0.extract.trunc.i251.us, %bb.p ]
  %.sroa.5.0.i262.us = phi i32 [ %i.gf, %bb.w ], [ %.sroa.14.0.insert.ext101.us, %bb.o ], [ %.sroa.5.0.extract.shift.i273.us, %bb.x ], [ %.sroa.6.0.extract.shift.i249.us, %bb.p ]
  %.sroa.5.0.insert.shift.i263.us = shl nuw i32 %.sroa.5.0.i262.us, 24
  %.sroa.074.0.insert.ext.i264.us = zext i24 %.sroa.074.0.i261.us to i32
  %.sroa.074.0.insert.insert.i265.us = or disjoint i32 %.sroa.5.0.insert.shift.i263.us, %.sroa.074.0.insert.ext.i264.us
  store i32 %.sroa.074.0.insert.insert.i265.us, ptr %i.ff, align 1, !tbaa !18
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, %i.ex
  %exitcond509.not = icmp eq i64 %indvars.iv.next504, %wide.trip.count508
  br i1 %exitcond509.not, label %._crit_edge411.us, label %bb.o, !llvm.loop !168

._crit_edge411.us:                                ; preds = %lv_color_32_32_mix.exit274.us
  %i.gh = getelementptr inbounds nuw i8, ptr %.5239412.us, i64 %i.eq ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.5233413.us, i64 %i.er ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.0223414.us, i64 %i.es ; 2 uses
  %i.gk = add nuw nsw i32 %.3415.us, 1            ; 2 uses
  %exitcond510.not = icmp eq i32 %i.gk, %i.d
  br i1 %exitcond510.not, label %.loopexit346, label %.preheader344.us, !llvm.loop !169

.loopexit346:                                     ; preds = %._crit_edge411.us, %.preheader344.preheader, %.loopexit349
  %.6240 = phi ptr [ %.4238, %.loopexit349 ], [ %scevgep498, %.preheader344.preheader ], [ %i.gh, %._crit_edge411.us ]
  %.6 = phi ptr [ %.4232, %.loopexit349 ], [ %scevgep499, %.preheader344.preheader ], [ %i.gi, %._crit_edge411.us ]
  %.1224 = phi ptr [ %i.o, %.loopexit349 ], [ %scevgep500, %.preheader344.preheader ], [ %i.gj, %._crit_edge411.us ] ; 2 uses
  %i.gl = icmp ne ptr %.1224, null
  %or.cond11 = and i1 %i.gl, %i.ch
  %or.cond433 = select i1 %or.cond11, i1 %i.ci, i1 false
  br i1 %or.cond433, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit346
  %i.gm = icmp sgt i32 %i.b, 0
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.gq = zext i32 %i.i to i64
  %i.gr = zext i32 %i.m to i64
  %i.gs = sext i32 %i.q to i64
  br i1 %i.gm, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.gt = zext nneg i8 %1 to i64
  %wide.trip.count518 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge425
  %.4429 = phi i32 [ %i.il, %._crit_edge425 ], [ 0, %.preheader.preheader ]
  %.2225428 = phi ptr [ %i.ik, %._crit_edge425 ], [ %.1224, %.preheader.preheader ] ; 2 uses
  %.7427 = phi ptr [ %i.ij, %._crit_edge425 ], [ %.6, %.preheader.preheader ] ; 2 uses
  %.7241426 = phi ptr [ %i.ii, %._crit_edge425 ], [ %.6240, %.preheader.preheader ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %lv_color_32_32_mix.exit302
  %indvars.iv513 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next514, %lv_color_32_32_mix.exit302 ] ; 3 uses
  %indvars.iv511 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next512, %lv_color_32_32_mix.exit302 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.2225428, i64 %indvars.iv513
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !18
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gw, %i.ai            ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.7427, i64 %indvars.iv511 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !18
  %i.hb = load i16, ptr %i.gy, align 1
  %i.hc = zext i16 %i.hb to i32
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.7241426, i64 %indvars.iv513 ; 2 uses
  %.sroa.11.0.insert.ext96 = zext i8 %i.ha to i32
  %i.he = and i32 %i.gx, 65280
  %i.hf = or disjoint i32 %i.he, %.sroa.11.0.insert.ext96
  %.sroa.11.0.insert.insert99 = shl nuw i32 %i.hf, 16
  %.sroa.071.0.insert.insert79 = or disjoint i32 %.sroa.11.0.insert.insert99, %i.hc ; 5 uses
  %i.hg = load i32, ptr %i.hd, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i275 = trunc i32 %.sroa.071.0.insert.insert79 to i24
  %.sroa.654.0.extract.shift.i276 = lshr i32 %i.gx, 8 ; 4 uses
  %.sroa.6.0.extract.shift.i277 = lshr i32 %i.hg, 24 ; 4 uses
  %i.hh = icmp samesign ugt i32 %i.gx, 64767
  %i.hi = icmp ult i32 %i.hg, 50331648
  %or.cond.i278 = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond.i278, label %lv_color_32_32_mix.exit302, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.018.0.extract.trunc.i279 = trunc i32 %i.hg to i24
  %i.hj = icmp samesign ult i32 %i.gx, 768
  br i1 %i.hj, label %lv_color_32_32_mix.exit302, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hk = icmp eq i32 %.sroa.6.0.extract.shift.i277, 255
  br i1 %i.hk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hl = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert79, i32 %i.hg) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i300 = trunc i32 %i.hl to i24
  %.sroa.5.0.extract.shift.i301 = lshr i32 %i.hl, 24
  br label %lv_color_32_32_mix.exit302

bb.ac:                                            ; preds = %bb.aa
  %i.hm = load i8, ptr %i.gn, align 1, !tbaa !19
  %i.hn = zext i8 %i.hm to i32
  %.not.i280 = icmp eq i32 %.sroa.6.0.extract.shift.i277, %i.hn
  %i.ho = load i8, ptr %i.go, align 1
  %i.hp = zext i8 %i.ho to i32
  %.not77.i299 = icmp eq i32 %.sroa.654.0.extract.shift.i276, %i.hp
  %or.cond339 = select i1 %.not.i280, i1 %.not77.i299, i1 false
  br i1 %or.cond339, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = xor i32 %.sroa.654.0.extract.shift.i276, 255
  %i.hr = xor i32 %.sroa.6.0.extract.shift.i277, 255
  %i.hs = mul nuw nsw i32 %i.hr, %i.hq
  %i.ht = lshr i32 %i.hs, 8
  %i.hu = trunc nuw i32 %i.ht to i8
  %i.hv = xor i8 %i.hu, -1                        ; 2 uses
  store i8 %i.hv, ptr %i.t, align 4, !tbaa !13
  %i.hw = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i276 to i16
  %.lhs.trunc.i281 = mul nuw i16 %i.hw, 255
  %.rhs.trunc.i282 = zext i8 %i.hv to i16
  %i.hx = udiv i16 %.lhs.trunc.i281, %.rhs.trunc.i282
  %i.hy = trunc i16 %i.hx to i8
  store i8 %i.hy, ptr %i.u, align 1, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.hz = load i32, ptr %i.r, align 4
  %i.ia = call zeroext i1 @lv_color32_eq(i32 %i.hg, i32 %i.hz) #7
  br i1 %i.ia, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ib = load i32, ptr %2, align 4
  %i.ic = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert79, i32 %i.ib) #7
  br i1 %i.ic, label %._crit_edge.i294, label %bb.ag

._crit_edge.i294:                                 ; preds = %bb.af
  %.sroa.074.0.copyload.pre.i296 = load i24, ptr %i.s, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i298 = load i8, ptr %i.gp, align 1, !tbaa !18
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 %.sroa.071.0.insert.insert79, ptr %2, align 4
  store i32 %i.hg, ptr %i.r, align 4
  %i.id = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i283 = zext i8 %i.id to i32
  %.sroa.654.0.insert.shift64.i284 = shl nuw i32 %.sroa.654.0.insert.ext63.i283, 24
  %.sroa.045.0.insert.ext51.i285 = and i32 %.sroa.071.0.insert.insert79, 16777215
  %.sroa.045.0.insert.insert53.i286 = or disjoint i32 %.sroa.654.0.insert.shift64.i284, %.sroa.045.0.insert.ext51.i285
  %i.ie = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i286, i32 %i.hg) #7 ; 2 uses
  store i32 %i.ie, ptr %i.s, align 4, !tbaa !18
  %i.if = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.if, ptr %i.gp, align 1, !tbaa !20
  %i.ig = trunc i32 %i.ie to i24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i294
  %.sroa.5.0.copyload.i287 = phi i8 [ %.sroa.5.0.copyload.pre.i298, %._crit_edge.i294 ], [ %i.if, %bb.ag ]
  %.sroa.074.0.copyload.i288 = phi i24 [ %.sroa.074.0.copyload.pre.i296, %._crit_edge.i294 ], [ %i.ig, %bb.ag ]
  %i.ih = zext i8 %.sroa.5.0.copyload.i287 to i32
  br label %lv_color_32_32_mix.exit302

lv_color_32_32_mix.exit302:                       ; preds = %bb.y, %bb.z, %bb.ab, %bb.ah
  %.sroa.074.0.i289 = phi i24 [ %.sroa.074.0.copyload.i288, %bb.ah ], [ %.sroa.045.0.extract.trunc.i275, %bb.y ], [ %.sroa.074.0.extract.trunc.i300, %bb.ab ], [ %.sroa.018.0.extract.trunc.i279, %bb.z ]
  %.sroa.5.0.i290 = phi i32 [ %i.ih, %bb.ah ], [ %.sroa.654.0.extract.shift.i276, %bb.y ], [ %.sroa.5.0.extract.shift.i301, %bb.ab ], [ %.sroa.6.0.extract.shift.i277, %bb.z ]
  %.sroa.5.0.insert.shift.i291 = shl nuw i32 %.sroa.5.0.i290, 24
  %.sroa.074.0.insert.ext.i292 = zext i24 %.sroa.074.0.i289 to i32
  %.sroa.074.0.insert.insert.i293 = or disjoint i32 %.sroa.5.0.insert.shift.i291, %.sroa.074.0.insert.ext.i292
  store i32 %.sroa.074.0.insert.insert.i293, ptr %i.hd, align 1, !tbaa !18
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, %i.gt
  %exitcond519.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count518
  br i1 %exitcond519.not, label %._crit_edge425, label %bb.y, !llvm.loop !170

._crit_edge425:                                   ; preds = %lv_color_32_32_mix.exit302
  %i.ii = getelementptr inbounds nuw i8, ptr %.7241426, i64 %i.gq
  %i.ij = getelementptr inbounds nuw i8, ptr %.7427, i64 %i.gr
  %i.ik = getelementptr inbounds i8, ptr %.2225428, i64 %i.gs
  %i.il = add nuw nsw i32 %.4429, 1               ; 2 uses
  %exitcond520.not = icmp eq i32 %i.il, %i.d
  br i1 %exitcond520.not, label %.loopexit, label %.preheader, !llvm.loop !171

.preheader354:                                    ; preds = %.preheader354.preheader, %._crit_edge
  %.5362 = phi i32 [ %i.mf, %._crit_edge ], [ 0, %.preheader354.preheader ]
  %.3226361 = phi ptr [ %.4227, %._crit_edge ], [ %i.o, %.preheader354.preheader ] ; 3 uses
  %.8360 = phi ptr [ %i.me, %._crit_edge ], [ %i.k, %.preheader354.preheader ] ; 2 uses
  %.8242359 = phi ptr [ %i.md, %._crit_edge ], [ %i.g, %.preheader354.preheader ] ; 2 uses
  %i.im = icmp eq ptr %.3226361, null             ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader354, %blend_non_normal_pixel.exit
  %indvars.iv458 = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next459, %blend_non_normal_pixel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.8360, i64 %indvars.iv ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !18
  %i.is = load i8, ptr %i.in, align 1, !tbaa !18
  br i1 %i.im, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = getelementptr inbounds nuw i8, ptr %.3226361, i64 %indvars.iv458
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !18
  %i.iv = call i8 @llvm.umulh.i8(i8 %i.iu, i8 %.fr434)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.6.0 = phi i8 [ %i.iv, %bb.aj ], [ %.fr434, %bb.ai ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.8242359, i64 %indvars.iv458 ; 14 uses
  %i.ix = load i32, ptr %i.v, align 4, !tbaa !31
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.ip to i32    ; 4 uses
  %.sroa.4.0.insert.ext = zext i8 %i.ir to i32    ; 4 uses
  %.sroa.0.0.insert.ext = zext i8 %i.is to i32    ; 4 uses
  switch i32 %i.ix, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !32
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nuw nsw i32 %i.ja, %.sroa.5.0.insert.ext
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.jb, i32 255)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !33
  %i.je = zext i8 %i.jd to i32
  %i.jf = add nuw nsw i32 %i.je, %.sroa.4.0.insert.ext
  %i.jg = call i32 @llvm.umin.i32(i32 %i.jf, i32 255)
end_hunk_0
