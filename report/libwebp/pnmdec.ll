Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/pnmdec?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ReadPNM:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.bd

bb.au:                                            ; preds = %bb.f
  %i.fi = load ptr, ptr %5, align 8, !tbaa !23
  %i.fj = load i64, ptr %i.d, align 8, !tbaa !24  ; 3 uses
  br label %.backedge.i65.i

.backedge.i65.i:                                  ; preds = %bb.aw, %bb.au
  %.019.i57.i = phi i64 [ %i.n, %bb.au ], [ %i.fl, %bb.aw ] ; 3 uses
  %i.fk = icmp ult i64 %.019.i57.i, %i.fj
  br i1 %i.fk, label %.lr.ph.i60.i, label %bb.ax

.lr.ph.i60.i:                                     ; preds = %.backedge.i65.i, %bb.av
  %.021.i61.i = phi i64 [ %i.fq, %bb.av ], [ 0, %.backedge.i65.i ] ; 4 uses
  %.120.i62.i = phi i64 [ %i.fl, %bb.av ], [ %.019.i57.i, %.backedge.i65.i ] ; 2 uses
  %i.fl = add nuw i64 %.120.i62.i, 1              ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.120.i62.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 %.021.i61.i
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !29
  %i.fp = icmp eq i8 %i.fn, 10
  br i1 %i.fp, label %._crit_edge.i63.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i60.i
  %i.fq = add nuw nsw i64 %.021.i61.i, 1          ; 2 uses
  %i.fr = icmp samesign ult i64 %.021.i61.i, 1023
  %i.fs = icmp ult i64 %i.fl, %i.fj
  %i.ft = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %i.ft, label %.lr.ph.i60.i, label %._crit_edge.i63.i, !llvm.loop !9

._crit_edge.i63.i:                                ; preds = %bb.av, %.lr.ph.i60.i
  %.0.lcssa.i64.i = phi i64 [ %.021.i61.i, %.lr.ph.i60.i ], [ %i.fq, %bb.av ] ; 3 uses
  %i.fu = icmp ult i64 %i.fl, %i.fj
  br i1 %i.fu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i63.i
  %i.fv = icmp eq i64 %.0.lcssa.i64.i, 0
  %i.fw = load i8, ptr %i.c, align 16
  %i.fx = icmp eq i8 %i.fw, 35
  %or.cond70.i = select i1 %i.fv, i1 true, i1 %i.fx
  br i1 %or.cond70.i, label %.backedge.i65.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i63.i, %.backedge.i65.i
  %.231.i58.i = phi i64 [ %i.fl, %._crit_edge.i63.i ], [ %i.fl, %bb.aw ], [ %.019.i57.i, %.backedge.i65.i ]
  %.0.lcssa30.i59.i = phi i64 [ %.0.lcssa.i64.i, %._crit_edge.i63.i ], [ %.0.lcssa.i64.i, %bb.aw ], [ 0, %.backedge.i65.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa30.i59.i
  store i8 0, ptr %i.fy, align 1, !tbaa !29
  %i.fz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #11
  %.not51.i = icmp eq i32 %i.fz, 2
  br i1 %.not51.i, label %bb.ay, label %ReadHeader.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.ga = load ptr, ptr %5, align 8, !tbaa !23
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !24  ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ba, %bb.ay
  %.019.i = phi i64 [ %.231.i58.i, %bb.ay ], [ %i.gd, %bb.ba ] ; 3 uses
  %i.gc = icmp ult i64 %.019.i, %i.gb
  br i1 %i.gc, label %.lr.ph.i, label %bb.bb

.lr.ph.i:                                         ; preds = %.backedge.i, %bb.az
  %.021.i = phi i64 [ %i.gi, %bb.az ], [ 0, %.backedge.i ] ; 4 uses
  %.120.i = phi i64 [ %i.gd, %bb.az ], [ %.019.i, %.backedge.i ] ; 2 uses
  %i.gd = add nuw i64 %.120.i, 1                  ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.120.i
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !29  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.021.i
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !29
  %i.gh = icmp eq i8 %i.gf, 10
  br i1 %i.gh, label %._crit_edge.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i
  %i.gi = add nuw nsw i64 %.021.i, 1              ; 2 uses
  %i.gj = icmp samesign ult i64 %.021.i, 1023
  %i.gk = icmp ult i64 %i.gd, %i.gb
  %i.gl = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %i.gl, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.az, %.lr.ph.i
  %.0.lcssa.i = phi i64 [ %.021.i, %.lr.ph.i ], [ %i.gi, %bb.az ] ; 3 uses
  %i.gm = icmp ult i64 %i.gd, %i.gb
  br i1 %i.gm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i
  %i.gn = icmp eq i64 %.0.lcssa.i, 0
  %i.go = load i8, ptr %i.c, align 16
  %i.gp = icmp eq i8 %i.go, 35
  %or.cond131 = select i1 %i.gn, i1 true, i1 %i.gp
  br i1 %or.cond131, label %.backedge.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i, %.backedge.i
  %.231.i = phi i64 [ %i.gd, %._crit_edge.i ], [ %i.gd, %bb.ba ], [ %.019.i, %.backedge.i ]
  %.0.lcssa30.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i, %bb.ba ], [ 0, %.backedge.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa30.i
  store i8 0, ptr %i.gq, align 1, !tbaa !29
  %i.gr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.m) #11
  %.not52.i = icmp eq i32 %i.gr, 1
  br i1 %.not52.i, label %bb.bc, label %ReadHeader.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.gs = load i32, ptr %i.i, align 4, !tbaa !25
  %i.gt = icmp eq i32 %i.gs, 5
  %i.gu = select i1 %i.gt, i32 1, i32 3
  store i32 %i.gu, ptr %i.l, align 4, !tbaa !35
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %ReadPAMFields.exit.i
  %.0.i = phi i64 [ %.037.i.i, %ReadPAMFields.exit.i ], [ %.231.i, %bb.bc ] ; 13 uses
  %i.gv = load i32, ptr %i.h, align 8, !tbaa !33  ; 4 uses
  %i.gw = icmp slt i32 %i.gv, 1
  %i.gx = load i32, ptr %i.g, align 4             ; 4 uses
  %i.gy = icmp slt i32 %i.gx, 1
  %or.cond133 = select i1 %i.gw, i1 true, i1 %i.gy
  br i1 %or.cond133, label %ReadHeader.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gz = load i32, ptr %i.i, align 4, !tbaa !25  ; 4 uses
  %i.ha = add i32 %i.gz, -9
  %or.cond.i = icmp ult i32 %i.ha, -8
  br i1 %or.cond.i, label %ReadHeader.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hb = load i32, ptr %i.l, align 4, !tbaa !35  ; 3 uses
  %i.hc = add i32 %i.hb, -5
  %or.cond53.i = icmp ult i32 %i.hc, -4
  br i1 %or.cond53.i, label %ReadHeader.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hd = load i32, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.he = add i32 %i.hd, -65536
  %or.cond54.i = icmp ult i32 %i.he, -65535
  br i1 %or.cond54.i, label %ReadHeader.exit.thread, label %ReadHeader.exit

ReadHeader.exit.thread:                           ; preds = %bb.bd, %bb.a, %bb.be, %bb.e, %bb.ax, %bb.bb, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.bh

ReadHeader.exit:                                  ; preds = %bb.bg
  %i.hf = icmp samesign ugt i32 %i.hd, 255
  %i.hg = zext i1 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hb, %i.hg            ; 2 uses
  store i32 %i.hh, ptr %i.k, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.hi = icmp eq i64 %.0.i, 0
  br i1 %i.hi, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %ReadHeader.exit.thread, %ReadHeader.exit
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !32
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %i.hj) #15 ; 0 uses
  br label %bb.cq

bb.bi:                                            ; preds = %ReadHeader.exit
  %i.hk = add nsw i32 %i.gz, -8
  %or.cond = icmp ult i32 %i.hk, -3
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.hm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hl, ptr noundef nonnull @.str.1, i32 noundef %i.gz) #12 ; 0 uses
  br label %bb.cq

bb.bk:                                            ; preds = %bb.bi
  %i.hn = icmp eq ptr %2, null
  br i1 %i.hn, label %bb.cq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ho = icmp samesign ugt i32 %i.gv, 16383
  %i.hp = icmp samesign ugt i32 %i.gx, 16383
  %or.cond5 = select i1 %i.ho, i1 true, i1 %i.hp
  br i1 %or.cond5, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.hr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.2, i32 noundef %i.gv, i32 noundef %i.gx) #12 ; 0 uses
  br label %bb.cq

bb.bn:                                            ; preds = %bb.bl
  %i.hs = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.ht = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.hu = mul nuw nsw i64 %i.ht, %i.hs
  %i.hv = zext nneg i32 %i.hh to i64
  %i.hw = mul nuw nsw i64 %i.hu, %i.hv
  %i.hx = add i64 %i.hw, %.0.i
  %i.hy = icmp ult i64 %1, %i.hx
  br i1 %i.hy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hz = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hz, ptr noundef nonnull @.str.3, i32 noundef %i.gz) #12 ; 0 uses
  br label %bb.cq

bb.bp:                                            ; preds = %bb.bn
  %i.ib = icmp samesign ugt i32 %i.hd, 255        ; 2 uses
  %i.ic = and i32 %i.hb, 5
  %or.cond8 = icmp eq i32 %i.ic, 1
  %.not = icmp eq i32 %3, 0                       ; 4 uses
  %i.id = or i1 %.not, %or.cond8                  ; 2 uses
  %i.ie = select i1 %i.id, i64 3, i64 4
  %i.if = mul nuw nsw i64 %i.ie, %i.hs            ; 21 uses
  %i.ig = call i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64 noundef %i.if, i64 noundef %i.ht) #11
  %.not121 = icmp eq i32 %i.ig, 0
  br i1 %.not121, label %bb.cq, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ih = load i32, ptr %i.g, align 4, !tbaa !34  ; 17 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %i.if, %i.ii
  %i.ik = call noalias ptr @malloc(i64 noundef %i.ij) #16 ; 15 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.cq, label %.preheader135

.preheader135:                                    ; preds = %bb.bq
  %i.im = icmp sgt i32 %i.ih, 0
  %.pre = load i32, ptr %i.h, align 8, !tbaa !33  ; 8 uses
  br i1 %i.im, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %.preheader135
  %i.in = load i32, ptr %i.k, align 8, !tbaa !40
  %i.io = mul nsw i32 %.pre, %i.in
  %i.ip = sext i32 %i.io to i64                   ; 17 uses
  %i.iq = load i32, ptr %i.m, align 8, !tbaa !28  ; 5 uses
  %i.ir = icmp eq i32 %i.iq, 255                  ; 4 uses
  %i.is = load i32, ptr %i.l, align 4
  %.fr186 = freeze i32 %i.is                      ; 6 uses
  %i.it = icmp sgt i32 %.fr186, 2                 ; 2 uses
  %or.cond11 = and i1 %i.ir, %i.it
  %i.iu = sdiv i32 %i.iq, 2                       ; 3 uses
  %i.iv = mul i32 %.fr186, %.pre                  ; 5 uses
  %i.iw = icmp eq i32 %.fr186, 1
  %i.ix = icmp ne i32 %.fr186, 2
  %or.cond19.not = or i1 %i.ix, %.not
  %i.iy = icmp eq i32 %.fr186, 4
  %invariant.op = and i1 %i.iy, %.not             ; 4 uses
  %i.iz = icmp sgt i32 %.pre, 0
  %i.ja = sext i32 %i.iv to i64                   ; 5 uses
  br i1 %or.cond11, label %.lr.ph160.split.us, label %.lr.ph160.split

.lr.ph160.split.us:                               ; preds = %.lr.ph160
  %i.jb = icmp ne i32 %.fr186, 3
  %or.cond13.not = and i1 %i.jb, %.not
  br i1 %or.cond13.not, label %.lr.ph160.split.us.split, label %.lr.ph160.split.us.split.us.preheader

.lr.ph160.split.us.split.us.preheader:            ; preds = %.lr.ph160.split.us
  %xtraiter367 = and i32 %i.ih, 3                 ; 3 uses
  %i.jc = icmp ult i32 %i.ih, 4
  br i1 %i.jc, label %.lr.ph160.split.us.split.us.epil.preheader, label %.lr.ph160.split.us.split.us.preheader.new

.lr.ph160.split.us.split.us.preheader.new:        ; preds = %.lr.ph160.split.us.split.us.preheader
  %unroll_iter371 = and i32 %i.ih, 2147483644
  br label %.lr.ph160.split.us.split.us

.lr.ph160.split.us.split.us:                      ; preds = %.lr.ph160.split.us.split.us, %.lr.ph160.split.us.split.us.preheader.new
  %.0103159.us.us = phi i64 [ %.0.i, %.lr.ph160.split.us.split.us.preheader.new ], [ %i.jn, %.lr.ph160.split.us.split.us ] ; 2 uses
  %.0104156.us.us = phi ptr [ %i.ik, %.lr.ph160.split.us.split.us.preheader.new ], [ %i.jo, %.lr.ph160.split.us.split.us ] ; 2 uses
  %niter372 = phi i32 [ 0, %.lr.ph160.split.us.split.us.preheader.new ], [ %niter372.next.3, %.lr.ph160.split.us.split.us ]
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us.us
  %i.je = add i64 %.0103159.us.us, %i.ip          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us.us, ptr align 1 %i.jd, i64 %i.ja, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %.0104156.us.us, i64 %i.if ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %i.je
  %i.jh = add i64 %i.je, %i.ip                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jf, ptr align 1 %i.jg, i64 %i.ja, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.if ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 %i.jh
  %i.jk = add i64 %i.jh, %i.ip                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr align 1 %i.jj, i64 %i.ja, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.if ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 %i.jk
  %i.jn = add i64 %i.jk, %i.ip                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jl, ptr align 1 %i.jm, i64 %i.ja, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.if ; 2 uses
  %niter372.next.3 = add nuw nsw i32 %niter372, 4 ; 2 uses
  %niter372.ncmp.3 = icmp eq i32 %niter372.next.3, %unroll_iter371
  br i1 %niter372.ncmp.3, label %._crit_edge.loopexit343.unr-lcssa, label %.lr.ph160.split.us.split.us, !llvm.loop !11

.lr.ph160.split.us.split:                         ; preds = %.lr.ph160.split.us
  br i1 %i.iz, label %.preheader.us.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph160.split.us.split
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.pre, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ih, ptr %7, align 4, !tbaa !45
  br label %bb.co

.preheader.us.preheader:                          ; preds = %.lr.ph160.split.us.split
  %wide.trip.count253 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter373 = and i64 %wide.trip.count253, 1
  %i.jp = icmp eq i32 %.pre, 1
  %unroll_iter377 = and i64 %wide.trip.count253, 2147483646
  %lcmp.mod375.not = icmp eq i64 %xtraiter373, 0
  %lcmp.mod376 = trunc i32 %.pre to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %.0103159.us = phi i64 [ %i.ky, %..loopexit_crit_edge.us ], [ %.0.i, %.preheader.us.preheader ] ; 2 uses
  %.0104156.us = phi ptr [ %i.kz, %..loopexit_crit_edge.us ], [ %i.ik, %.preheader.us.preheader ] ; 4 uses
  %.0106155.us = phi i32 [ %i.la, %..loopexit_crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us ; 3 uses
  br i1 %i.jp, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv250 = phi i64 [ %indvars.iv.next251.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %niter378 = phi i64 [ %niter378.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.jr = shl nuw nsw i64 %indvars.iv250, 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jr ; 3 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !29
  %i.ju = mul nuw nsw i64 %indvars.iv250, 3
  %i.jv = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.ju ; 3 uses
  store i8 %i.jt, ptr %i.jv, align 1, !tbaa !29
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !29
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !29
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !29
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !29
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 2 uses
  %i.kc = shl nuw nsw i64 %indvars.iv.next251, 2
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.kc ; 3 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  %i.kf = mul nuw nsw i64 %indvars.iv.next251, 3
  %i.kg = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.kf ; 3 uses
  store i8 %i.ke, ptr %i.kg, align 1, !tbaa !29
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !29
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !29
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !29
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !29
  %indvars.iv.next251.1 = add nuw nsw i64 %indvars.iv250, 2 ; 2 uses
  %niter378.next.1 = add i64 %niter378, 2         ; 2 uses
  %niter378.ncmp.1 = icmp eq i64 %niter378.next.1, %unroll_iter377
  br i1 %niter378.ncmp.1, label %..loopexit_crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !12

..loopexit_crit_edge.us.unr-lcssa:                ; preds = %.preheader.us.new
  br i1 %lcmp.mod375.not, label %..loopexit_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv250.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next251.1, %..loopexit_crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod376)
  %i.kn = shl nuw nsw i64 %indvars.iv250.epil.init, 2
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.kn ; 3 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !29
  %i.kq = mul nuw nsw i64 %indvars.iv250.epil.init, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.kq ; 3 uses
  store i8 %i.kp, ptr %i.kr, align 1, !tbaa !29
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !29
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !29
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !29
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !29
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.unr-lcssa, %.epil.preheader
  %i.ky = add i64 %.0103159.us, %i.ip
  %i.kz = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.if
  %i.la = add nuw nsw i32 %.0106155.us, 1         ; 2 uses
  %exitcond255.not = icmp eq i32 %i.la, %i.ih
  br i1 %exitcond255.not, label %._crit_edge, label %.preheader.us, !llvm.loop !11

.lr.ph160.split:                                  ; preds = %.lr.ph160
  %i.lb = icmp sgt i32 %i.iv, 0
  br i1 %i.lb, label %.lr.ph160.split.split, label %._crit_edge

.lr.ph160.split.split:                            ; preds = %.lr.ph160.split
  %wide.trip.count247 = zext nneg i32 %i.iv to i64 ; 16 uses
  br i1 %i.it, label %.lr.ph160.split.split.split.us, label %.lr.ph

.lr.ph160.split.split.split.us:                   ; preds = %.lr.ph160.split.split
  br i1 %i.ib, label %.lr.ph160.split.split.split.us.split.us, label %.lr.ph160.split.split.split.us.split

.lr.ph160.split.split.split.us.split.us:          ; preds = %.lr.ph160.split.split.split.us
  br i1 %i.ir, label %.lr.ph160.split.split.split.us.split.us.split.us, label %.lr.ph.us.us

.lr.ph160.split.split.split.us.split.us.split.us: ; preds = %.lr.ph160.split.split.split.us.split.us
  br i1 %invariant.op, label %.lr.ph.us.us.us.us, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.lr.ph160.split.split.split.us.split.us.split.us
  %min.iters.check = icmp ult i32 %i.iv, 8
  %min.iters.check338 = icmp ult i32 %i.iv, 16
  %i.lc = and i64 %wide.trip.count247, 8
  %n.vec = and i64 %wide.trip.count247, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count247
  %min.epilog.iters.check.not.not = icmp eq i64 %i.lc, 0
  %n.vec339 = and i64 %wide.trip.count247, 2147483640 ; 3 uses
  %cmp.n342 = icmp eq i64 %n.vec339, %wide.trip.count247
  br label %iter.check

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph160.split.split.split.us.split.us.split.us, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us185.us
  %.0103159.us161.us.us.us = phi i64 [ %i.lt, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us185.us ], [ %.0.i, %.lr.ph160.split.split.split.us.split.us.split.us ] ; 2 uses
  %.0104156.us162.us.us.us = phi ptr [ %i.lu, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us185.us ], [ %i.ik, %.lr.ph160.split.split.split.us.split.us.split.us ] ; 2 uses
  %.0106155.us163.us.us.us = phi i32 [ %i.lv, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us185.us ], [ 0, %.lr.ph160.split.split.split.us.split.us.split.us ]
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us.us.us
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.lr.ph.us.us.us.us
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %bb.bt ], [ 0, %.lr.ph.us.us.us.us ] ; 3 uses
  %.0102152.us.us.us.us.us.us182.us = phi i32 [ %.1.us.us.us.us.us.us.us, %bb.bt ], [ 0, %.lr.ph.us.us.us.us ] ; 3 uses
  %i.le = and i64 %indvars.iv244, 3
  %i.lf = icmp eq i64 %i.le, 3
  br i1 %i.lf, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lg = shl nuw nsw i64 %indvars.iv244, 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !29
  %i.lj = zext i8 %i.li to i16
  %i.lk = shl nuw i16 %i.lj, 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !29
  %i.ln = zext i8 %i.lm to i16
  %i.lo = or disjoint i16 %i.lk, %i.ln
  %spec.store.select.us.us.us.us.us.us184.us = call i16 @llvm.umin.i16(i16 %i.lo, i16 255)
  %i.lp = trunc nuw i16 %spec.store.select.us.us.us.us.us.us184.us to i8
  %i.lq = sext i32 %.0102152.us.us.us.us.us.us182.us to i64
  %i.lr = getelementptr inbounds i8, ptr %.0104156.us162.us.us.us, i64 %i.lq
  store i8 %i.lp, ptr %i.lr, align 1, !tbaa !29
  %i.ls = add nsw i32 %.0102152.us.us.us.us.us.us182.us, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1.us.us.us.us.us.us.us = phi i32 [ %.0102152.us.us.us.us.us.us182.us, %bb.br ], [ %i.ls, %bb.bs ]
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us185.us, label %bb.br, !llvm.loop !13

..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us185.us: ; preds = %bb.bt
  %i.lt = add i64 %.0103159.us161.us.us.us, %i.ip
  %i.lu = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us.us, i64 %i.if
  %i.lv = add nuw nsw i32 %.0106155.us163.us.us.us, 1 ; 2 uses
  %exitcond249.not = icmp eq i32 %i.lv, %i.ih
  br i1 %exitcond249.not, label %._crit_edge, label %.lr.ph.us.us.us.us, !llvm.loop !11

iter.check:                                       ; preds = %iter.check.preheader, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us
  %.0103159.us161.us.us = phi i64 [ %i.ug, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us ], [ %.0.i, %iter.check.preheader ] ; 2 uses
  %.0104156.us162.us.us = phi ptr [ %i.uh, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us ], [ %i.ik, %iter.check.preheader ] ; 4 uses
  %.0106155.us163.us.us = phi i32 [ %i.ui, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us ], [ 0, %iter.check.preheader ]
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us.us ; 25 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check338, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.lx = shl nuw nsw i64 %index, 1
  %i.ly = shl i64 %index, 1
  %i.lz = shl i64 %index, 1
  %i.ma = shl i64 %index, 1
  %i.mb = shl i64 %index, 1
  %i.mc = shl i64 %index, 1
  %i.md = shl i64 %index, 1
  %i.me = shl i64 %index, 1
  %i.mf = shl i64 %index, 1
  %i.mg = shl i64 %index, 1
  %i.mh = shl i64 %index, 1
  %i.mi = shl i64 %index, 1
  %i.mj = shl i64 %index, 1
  %i.mk = shl i64 %index, 1
  %i.ml = shl i64 %index, 1
  %i.mm = shl i64 %index, 1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lx ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ly ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lz ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ma ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 6
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mb ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mc ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 10
  %i.my = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.md ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 12
  %i.na = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.me ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 14
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mf ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mg ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 18
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mh ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 20
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mi ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 22
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mk ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 26
  %i.no = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ml ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 28
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mm ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 30
  %i.ns = load i8, ptr %i.mn, align 1, !tbaa !29
  %i.nt = load i8, ptr %i.mp, align 1, !tbaa !29
  %i.nu = load i8, ptr %i.mr, align 1, !tbaa !29
  %i.nv = load i8, ptr %i.mt, align 1, !tbaa !29
  %i.nw = load i8, ptr %i.mv, align 1, !tbaa !29
  %i.nx = load i8, ptr %i.mx, align 1, !tbaa !29
  %i.ny = load i8, ptr %i.mz, align 1, !tbaa !29
  %i.nz = load i8, ptr %i.nb, align 1, !tbaa !29
  %i.oa = load i8, ptr %i.nd, align 1, !tbaa !29
  %i.ob = load i8, ptr %i.nf, align 1, !tbaa !29
  %i.oc = load i8, ptr %i.nh, align 1, !tbaa !29
  %i.od = load i8, ptr %i.nj, align 1, !tbaa !29
  %i.oe = load i8, ptr %i.nl, align 1, !tbaa !29
  %i.of = load i8, ptr %i.nn, align 1, !tbaa !29
  %i.og = load i8, ptr %i.np, align 1, !tbaa !29
  %i.oh = load i8, ptr %i.nr, align 1, !tbaa !29
  %i.oi = insertelement <16 x i8> poison, i8 %i.ns, i64 0
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 1
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 2
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 3
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 4
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 5
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 6
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 7
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 8
  %i.or = insertelement <16 x i8> %i.oq, i8 %i.ob, i64 9
  %i.os = insertelement <16 x i8> %i.or, i8 %i.oc, i64 10
  %i.ot = insertelement <16 x i8> %i.os, i8 %i.od, i64 11
  %i.ou = insertelement <16 x i8> %i.ot, i8 %i.oe, i64 12
  %i.ov = insertelement <16 x i8> %i.ou, i8 %i.of, i64 13
  %i.ow = insertelement <16 x i8> %i.ov, i8 %i.og, i64 14
  %i.ox = insertelement <16 x i8> %i.ow, i8 %i.oh, i64 15
  %i.oy = zext <16 x i8> %i.ox to <16 x i16>
  %i.oz = shl nuw <16 x i16> %i.oy, splat (i16 8)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.pb = getelementptr inbounds nuw i8, ptr %i.mo, i64 3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.mq, i64 5
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ms, i64 7
  %i.pe = getelementptr inbounds nuw i8, ptr %i.mu, i64 9
  %i.pf = getelementptr inbounds nuw i8, ptr %i.mw, i64 11
  %i.pg = getelementptr inbounds nuw i8, ptr %i.my, i64 13
  %i.ph = getelementptr inbounds nuw i8, ptr %i.na, i64 15
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nc, i64 17
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ne, i64 19
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ng, i64 21
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ni, i64 23
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nk, i64 25
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nm, i64 27
  %i.po = getelementptr inbounds nuw i8, ptr %i.no, i64 29
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nq, i64 31
  %i.pq = load i8, ptr %i.pa, align 1, !tbaa !29
  %i.pr = load i8, ptr %i.pb, align 1, !tbaa !29
  %i.ps = load i8, ptr %i.pc, align 1, !tbaa !29
  %i.pt = load i8, ptr %i.pd, align 1, !tbaa !29
  %i.pu = load i8, ptr %i.pe, align 1, !tbaa !29
  %i.pv = load i8, ptr %i.pf, align 1, !tbaa !29
  %i.pw = load i8, ptr %i.pg, align 1, !tbaa !29
  %i.px = load i8, ptr %i.ph, align 1, !tbaa !29
  %i.py = load i8, ptr %i.pi, align 1, !tbaa !29
  %i.pz = load i8, ptr %i.pj, align 1, !tbaa !29
  %i.qa = load i8, ptr %i.pk, align 1, !tbaa !29
  %i.qb = load i8, ptr %i.pl, align 1, !tbaa !29
  %i.qc = load i8, ptr %i.pm, align 1, !tbaa !29
  %i.qd = load i8, ptr %i.pn, align 1, !tbaa !29
  %i.qe = load i8, ptr %i.po, align 1, !tbaa !29
  %i.qf = load i8, ptr %i.pp, align 1, !tbaa !29
  %i.qg = insertelement <16 x i8> poison, i8 %i.pq, i64 0
  %i.qh = insertelement <16 x i8> %i.qg, i8 %i.pr, i64 1
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 2
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 3
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 4
  %i.ql = insertelement <16 x i8> %i.qk, i8 %i.pv, i64 5
  %i.qm = insertelement <16 x i8> %i.ql, i8 %i.pw, i64 6
  %i.qn = insertelement <16 x i8> %i.qm, i8 %i.px, i64 7
  %i.qo = insertelement <16 x i8> %i.qn, i8 %i.py, i64 8
  %i.qp = insertelement <16 x i8> %i.qo, i8 %i.pz, i64 9
  %i.qq = insertelement <16 x i8> %i.qp, i8 %i.qa, i64 10
  %i.qr = insertelement <16 x i8> %i.qq, i8 %i.qb, i64 11
  %i.qs = insertelement <16 x i8> %i.qr, i8 %i.qc, i64 12
  %i.qt = insertelement <16 x i8> %i.qs, i8 %i.qd, i64 13
  %i.qu = insertelement <16 x i8> %i.qt, i8 %i.qe, i64 14
  %i.qv = insertelement <16 x i8> %i.qu, i8 %i.qf, i64 15
  %i.qw = zext <16 x i8> %i.qv to <16 x i16>
  %i.qx = or disjoint <16 x i16> %i.oz, %i.qw
  %i.qy = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.qx, <16 x i16> splat (i16 255))
  %i.qz = trunc nuw <16 x i16> %i.qy to <16 x i8>
  %i.ra = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %index
  store <16 x i8> %i.qz, ptr %i.ra, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rb = icmp eq i64 %index.next, %n.vec
  br i1 %i.rb, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index340 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next341, %vec.epilog.vector.body ] ; 10 uses
  %i.rc = shl nuw nsw i64 %index340, 1
  %i.rd = shl i64 %index340, 1
  %i.re = shl i64 %index340, 1
  %i.rf = shl i64 %index340, 1
  %i.rg = shl i64 %index340, 1
  %i.rh = shl i64 %index340, 1
  %i.ri = shl i64 %index340, 1
  %i.rj = shl i64 %index340, 1
  %i.rk = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rc ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rd ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rn = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.re ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rf ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 6
  %i.rr = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rg ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rh ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 10
  %i.rv = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ri ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %i.rx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rj ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 14
  %i.rz = load i8, ptr %i.rk, align 1, !tbaa !29
  %i.sa = load i8, ptr %i.rm, align 1, !tbaa !29
  %i.sb = load i8, ptr %i.ro, align 1, !tbaa !29
  %i.sc = load i8, ptr %i.rq, align 1, !tbaa !29
  %i.sd = load i8, ptr %i.rs, align 1, !tbaa !29
  %i.se = load i8, ptr %i.ru, align 1, !tbaa !29
  %i.sf = load i8, ptr %i.rw, align 1, !tbaa !29
  %i.sg = load i8, ptr %i.ry, align 1, !tbaa !29
  %i.sh = insertelement <8 x i8> poison, i8 %i.rz, i64 0
  %i.si = insertelement <8 x i8> %i.sh, i8 %i.sa, i64 1
  %i.sj = insertelement <8 x i8> %i.si, i8 %i.sb, i64 2
  %i.sk = insertelement <8 x i8> %i.sj, i8 %i.sc, i64 3
  %i.sl = insertelement <8 x i8> %i.sk, i8 %i.sd, i64 4
  %i.sm = insertelement <8 x i8> %i.sl, i8 %i.se, i64 5
  %i.sn = insertelement <8 x i8> %i.sm, i8 %i.sf, i64 6
  %i.so = insertelement <8 x i8> %i.sn, i8 %i.sg, i64 7
  %i.sp = zext <8 x i8> %i.so to <8 x i16>
  %i.sq = shl nuw <8 x i16> %i.sp, splat (i16 8)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rk, i64 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rl, i64 3
  %i.st = getelementptr inbounds nuw i8, ptr %i.rn, i64 5
  %i.su = getelementptr inbounds nuw i8, ptr %i.rp, i64 7
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rr, i64 9
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rt, i64 11
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rv, i64 13
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rx, i64 15
  %i.sz = load i8, ptr %i.sr, align 1, !tbaa !29
  %i.ta = load i8, ptr %i.ss, align 1, !tbaa !29
  %i.tb = load i8, ptr %i.st, align 1, !tbaa !29
  %i.tc = load i8, ptr %i.su, align 1, !tbaa !29
  %i.td = load i8, ptr %i.sv, align 1, !tbaa !29
  %i.te = load i8, ptr %i.sw, align 1, !tbaa !29
  %i.tf = load i8, ptr %i.sx, align 1, !tbaa !29
  %i.tg = load i8, ptr %i.sy, align 1, !tbaa !29
  %i.th = insertelement <8 x i8> poison, i8 %i.sz, i64 0
  %i.ti = insertelement <8 x i8> %i.th, i8 %i.ta, i64 1
  %i.tj = insertelement <8 x i8> %i.ti, i8 %i.tb, i64 2
  %i.tk = insertelement <8 x i8> %i.tj, i8 %i.tc, i64 3
  %i.tl = insertelement <8 x i8> %i.tk, i8 %i.td, i64 4
  %i.tm = insertelement <8 x i8> %i.tl, i8 %i.te, i64 5
  %i.tn = insertelement <8 x i8> %i.tm, i8 %i.tf, i64 6
  %i.to = insertelement <8 x i8> %i.tn, i8 %i.tg, i64 7
  %i.tp = zext <8 x i8> %i.to to <8 x i16>
  %i.tq = or disjoint <8 x i16> %i.sq, %i.tp
  %i.tr = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.tq, <8 x i16> splat (i16 255))
  %i.ts = trunc nuw <8 x i16> %i.tr to <8 x i8>
  %i.tt = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %index340
  store <8 x i8> %i.ts, ptr %i.tt, align 1, !tbaa !29
  %index.next341 = add nuw i64 %index340, 8       ; 2 uses
  %i.tu = icmp eq i64 %index.next341, %n.vec339
  br i1 %i.tu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n342, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv236.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec339, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %vec.epilog.scalar.ph ], [ %indvars.iv236.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.tv = shl nuw nsw i64 %indvars.iv236, 1
  %i.tw = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.tv ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !29
  %i.ty = zext i8 %i.tx to i16
  %i.tz = shl nuw i16 %i.ty, 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !29
  %i.uc = zext i8 %i.ub to i16
  %i.ud = or disjoint i16 %i.tz, %i.uc
  %spec.store.select.us.us.us.us.us.us.us = call i16 @llvm.umin.i16(i16 %i.ud, i16 255)
  %i.ue = trunc nuw i16 %spec.store.select.us.us.us.us.us.us.us to i8
  %i.uf = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %indvars.iv236
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !29
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count247
  br i1 %exitcond242.not, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, label %vec.epilog.scalar.ph, !llvm.loop !16

..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ug = add i64 %.0103159.us161.us.us, %i.ip
  %i.uh = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %i.if
  %i.ui = add nuw nsw i32 %.0106155.us163.us.us, 1 ; 2 uses
  %exitcond243.not = icmp eq i32 %i.ui, %i.ih
  br i1 %exitcond243.not, label %._crit_edge, label %iter.check, !llvm.loop !11

.lr.ph.us.us:                                     ; preds = %.lr.ph160.split.split.split.us.split.us, %..loopexit134_crit_edge.split.us.us.split.us.us.split
  %.0103159.us161.us = phi i64 [ %i.vc, %..loopexit134_crit_edge.split.us.us.split.us.us.split ], [ %.0.i, %.lr.ph160.split.split.split.us.split.us ] ; 2 uses
  %.0104156.us162.us = phi ptr [ %i.vd, %..loopexit134_crit_edge.split.us.us.split.us.us.split ], [ %i.ik, %.lr.ph160.split.split.split.us.split.us ] ; 2 uses
  %.0106155.us163.us = phi i32 [ %i.ve, %..loopexit134_crit_edge.split.us.us.split.us.us.split ], [ 0, %.lr.ph160.split.split.split.us.split.us ]
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %.lr.ph.us.us
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %bb.bw ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.0102152.us.us.us.us = phi i32 [ %.1.us.us.us.us, %bb.bw ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.uk = and i64 %indvars.iv230, 3
  %i.ul = icmp eq i64 %i.uk, 3
  %or.cond125.reass.us.us.us.us = and i1 %i.ul, %invariant.op
  br i1 %or.cond125.reass.us.us.us.us, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.um = shl nuw nsw i64 %indvars.iv230, 1
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.um ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !29
  %i.up = zext i8 %i.uo to i32
  %i.uq = shl nuw nsw i32 %i.up, 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !29
  %i.ut = zext i8 %i.us to i32
  %i.uu = or disjoint i32 %i.uq, %i.ut
  %i.uv = mul nuw nsw i32 %i.uu, 255
  %i.uw = add nsw i32 %i.uv, %i.iu
  %i.ux = udiv i32 %i.uw, %i.iq
  %spec.store.select.us.us.us.us = call i32 @llvm.umin.i32(i32 %i.ux, i32 255)
  %i.uy = trunc nuw i32 %spec.store.select.us.us.us.us to i8
  %i.uz = sext i32 %.0102152.us.us.us.us to i64
  %i.va = getelementptr inbounds i8, ptr %.0104156.us162.us, i64 %i.uz
  store i8 %i.uy, ptr %i.va, align 1, !tbaa !29
  %i.vb = add nsw i32 %.0102152.us.us.us.us, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.1.us.us.us.us = phi i32 [ %.0102152.us.us.us.us, %bb.bu ], [ %i.vb, %bb.bv ]
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count247
  br i1 %exitcond234.not, label %..loopexit134_crit_edge.split.us.us.split.us.us.split, label %bb.bu, !llvm.loop !13

..loopexit134_crit_edge.split.us.us.split.us.us.split: ; preds = %bb.bw
  %i.vc = add i64 %.0103159.us161.us, %i.ip
  %i.vd = getelementptr inbounds nuw i8, ptr %.0104156.us162.us, i64 %i.if
  %i.ve = add nuw nsw i32 %.0106155.us163.us, 1   ; 2 uses
  %exitcond235.not = icmp eq i32 %i.ve, %i.ih
  br i1 %exitcond235.not, label %._crit_edge, label %.lr.ph.us.us, !llvm.loop !11

.lr.ph160.split.split.split.us.split:             ; preds = %.lr.ph160.split.split.split.us
  br i1 %i.ir, label %.lr.ph160.split.split.split.us.split.split.us, label %.lr.ph.us

.lr.ph160.split.split.split.us.split.split.us:    ; preds = %.lr.ph160.split.split.split.us.split
  br i1 %invariant.op, label %.lr.ph.us.us172.us, label %.lr.ph.us.us172.preheader

.lr.ph.us.us172.preheader:                        ; preds = %.lr.ph160.split.split.split.us.split.split.us
  %xtraiter = and i32 %i.ih, 3                    ; 3 uses
  %i.vf = icmp ult i32 %i.ih, 4
  br i1 %i.vf, label %.lr.ph.us.us172.epil.preheader, label %.lr.ph.us.us172.preheader.new

.lr.ph.us.us172.preheader.new:                    ; preds = %.lr.ph.us.us172.preheader
  %unroll_iter = and i32 %i.ih, 2147483644
  br label %.lr.ph.us.us172

.lr.ph.us.us172.us:                               ; preds = %.lr.ph160.split.split.split.us.split.split.us, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us
  %.0103159.us161.us173.us = phi i64 [ %i.vt, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us ], [ %.0.i, %.lr.ph160.split.split.split.us.split.split.us ] ; 2 uses
  %.0104156.us162.us174.us = phi ptr [ %i.vu, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us ], [ %i.ik, %.lr.ph160.split.split.split.us.split.split.us ] ; 3 uses
  %.0106155.us163.us175.us = phi i32 [ %i.vv, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us ], [ 0, %.lr.ph160.split.split.split.us.split.split.us ]
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us173.us ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %.lr.ph.us.us172.us
  %indvars.iv224 = phi i64 [ 0, %.lr.ph.us.us172.us ], [ %indvars.iv.next225.1, %bb.bz ] ; 3 uses
  %.0102152.us.us.us166.us177.us = phi i32 [ 0, %.lr.ph.us.us172.us ], [ %.1.us.us.us171.us.us.1, %bb.bz ] ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %indvars.iv224
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !29
  %i.vj = sext i32 %.0102152.us.us.us166.us177.us to i64
  %i.vk = getelementptr inbounds i8, ptr %.0104156.us162.us174.us, i64 %i.vj
  store i8 %i.vi, ptr %i.vk, align 1, !tbaa !29
  %i.vl = add nsw i32 %.0102152.us.us.us166.us177.us, 1 ; 3 uses
  %indvars.iv.next225 = or disjoint i64 %indvars.iv224, 1 ; 2 uses
  %i.vm = and i64 %indvars.iv.next225, 3
  %i.vn = icmp eq i64 %i.vm, 3
  br i1 %i.vn, label %bb.bz, label %bb.by

end_hunk_0
begin_hunk_1_@ReadPNM:bb.a
  %exitcond229.not = icmp eq i32 %i.vv, %i.ih
  br i1 %exitcond229.not, label %._crit_edge, label %.lr.ph.us.us172.us, !llvm.loop !11

.lr.ph.us.us172:                                  ; preds = %.lr.ph.us.us172, %.lr.ph.us.us172.preheader.new
  %.0103159.us161.us173 = phi i64 [ %.0.i, %.lr.ph.us.us172.preheader.new ], [ %i.wg, %.lr.ph.us.us172 ] ; 2 uses
  %.0104156.us162.us174 = phi ptr [ %i.ik, %.lr.ph.us.us172.preheader.new ], [ %i.wh, %.lr.ph.us.us172 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.us.us172.preheader.new ], [ %niter.next.3, %.lr.ph.us.us172 ]
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us173
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us162.us174, ptr align 1 %i.vw, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.vx = add i64 %.0103159.us161.us173, %i.ip    ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0104156.us162.us174, i64 %i.if ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 %i.vx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vy, ptr align 1 %i.vz, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.wa = add i64 %i.vx, %i.ip                    ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.if ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 %i.wa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wb, ptr align 1 %i.wc, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.wd = add i64 %i.wa, %i.ip                    ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.if ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 %i.wd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.we, ptr align 1 %i.wf, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.wg = add i64 %i.wd, %i.ip                    ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.if ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit348.unr-lcssa, label %.lr.ph.us.us172, !llvm.loop !11

.lr.ph.us:                                        ; preds = %.lr.ph160.split.split.split.us.split, %..loopexit134_crit_edge.split.us.us.split.split
  %.0103159.us161 = phi i64 [ %i.wv, %..loopexit134_crit_edge.split.us.us.split.split ], [ %.0.i, %.lr.ph160.split.split.split.us.split ] ; 2 uses
  %.0104156.us162 = phi ptr [ %i.ww, %..loopexit134_crit_edge.split.us.us.split.split ], [ %i.ik, %.lr.ph160.split.split.split.us.split ] ; 2 uses
  %.0106155.us163 = phi i32 [ %i.wx, %..loopexit134_crit_edge.split.us.us.split.split ], [ 0, %.lr.ph160.split.split.split.us.split ]
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cc, %.lr.ph.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %bb.cc ], [ 0, %.lr.ph.us ] ; 3 uses
  %.0102152.us.us = phi i32 [ %.1.us.us, %bb.cc ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.wj = and i64 %indvars.iv212, 3
  %i.wk = icmp eq i64 %i.wj, 3
  %or.cond125.reass.us.us = and i1 %i.wk, %invariant.op
  br i1 %or.cond125.reass.us.us, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 %indvars.iv212
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !29
  %i.wn = zext i8 %i.wm to i32
  %i.wo = mul nuw nsw i32 %i.wn, 255
  %i.wp = add nsw i32 %i.wo, %i.iu
  %i.wq = udiv i32 %i.wp, %i.iq
  %spec.store.select.us.us = call i32 @llvm.umin.i32(i32 %i.wq, i32 255)
  %i.wr = trunc nuw i32 %spec.store.select.us.us to i8
  %i.ws = sext i32 %.0102152.us.us to i64
  %i.wt = getelementptr inbounds i8, ptr %.0104156.us162, i64 %i.ws
  store i8 %i.wr, ptr %i.wt, align 1, !tbaa !29
  %i.wu = add nsw i32 %.0102152.us.us, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.1.us.us = phi i32 [ %.0102152.us.us, %bb.ca ], [ %i.wu, %bb.cb ]
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count247
  br i1 %exitcond216.not, label %..loopexit134_crit_edge.split.us.us.split.split, label %bb.ca, !llvm.loop !13

..loopexit134_crit_edge.split.us.us.split.split:  ; preds = %bb.cc
  %i.wv = add i64 %.0103159.us161, %i.ip
  %i.ww = getelementptr inbounds nuw i8, ptr %.0104156.us162, i64 %i.if
  %i.wx = add nuw nsw i32 %.0106155.us163, 1      ; 2 uses
  %exitcond217.not = icmp eq i32 %i.wx, %i.ih
  br i1 %exitcond217.not, label %._crit_edge, label %.lr.ph.us, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph160.split.split, %..loopexit134_crit_edge.split
  %.0103159 = phi i64 [ %i.yb, %..loopexit134_crit_edge.split ], [ %.0.i, %.lr.ph160.split.split ] ; 2 uses
  %.0104156 = phi ptr [ %i.yc, %..loopexit134_crit_edge.split ], [ %i.ik, %.lr.ph160.split.split ] ; 3 uses
  %.0106155 = phi i32 [ %i.yd, %..loopexit134_crit_edge.split ], [ 0, %.lr.ph160.split.split ]
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph, %bb.cm
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cm ] ; 4 uses
  %.0102152 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.cm ] ; 5 uses
  br i1 %i.ib, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wz = shl nuw nsw i64 %indvars.iv, 1
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wz ; 2 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !29
  %i.xc = zext i8 %i.xb to i32
  %i.xd = shl nuw nsw i32 %i.xc, 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !29
  %i.xg = zext i8 %i.xf to i32
  %i.xh = or disjoint i32 %i.xd, %i.xg
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wy, i64 %indvars.iv
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !29
  %i.xk = zext i8 %i.xj to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.xl = phi i32 [ %i.xh, %bb.ce ], [ %i.xk, %bb.cf ] ; 2 uses
  br i1 %i.ir, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xm = mul nuw nsw i32 %i.xl, 255
  %i.xn = add nsw i32 %i.xm, %i.iu
  %i.xo = udiv i32 %i.xn, %i.iq
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0 = phi i32 [ %i.xo, %bb.ch ], [ %i.xl, %bb.cg ]
  %spec.store.select = call i32 @llvm.umin.i32(i32 %.0, i32 255) ; 2 uses
  %i.xp = and i64 %indvars.iv, 1
  %i.xq = icmp eq i64 %i.xp, 0
  %or.cond127 = or i1 %i.iw, %i.xq
  br i1 %or.cond127, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.xr = trunc nuw i32 %spec.store.select to i8  ; 3 uses
  %i.xs = sext i32 %.0102152 to i64
  %i.xt = getelementptr i8, ptr %.0104156, i64 %i.xs ; 3 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 2
  store i8 %i.xr, ptr %i.xu, align 1, !tbaa !29
  %i.xv = getelementptr i8, ptr %i.xt, i64 1
  store i8 %i.xr, ptr %i.xv, align 1, !tbaa !29
  store i8 %i.xr, ptr %i.xt, align 1, !tbaa !29
  %i.xw = add nsw i32 %.0102152, 3
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  br i1 %or.cond19.not, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xx = trunc nuw i32 %spec.store.select to i8
  %i.xy = sext i32 %.0102152 to i64
  %i.xz = getelementptr inbounds i8, ptr %.0104156, i64 %i.xy
  store i8 %i.xx, ptr %i.xz, align 1, !tbaa !29
  %i.ya = add nsw i32 %.0102152, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cj, %bb.ck, %bb.cl
  %.1 = phi i32 [ %i.ya, %bb.cl ], [ %.0102152, %bb.ck ], [ %i.xw, %bb.cj ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count247
  br i1 %exitcond.not, label %..loopexit134_crit_edge.split, label %bb.cd, !llvm.loop !13

..loopexit134_crit_edge.split:                    ; preds = %bb.cm
  %i.yb = add i64 %.0103159, %i.ip
  %i.yc = getelementptr inbounds nuw i8, ptr %.0104156, i64 %i.if
  %i.yd = add nuw nsw i32 %.0106155, 1            ; 2 uses
  %exitcond211.not = icmp eq i32 %i.yd, %i.ih
  br i1 %exitcond211.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit343.unr-lcssa:                ; preds = %.lr.ph160.split.us.split.us
  %lcmp.mod369.not = icmp eq i32 %xtraiter367, 0
  br i1 %lcmp.mod369.not, label %._crit_edge, label %.lr.ph160.split.us.split.us.epil.preheader

.lr.ph160.split.us.split.us.epil.preheader:       ; preds = %._crit_edge.loopexit343.unr-lcssa, %.lr.ph160.split.us.split.us.preheader
  %.0103159.us.us.epil.init = phi i64 [ %.0.i, %.lr.ph160.split.us.split.us.preheader ], [ %i.jn, %._crit_edge.loopexit343.unr-lcssa ]
  %.0104156.us.us.epil.init = phi ptr [ %i.ik, %.lr.ph160.split.us.split.us.preheader ], [ %i.jo, %._crit_edge.loopexit343.unr-lcssa ]
  %lcmp.mod370 = icmp ne i32 %xtraiter367, 0
  call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph160.split.us.split.us.epil

.lr.ph160.split.us.split.us.epil:                 ; preds = %.lr.ph160.split.us.split.us.epil, %.lr.ph160.split.us.split.us.epil.preheader
  %.0103159.us.us.epil = phi i64 [ %i.yf, %.lr.ph160.split.us.split.us.epil ], [ %.0103159.us.us.epil.init, %.lr.ph160.split.us.split.us.epil.preheader ] ; 2 uses
  %.0104156.us.us.epil = phi ptr [ %i.yg, %.lr.ph160.split.us.split.us.epil ], [ %.0104156.us.us.epil.init, %.lr.ph160.split.us.split.us.epil.preheader ] ; 2 uses
  %epil.iter368 = phi i32 [ %epil.iter368.next, %.lr.ph160.split.us.split.us.epil ], [ 0, %.lr.ph160.split.us.split.us.epil.preheader ]
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us.us.epil
  %i.yf = add i64 %.0103159.us.us.epil, %i.ip
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us.us.epil, ptr align 1 %i.ye, i64 %i.ja, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %.0104156.us.us.epil, i64 %i.if
  %epil.iter368.next = add i32 %epil.iter368, 1   ; 2 uses
  %epil.iter368.cmp.not = icmp eq i32 %epil.iter368.next, %xtraiter367
  br i1 %epil.iter368.cmp.not, label %._crit_edge, label %.lr.ph160.split.us.split.us.epil, !llvm.loop !17

._crit_edge.loopexit348.unr-lcssa:                ; preds = %.lr.ph.us.us172
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.us.us172.epil.preheader

.lr.ph.us.us172.epil.preheader:                   ; preds = %._crit_edge.loopexit348.unr-lcssa, %.lr.ph.us.us172.preheader
  %.0103159.us161.us173.epil.init = phi i64 [ %.0.i, %.lr.ph.us.us172.preheader ], [ %i.wg, %._crit_edge.loopexit348.unr-lcssa ]
  %.0104156.us162.us174.epil.init = phi ptr [ %i.ik, %.lr.ph.us.us172.preheader ], [ %i.wh, %._crit_edge.loopexit348.unr-lcssa ]
  %lcmp.mod366 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod366)
  br label %.lr.ph.us.us172.epil

.lr.ph.us.us172.epil:                             ; preds = %.lr.ph.us.us172.epil, %.lr.ph.us.us172.epil.preheader
  %.0103159.us161.us173.epil = phi i64 [ %i.yi, %.lr.ph.us.us172.epil ], [ %.0103159.us161.us173.epil.init, %.lr.ph.us.us172.epil.preheader ] ; 2 uses
  %.0104156.us162.us174.epil = phi ptr [ %i.yj, %.lr.ph.us.us172.epil ], [ %.0104156.us162.us174.epil.init, %.lr.ph.us.us172.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.us.us172.epil ], [ 0, %.lr.ph.us.us172.epil.preheader ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us173.epil
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us162.us174.epil, ptr align 1 %i.yh, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.yi = add i64 %.0103159.us161.us173.epil, %i.ip
  %i.yj = getelementptr inbounds nuw i8, ptr %.0104156.us162.us174.epil, i64 %i.if
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.us.us172.epil, !llvm.loop !18

._crit_edge:                                      ; preds = %..loopexit134_crit_edge.split, %..loopexit134_crit_edge.split.us.us.split.split, %._crit_edge.loopexit348.unr-lcssa, %.lr.ph.us.us172.epil, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us, %..loopexit134_crit_edge.split.us.us.split.us.us.split, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us185.us, %._crit_edge.loopexit343.unr-lcssa, %.lr.ph160.split.us.split.us.epil, %..loopexit_crit_edge.us, %.lr.ph160.split, %.preheader135
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.pre, ptr %i.yk, align 8, !tbaa !44
  %i.yl = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ih, ptr %i.yl, align 4, !tbaa !45
  br i1 %i.id, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge
  %8 = trunc nuw nsw i64 %i.if to i32
  %i.ym = call i32 @WebPPictureImportRGBA(ptr noundef nonnull %2, ptr noundef nonnull %i.ik, i32 noundef %8) #11
  br label %bb.cp

bb.co:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %9 = trunc nuw nsw i64 %i.if to i32
  %i.yn = call i32 @WebPPictureImportRGB(ptr noundef nonnull %2, ptr noundef nonnull %i.ik, i32 noundef %9) #11
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.yo = phi i32 [ %i.ym, %bb.cn ], [ %i.yn, %bb.co ]
  %.not122 = icmp ne i32 %i.yo, 0
  %spec.store.select20 = zext i1 %.not122 to i32
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.bq, %bb.bp, %bb.bk, %bb.bo, %bb.bm, %bb.bj, %bb.bh
  %.0109 = phi i32 [ 0, %bb.bh ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bm ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ 0, %bb.bq ], [ %spec.store.select20, %bb.cp ]
  %.0105 = phi ptr [ null, %bb.bh ], [ null, %bb.bj ], [ null, %bb.bk ], [ null, %bb.bm ], [ null, %bb.bo ], [ null, %bb.bp ], [ null, %bb.bq ], [ %i.ik, %bb.cp ]
  call void @free(ptr noundef %.0105) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.0109
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @WebPPictureImportRGBA(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPPictureImportRGB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !30}
!10 = distinct !{!10, !30}
!11 = distinct !{!11, !30}
!12 = distinct !{!12, !30}
!13 = distinct !{!13, !30}
!14 = distinct !{!14, !30, !46, !47}
!15 = distinct !{!15, !30, !46, !47}
!16 = distinct !{!16, !30, !47, !46}
!17 = distinct !{!17, !49}
!18 = distinct !{!18, !49}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"", !20, i64 0, !21, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!23 = !{!22, !20, i64 0}
!24 = !{!22, !21, i64 8}
!25 = !{!22, !6, i64 36}
!26 = !{!22, !6, i64 40}
!27 = !{!6, !6, i64 0}
!28 = !{!22, !6, i64 32}
!29 = !{!5, !5, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!22, !6, i64 16}
!34 = !{!22, !6, i64 20}
!35 = !{!22, !6, i64 28}
!36 = !{!"p1 short", !19, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!22, !6, i64 24}
!41 = !{!"p1 int", !19, i64 0}
!42 = !{!"p1 _ZTS12WebPAuxStats", !19, i64 0}
!43 = !{!"WebPPicture", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !20, i64 16, !20, i64 24, !20, i64 32, !6, i64 40, !6, i64 44, !20, i64 48, !6, i64 56, !5, i64 60, !41, i64 72, !6, i64 80, !5, i64 84, !19, i64 96, !19, i64 104, !6, i64 112, !20, i64 120, !42, i64 128, !6, i64 136, !19, i64 144, !19, i64 152, !5, i64 160, !20, i64 176, !20, i64 184, !5, i64 192, !19, i64 224, !19, i64 232, !5, i64 240}
!44 = !{!43, !6, i64 8}
!45 = !{!43, !6, i64 12}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"branch_weights", i32 8, i32 8}
!49 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
