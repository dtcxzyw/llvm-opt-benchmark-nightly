Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/parse?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_opus_parse_packet:bb.a
  br i1 %.not.i269, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ez = getelementptr inbounds nuw i8, ptr %.4300.lcssa, i64 1 ; 3 uses
  %i.fa = load i8, ptr %.4300.lcssa, align 1, !tbaa !9 ; 2 uses
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %i.fc = icmp ugt i8 %i.fa, -5
  br i1 %i.fc, label %bb.aq, label %xiph_lacing_16bit.exit272

bb.aq:                                            ; preds = %bb.ap
  %.not14.i271 = icmp ult ptr %i.ez, %i.b
  br i1 %.not14.i271, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %.4300.lcssa, i64 2
  %i.fe = load i8, ptr %i.ez, align 1, !tbaa !9
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 2
  %i.fh = add nuw nsw i32 %i.fg, %i.fb
  br label %xiph_lacing_16bit.exit272

xiph_lacing_16bit.exit272:                        ; preds = %bb.ar, %bb.ap
  %.13 = phi ptr [ %i.fd, %bb.ar ], [ %i.ez, %bb.ap ] ; 2 uses
  %.09.i270 = phi i32 [ %i.fh, %bb.ar ], [ %i.fb, %bb.ap ] ; 2 uses
  %i.fi = add nuw nsw i32 %.0.lcssa, %.0202
  %i.fj = add nuw nsw i32 %i.fi, %.09.i270
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = ptrtoint ptr %i.b to i64
  %i.fm = ptrtoint ptr %.13 to i64                ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = icmp slt i64 %i.fn, %i.fk
  br i1 %i.fo, label %.thread, label %bb.as

bb.as:                                            ; preds = %xiph_lacing_16bit.exit272
  %i.fp = zext nneg i32 %.0.lcssa to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.13, i64 %i.fp
  %i.fr = zext nneg i32 %.09.i270 to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  %i.ft = zext nneg i32 %.0202 to i64             ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fw = ptrtoint ptr %1 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = trunc i64 %i.fx to i32
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge._crit_edge, %bb.as
  %.pre-phi421 = phi i64 [ %.pre420, %._crit_edge._crit_edge ], [ %i.ft, %bb.as ]
  %.pre-phi419 = phi i64 [ %.pre418, %._crit_edge._crit_edge ], [ %i.fm, %bb.as ] ; 2 uses
  %.pre-phi417 = phi i64 [ %.pre416, %._crit_edge._crit_edge ], [ %i.fv, %bb.as ]
  %.7217 = phi i32 [ %2, %._crit_edge._crit_edge ], [ %i.fy, %bb.as ]
  %i.fz = add i64 %.pre-phi419, %.pre-phi421
  %i.ga = sub i64 %.pre-phi417, %i.fz
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = icmp sgt i32 %.0.lcssa, %i.gb
  br i1 %i.gc, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gd = ptrtoint ptr %1 to i64
  %i.ge = sub i64 %.pre-phi419, %i.gd
  %i.gf = trunc i64 %i.ge to i32                  ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !10
  %wide.trip.count389 = zext nneg i32 %i.dw to i64 ; 2 uses
  br i1 %i.el, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %bb.au
  %i.gh = getelementptr i8, ptr %0, i64 216       ; 5 uses
  %i.gi = add nsw i64 %wide.trip.count389, -1     ; 2 uses
  %xtraiter = and i64 %i.gi, 3                    ; 3 uses
  %i.gj = add nsw i32 %i.dw, -2
  %i.gk = icmp ult i32 %i.gj, 3
  br i1 %i.gk, label %.epil.preheader, label %.lr.ph375.new

.lr.ph375.new:                                    ; preds = %.lr.ph375
  %unroll_iter = and i64 %i.gi, -4
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph375.new
  %i.gl = phi i32 [ %i.gf, %.lr.ph375.new ], [ %i.ha, %bb.av ]
  %indvars.iv386 = phi i64 [ 1, %.lr.ph375.new ], [ %indvars.iv.next387.3, %bb.av ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph375.new ], [ %niter.next.3, %bb.av ]
  %i.gm = getelementptr [4 x i8], ptr %i.gh, i64 %indvars.iv386
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !10
  %i.go = add nsw i32 %i.gn, %i.gl                ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv386
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !10
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.gq = getelementptr [4 x i8], ptr %i.gh, i64 %indvars.iv.next387
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !10
  %i.gs = add nsw i32 %i.gr, %i.go                ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next387
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !10
  %indvars.iv.next387.1 = add nuw nsw i64 %indvars.iv386, 2 ; 2 uses
  %i.gu = getelementptr [4 x i8], ptr %i.gh, i64 %indvars.iv.next387.1
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !10
  %i.gw = add nsw i32 %i.gv, %i.gs                ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next387.1
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !10
  %indvars.iv.next387.2 = add nuw nsw i64 %indvars.iv386, 3 ; 2 uses
  %i.gy = getelementptr [4 x i8], ptr %i.gh, i64 %indvars.iv.next387.2
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !10
  %i.ha = add nsw i32 %i.gz, %i.gw                ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next387.2
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !10
  %indvars.iv.next387.3 = add nuw nsw i64 %indvars.iv386, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge376.loopexit.unr-lcssa, label %bb.av, !llvm.loop !14

._crit_edge376.loopexit.unr-lcssa:                ; preds = %bb.av
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge376, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge376.loopexit.unr-lcssa, %.lr.ph375
  %.epil.init = phi i32 [ %i.gf, %.lr.ph375 ], [ %i.ha, %._crit_edge376.loopexit.unr-lcssa ]
  %indvars.iv386.epil.init = phi i64 [ 1, %.lr.ph375 ], [ %indvars.iv.next387.3, %._crit_edge376.loopexit.unr-lcssa ]
  %lcmp.mod467 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod467)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader
  %i.hc = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.hf, %bb.aw ]
  %indvars.iv386.epil = phi i64 [ %indvars.iv386.epil.init, %.epil.preheader ], [ %indvars.iv.next387.epil, %bb.aw ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aw ]
  %i.hd = getelementptr [4 x i8], ptr %i.gh, i64 %indvars.iv386.epil
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !10
  %i.hf = add nsw i32 %i.he, %i.hc                ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv386.epil
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !10
  %indvars.iv.next387.epil = add nuw nsw i64 %indvars.iv386.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge376, label %bb.aw, !llvm.loop !15

._crit_edge376:                                   ; preds = %._crit_edge376.loopexit.unr-lcssa, %bb.aw, %bb.au
  %i.hh = sub nsw i32 %i.gb, %.0.lcssa
  %i.hi = getelementptr [4 x i8], ptr %0, i64 %wide.trip.count389
  %i.hj = getelementptr i8, ptr %i.hi, i64 216
  store i32 %i.hh, ptr %i.hj, align 4, !tbaa !10
  br label %thread-pre-split

bb.ax:                                            ; preds = %bb.aj
  %.not240 = icmp eq i32 %3, 0
  br i1 %.not240, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i273 = icmp ult ptr %.3299, %i.b
  br i1 %.not.i273, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  %i.hk = getelementptr inbounds nuw i8, ptr %.3299, i64 1 ; 3 uses
  %i.hl = load i8, ptr %.3299, align 1, !tbaa !9  ; 2 uses
  %i.hm = zext i8 %i.hl to i32                    ; 2 uses
  %i.hn = icmp ugt i8 %i.hl, -5
  br i1 %i.hn, label %bb.ba, label %xiph_lacing_16bit.exit276

bb.ba:                                            ; preds = %bb.az
  %.not14.i275 = icmp ult ptr %i.hk, %i.b
  br i1 %.not14.i275, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.ho = getelementptr inbounds nuw i8, ptr %.3299, i64 2
  %i.hp = load i8, ptr %i.hk, align 1, !tbaa !9
  %i.hq = zext i8 %i.hp to i32
  %i.hr = shl nuw nsw i32 %i.hq, 2
  %i.hs = add nuw nsw i32 %i.hr, %i.hm
  br label %xiph_lacing_16bit.exit276

xiph_lacing_16bit.exit276:                        ; preds = %bb.bb, %bb.az
  %.14 = phi ptr [ %i.ho, %bb.bb ], [ %i.hk, %bb.az ] ; 2 uses
  %.09.i274 = phi i32 [ %i.hs, %bb.bb ], [ %i.hm, %bb.az ] ; 2 uses
  %i.ht = mul nuw nsw i32 %.09.i274, %i.dw        ; 2 uses
  %i.hu = add nuw nsw i32 %i.ht, %.0202
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = ptrtoint ptr %i.b to i64
  %i.hx = ptrtoint ptr %.14 to i64                ; 2 uses
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = icmp slt i64 %i.hy, %i.hv
  br i1 %i.hz, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %xiph_lacing_16bit.exit276
  %i.ia = zext nneg i32 %i.ht to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %.14, i64 %i.ia
  %i.ic = zext nneg i32 %.0202 to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = trunc i64 %i.ig to i32
  br label %bb.be

bb.bd:                                            ; preds = %bb.ax
  %i.ii = ptrtoint ptr %i.b to i64
  %i.ij = ptrtoint ptr %.3299 to i64              ; 2 uses
  %i.ik = zext nneg i32 %.0202 to i64
  %i.il = add i64 %i.ij, %i.ik
  %i.im = sub i64 %i.ii, %i.il
  %i.in = trunc i64 %i.im to i32                  ; 2 uses
  %i.io = srem i32 %i.in, %i.dw
  %i.ip = sdiv i32 %i.in, %i.dw                   ; 2 uses
  %.not241 = icmp ne i32 %i.io, 0
  %i.iq = icmp sgt i32 %i.ip, 1275
  %or.cond473 = or i1 %.not241, %i.iq
  br i1 %or.cond473, label %.thread, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.bd
  %.pre414 = ptrtoint ptr %1 to i64
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge396, %bb.bc
  %.pre-phi415 = phi i64 [ %.pre414, %._crit_edge396 ], [ %i.if, %bb.bc ]
  %.pre-phi = phi i64 [ %i.ij, %._crit_edge396 ], [ %i.hx, %bb.bc ]
  %.9 = phi i32 [ %2, %._crit_edge396 ], [ %i.ih, %bb.bc ] ; 3 uses
  %i.ir = phi i32 [ %i.ip, %._crit_edge396 ], [ %.09.i274, %bb.bc ] ; 6 uses
  %i.is = sub i64 %.pre-phi, %.pre-phi415
  %i.it = trunc i64 %i.is to i32                  ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !10
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  store i32 %i.ir, ptr %i.iv, align 4, !tbaa !10
  %i.iw = icmp samesign ugt i32 %i.dw, 1
  br i1 %i.iw, label %.lr.ph379.preheader, label %thread-pre-split

.lr.ph379.preheader:                              ; preds = %bb.be
  %wide.trip.count394 = zext nneg i32 %i.dw to i64 ; 2 uses
  %i.ix = add nsw i64 %wide.trip.count394, -1     ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.dw, 5
  br i1 %min.iters.check, label %.lr.ph379.preheader461, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph379.preheader
  %n.vec = and i64 %i.ix, -4                      ; 4 uses
  %i.iy = trunc nsw i64 %n.vec to i32
  %i.iz = mul i32 %i.ir, %i.iy
  %i.ja = add i32 %i.iz, %i.it
  %i.jb = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert456 = insertelement <4 x i32> poison, i32 %i.it, i64 0
  %broadcast.splat457 = shufflevector <4 x i32> %broadcast.splatinsert456, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jc = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %induction = add nsw <4 x i32> %broadcast.splat457, %i.jc
  %i.jd = shl nsw i32 %i.ir, 2
  %broadcast.splatinsert458 = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %broadcast.splat459 = shufflevector <4 x i32> %broadcast.splatinsert458, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.je = or disjoint i64 %index, 1               ; 2 uses
  %i.jf = add nsw <4 x i32> %broadcast.splat, %vec.ind
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.je
  store <4 x i32> %i.jf, ptr %i.jg, align 4, !tbaa !10
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.je
  store <4 x i32> %broadcast.splat, ptr %i.jh, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, %broadcast.splat459
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ix, %n.vec
  br i1 %cmp.n, label %thread-pre-split, label %.lr.ph379.preheader461

.lr.ph379.preheader461:                           ; preds = %.lr.ph379.preheader, %middle.block
  %.ph = phi i32 [ %i.it, %.lr.ph379.preheader ], [ %i.ja, %middle.block ]
  %indvars.iv391.ph = phi i64 [ 1, %.lr.ph379.preheader ], [ %i.jb, %middle.block ]
  br label %.lr.ph379

.lr.ph379:                                        ; preds = %.lr.ph379.preheader461, %.lr.ph379
  %i.jj = phi i32 [ %i.jk, %.lr.ph379 ], [ %.ph, %.lr.ph379.preheader461 ]
  %indvars.iv391 = phi i64 [ %indvars.iv.next392, %.lr.ph379 ], [ %indvars.iv391.ph, %.lr.ph379.preheader461 ] ; 3 uses
  %i.jk = add nsw i32 %i.ir, %i.jj                ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv391
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !10
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv391
  store i32 %i.ir, ptr %i.jm, align 4, !tbaa !10
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %thread-pre-split, label %.lr.ph379, !llvm.loop !17

thread-pre-split:                                 ; preds = %.lr.ph379, %middle.block, %bb.be, %bb.k, %bb.t, %bb.ae, %._crit_edge376
  %i.jn = phi i32 [ 1, %bb.k ], [ %i.dw, %._crit_edge376 ], [ 2, %bb.ae ], [ 2, %bb.t ], [ %i.dw, %bb.be ], [ %i.dw, %middle.block ], [ %i.dw, %.lr.ph379 ]
  %.10.ph = phi i32 [ %.1211, %bb.k ], [ %.7217, %._crit_edge376 ], [ %.5215, %bb.ae ], [ %.3213, %bb.t ], [ %.9, %bb.be ], [ %.9, %middle.block ], [ %.9, %.lr.ph379 ] ; 2 uses
  %.1203.ph = phi i32 [ 0, %bb.k ], [ %.0202, %._crit_edge376 ], [ 0, %bb.ae ], [ 0, %bb.t ], [ %.0202, %bb.be ], [ %.0202, %middle.block ], [ %.0202, %.lr.ph379 ]
  store i32 %.10.ph, ptr %0, align 4, !tbaa !27
  %i.jo = sub nsw i32 %.10.ph, %.1203.ph
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !28
  %i.jq = zext nneg i32 %i.l to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @ff_opus_frame_duration, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !29
  %i.jt = zext i16 %i.js to i32                   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !30
  %i.jv = mul nuw nsw i32 %i.jn, %i.jt
  %i.jw = icmp samesign ugt i32 %i.jv, 5760
  br i1 %i.jw, label %.thread, label %bb.bf

default.unreachable445:                           ; preds = %bb.c
  unreachable

bb.bf:                                            ; preds = %thread-pre-split
  %i.jx = icmp ult i8 %i.e, 96
  br i1 %i.jx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 0, ptr %i.jy, align 4, !tbaa !31
  %i.jz = lshr i32 %i.f, 5
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !32
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.kb = icmp sgt i8 %i.e, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 3 uses
  br i1 %i.kb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr %i.kc, align 4, !tbaa !31
  %i.ke = icmp samesign ugt i8 %i.e, 111
  %i.kf = select i1 %i.ke, i32 4, i32 3
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !32
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  store i32 2, ptr %i.kc, align 4, !tbaa !31
  %i.kg = add nsw i32 %i.l, -16
  %i.kh = lshr i32 %i.kg, 2                       ; 3 uses
  store i32 %i.kh, ptr %i.kd, align 4, !tbaa !32
  %.not247 = icmp eq i32 %i.kh, 0
  br i1 %.not247, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ki = add nuw nsw i32 %i.kh, 1
  store i32 %i.ki, ptr %i.kd, align 4, !tbaa !32
  br label %bb.bl

.thread:                                          ; preds = %bb.ai, %bb.ak, %bb.am, %bb.ay, %bb.ba, %bb.ao, %bb.aq, %xiph_lacing_16bit.exit272, %bb.at, %bb.ah, %bb.y, %bb.aa, %xiph_lacing_16bit.exit263, %bb.u, %bb.w, %bb.m, %bb.o, %xiph_lacing_16bit.exit255, %bb.e, %bb.g, %xiph_lacing_16bit.exit, %thread-pre-split, %bb.bd, %xiph_lacing_16bit.exit276, %xiph_lacing_full.exit, %bb.af, %bb.ad, %bb.r, %bb.s, %bb.j, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(424) %0, i8 0, i64 424, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bg, %bb.bj, %bb.bk, %bb.bi, %.thread
  %.0209 = phi i32 [ -1094995529, %.thread ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bg ]
  ret i32 %.0209
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -2147483648, 1) i32 @ff_opus_parse_extradata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.AVChannelLayout, align 8    ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.c, 2
  br i1 %i.f, label %bb.c, label %.thread176

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #7
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56   ; 3 uses
  %i.i = icmp slt i32 %i.h, 19
  br i1 %i.i, label %bb.e, label %.thread164

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.h) #7
  br label %bb.an

.thread164:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9     ; 2 uses
  %i.l = icmp ugt i8 %i.k, 15
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread164
  %i.m = zext i8 %i.k to i32
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.m) #7
  br label %bb.an

.thread176:                                       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
end_hunk_0
