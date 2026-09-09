Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/decode?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@BrotliDecoderDecompressStream:bb.a
._crit_edge26.i:                                  ; preds = %bb.ci
  %.pre.i453 = load i32, ptr %i.bj, align 4, !tbaa !132
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.si = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !133
  store ptr %i.sj, ptr %i.bi, align 8, !tbaa !134
  store i32 0, ptr %i.bj, align 4, !tbaa !132
  store i32 1, ptr %i.bh, align 8, !tbaa !128
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge26.i
  %i.sk = phi i32 [ %.pre.i453, %._crit_edge26.i ], [ 0, %bb.cj ]
  %i.sl = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.sm = load i16, ptr %i.sl, align 4, !tbaa !135
  %i.sn = zext i16 %i.sm to i32
  %i.so = icmp slt i32 %i.sk, %i.sn
  br i1 %i.so, label %.lr.ph.i451, label %.loopexit540

.lr.ph.i451:                                      ; preds = %bb.ck
  %i.sp = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %.0, i64 18
  %.pre27.i = load ptr, ptr %i.bi, align 8, !tbaa !134
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.lr.ph.i451
  %i.sr = phi ptr [ %.pre27.i, %.lr.ph.i451 ], [ %i.td, %bb.cm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ss = load i16, ptr %i.sp, align 8, !tbaa !136
  %i.st = zext i16 %i.ss to i64
  %i.su = load i16, ptr %i.sq, align 2, !tbaa !137
  %i.sv = zext i16 %i.su to i64
  %i.sw = call fastcc i32 @ReadHuffmanCode(i64 noundef %i.st, i64 noundef %i.sv, ptr noundef %i.sr, ptr noundef nonnull %i.a, ptr noundef nonnull %0) ; 2 uses
  %.not23.i = icmp eq i32 %i.sw, 1
  br i1 %.not23.i, label %bb.cm, label %HuffmanTreeGroupDecode.exit

bb.cm:                                            ; preds = %bb.cl
  %i.sx = load ptr, ptr %i.bi, align 8, !tbaa !134 ; 2 uses
  %i.sy = load ptr, ptr %.0, align 8, !tbaa !138
  %i.sz = load i32, ptr %i.bj, align 4, !tbaa !132 ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.ta
  store ptr %i.sx, ptr %i.tb, align 8, !tbaa !79
  %i.tc = load i64, ptr %i.a, align 8, !tbaa !36
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tc ; 2 uses
  store ptr %i.td, ptr %i.bi, align 8, !tbaa !134
  %i.te = add nsw i32 %i.sz, 1                    ; 2 uses
  store i32 %i.te, ptr %i.bj, align 4, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.tf = load i16, ptr %i.sl, align 4, !tbaa !135
  %i.tg = zext i16 %i.tf to i32
  %i.th = icmp slt i32 %i.te, %i.tg
  br i1 %i.th, label %bb.cl, label %.loopexit540.loopexit, !llvm.loop !123

HuffmanTreeGroupDecode.exit:                      ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.backedge.backedge

.loopexit540.loopexit:                            ; preds = %bb.cm
  %.pre617 = load i32, ptr %i.aq, align 4, !tbaa !56
  br label %.loopexit540

.loopexit540:                                     ; preds = %.loopexit540.loopexit, %bb.ck
  %i.ti = phi i32 [ %.pre617, %.loopexit540.loopexit ], [ %i.sg, %bb.ck ] ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !128
  %i.tj = add nsw i32 %i.ti, 1
  store i32 %i.tj, ptr %i.aq, align 4, !tbaa !56
  %i.tk = icmp slt i32 %i.ti, 2
  br i1 %i.tk, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %.loopexit540
  store i32 25, ptr %0, align 8, !tbaa !27
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.v
  %i.tl = load i64, ptr %i.bk, align 8, !tbaa !36 ; 4 uses
  %i.tm = shl i64 %i.tl, 6
  %i.tn = load ptr, ptr %i.ay, align 8, !tbaa !78
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tm ; 2 uses
  store ptr %i.to, ptr %i.bl, align 8, !tbaa !80
  %i.tp = lshr i64 %i.tl, 5
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !44
  %i.ts = zext i32 %i.tr to i64
  %i.tt = and i64 %i.tl, 31
  %i.tu = lshr i64 %i.ts, %i.tt
  %i.tv = trunc nuw i64 %i.tu to i32
  %i.tw = and i32 %i.tv, 1
  store i32 %i.tw, ptr %i.bm, align 8, !tbaa !81
  %i.tx = load ptr, ptr %i.bd, align 8, !tbaa !82
  %i.ty = load i8, ptr %i.to, align 1, !tbaa !53
  %i.tz = zext i8 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.tz
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !79
  store ptr %i.ub, ptr %i.bn, align 8, !tbaa !83
  %i.uc = load ptr, ptr %i.aw, align 8, !tbaa !77
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.tl
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !53
  %i.uf = and i8 %i.ue, 3
  %i.ug = zext nneg i8 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 9
  %i.ui = getelementptr inbounds nuw i8, ptr @_kBrotliContextLookupTable, i64 %i.uh
  store ptr %i.ui, ptr %i.bo, align 8, !tbaa !84
  %i.uj = load ptr, ptr %i.bc, align 8, !tbaa !85
  store ptr %i.uj, ptr %i.bp, align 8, !tbaa !86
  %i.uk = load ptr, ptr %i.be, align 8, !tbaa !87
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !79
  store ptr %i.ul, ptr %i.bq, align 8, !tbaa !88
  %i.um = call fastcc i32 @BrotliEnsureRingBuffer(ptr noundef nonnull %0)
  %.not378 = icmp eq i32 %i.um, 0
  br i1 %.not378, label %.backedge.backedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.un = load i64, ptr %i.ar, align 8, !tbaa !76 ; 2 uses
  %i.uo = load i64, ptr %i.as, align 8, !tbaa !129 ; 5 uses
  %i.up = load i16, ptr %i.br, align 2, !tbaa !139
  %i.uq = zext i16 %i.up to i64                   ; 2 uses
  %.not.i454 = icmp eq i64 %i.uo, 0
  br i1 %.not.i454, label %.preheader.i457, label %.lr.ph.i455.preheader

.lr.ph.i455.preheader:                            ; preds = %bb.cp
  %xtraiter = and i64 %i.uo, 3                    ; 3 uses
  %i.ur = icmp ult i64 %i.uo, 4
  br i1 %i.ur, label %.lr.ph.i455.epil.preheader, label %.lr.ph.i455.preheader.new

.lr.ph.i455.preheader.new:                        ; preds = %.lr.ph.i455.preheader
  %unroll_iter = and i64 %i.uo, -4
  br label %.lr.ph.i455

.preheader.i457.loopexit.unr-lcssa:               ; preds = %.lr.ph.i455
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i457, label %.lr.ph.i455.epil.preheader

.lr.ph.i455.epil.preheader:                       ; preds = %.preheader.i457.loopexit.unr-lcssa, %.lr.ph.i455.preheader
  %.038.i456.epil.init = phi i64 [ 16, %.lr.ph.i455.preheader ], [ %i.vn, %.preheader.i457.loopexit.unr-lcssa ]
  %.03537.i.epil.init = phi i64 [ 0, %.lr.ph.i455.preheader ], [ %i.vl, %.preheader.i457.loopexit.unr-lcssa ]
  %lcmp.mod746 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod746)
  br label %.lr.ph.i455.epil

.lr.ph.i455.epil:                                 ; preds = %.lr.ph.i455.epil, %.lr.ph.i455.epil.preheader
  %.038.i456.epil = phi i64 [ %i.uv, %.lr.ph.i455.epil ], [ %.038.i456.epil.init, %.lr.ph.i455.epil.preheader ] ; 3 uses
  %.03537.i.epil = phi i64 [ %i.ut, %.lr.ph.i455.epil ], [ %.03537.i.epil.init, %.lr.ph.i455.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i455.epil ], [ 0, %.lr.ph.i455.epil.preheader ]
  %i.us = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.038.i456.epil
  store i8 0, ptr %i.us, align 1, !tbaa !53
  %i.ut = add nuw i64 %.03537.i.epil, 1           ; 2 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.038.i456.epil
  store i64 %i.ut, ptr %i.uu, align 8, !tbaa !36
  %i.uv = add i64 %.038.i456.epil, 1              ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i457, label %.lr.ph.i455.epil, !llvm.loop !124

.preheader.i457:                                  ; preds = %.preheader.i457.loopexit.unr-lcssa, %.lr.ph.i455.epil, %bb.cp
  %.0.lcssa.i = phi i64 [ 16, %bb.cp ], [ %i.vn, %.preheader.i457.loopexit.unr-lcssa ], [ %i.uv, %.lr.ph.i455.epil ] ; 2 uses
  %i.uw = icmp ult i64 %.0.lcssa.i, %i.uq
  br i1 %i.uw, label %.lr.ph44.i, label %CalculateDistanceLut.exit

.lr.ph44.i:                                       ; preds = %.preheader.i457
  %i.ux = add i64 %i.uo, 1
  br label %bb.cq

.lr.ph.i455:                                      ; preds = %.lr.ph.i455, %.lr.ph.i455.preheader.new
  %.038.i456 = phi i64 [ 16, %.lr.ph.i455.preheader.new ], [ %i.vn, %.lr.ph.i455 ] ; 6 uses
  %.03537.i = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %i.vl, %.lr.ph.i455 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %niter.next.3, %.lr.ph.i455 ]
  %i.uy = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.038.i456
  store i8 0, ptr %i.uy, align 1, !tbaa !53
  %i.uz = or disjoint i64 %.03537.i, 1
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.038.i456
  store i64 %i.uz, ptr %i.va, align 8, !tbaa !36
  %i.vb = or disjoint i64 %.038.i456, 1           ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vb
  store i8 0, ptr %i.vc, align 1, !tbaa !53
  %i.vd = or disjoint i64 %.03537.i, 2
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vb
  store i64 %i.vd, ptr %i.ve, align 8, !tbaa !36
  %i.vf = or disjoint i64 %.038.i456, 2           ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vf
  store i8 0, ptr %i.vg, align 1, !tbaa !53
  %i.vh = or disjoint i64 %.03537.i, 3
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vf
  store i64 %i.vh, ptr %i.vi, align 8, !tbaa !36
  %i.vj = or disjoint i64 %.038.i456, 3           ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vj
  store i8 0, ptr %i.vk, align 1, !tbaa !53
  %i.vl = add nuw i64 %.03537.i, 4                ; 3 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vj
  store i64 %i.vl, ptr %i.vm, align 8, !tbaa !36
  %i.vn = add i64 %.038.i456, 4                   ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i457.loopexit.unr-lcssa, label %.lr.ph.i455, !llvm.loop !125

bb.cq:                                            ; preds = %bb.cs, %.lr.ph44.i
  %.143.i = phi i64 [ %.0.lcssa.i, %.lr.ph44.i ], [ %i.vw, %bb.cs ]
  %.03342.i = phi i64 [ 0, %.lr.ph44.i ], [ %i.wa, %bb.cs ] ; 3 uses
  %.03441.i = phi i64 [ 1, %.lr.ph44.i ], [ %i.vz, %bb.cs ] ; 3 uses
  %6 = add nuw nsw i64 %.03342.i, 2
  %i.vo = shl i64 %6, %.03441.i
  %i.vp = add i64 %i.vo, -4
  %i.vq = shl i64 %i.vp, %i.un
  %i.vr = trunc i64 %.03441.i to i8
  %i.vs = add i64 %i.ux, %i.vq
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %bb.cq
  %.240.i = phi i64 [ %.143.i, %bb.cq ], [ %i.vw, %bb.cr ] ; 3 uses
  %.13639.i = phi i64 [ 0, %bb.cq ], [ %i.vx, %bb.cr ] ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.240.i
  store i8 %i.vr, ptr %i.vt, align 1, !tbaa !53
  %i.vu = add i64 %i.vs, %.13639.i
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.240.i
  store i64 %i.vu, ptr %i.vv, align 8, !tbaa !36
  %i.vw = add i64 %.240.i, 1                      ; 3 uses
  %i.vx = add i64 %.13639.i, 1                    ; 2 uses
  %.136.highbits.i = lshr i64 %i.vx, %i.un
  %i.vy = icmp eq i64 %.136.highbits.i, 0
  br i1 %i.vy, label %bb.cr, label %bb.cs, !llvm.loop !126

bb.cs:                                            ; preds = %bb.cr
  %i.vz = add i64 %.03441.i, %.03342.i
  %i.wa = xor i64 %.03342.i, 1
  %i.wb = icmp ult i64 %i.vw, %i.uq
  br i1 %i.wb, label %bb.cq, label %CalculateDistanceLut.exit, !llvm.loop !127

CalculateDistanceLut.exit:                        ; preds = %bb.cs, %.preheader.i457
  store i32 7, ptr %0, align 8, !tbaa !27
  br label %bb.ct

bb.ct:                                            ; preds = %CalculateDistanceLut.exit, %bb.v, %bb.v, %bb.v, %bb.v
  %i.wc = call fastcc i32 @ProcessCommands(ptr noundef nonnull %0) ; 2 uses
  %i.wd = icmp eq i32 %i.wc, 2
  br i1 %i.wd, label %bb.cu, label %.backedge.backedge

bb.cu:                                            ; preds = %bb.ct
  %i.we = call fastcc i32 @SafeProcessCommands(ptr noundef nonnull %0)
  br label %.backedge.backedge

bb.cv:                                            ; preds = %bb.v, %bb.v, %bb.v
  %i.wf = call fastcc i32 @WriteRingBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 0) ; 2 uses
  %.not367 = icmp eq i32 %i.wf, 1
  br i1 %.not367, label %bb.cw, label %.backedge.backedge

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @WrapRingBuffer(ptr noundef nonnull %0)
  %i.wg = load i32, ptr %i.al, align 4, !tbaa !90 ; 2 uses
  %i.wh = load i32, ptr %i.aj, align 4
  %i.wi = lshr i32 %i.wh, 6
  %i.wj = and i32 %i.wi, 63
  %i.wk = shl nuw i32 1, %i.wj
  %i.wl = icmp eq i32 %i.wg, %i.wk
  br i1 %i.wl, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.wm = load i32, ptr %i.am, align 4, !tbaa !57
  store i32 %i.wm, ptr %i.an, align 8, !tbaa !91
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.wn = load i32, ptr %0, align 8, !tbaa !27
  switch i32 %i.wn, label %bb.dh [
    i32 15, label %bb.cz
    i32 16, label %bb.dg
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.wo = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 7 uses
  %.not368 = icmp eq ptr %i.wo, null
  br i1 %.not368, label %.thread535, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !41
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 20 ; 3 uses
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !42 ; 2 uses
  %.not369 = icmp eq i32 %i.wq, %i.ws
  br i1 %.not369, label %.thread535, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.wt = load i32, ptr %i.ap, align 8, !tbaa !92 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 8 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wo, i64 12 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wo, i64 152
  br label %bb.dc

bb.dc:                                            ; preds = %bb.df, %bb.db
  %i.wy = phi i32 [ %i.wg, %bb.db ], [ %i.yc, %bb.df ] ; 2 uses
  %i.wz = phi i32 [ %i.ws, %bb.db ], [ %i.xy, %bb.df ] ; 2 uses
  %.042.i = phi i32 [ %i.wt, %bb.db ], [ %i.xu, %bb.df ] ; 4 uses
  %i.xa = load i32, ptr %i.wp, align 8, !tbaa !41 ; 2 uses
  %.not.i460 = icmp eq i32 %i.xa, %i.wz
  br i1 %.not.i460, label %CopyFromCompoundDictionary.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xb = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.xc = sext i32 %.042.i to i64
  %i.xd = getelementptr inbounds i8, ptr %i.xb, i64 %i.xc
  %i.xe = load i32, ptr %i.wv, align 8, !tbaa !93
  %i.xf = sext i32 %i.xe to i64                   ; 2 uses
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %i.xf
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !35
  %i.xi = load i32, ptr %i.ww, align 4, !tbaa !94 ; 2 uses
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.xh, i64 %i.xj
  %i.xl = sub nsw i32 %i.wy, %.042.i
  %i.xm = getelementptr [4 x i8], ptr %i.wx, i64 %i.xf ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !44
  %i.xp = load i32, ptr %i.xm, align 4, !tbaa !44
  %i.xq = add i32 %i.xi, %i.xp
  %i.xr = sub i32 %i.xo, %i.xq                    ; 2 uses
  %i.xs = sub nsw i32 %i.xa, %i.wz
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.xs, i32 %i.xr)
  %.1.i461 = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.xl) ; 5 uses
  %i.xt = sext i32 %.1.i461 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xd, ptr align 1 %i.xk, i64 %i.xt, i1 false)
  %i.xu = add nsw i32 %.1.i461, %.042.i           ; 4 uses
  %i.xv = load i32, ptr %i.ww, align 4, !tbaa !94
  %i.xw = add nsw i32 %.1.i461, %i.xv
  store i32 %i.xw, ptr %i.ww, align 4, !tbaa !94
  %i.xx = load i32, ptr %i.wr, align 4, !tbaa !42
  %i.xy = add nsw i32 %i.xx, %.1.i461             ; 2 uses
  store i32 %i.xy, ptr %i.wr, align 4, !tbaa !42
  %i.xz = icmp eq i32 %.1.i461, %i.xr
  br i1 %i.xz, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ya = load i32, ptr %i.wv, align 8, !tbaa !93
  %i.yb = add nsw i32 %i.ya, 1
  store i32 %i.yb, ptr %i.wv, align 8, !tbaa !93
  store i32 0, ptr %i.ww, align 4, !tbaa !94
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.yc = load i32, ptr %i.al, align 4, !tbaa !90 ; 2 uses
  %i.yd = icmp eq i32 %i.xu, %i.yc
  br i1 %i.yd, label %CopyFromCompoundDictionary.exit, label %bb.dc

CopyFromCompoundDictionary.exit:                  ; preds = %bb.dc, %bb.df
  %i.ye = phi i32 [ %i.xu, %bb.df ], [ %i.wy, %bb.dc ]
  %.143.i462 = phi i32 [ %i.xu, %bb.df ], [ %.042.i, %bb.dc ]
  %i.yf = sub nsw i32 %.143.i462, %i.wt
  %i.yg = load i32, ptr %i.ap, align 8, !tbaa !92
  %i.yh = add nsw i32 %i.yg, %i.yf                ; 2 uses
  store i32 %i.yh, ptr %i.ap, align 8, !tbaa !92
  %.not370 = icmp slt i32 %i.yh, %i.ye
  br i1 %.not370, label %.thread535, label %.backedge.backedge

.thread535:                                       ; preds = %bb.cz, %bb.da, %CopyFromCompoundDictionary.exit
  %i.yi = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.yj = icmp eq i32 %i.yi, 0
  %.404 = select i1 %i.yj, i32 14, i32 7
  store i32 %.404, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

bb.dg:                                            ; preds = %bb.cy
  store i32 10, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

bb.dh:                                            ; preds = %bb.cy
  %i.yk = load i32, ptr %i.aq, align 4, !tbaa !56
  %i.yl = icmp eq i32 %i.yk, 0
  br i1 %i.yl, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.ym = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.yn = icmp eq i32 %i.ym, 0
  br i1 %i.yn, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 14, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

bb.dk:                                            ; preds = %bb.di
  store i32 9, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

bb.dl:                                            ; preds = %bb.dh
  store i32 8, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

bb.dm:                                            ; preds = %bb.v
  %i.yo = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.yp = icmp slt i32 %i.yo, 0
  br i1 %i.yp, label %.backedge.backedge, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @BrotliDecoderStateCleanupAfterMetablock(ptr noundef nonnull %0) #21
  %i.yq = load i32, ptr %i.aj, align 4
  %i.yr = and i32 %i.yq, 1
  %.not363 = icmp eq i32 %i.yr, 0
  br i1 %.not363, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 3, ptr %0, align 8, !tbaa !27
  br label %.backedge.backedge

end_hunk_0
