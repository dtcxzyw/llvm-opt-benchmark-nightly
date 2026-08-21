inline.NumInlined: 199
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@bitplane_decoding:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index344 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next345, %vec.epilog.vector.body ] ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %.01825.us.us.i, i64 %index344
  store <8 x i8> zeroinitializer, ptr %i.li, align 1, !tbaa !13
  %index.next345 = add nuw i64 %index344, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next345, %n.vec343
  br i1 %i.lj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !191

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n346, label %..loopexit21_crit_edge.us.us.i, label %.preheader.us.us.i.preheader

.preheader.us.us.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec343, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod382.not, label %.preheader.us.us.i.prol.loopexit, label %.preheader.us.us.i.prol

.preheader.us.us.i.prol:                          ; preds = %.preheader.us.us.i.preheader, %.preheader.us.us.i.prol
  %indvars.iv44.i.prol = phi i64 [ %indvars.iv.next45.i.prol, %.preheader.us.us.i.prol ], [ %indvars.iv44.i.ph, %.preheader.us.us.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.us.us.i.prol ], [ 0, %.preheader.us.us.i.preheader ]
  %i.lk = mul nsw i64 %indvars.iv44.i.prol, %i.kq
  %i.ll = getelementptr inbounds i8, ptr %.01825.us.us.i, i64 %i.lk
  store i8 0, ptr %i.ll, align 1, !tbaa !13
  %indvars.iv.next45.i.prol = add nuw nsw i64 %indvars.iv44.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter381
  br i1 %prol.iter.cmp.not, label %.preheader.us.us.i.prol.loopexit, label %.preheader.us.us.i.prol, !llvm.loop !192

.preheader.us.us.i.prol.loopexit:                 ; preds = %.preheader.us.us.i.prol, %.preheader.us.us.i.preheader
  %indvars.iv44.i.unr = phi i64 [ %indvars.iv44.i.ph, %.preheader.us.us.i.preheader ], [ %indvars.iv.next45.i.prol, %.preheader.us.us.i.prol ]
  %i.lm = sub nsw i64 %indvars.iv44.i.ph, %wide.trip.count.i241
  %i.ln = icmp ugt i64 %i.lm, -4
  br i1 %i.ln, label %..loopexit21_crit_edge.us.us.i, label %.preheader.us.us.i

.preheader20.us.us.i:                             ; preds = %.lr.ph28.split.us.split.us.i, %.preheader20.us.us.i
  %indvars.iv.i242 = phi i64 [ %indvars.iv.next.i243, %.preheader20.us.us.i ], [ 0, %.lr.ph28.split.us.split.us.i ] ; 2 uses
  %i.lo = load i32, ptr %i.k, align 8, !tbaa !14  ; 4 uses
  %i.lp = load ptr, ptr %i.a, align 16, !tbaa !17
  %i.lq = lshr i32 %i.lo, 3
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !13
  %i.lu = load i32, ptr %i.r, align 16, !tbaa !16
  %i.lv = icmp slt i32 %i.lo, %i.lu
  %i.lw = zext i1 %i.lv to i32
  %spec.select.i19.us.us.i = add i32 %i.lo, %i.lw
  %i.lx = zext i8 %i.lt to i32
  %i.ly = and i32 %i.lo, 7
  %i.lz = shl nuw nsw i32 %i.lx, %i.ly
  store i32 %spec.select.i19.us.us.i, ptr %i.k, align 8, !tbaa !14
  %i.ma = trunc i32 %i.lz to i8
  %i.mb = lshr i8 %i.ma, 7
  %i.mc = mul nsw i64 %indvars.iv.i242, %i.kq
  %i.md = getelementptr inbounds i8, ptr %.01825.us.us.i, i64 %i.mc
  store i8 %i.mb, ptr %i.md, align 1, !tbaa !13
  %indvars.iv.next.i243 = add nuw nsw i64 %indvars.iv.i242, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next.i243, %wide.trip.count.i241
  br i1 %exitcond43.not.i, label %..loopexit21_crit_edge.us.us.i, label %.preheader20.us.us.i, !llvm.loop !193

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i.3, %.preheader.us.us.i ], [ %indvars.iv44.i.unr, %.preheader.us.us.i.prol.loopexit ] ; 5 uses
  %i.me = mul nsw i64 %indvars.iv44.i, %i.kq
  %i.mf = getelementptr inbounds i8, ptr %.01825.us.us.i, i64 %i.me
  store i8 0, ptr %i.mf, align 1, !tbaa !13
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  %i.mg = mul nsw i64 %indvars.iv.next45.i, %i.kq
  %i.mh = getelementptr inbounds i8, ptr %.01825.us.us.i, i64 %i.mg
  store i8 0, ptr %i.mh, align 1, !tbaa !13
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i, 2
  %i.mi = mul nsw i64 %indvars.iv.next45.i.1, %i.kq
  %i.mj = getelementptr inbounds i8, ptr %.01825.us.us.i, i64 %i.mi
  store i8 0, ptr %i.mj, align 1, !tbaa !13
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i, 3
  %i.mk = mul nsw i64 %indvars.iv.next45.i.2, %i.kq
  %i.ml = getelementptr inbounds i8, ptr %.01825.us.us.i, i64 %i.mk
  store i8 0, ptr %i.ml, align 1, !tbaa !13
  %indvars.iv.next45.i.3 = add nuw nsw i64 %indvars.iv44.i, 4 ; 2 uses
  %exitcond48.not.i.3 = icmp eq i64 %indvars.iv.next45.i.3, %wide.trip.count.i241
  br i1 %exitcond48.not.i.3, label %..loopexit21_crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !194

..loopexit21_crit_edge.us.us.i:                   ; preds = %.preheader20.us.us.i, %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i, %middle.block, %vec.epilog.middle.block
  %i.mm = getelementptr inbounds nuw i8, ptr %.01825.us.us.i, i64 1
  %i.mn = add nuw nsw i32 %.01727.us.us.i, 1      ; 2 uses
  %exitcond49.not.i = icmp eq i32 %i.mn, %i.c
  br i1 %exitcond49.not.i, label %decode_rowskip.exit, label %.lr.ph28.split.us.split.us.i, !llvm.loop !195

.lr.ph28.split.split.i:                           ; preds = %.lr.ph28.i
  %.promoted.i = load i32, ptr %i.k, align 8, !tbaa !14 ; 2 uses
  %.pre.i = load i32, ptr %i.r, align 16, !tbaa !16 ; 5 uses
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.mo = icmp ult i32 %i.c, 4
  br i1 %i.mo, label %.epil.preheader, label %.lr.ph28.split.split.i.new

.lr.ph28.split.split.i.new:                       ; preds = %.lr.ph28.split.split.i
  %unroll_iter = and i32 %i.c, 2147483644
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph28.split.split.i.new
  %spec.select.i39.i = phi i32 [ %.promoted.i, %.lr.ph28.split.split.i.new ], [ %spec.select.i.i239.3, %bb.x ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph28.split.split.i.new ], [ %niter.next.3, %bb.x ]
  %i.mp = icmp slt i32 %spec.select.i39.i, %.pre.i
  %i.mq = zext i1 %i.mp to i32
  %spec.select.i.i239 = add i32 %spec.select.i39.i, %i.mq ; 2 uses
  %i.mr = icmp slt i32 %spec.select.i.i239, %.pre.i
  %i.ms = zext i1 %i.mr to i32
  %spec.select.i.i239.1 = add i32 %spec.select.i.i239, %i.ms ; 2 uses
  %i.mt = icmp slt i32 %spec.select.i.i239.1, %.pre.i
  %i.mu = zext i1 %i.mt to i32
  %spec.select.i.i239.2 = add i32 %spec.select.i.i239.1, %i.mu ; 2 uses
  %i.mv = icmp slt i32 %spec.select.i.i239.2, %.pre.i
  %i.mw = zext i1 %i.mv to i32
  %spec.select.i.i239.3 = add i32 %spec.select.i.i239.2, %i.mw ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit53.i.unr-lcssa, label %bb.x, !llvm.loop !195

._crit_edge.loopexit53.i.unr-lcssa:               ; preds = %bb.x
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit53.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit53.i.unr-lcssa, %.lr.ph28.split.split.i
  %spec.select.i39.i.epil.init = phi i32 [ %.promoted.i, %.lr.ph28.split.split.i ], [ %spec.select.i.i239.3, %._crit_edge.loopexit53.i.unr-lcssa ]
  %lcmp.mod380 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod380)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %spec.select.i39.i.epil = phi i32 [ %spec.select.i39.i.epil.init, %.epil.preheader ], [ %spec.select.i.i239.epil, %bb.y ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.mx = icmp slt i32 %spec.select.i39.i.epil, %.pre.i
  %i.my = zext i1 %i.mx to i32
  %spec.select.i.i239.epil = add i32 %spec.select.i39.i.epil, %i.my ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit53.i, label %bb.y, !llvm.loop !196

._crit_edge.loopexit53.i:                         ; preds = %bb.y, %._crit_edge.loopexit53.i.unr-lcssa
  %spec.select.i.i239.lcssa = phi i32 [ %spec.select.i.i239.3, %._crit_edge.loopexit53.i.unr-lcssa ], [ %spec.select.i.i239.epil, %bb.y ]
  store i32 %spec.select.i.i239.lcssa, ptr %i.k, align 8, !tbaa !14
  br label %decode_rowskip.exit.thread

decode_rowskip.exit:                              ; preds = %..loopexit21_crit_edge.us.us.i, %.preheader.i, %..loopexit_crit_edge.us.i, %bb.g, %bb.f, %bb.l, %._crit_edge256, %bb.s, %bb.r
  switch i16 %i.ak, label %decode_rowskip.exit.thread [
    i16 4, label %bb.z
    i16 2, label %bb.z
  ]

bb.z:                                             ; preds = %decode_rowskip.exit, %decode_rowskip.exit
  %i.mz = load i8, ptr %0, align 1, !tbaa !13
  %i.na = trunc nuw nsw i32 %i.z to i8            ; 4 uses
  %i.nb = xor i8 %i.mz, %i.na
  store i8 %i.nb, ptr %0, align 1, !tbaa !13
  %i.nc = icmp sgt i32 %i.c, 1                    ; 2 uses
  br i1 %i.nc, label %.lr.ph268.preheader, label %.preheader244

.lr.ph268.preheader:                              ; preds = %bb.z
  %wide.trip.count = zext nneg i32 %i.c to i64
  %load_initial372 = load i8, ptr %0, align 1     ; 2 uses
  %i.nd = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter383 = and i64 %i.nd, 3                 ; 3 uses
  %i.ne = add nsw i32 %i.c, -2
  %i.nf = icmp ult i32 %i.ne, 3
  br i1 %i.nf, label %.lr.ph268.epil.preheader, label %.lr.ph268.preheader.new

.lr.ph268.preheader.new:                          ; preds = %.lr.ph268.preheader
  %unroll_iter387 = and i64 %i.nd, -4
  br label %.lr.ph268

.preheader244.loopexit.unr-lcssa:                 ; preds = %.lr.ph268
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %.preheader244, label %.lr.ph268.epil.preheader

.lr.ph268.epil.preheader:                         ; preds = %.preheader244.loopexit.unr-lcssa, %.lr.ph268.preheader
  %store_forwarded373.epil.init = phi i8 [ %load_initial372, %.lr.ph268.preheader ], [ %i.od, %.preheader244.loopexit.unr-lcssa ]
  %indvars.iv287.epil.init = phi i64 [ 1, %.lr.ph268.preheader ], [ %indvars.iv.next288.3, %.preheader244.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter383, 0
  tail call void @llvm.assume(i1 %lcmp.mod386)
  br label %.lr.ph268.epil

.lr.ph268.epil:                                   ; preds = %.lr.ph268.epil, %.lr.ph268.epil.preheader
  %store_forwarded373.epil = phi i8 [ %store_forwarded373.epil.init, %.lr.ph268.epil.preheader ], [ %i.ni, %.lr.ph268.epil ]
  %indvars.iv287.epil = phi i64 [ %indvars.iv287.epil.init, %.lr.ph268.epil.preheader ], [ %indvars.iv.next288.epil, %.lr.ph268.epil ] ; 2 uses
  %epil.iter384 = phi i64 [ 0, %.lr.ph268.epil.preheader ], [ %epil.iter384.next, %.lr.ph268.epil ]
  %i.ng = getelementptr i8, ptr %0, i64 %indvars.iv287.epil ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.ni = xor i8 %i.nh, %store_forwarded373.epil  ; 2 uses
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !13
  %indvars.iv.next288.epil = add nuw nsw i64 %indvars.iv287.epil, 1
  %epil.iter384.next = add i64 %epil.iter384, 1   ; 2 uses
  %epil.iter384.cmp.not = icmp eq i64 %epil.iter384.next, %xtraiter383
  br i1 %epil.iter384.cmp.not, label %.preheader244, label %.lr.ph268.epil, !llvm.loop !197

.preheader244:                                    ; preds = %.preheader244.loopexit.unr-lcssa, %.lr.ph268.epil, %bb.z
  %i.nj = icmp sgt i32 %i.h, 1
  br i1 %i.nj, label %.lr.ph273, label %.loopexit

.lr.ph273:                                        ; preds = %.preheader244
  %i.nk = sext i32 %i.j to i64
  %i.nl = sub nsw i32 0, %i.j
  %i.nm = sext i32 %i.nl to i64
  %wide.trip.count293 = zext i32 %i.c to i64
  %i.nn = add nsw i64 %wide.trip.count293, -1     ; 3 uses
  %xtraiter389 = and i64 %i.nn, 1
  %i.no = icmp eq i32 %i.c, 2
  %unroll_iter393 = and i64 %i.nn, -2
  %lcmp.mod391.not = icmp eq i64 %xtraiter389, 0
  %lcmp.mod392 = trunc i64 %i.nn to i1
  br label %bb.aa

.lr.ph268:                                        ; preds = %.lr.ph268, %.lr.ph268.preheader.new
  %store_forwarded373 = phi i8 [ %load_initial372, %.lr.ph268.preheader.new ], [ %i.od, %.lr.ph268 ]
  %indvars.iv287 = phi i64 [ 1, %.lr.ph268.preheader.new ], [ %indvars.iv.next288.3, %.lr.ph268 ] ; 5 uses
  %niter388 = phi i64 [ 0, %.lr.ph268.preheader.new ], [ %niter388.next.3, %.lr.ph268 ]
  %i.np = getelementptr i8, ptr %0, i64 %indvars.iv287 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !13
  %i.nr = xor i8 %i.nq, %store_forwarded373       ; 2 uses
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !13
  %i.ns = getelementptr i8, ptr %0, i64 %indvars.iv287
  %i.nt = getelementptr i8, ptr %i.ns, i64 1      ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !13
  %i.nv = xor i8 %i.nu, %i.nr                     ; 2 uses
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !13
  %i.nw = getelementptr i8, ptr %0, i64 %indvars.iv287
  %i.nx = getelementptr i8, ptr %i.nw, i64 2      ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !13
  %i.nz = xor i8 %i.ny, %i.nv                     ; 2 uses
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !13
  %i.oa = getelementptr i8, ptr %0, i64 %indvars.iv287
  %i.ob = getelementptr i8, ptr %i.oa, i64 3      ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !13
  %i.od = xor i8 %i.oc, %i.nz                     ; 3 uses
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !13
  %indvars.iv.next288.3 = add nuw nsw i64 %indvars.iv287, 4 ; 2 uses
  %niter388.next.3 = add nuw i64 %niter388, 4     ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %.preheader244.loopexit.unr-lcssa, label %.lr.ph268, !llvm.loop !198

bb.aa:                                            ; preds = %.lr.ph273, %._crit_edge
  %.6272 = phi ptr [ %0, %.lr.ph273 ], [ %i.oe, %._crit_edge ] ; 4 uses
  %.4200271 = phi i32 [ 1, %.lr.ph273 ], [ %i.oy, %._crit_edge ]
  %i.oe = getelementptr inbounds i8, ptr %.6272, i64 %i.nk ; 8 uses
  %i.of = getelementptr inbounds i8, ptr %i.oe, i64 %i.nm
  %i.og = load i8, ptr %i.of, align 1, !tbaa !13
  %i.oh = load i8, ptr %i.oe, align 1, !tbaa !13
  %i.oi = xor i8 %i.oh, %i.og
  store i8 %i.oi, ptr %i.oe, align 1, !tbaa !13
  br i1 %i.nc, label %.lr.ph270.preheader, label %._crit_edge

.lr.ph270.preheader:                              ; preds = %bb.aa
  %load_initial = load i8, ptr %i.oe, align 1     ; 2 uses
  br i1 %i.no, label %.lr.ph270.epil.preheader, label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph270.preheader, %.lr.ph270
  %store_forwarded = phi i8 [ %i.os, %.lr.ph270 ], [ %load_initial, %.lr.ph270.preheader ] ; 2 uses
  %indvars.iv290 = phi i64 [ %indvars.iv.next291.1, %.lr.ph270 ], [ 1, %.lr.ph270.preheader ] ; 4 uses
  %niter394 = phi i64 [ %niter394.next.1, %.lr.ph270 ], [ 0, %.lr.ph270.preheader ]
  %i.oj = getelementptr i8, ptr %i.oe, i64 %indvars.iv290 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.6272, i64 %indvars.iv290
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !13
  %.not226 = icmp eq i8 %store_forwarded, %i.ol
  %i.om = load i8, ptr %i.oj, align 1, !tbaa !13
  %. = select i1 %.not226, i8 %store_forwarded, i8 %i.na
  %i.on = xor i8 %i.om, %.                        ; 3 uses
  store i8 %i.on, ptr %i.oj, align 1, !tbaa !13
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.oo = getelementptr i8, ptr %i.oe, i64 %indvars.iv.next291 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.6272, i64 %indvars.iv.next291
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !13
  %.not226.1 = icmp eq i8 %i.on, %i.oq
  %i.or = load i8, ptr %i.oo, align 1, !tbaa !13
  %..1 = select i1 %.not226.1, i8 %i.on, i8 %i.na
  %i.os = xor i8 %i.or, %..1                      ; 3 uses
  store i8 %i.os, ptr %i.oo, align 1, !tbaa !13
  %indvars.iv.next291.1 = add nuw nsw i64 %indvars.iv290, 2 ; 2 uses
  %niter394.next.1 = add nuw i64 %niter394, 2     ; 2 uses
  %niter394.ncmp.1 = icmp eq i64 %niter394.next.1, %unroll_iter393
  br i1 %niter394.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph270, !llvm.loop !199

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph270
  br i1 %lcmp.mod391.not, label %._crit_edge, label %.lr.ph270.epil.preheader

.lr.ph270.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph270.preheader
  %store_forwarded.epil.init = phi i8 [ %load_initial, %.lr.ph270.preheader ], [ %i.os, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv290.epil.init = phi i64 [ 1, %.lr.ph270.preheader ], [ %indvars.iv.next291.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod392)
  %i.ot = getelementptr i8, ptr %i.oe, i64 %indvars.iv290.epil.init ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.6272, i64 %indvars.iv290.epil.init
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !13
  %.not226.epil = icmp eq i8 %store_forwarded.epil.init, %i.ov
  %i.ow = load i8, ptr %i.ot, align 1, !tbaa !13
  %..epil = select i1 %.not226.epil, i8 %store_forwarded.epil.init, i8 %i.na
  %i.ox = xor i8 %i.ow, %..epil
  store i8 %i.ox, ptr %i.ot, align 1, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph270.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.aa
  %i.oy = add nuw nsw i32 %.4200271, 1            ; 2 uses
  %exitcond295.not = icmp eq i32 %i.oy, %i.h
  br i1 %exitcond295.not, label %.loopexit, label %bb.aa, !llvm.loop !200

decode_rowskip.exit.thread:                       ; preds = %bb.t, %bb.w, %._crit_edge.loopexit53.i, %bb.a, %decode_rowskip.exit
  %.not224 = icmp eq i32 %i.z, 0
  br i1 %.not224, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %decode_rowskip.exit.thread
  %i.oz = mul nsw i32 %i.j, %i.h                  ; 4 uses
  %i.pa = icmp sgt i32 %i.oz, 0
  br i1 %i.pa, label %iter.check359, label %.loopexit

iter.check359:                                    ; preds = %.preheader
  %wide.trip.count299 = zext nneg i32 %i.oz to i64 ; 6 uses
  %min.iters.check347 = icmp ult i32 %i.oz, 4
  br i1 %min.iters.check347, label %.lr.ph275.preheader, label %vector.main.loop.iter.check348

vector.main.loop.iter.check348:                   ; preds = %iter.check359
  %min.iters.check349 = icmp ult i32 %i.oz, 32
  br i1 %min.iters.check349, label %vec.epilog.ph363, label %vector.ph350

vector.ph350:                                     ; preds = %vector.main.loop.iter.check348
  %i.pb = and i64 %wide.trip.count299, 28
  %n.vec351 = and i64 %wide.trip.count299, 2147483616 ; 4 uses
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next355, %vector.body352 ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 %index353 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.pc, align 1, !tbaa !13
  %wide.load354 = load <16 x i8>, ptr %i.pd, align 1, !tbaa !13
  %i.pe = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.pf = icmp eq <16 x i8> %wide.load354, zeroinitializer
  %i.pg = zext <16 x i1> %i.pe to <16 x i8>
  %i.ph = zext <16 x i1> %i.pf to <16 x i8>
  store <16 x i8> %i.pg, ptr %i.pc, align 1, !tbaa !13
  store <16 x i8> %i.ph, ptr %i.pd, align 1, !tbaa !13
  %index.next355 = add nuw i64 %index353, 32      ; 2 uses
  %i.pi = icmp eq i64 %index.next355, %n.vec351
  br i1 %i.pi, label %middle.block356, label %vector.body352, !llvm.loop !201

middle.block356:                                  ; preds = %vector.body352
  %cmp.n357 = icmp eq i64 %n.vec351, %wide.trip.count299
  br i1 %cmp.n357, label %.loopexit, label %vec.epilog.iter.check361

vec.epilog.iter.check361:                         ; preds = %middle.block356
  %min.epilog.iters.check362 = icmp eq i64 %i.pb, 0
  br i1 %min.epilog.iters.check362, label %.lr.ph275.preheader, label %vec.epilog.ph363, !prof !202

vec.epilog.ph363:                                 ; preds = %vector.main.loop.iter.check348, %vec.epilog.iter.check361
  %vec.epilog.resume.val358 = phi i64 [ %n.vec351, %vec.epilog.iter.check361 ], [ 0, %vector.main.loop.iter.check348 ]
  %n.vec364 = and i64 %wide.trip.count299, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body365

vec.epilog.vector.body365:                        ; preds = %vec.epilog.vector.body365, %vec.epilog.ph363
  %index366 = phi i64 [ %vec.epilog.resume.val358, %vec.epilog.ph363 ], [ %index.next368, %vec.epilog.vector.body365 ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 %index366 ; 2 uses
  %wide.load367 = load <4 x i8>, ptr %i.pj, align 1, !tbaa !13
  %i.pk = icmp eq <4 x i8> %wide.load367, zeroinitializer
  %i.pl = zext <4 x i1> %i.pk to <4 x i8>
  store <4 x i8> %i.pl, ptr %i.pj, align 1, !tbaa !13
  %index.next368 = add nuw i64 %index366, 4       ; 2 uses
  %i.pm = icmp eq i64 %index.next368, %n.vec364
  br i1 %i.pm, label %vec.epilog.middle.block369, label %vec.epilog.vector.body365, !llvm.loop !203

vec.epilog.middle.block369:                       ; preds = %vec.epilog.vector.body365
  %cmp.n370 = icmp eq i64 %n.vec364, %wide.trip.count299
  br i1 %cmp.n370, label %.loopexit, label %.lr.ph275.preheader

.lr.ph275.preheader:                              ; preds = %iter.check359, %vec.epilog.iter.check361, %vec.epilog.middle.block369
  %indvars.iv296.ph = phi i64 [ 0, %iter.check359 ], [ %n.vec351, %vec.epilog.iter.check361 ], [ %n.vec364, %vec.epilog.middle.block369 ]
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %.lr.ph275
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.lr.ph275 ], [ %indvars.iv296.ph, %.lr.ph275.preheader ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv296 ; 2 uses
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !13
  %.not225 = icmp eq i8 %i.po, 0
  %i.pp = zext i1 %.not225 to i8
  store i8 %i.pp, ptr %i.pn, align 1, !tbaa !13
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit, label %.lr.ph275, !llvm.loop !204

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph275, %middle.block356, %vec.epilog.middle.block369, %.preheader244, %.preheader, %decode_rowskip.exit.thread
  %i.pq = shl nsw i32 %i.al, 1
  %i.pr = or disjoint i32 %i.pq, %i.z
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.split.us263, %.split.us, %bb.b
  %.0206 = phi i32 [ %i.pr, %.loopexit ], [ %i.z, %bb.b ], [ -1, %.split.us263 ], [ -1, %.split.us ]
  ret i32 %.0206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @vop_dquant_decoding(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6076
  %i.c = load i32, ptr %i.b, align 4, !tbaa !103
  %.not = icmp eq i32 %i.c, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 5 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !14 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %.pre25 = load i32, ptr %.phi.trans.insert24, align 8, !tbaa !16
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17   ; 7 uses
  %i.e = lshr i32 %.pre, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16   ; 7 uses
  %i.k = icmp slt i32 %.pre, %i.j
  %i.l = zext i1 %i.k to i32
  %spec.select.i = add i32 %.pre, %i.l            ; 4 uses
  %i.m = zext i8 %i.h to i32
  %i.n = and i32 %.pre, 7
  %i.o = shl nuw nsw i32 %i.m, %i.n
  %i.p = lshr i32 %i.o, 7
  store i32 %spec.select.i, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.q = and i32 %i.p, 1                          ; 2 uses
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6408
  store i8 %i.r, ptr %i.s, align 8, !tbaa !140
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i32 %spec.select.i, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 1, !tbaa !13
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = and i32 %spec.select.i, 7
  %i.z = shl i32 %i.x, %i.y
  %i.aa = lshr i32 %i.z, 30
  %i.ab = add i32 %spec.select.i, 2
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.ab) ; 9 uses
  store i32 %i.ac, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.ad = trunc nuw nsw i32 %i.aa to i8           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6409
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !205
  switch i8 %i.ad, label %default.unreachable [
    i8 2, label %bb.d
    i8 1, label %bb.d
    i8 3, label %bb.e
    i8 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.af = lshr i32 %i.ac, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !13
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %i.ac, 7
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.al, 30
  %i.an = add i32 %i.ac, 2
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.an) ; 2 uses
  store i32 %i.ao, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.ap = trunc nuw nsw i32 %i.am to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6410
  store i8 %i.ap, ptr %i.aq, align 2, !tbaa !206
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ar = lshr i32 %i.ac, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = icmp slt i32 %i.ac, %i.j
  %i.aw = zext i1 %i.av to i32
  %spec.select.i23 = add i32 %i.ac, %i.aw         ; 2 uses
  %i.ax = zext i8 %i.au to i32
  %i.ay = and i32 %i.ac, 7
  %i.az = shl nuw nsw i32 %i.ax, %i.ay
  %i.ba = lshr i32 %i.az, 7
  store i32 %spec.select.i23, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.bb = and i32 %i.ba, 1                        ; 2 uses
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6411
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !207
  %.not22 = icmp eq i32 %i.bb, 0
  br i1 %.not22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 6500
  store i8 0, ptr %i.be, align 4, !tbaa !138
  br label %bb.j
end_hunk_0
