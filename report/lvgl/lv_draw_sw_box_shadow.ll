Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_box_shadow?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@lv_draw_sw_box_shadow:bb.a
bb.c:                                             ; preds = %bb.b
  %i.aw = call i32 @lv_area_get_width(ptr noundef nonnull %8) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ax = call i32 @lv_area_get_height(ptr noundef nonnull %8) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = phi i32 [ %i.aw, %bb.c ], [ %i.ax, %bb.d ]
  %i.az = ashr i32 %i.ay, 1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.az) ; 19 uses
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.bb = call i32 @lv_area_get_width(ptr noundef nonnull %5) #6
  %i.bc = call i32 @lv_area_get_height(ptr noundef nonnull %5) #6
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = call i32 @lv_area_get_width(ptr noundef nonnull %5) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bf = call i32 @lv_area_get_height(ptr noundef nonnull %5) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = phi i32 [ %i.be, %bb.f ], [ %i.bf, %bb.g ]
  %i.bh = ashr i32 %i.bg, 1
  %spec.select414 = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.bh) ; 4 uses
  %i.bi = load i32, ptr %i.z, align 8, !tbaa !49
  %i.bj = add nsw i32 %spec.select414, %i.bi      ; 43 uses
  %i.bk = shl i32 %i.bj, 1
  %i.bl = mul i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = call ptr @lv_malloc(i64 noundef %i.bm) #6 ; 29 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  br label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.z, align 8, !tbaa !49  ; 6 uses
  %i.bp = add i32 %i.bo, %spec.select414          ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bt = sdiv i32 %i.bo, 2                       ; 2 uses
  %i.bu = add nsw i32 %i.bt, %spec.select414
  %i.bv = and i32 %i.bo, 1
  %i.bw = or i32 %i.bo, -2
  %i.bx = add i32 %i.bu, %i.bw                    ; 2 uses
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !45
  %i.by = add nsw i32 %i.bt, 1                    ; 2 uses
  store i32 %i.by, ptr %i.bq, align 4, !tbaa !46
  %i.bz = call i32 @lv_area_get_width(ptr noundef nonnull %5) #6
  %i.ca = sub nsw i32 %i.bx, %i.bz
  store i32 %i.ca, ptr %3, align 4, !tbaa !35
  %i.cb = call i32 @lv_area_get_height(ptr noundef nonnull %5) #6
  %i.cc = add nsw i32 %i.cb, %i.by
  store i32 %i.cc, ptr %i.bs, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef range(i32 -2147483648, 1073741824) %spec.select414, i1 noundef zeroext false) #6
  %i.cd = icmp eq i32 %i.bo, 1
  %i.ce = ashr i32 %i.bo, 1
  %.097.i = select i1 %i.cd, i32 1, i32 %i.ce     ; 7 uses
  %i.cf = sext i32 %i.bp to i64                   ; 4 uses
  %i.cg = call ptr @lv_malloc(i64 noundef %i.cf) #6 ; 8 uses
  %i.ch = icmp sgt i32 %i.bp, 0
  br i1 %i.ch, label %.lr.ph109.i, label %._crit_edge.i

.lr.ph109.i:                                      ; preds = %bb.i
  %i.ci = shl nuw nsw i64 %i.cf, 1
  %wide.trip.count.i = zext nneg i32 %i.bp to i64
  %i.cj = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.cj, 1
  %i.ck = icmp eq i32 %i.bp, 2                    ; 0 uses
  %unroll_iter = and i64 %i.cj, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod562 = trunc i64 %i.cj to i1
  br label %bb.j

bb.j:                                             ; preds = %.loopexit104.i, %.lr.ph109.i
  %.095107.i = phi ptr [ %i.bn, %.lr.ph109.i ], [ %i.dy, %.loopexit104.i ] ; 6 uses
  %.096106.i = phi i32 [ 0, %.lr.ph109.i ], [ %i.dz, %.loopexit104.i ] ; 2 uses
  call void @lv_memset(ptr noundef %i.cg, i8 noundef zeroext -1, i64 noundef %i.cf) #6
  %i.cl = load ptr, ptr %4, align 8, !tbaa !56
  %i.cm = call i32 %i.cl(ptr noundef %i.cg, i32 noundef 0, i32 noundef %.096106.i, i32 noundef %i.bp, ptr noundef nonnull %4) #6, !inline_history !12
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @lv_memset(ptr noundef nonnull %.095107.i, i8 noundef zeroext 0, i64 noundef range(i64 -4294967296, 4294967295) %i.ci) #6
  br label %.loopexit104.i

bb.l:                                             ; preds = %bb.j
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !57
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 6
  %i.cr = sdiv i32 %i.cq, %.097.i
  %i.cs = trunc nsw i32 %i.cr to i16              ; 3 uses
  store i16 %i.cs, ptr %.095107.i, align 2, !tbaa !9
  switch i32 %i.bp, label %.lr.ph.i [
    i32 1, label %.loopexit104.i
    i32 2, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %i.ct = phi i16 [ %.sink.i.1, %bb.o ], [ %i.cs, %bb.l ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.o ], [ 1, %bb.l ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %bb.l ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !57  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !57
  %i.cy = icmp eq i8 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph.i.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.cz = zext i8 %i.cv to i32
  %i.da = shl nuw nsw i32 %i.cz, 6
  %i.db = sdiv i32 %i.da, %.097.i
  %i.dc = trunc nsw i32 %i.db to i16
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sink.i = phi i16 [ %i.dc, %bb.m ], [ %i.ct, %.lr.ph.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.dd, align 2, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !57  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cg, i64 %indvars.iv.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !57
  %i.di = icmp eq i8 %i.df, %i.dh
  br i1 %i.di, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %i.dj = zext i8 %i.df to i32
  %i.dk = shl nuw nsw i32 %i.dj, 6
  %i.dl = sdiv i32 %i.dk, %.097.i
  %i.dm = trunc nsw i32 %i.dl to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sink.i.1 = phi i16 [ %i.dm, %bb.n ], [ %.sink.i, %.lr.ph.i.1 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.dn, align 2, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit104.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !13

.loopexit104.i.loopexit.unr-lcssa:                ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.loopexit104.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.l, %.loopexit104.i.loopexit.unr-lcssa
  %.epil.init = phi i16 [ %i.cs, %bb.l ], [ %.sink.i.1, %.loopexit104.i.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %bb.l ], [ %indvars.iv.next.i.1, %.loopexit104.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod562)
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !57  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !57
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %.loopexit104.i.loopexit.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.dt = zext i8 %i.dp to i32
  %i.du = shl nuw nsw i32 %i.dt, 6
  %i.dv = sdiv i32 %i.du, %.097.i
  %i.dw = trunc nsw i32 %i.dv to i16
  br label %.loopexit104.i.loopexit.epilog-lcssa

.loopexit104.i.loopexit.epilog-lcssa:             ; preds = %bb.p, %.lr.ph.i.epil.preheader
  %.sink.i.epil = phi i16 [ %i.dw, %bb.p ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.dx, align 2, !tbaa !9
  br label %.loopexit104.i

.loopexit104.i:                                   ; preds = %.loopexit104.i.loopexit.epilog-lcssa, %.loopexit104.i.loopexit.unr-lcssa, %bb.l, %bb.k
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.095107.i, i64 %i.cf
  %i.dz = add nuw nsw i32 %.096106.i, 1           ; 2 uses
  %exitcond124.not.i = icmp eq i32 %i.dz, %i.bp
  br i1 %exitcond124.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.loopexit104.i, %bb.i
  call void @lv_free(ptr noundef %i.cg) #6
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %4) #6
  %i.ea = icmp eq i32 %.097.i, 1
  br i1 %i.ea, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not121.i = icmp eq i32 %i.bp, 0
  br i1 %.not121.i, label %shadow_draw_corner_buf.exit, label %iter.check547

iter.check547:                                    ; preds = %.preheader.i
  %i.eb = mul i32 %i.bp, %i.bp                    ; 3 uses
  %umax138.i = call i32 @llvm.smax.i32(i32 %i.eb, i32 1)
  %wide.trip.count139.i = zext nneg i32 %umax138.i to i64 ; 6 uses
  %min.iters.check534 = icmp slt i32 %i.eb, 4
  br i1 %min.iters.check534, label %.lr.ph118.i.preheader, label %vector.main.loop.iter.check535

vector.main.loop.iter.check535:                   ; preds = %iter.check547
  %min.iters.check536 = icmp slt i32 %i.eb, 16
  br i1 %min.iters.check536, label %vec.epilog.ph551, label %vector.ph537

vector.ph537:                                     ; preds = %vector.main.loop.iter.check535
  %i.ec = and i64 %wide.trip.count139.i, 12
  %n.vec538 = and i64 %wide.trip.count139.i, 2147483632 ; 4 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next543, %vector.body539 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index540 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load541 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !9
  %wide.load542 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !9
  %i.ef = lshr <8 x i16> %wide.load541, splat (i16 6)
  %i.eg = lshr <8 x i16> %wide.load542, splat (i16 6)
  %i.eh = trunc <8 x i16> %i.ef to <8 x i8>
  %i.ei = trunc <8 x i16> %i.eg to <8 x i8>
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index540 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store <8 x i8> %i.eh, ptr %i.ej, align 1, !tbaa !57
  store <8 x i8> %i.ei, ptr %i.ek, align 1, !tbaa !57
  %index.next543 = add nuw i64 %index540, 16      ; 2 uses
  %i.el = icmp eq i64 %index.next543, %n.vec538
  br i1 %i.el, label %middle.block544, label %vector.body539, !llvm.loop !15

middle.block544:                                  ; preds = %vector.body539
  %cmp.n545 = icmp eq i64 %n.vec538, %wide.trip.count139.i
  br i1 %cmp.n545, label %shadow_draw_corner_buf.exit, label %vec.epilog.iter.check549

vec.epilog.iter.check549:                         ; preds = %middle.block544
  %min.epilog.iters.check550 = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check550, label %.lr.ph118.i.preheader, label %vec.epilog.ph551, !prof !60

vec.epilog.ph551:                                 ; preds = %vector.main.loop.iter.check535, %vec.epilog.iter.check549
  %vec.epilog.resume.val546 = phi i64 [ %n.vec538, %vec.epilog.iter.check549 ], [ 0, %vector.main.loop.iter.check535 ]
  %n.vec552 = and i64 %wide.trip.count139.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body553

vec.epilog.vector.body553:                        ; preds = %vec.epilog.vector.body553, %vec.epilog.ph551
  %index554 = phi i64 [ %vec.epilog.resume.val546, %vec.epilog.ph551 ], [ %index.next556, %vec.epilog.vector.body553 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index554
  %wide.load555 = load <4 x i16>, ptr %i.em, align 2, !tbaa !9
  %i.en = lshr <4 x i16> %wide.load555, splat (i16 6)
  %i.eo = trunc <4 x i16> %i.en to <4 x i8>
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index554
  store <4 x i8> %i.eo, ptr %i.ep, align 1, !tbaa !57
  %index.next556 = add nuw i64 %index554, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next556, %n.vec552
  br i1 %i.eq, label %vec.epilog.middle.block557, label %vec.epilog.vector.body553, !llvm.loop !16

vec.epilog.middle.block557:                       ; preds = %vec.epilog.vector.body553
  %cmp.n558 = icmp eq i64 %n.vec552, %wide.trip.count139.i
  br i1 %cmp.n558, label %shadow_draw_corner_buf.exit, label %.lr.ph118.i.preheader

.lr.ph118.i.preheader:                            ; preds = %iter.check547, %vec.epilog.iter.check549, %vec.epilog.middle.block557
  %indvars.iv135.i.ph = phi i64 [ 0, %iter.check547 ], [ %n.vec538, %vec.epilog.iter.check549 ], [ %n.vec552, %vec.epilog.middle.block557 ]
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %.lr.ph118.i ], [ %indvars.iv135.i.ph, %.lr.ph118.i.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv135.i
  %i.es = load i16, ptr %i.er, align 2, !tbaa !9
  %i.et = lshr i16 %i.es, 6
  %i.eu = trunc i16 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv135.i
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !57
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %shadow_draw_corner_buf.exit, label %.lr.ph118.i, !llvm.loop !17

bb.q:                                             ; preds = %._crit_edge.i
  call fastcc void @shadow_blur_corner(i32 noundef %i.bp, i32 noundef %.097.i, ptr noundef nonnull %i.bn)
  %i.ew = add nsw i32 %.097.i, %i.bv              ; 5 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  %i.ey = mul i32 %i.bp, %i.bp                    ; 7 uses
  br i1 %i.ex, label %bb.r, label %._crit_edge141.i

bb.r:                                             ; preds = %bb.q
  %.not119.i = icmp eq i32 %i.ey, 0
  br i1 %.not119.i, label %._crit_edge113.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.r
  %wide.trip.count128.i = zext i32 %i.ey to i64   ; 2 uses
  %xtraiter563 = and i64 %wide.trip.count128.i, 1
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %.epil.preheader, label %.lr.ph112.i.new

.lr.ph112.i.new:                                  ; preds = %.lr.ph112.i
  %unroll_iter566 = and i64 %wide.trip.count128.i, 4294967294
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph112.i.new
  %indvars.iv125.i = phi i64 [ 0, %.lr.ph112.i.new ], [ %indvars.iv.next126.i.1, %bb.w ] ; 3 uses
  %niter567 = phi i64 [ 0, %.lr.ph112.i.new ], [ %niter567.next.1, %bb.w ]
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv125.i ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.fb, label %bb.t [
    i16 0, label %bb.u
    i16 255, label %.sink.split.i
  ]

bb.t:                                             ; preds = %bb.s
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 6
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.s
  %.pn.i = phi i32 [ %i.fd, %bb.t ], [ 16320, %bb.s ]
  %.sink147.in.i = udiv i32 %.pn.i, %i.ew
  %.sink147.i = trunc i32 %.sink147.in.i to i16
  store i16 %.sink147.i, ptr %i.fa, align 2, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.s
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv125.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.fg, label %bb.v [
    i16 0, label %bb.w
    i16 255, label %.sink.split.i.1
  ]

bb.v:                                             ; preds = %bb.u
  %i.fh = zext i16 %i.fg to i32
  %i.fi = shl nuw nsw i32 %i.fh, 6
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.v, %bb.u
  %.pn.i.1 = phi i32 [ %i.fi, %bb.v ], [ 16320, %bb.u ]
  %.sink147.in.i.1 = udiv i32 %.pn.i.1, %i.ew
  %.sink147.i.1 = trunc i32 %.sink147.in.i.1 to i16
  store i16 %.sink147.i.1, ptr %i.ff, align 2, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.1, %bb.u
  %indvars.iv.next126.i.1 = add nuw nsw i64 %indvars.iv125.i, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge113.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !18

._crit_edge113.i.loopexit.unr-lcssa:              ; preds = %bb.w
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  br i1 %lcmp.mod564.not, label %._crit_edge113.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge113.i.loopexit.unr-lcssa, %.lr.ph112.i
  %indvars.iv125.i.epil.init = phi i64 [ 0, %.lr.ph112.i ], [ %indvars.iv.next126.i.1, %._crit_edge113.i.loopexit.unr-lcssa ]
  %lcmp.mod565 = trunc i32 %i.ey to i1
  call void @llvm.assume(i1 %lcmp.mod565)
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv125.i.epil.init ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.fk, label %bb.x [
    i16 0, label %._crit_edge113.i
    i16 255, label %.sink.split.i.epil
  ]

bb.x:                                             ; preds = %.epil.preheader
  %i.fl = zext i16 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 6
  br label %.sink.split.i.epil

.sink.split.i.epil:                               ; preds = %bb.x, %.epil.preheader
  %.pn.i.epil = phi i32 [ %i.fm, %bb.x ], [ 16320, %.epil.preheader ]
  %.sink147.in.i.epil = udiv i32 %.pn.i.epil, %i.ew
  %.sink147.i.epil = trunc i32 %.sink147.in.i.epil to i16
  store i16 %.sink147.i.epil, ptr %i.fj, align 2, !tbaa !9
  br label %._crit_edge113.i

._crit_edge113.i:                                 ; preds = %._crit_edge113.i.loopexit.unr-lcssa, %.sink.split.i.epil, %.epil.preheader, %bb.r
  call fastcc void @shadow_blur_corner(i32 noundef %i.bp, i32 noundef %i.ew, ptr noundef nonnull %i.bn)
  br label %._crit_edge141.i

._crit_edge141.i:                                 ; preds = %._crit_edge113.i, %bb.q
  %.not120.i = icmp eq i32 %i.bp, 0
  br i1 %.not120.i, label %shadow_draw_corner_buf.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge141.i
  %umax.i = call i32 @llvm.smax.i32(i32 %i.ey, i32 1)
  %wide.trip.count133.i = zext nneg i32 %umax.i to i64 ; 6 uses
  %min.iters.check = icmp slt i32 %i.ey, 4
  br i1 %min.iters.check, label %.lr.ph116.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check527 = icmp slt i32 %i.ey, 16
  br i1 %min.iters.check527, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fn = and i64 %wide.trip.count133.i, 12
  %n.vec = and i64 %wide.trip.count133.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load = load <8 x i16>, ptr %i.fo, align 2, !tbaa !9
  %wide.load528 = load <8 x i16>, ptr %i.fp, align 2, !tbaa !9
  %i.fq = trunc <8 x i16> %wide.load to <8 x i8>
  %i.fr = trunc <8 x i16> %wide.load528 to <8 x i8>
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store <8 x i8> %i.fq, ptr %i.fs, align 1, !tbaa !57
  store <8 x i8> %i.fr, ptr %i.ft, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count133.i
  br i1 %cmp.n, label %shadow_draw_corner_buf.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph116.i.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec529 = and i64 %wide.trip.count133.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index530 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next532, %vec.epilog.vector.body ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index530
  %wide.load531 = load <4 x i16>, ptr %i.fv, align 2, !tbaa !9
  %i.fw = trunc <4 x i16> %wide.load531 to <4 x i8>
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index530
  store <4 x i8> %i.fw, ptr %i.fx, align 1, !tbaa !57
  %index.next532 = add nuw i64 %index530, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next532, %n.vec529
  br i1 %i.fy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n533 = icmp eq i64 %n.vec529, %wide.trip.count133.i
  br i1 %cmp.n533, label %shadow_draw_corner_buf.exit, label %.lr.ph116.i.preheader

.lr.ph116.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv130.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec529, %vec.epilog.middle.block ]
  br label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %.lr.ph116.i.preheader, %.lr.ph116.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %.lr.ph116.i ], [ %indvars.iv130.i.ph, %.lr.ph116.i.preheader ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv130.i
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !9
  %i.gb = trunc i16 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv130.i
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !57
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next131.i, %wide.trip.count133.i
  br i1 %exitcond134.not.i, label %shadow_draw_corner_buf.exit, label %.lr.ph116.i, !llvm.loop !21

shadow_draw_corner_buf.exit:                      ; preds = %.lr.ph116.i, %.lr.ph118.i, %middle.block, %vec.epilog.middle.block, %middle.block544, %vec.epilog.middle.block557, %.preheader.i, %._crit_edge141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = trunc i8 %i.ge to i1                    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.gf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %shadow_draw_corner_buf.exit
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef %spec.select, i1 noundef zeroext true) #6
  store ptr %9, ptr %i.a, align 16, !tbaa !61
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %shadow_draw_corner_buf.exit
  %i.gg = call i32 @lv_area_get_width(ptr noundef nonnull %6) #6
  %i.gh = sext i32 %i.gg to i64
  %i.gi = call ptr @lv_malloc(i64 noundef %i.gh) #6 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @lv_memset(ptr noundef nonnull %12, i8 noundef zeroext 0, i64 noundef 72) #6
  store ptr %10, ptr %12, align 8, !tbaa !64
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %10, ptr %i.gj, align 8, !tbaa !65
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 14 uses
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !66
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 33
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gl, ptr noundef nonnull align 4 dereferenceable(3) %i.gm, i64 3, i1 false), !tbaa.struct !67
  %i.gn = load i8, ptr %i.al, align 8, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 5 uses
  store i8 %i.gn, ptr %i.go, align 8, !tbaa !68
  %i.gp = load i32, ptr %6, align 4, !tbaa !35
  %i.gq = call i32 @lv_area_get_width(ptr noundef nonnull %6) #6
  %i.gr = sdiv i32 %i.gq, 2
  %i.gs = add nsw i32 %i.gr, %i.gp                ; 4 uses
  %i.gt = load i32, ptr %i.ai, align 4, !tbaa !46
  %i.gu = call i32 @lv_area_get_height(ptr noundef nonnull %6) #6
  %i.gv = sdiv i32 %i.gu, 2
  %i.gw = add nsw i32 %i.gv, %i.gt                ; 7 uses
  %i.gx = load i32, ptr %i.ag, align 4, !tbaa !45 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 18 uses
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !45
  %i.gz = sub nsw i32 %i.gx, %i.bj
  %i.ha = add nsw i32 %i.gz, 1
  %i.hb = load i32, ptr %i.ai, align 4, !tbaa !46 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 21 uses
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !46
  %i.hd = add i32 %i.bj, -1                       ; 8 uses
  %i.he = add i32 %i.hd, %i.hb
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 22 uses
  %i.hg = call i32 @llvm.smax.i32(i32 %i.ha, i32 %i.gs)
  store i32 %i.hg, ptr %10, align 4, !tbaa !35
  %i.hh = call i32 @llvm.smin.i32(i32 %i.he, i32 %i.gw)
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !48
  %i.hi = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.hi, label %bb.aa, label %.loopexit443

bb.aa:                                            ; preds = %bb.z
  %i.hj = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.hj, label %.loopexit443, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !46
  %i.hn = load i32, ptr %i.ai, align 4, !tbaa !46
  %i.ho = sub nsw i32 %i.hm, %i.hn
  %i.hp = mul nsw i32 %i.ho, %i.bj
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %i.bn, i64 %i.hq
  %i.hs = load i32, ptr %11, align 4, !tbaa !35
  %i.ht = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.hu = xor i32 %i.ht, -1
  %.neg399 = add i32 %i.hs, %i.bj
  %i.hv = add i32 %.neg399, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hr, i64 %i.hw
  br i1 %i.gf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hy = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hz = icmp sgt i32 %i.hk, 0
  br i1 %i.hz, label %bb.ae, label %.loopexit443

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !66
  %i.ia = load i32, ptr %11, align 4, !tbaa !35
  store i32 %i.ia, ptr %10, align 4, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !45
  store i32 %i.ic, ptr %i.gy, align 4, !tbaa !45
  %i.id = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i32 2, ptr %i.id, align 8, !tbaa !69
  %i.ie = load i32, ptr %i.hl, align 4, !tbaa !46 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !48
  %.not400445 = icmp sgt i32 %i.ie, %i.ig
  br i1 %.not400445, label %.loopexit443, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.ih = sext i32 %i.bj to i64                   ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.ai
  %.0364447 = phi i32 [ %i.ie, %.lr.ph ], [ %i.in, %bb.ai ] ; 5 uses
  %.0373446 = phi ptr [ %i.hx, %.lr.ph ], [ %i.im, %bb.ai ] ; 3 uses
  store i32 %.0364447, ptr %i.hc, align 4, !tbaa !46
  store i32 %.0364447, ptr %i.hf, align 4, !tbaa !48
  br i1 %i.gf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ii = call ptr @lv_memcpy(ptr noundef %i.gi, ptr noundef %.0373446, i64 noundef %i.ih) #6 ; 0 uses
  %i.ij = load i32, ptr %11, align 4, !tbaa !35
  %i.ik = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.gi, i32 noundef %i.ij, i32 noundef %.0364447, i32 noundef %i.hk) #6 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 1
  %spec.store.select = select i1 %i.il, i32 2, i32 %i.ik
  store i32 %spec.store.select, ptr %i.id, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr %.0373446, ptr %i.gk, align 8, !tbaa !66
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.im = getelementptr inbounds i8, ptr %.0373446, i64 %i.ih
  %i.in = add nsw i32 %.0364447, 1
  %i.io = load i32, ptr %i.if, align 4, !tbaa !48
  %.not400.not = icmp slt i32 %.0364447, %i.io
  br i1 %.not400.not, label %bb.af, label %.loopexit443, !llvm.loop !22

.loopexit443:                                     ; preds = %bb.ai, %bb.ae, %bb.ad, %bb.aa, %bb.z
  %i.ip = load i32, ptr %i.ag, align 4, !tbaa !45 ; 2 uses
  store i32 %i.ip, ptr %i.gy, align 4, !tbaa !45
  %i.iq = sub nsw i32 %i.ip, %i.bj
  %i.ir = add nsw i32 %i.iq, 1
  %i.is = load i32, ptr %i.ak, align 4, !tbaa !48 ; 2 uses
  %i.it = sub nsw i32 %i.is, %i.bj
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.is, ptr %i.hf, align 4, !tbaa !48
  %i.iv = call i32 @llvm.smax.i32(i32 %i.ir, i32 %i.gs)
  store i32 %i.iv, ptr %10, align 4, !tbaa !35
  %i.iw = add nsw i32 %i.gw, 1                    ; 6 uses
  %i.ix = call i32 @llvm.smax.i32(i32 %i.iu, i32 %i.iw)
  store i32 %i.ix, ptr %i.hc, align 4, !tbaa !46
  %i.iy = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.iy, label %bb.aj, label %.loopexit442

bb.aj:                                            ; preds = %.loopexit443
  %i.iz = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.iz, label %.loopexit442, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ja = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 2 uses
  %i.jb = load i32, ptr %i.hf, align 4, !tbaa !48
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !48
  %i.je = sub nsw i32 %i.jb, %i.jd
  %i.jf = mul nsw i32 %i.je, %i.bj
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds i8, ptr %i.bn, i64 %i.jg
end_hunk_0
begin_hunk_1_@shadow_blur_corner:bb.a
  br label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.e, %.epil.preheader
  %.sink.in.epil = phi i32 [ %i.aj, %bb.e ], [ %i.ae, %.epil.preheader ]
  %.sink.epil = trunc i32 %.sink.in.epil to i16
  store i16 %.sink.epil, ptr %i.ag, align 2, !tbaa !9
  br label %.preheader130

.preheader130:                                    ; preds = %.preheader130.loopexit.unr-lcssa, %.sink.split.epil, %.epil.preheader, %._crit_edge137
  br i1 %i.f, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader130
  %i.ak = add nsw i32 %i.b, %i.a
  %i.al = add nsw i32 %0, -1
  %i.am = sext i32 %i.a to i64
  %wide.trip.count170 = zext nneg i32 %0 to i64   ; 4 uses
  %xtraiter176 = and i64 %wide.trip.count170, 7   ; 3 uses
  %i.an = icmp ult i32 %0, 8
  %unroll_iter179 = and i64 %wide.trip.count170, 2147483640
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  %lcmp.mod178 = icmp ne i64 %xtraiter176, 0
  br label %.lr.ph142.us

.lr.ph142.us:                                     ; preds = %._crit_edge.us149, %.lr.ph147
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge.us149 ], [ 0, %.lr.ph147 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv166 ; 4 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !9
  %i.aq = zext i16 %i.ap to i32
  %i.ar = mul nsw i32 %1, %i.aq
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %indvars.iv166
  %i.as = getelementptr [2 x i8], ptr %2, i64 %indvars.iv166
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph142.us, %bb.f
  %indvars.iv156 = phi i64 [ 0, %.lr.ph142.us ], [ %indvars.iv.next157, %bb.f ] ; 4 uses
  %.0109141.us = phi i32 [ %i.ar, %.lr.ph142.us ], [ %i.be, %bb.f ] ; 2 uses
  %.1140.us = phi ptr [ %i.ao, %.lr.ph142.us ], [ %i.bf, %bb.f ] ; 2 uses
  %i.at = tail call i32 @llvm.smax.i32(i32 %.0109141.us, i32 0)
  %i.au = lshr i32 %i.at, 6
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv156
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !9
  %i.ax = sub nsw i64 %indvars.iv156, %i.am       ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 1
  %i.az = mul nsw i64 %i.ax, %i.c
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.az
  %.0108.in.in.us = select i1 %i.ay, ptr %.1140.us, ptr %gep
  %.0108.in.us = load i16, ptr %.0108.in.in.us, align 2, !tbaa !9
  %.0108.us = zext i16 %.0108.in.us to i32
  %i.ba = sub i32 %.0109141.us, %.0108.us
  %i.bb = trunc nuw nsw i64 %indvars.iv156 to i32
  %i.bc = add i32 %i.ak, %i.bb
  %.pn129.us = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.al)
  %.pn128.us = mul nsw i32 %.pn129.us, %0
  %i.bd = sext i32 %.pn128.us to i64
  %.0.in.in.us = getelementptr [2 x i8], ptr %i.as, i64 %i.bd
  %.0.in.us = load i16, ptr %.0.in.in.us, align 2, !tbaa !9
  %.0.us = zext i16 %.0.in.us to i32
  %i.be = add i32 %i.ba, %.0.us
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.1140.us, i64 %i.c
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count170
  br i1 %exitcond160.not, label %.lr.ph145.us.preheader, label %bb.f, !llvm.loop !72

.lr.ph145.us.preheader:                           ; preds = %bb.f
  br i1 %i.an, label %.lr.ph145.us.epil.preheader, label %.lr.ph145.us

.lr.ph145.us:                                     ; preds = %.lr.ph145.us.preheader, %.lr.ph145.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.7, %.lr.ph145.us ], [ 0, %.lr.ph145.us.preheader ] ; 9 uses
  %.2144.us = phi ptr [ %i.ck, %.lr.ph145.us ], [ %i.ao, %.lr.ph145.us.preheader ] ; 2 uses
  %niter180 = phi i64 [ %niter180.next.7, %.lr.ph145.us ], [ 0, %.lr.ph145.us.preheader ]
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !9
  store i16 %i.bh, ptr %.2144.us, align 2, !tbaa !9
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.2144.us, i64 %i.c ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !9
  store i16 %i.bl, ptr %i.bi, align 2, !tbaa !9
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.c ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !9
  store i16 %i.bp, ptr %i.bm, align 2, !tbaa !9
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.c ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !9
  store i16 %i.bt, ptr %i.bq, align 2, !tbaa !9
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.c ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !9
  store i16 %i.bx, ptr %i.bu, align 2, !tbaa !9
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.c ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !9
  store i16 %i.cb, ptr %i.by, align 2, !tbaa !9
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.c ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !9
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !9
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.c ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !9
  store i16 %i.cj, ptr %i.cg, align 2, !tbaa !9
  %indvars.iv.next162.7 = add nuw nsw i64 %indvars.iv161, 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %niter180.next.7 = add i64 %niter180, 8         ; 2 uses
  %niter180.ncmp.7 = icmp eq i64 %niter180.next.7, %unroll_iter179
  br i1 %niter180.ncmp.7, label %._crit_edge.us149.unr-lcssa, label %.lr.ph145.us, !llvm.loop !73

._crit_edge.us149.unr-lcssa:                      ; preds = %.lr.ph145.us
  br i1 %lcmp.mod177.not, label %._crit_edge.us149, label %.lr.ph145.us.epil.preheader

.lr.ph145.us.epil.preheader:                      ; preds = %._crit_edge.us149.unr-lcssa, %.lr.ph145.us.preheader
  %indvars.iv161.epil.init = phi i64 [ 0, %.lr.ph145.us.preheader ], [ %indvars.iv.next162.7, %._crit_edge.us149.unr-lcssa ]
  %.2144.us.epil.init = phi ptr [ %i.ao, %.lr.ph145.us.preheader ], [ %i.ck, %._crit_edge.us149.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph145.us.epil

.lr.ph145.us.epil:                                ; preds = %.lr.ph145.us.epil, %.lr.ph145.us.epil.preheader
  %indvars.iv161.epil = phi i64 [ %indvars.iv.next162.epil, %.lr.ph145.us.epil ], [ %indvars.iv161.epil.init, %.lr.ph145.us.epil.preheader ] ; 2 uses
  %.2144.us.epil = phi ptr [ %i.cn, %.lr.ph145.us.epil ], [ %.2144.us.epil.init, %.lr.ph145.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph145.us.epil ], [ 0, %.lr.ph145.us.epil.preheader ]
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161.epil
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9
  store i16 %i.cm, ptr %.2144.us.epil, align 2, !tbaa !9
  %indvars.iv.next162.epil = add nuw nsw i64 %indvars.iv161.epil, 1
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.2144.us.epil, i64 %i.c
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter176
  br i1 %epil.iter.cmp.not, label %._crit_edge.us149, label %.lr.ph145.us.epil, !llvm.loop !74

._crit_edge.us149:                                ; preds = %.lr.ph145.us.epil, %._crit_edge.us149.unr-lcssa
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge148, label %.lr.ph142.us, !llvm.loop !75

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv152 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next153.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv152 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.cp, label %bb.h [
    i16 0, label %bb.i
    i16 16320, label %.sink.split
  ]

bb.h:                                             ; preds = %bb.g
  %i.cq = zext i16 %i.cp to i32
  %i.cr = sdiv i32 %i.cq, %1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink.in = phi i32 [ %i.cr, %bb.h ], [ %i.ae, %bb.g ]
  %.sink = trunc i32 %.sink.in to i16
  store i16 %.sink, ptr %i.co, align 2, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv152
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.cu, label %bb.j [
    i16 0, label %bb.k
    i16 16320, label %.sink.split.1
  ]

bb.j:                                             ; preds = %bb.i
  %i.cv = zext i16 %i.cu to i32
  %i.cw = sdiv i32 %i.cv, %1
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.j, %bb.i
  %.sink.in.1 = phi i32 [ %i.cw, %bb.j ], [ %i.ae, %bb.i ]
  %.sink.1 = trunc i32 %.sink.in.1 to i16
  store i16 %.sink.1, ptr %i.ct, align 2, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.1, %bb.i
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader130.loopexit.unr-lcssa, label %bb.g, !llvm.loop !76

._crit_edge148:                                   ; preds = %._crit_edge.us149, %.preheader130
  tail call void @lv_free(ptr noundef %i.e) #6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{null}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !58, !59}
!16 = distinct !{!16, !10, !58, !59}
!17 = distinct !{!17, !10, !59, !58}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !58, !59}
!20 = distinct !{!20, !10, !58, !59}
!21 = distinct !{!21, !10, !59, !58}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!35 = !{!34, !5, i64 0}
!36 = !{!"any pointer", !4, i64 0}
!37 = !{!"p1 _ZTS9_lv_obj_t", !36, i64 0}
!38 = !{!"p1 _ZTS11_lv_layer_t", !36, i64 0}
!39 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!40 = !{!"long", !4, i64 0}
!41 = !{!"", !37, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !38, i64 24, !8, i64 32, !8, i64 34, !39, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !40, i64 48, !36, i64 56}
!42 = !{!"", !41, i64 0, !5, i64 64, !39, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !4, i64 88, !4, i64 89}
!43 = !{!42, !5, i64 80}
!44 = !{!42, !5, i64 76}
!45 = !{!34, !5, i64 8}
!46 = !{!34, !5, i64 4}
!47 = !{!42, !5, i64 84}
!48 = !{!34, !5, i64 12}
!49 = !{!42, !5, i64 72}
!50 = !{!42, !4, i64 88}
!51 = !{!5, !5, i64 0}
!52 = !{!42, !5, i64 64}
!53 = !{!"_lv_draw_sw_mask_common_dsc_t", !36, i64 0, !5, i64 8}
!54 = !{!"", !34, i64 0, !5, i64 16, !4, i64 20}
!55 = !{!"_lv_draw_sw_mask_radius_param_t", !53, i64 0, !54, i64 16, !36, i64 40}
!56 = !{!55, !36, i64 0}
!57 = !{!4, !4, i64 0}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"branch_weights", i32 4, i32 12}
!61 = !{!36, !36, i64 0}
!62 = !{!"p1 omnipotent char", !36, i64 0}
!63 = !{!"_lv_draw_sw_blend_dsc_t", !36, i64 0, !36, i64 8, !5, i64 16, !5, i64 20, !36, i64 24, !4, i64 32, !39, i64 33, !62, i64 40, !5, i64 48, !36, i64 56, !5, i64 64, !5, i64 68}
!64 = !{!63, !36, i64 0}
!65 = !{!63, !36, i64 56}
!66 = !{!63, !62, i64 40}
!67 = !{i64 0, i64 1, !57, i64 1, i64 1, !57, i64 2, i64 1, !57}
!68 = !{!63, !4, i64 32}
!69 = !{!63, !5, i64 48}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
end_hunk_1
