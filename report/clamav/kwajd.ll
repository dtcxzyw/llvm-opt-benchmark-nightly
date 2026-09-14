Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/kwajd?download=true
inline.NumInlined: 15
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@lzh_read_lens:bb.a
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge532, %.preheader347
  %i.cm = phi i32 [ %.pre619, %._crit_edge532 ], [ %i.bu, %.preheader347 ] ; 5 uses
  %.5234.lcssa = phi ptr [ %i.ch, %._crit_edge532 ], [ %.3232.lcssa, %.preheader347 ] ; 4 uses
  %.5220.lcssa = phi ptr [ %.6221, %._crit_edge532 ], [ %.3218.lcssa, %.preheader347 ] ; 4 uses
  %.3204.lcssa = phi i32 [ %i.cl, %._crit_edge532 ], [ %i.bs, %.preheader347 ] ; 2 uses
  %.3200.lcssa = phi i32 [ 8, %._crit_edge532 ], [ %i.bt, %.preheader347 ] ; 5 uses
  %i.cn = shl i32 %.3204.lcssa, 1                 ; 3 uses
  %i.co = add nsw i32 %.3200.lcssa, -1            ; 2 uses
  %.not286 = icmp sgt i32 %.3200.lcssa, %i.cm
  br i1 %.not286, label %bb.y, label %lzh_read_input.exit

bb.y:                                             ; preds = %bb.x
  %i.cp = icmp sgt i32 %.3204.lcssa, -1
  br i1 %i.cp, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.cq = icmp slt i32 %.3200.lcssa, 5
  br i1 %i.cq, label %.lr.ph559.preheader, label %._crit_edge560

.lr.ph559.preheader:                              ; preds = %.preheader
  %i.cr = add nuw nsw i32 %.3200.lcssa, 7
  %.not288 = icmp ult ptr %.5234.lcssa, %.5220.lcssa
  br i1 %.not288, label %._crit_edge560.loopexit, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = add i32 %.0570, 1
  br label %bb.ah

bb.aa:                                            ; preds = %.lr.ph559.preheader
  %.not.i311 = icmp eq i32 %i.cm, 0
  br i1 %.not.i311, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = add nsw i32 %i.cm, 8                    ; 2 uses
  store i32 %i.ct, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.az, align 4, !tbaa !28
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %0, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.cy = tail call i32 %i.cw(ptr noundef %i.cx, ptr noundef nonnull %i.az, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %lzh_read_input.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = icmp eq i32 %i.cy, 0
  br i1 %i.da, label %bb.ae, label %._crit_edge625

._crit_edge625:                                   ; preds = %bb.ad
  %.pre620.pre.pre = load i32, ptr %i.at, align 8, !tbaa !44
  %i.db = zext nneg i32 %i.cy to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 8, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.az, align 4, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge625, %bb.ab, %bb.ae
  %.pre620.pre = phi i32 [ %i.ct, %bb.ab ], [ 8, %bb.ae ], [ %.pre620.pre.pre, %._crit_edge625 ]
  %.0.i312 = phi i64 [ 1, %bb.ab ], [ 1, %bb.ae ], [ %i.db, %._crit_edge625 ]
  store ptr %i.az, ptr %i.a, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i312 ; 2 uses
  store ptr %i.dc, ptr %i.c, align 8, !tbaa !41
  br label %._crit_edge560.loopexit

._crit_edge560.loopexit:                          ; preds = %bb.af, %.lr.ph559.preheader
  %.pre620 = phi i32 [ %.pre620.pre, %bb.af ], [ %i.cm, %.lr.ph559.preheader ]
  %.8237 = phi ptr [ %i.az, %bb.af ], [ %.5234.lcssa, %.lr.ph559.preheader ] ; 2 uses
  %.8223 = phi ptr [ %i.dc, %bb.af ], [ %.5220.lcssa, %.lr.ph559.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.8237, i64 1
  %i.de = load i8, ptr %.8237, align 1, !tbaa !28
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 25, %.3200.lcssa
  %i.dh = shl nuw i32 %i.df, %i.dg
  %i.di = or i32 %i.dh, %i.cn
  br label %._crit_edge560

._crit_edge560:                                   ; preds = %._crit_edge560.loopexit, %.preheader
  %i.dj = phi i32 [ %i.cm, %.preheader ], [ %.pre620, %._crit_edge560.loopexit ] ; 2 uses
  %.7236.lcssa = phi ptr [ %.5234.lcssa, %.preheader ], [ %i.dd, %._crit_edge560.loopexit ]
  %.7222.lcssa = phi ptr [ %.5220.lcssa, %.preheader ], [ %.8223, %._crit_edge560.loopexit ]
  %.4205.lcssa = phi i32 [ %i.cn, %.preheader ], [ %i.di, %._crit_edge560.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.co, %.preheader ], [ %i.cr, %._crit_edge560.loopexit ]
  %i.dk = add nsw i32 %.4.lcssa, -4               ; 2 uses
  %.not287 = icmp ne i32 %i.dj, 0
  %i.dl = icmp slt i32 %i.dk, %i.dj
  %or.cond298 = select i1 %.not287, i1 %i.dl, i1 false
  br i1 %or.cond298, label %lzh_read_input.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge560
  %i.dm = shl i32 %.4205.lcssa, 4
  %i.dn = lshr i32 %.4205.lcssa, 28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.q, %bb.ag, %bb.z
  %.0570.sink = phi i32 [ %i.cs, %bb.z ], [ %i.dn, %bb.ag ], [ %.0570, %bb.q ] ; 2 uses
  %.9238 = phi ptr [ %.5234.lcssa, %bb.z ], [ %.7236.lcssa, %bb.ag ], [ %.3232.lcssa, %bb.q ] ; 2 uses
  %.9224 = phi ptr [ %.5220.lcssa, %bb.z ], [ %.7222.lcssa, %bb.ag ], [ %.3218.lcssa, %bb.q ] ; 2 uses
  %.5206 = phi i32 [ %i.cn, %bb.z ], [ %i.dm, %bb.ag ], [ %i.bs, %bb.q ] ; 2 uses
  %.5 = phi i32 [ %i.co, %bb.z ], [ %i.dk, %bb.ag ], [ %i.bt, %bb.q ] ; 2 uses
  %i.do = trunc i32 %.0570.sink to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv611
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !28
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %exitcond615.not = icmp eq i64 %indvars.iv.next612, %wide.trip.count614
  br i1 %exitcond615.not, label %.loopexit, label %.preheader349

bb.ai:                                            ; preds = %.lr.ph452, %bb.ao
  %.6451 = phi i32 [ %i.h, %.lr.ph452 ], [ %i.eh, %bb.ao ] ; 3 uses
  %.6207450 = phi i32 [ %i.f, %.lr.ph452 ], [ %i.eg, %bb.ao ]
  %.10225449 = phi ptr [ %i.d, %.lr.ph452 ], [ %.11226, %bb.ao ] ; 2 uses
  %.10239448 = phi ptr [ %i.b, %.lr.ph452 ], [ %i.eb, %bb.ao ] ; 2 uses
  %.not280 = icmp ult ptr %.10239448, %.10225449
  br i1 %.not280, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load i32, ptr %i.m, align 8, !tbaa !44  ; 2 uses
  %.not.i315 = icmp eq i32 %i.dq, 0
  br i1 %.not.i315, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = add nsw i32 %i.dq, 8
  br label %.sink.split680

bb.al:                                            ; preds = %bb.aj
  %i.ds = load ptr, ptr %0, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25
  %i.dv = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.dw = tail call i32 %i.du(ptr noundef %i.dv, ptr noundef nonnull %i.n, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %lzh_read_input.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %.sink.split680, label %bb.an

.sink.split680:                                   ; preds = %bb.am, %bb.ak
  %.sink681 = phi i32 [ %i.dr, %bb.ak ], [ 8, %bb.am ]
  store i32 %.sink681, ptr %i.m, align 8, !tbaa !44
  store i8 0, ptr %i.n, align 4, !tbaa !28
  br label %bb.an

bb.an:                                            ; preds = %.sink.split680, %bb.am
  %.0.i316 = phi i32 [ %i.dw, %bb.am ], [ 1, %.sink.split680 ]
  store ptr %i.n, ptr %i.a, align 8, !tbaa !40
  %i.dz = zext nneg i32 %.0.i316 to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dz ; 2 uses
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.11240 = phi ptr [ %i.n, %bb.an ], [ %.10239448, %bb.ai ] ; 2 uses
  %.11226 = phi ptr [ %i.ea, %bb.an ], [ %.10225449, %bb.ai ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.11240, i64 1 ; 2 uses
  %i.ec = load i8, ptr %.11240, align 1, !tbaa !28
  %i.ed = zext i8 %i.ec to i32
  %i.ee = sub i32 24, %.6451
  %i.ef = shl i32 %i.ed, %i.ee
  %i.eg = or i32 %i.ef, %.6207450                 ; 2 uses
  %i.eh = add nsw i32 %.6451, 8                   ; 2 uses
  %i.ei = icmp slt i32 %.6451, -4
  br i1 %i.ei, label %bb.ai, label %._crit_edge453

._crit_edge453:                                   ; preds = %bb.ao, %.preheader361
  %.10239.lcssa = phi ptr [ %i.b, %.preheader361 ], [ %i.eb, %bb.ao ]
  %.10225.lcssa = phi ptr [ %i.d, %.preheader361 ], [ %.11226, %bb.ao ]
  %.6207.lcssa = phi i32 [ %i.f, %.preheader361 ], [ %i.eg, %bb.ao ] ; 2 uses
  %.6.lcssa = phi i32 [ %i.h, %.preheader361 ], [ %i.eh, %bb.ao ]
  %i.ej = add nsw i32 %.6.lcssa, -4               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %.not273 = icmp ne i32 %i.el, 0
  %i.em = icmp slt i32 %i.ej, %i.el
  %or.cond299 = select i1 %.not273, i1 %i.em, i1 false
  br i1 %or.cond299, label %lzh_read_input.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge453
  %i.en = shl i32 %.6207.lcssa, 4
  %i.eo = lshr i32 %.6207.lcssa, 28               ; 2 uses
  %i.ep = trunc nuw nsw i32 %i.eo to i8
  store i8 %i.ep, ptr %3, align 1, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 7092 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count609 = zext nneg i32 %2 to i64
  br label %.preheader357

.preheader357:                                    ; preds = %bb.ap, %bb.be
  %indvars.iv606 = phi i64 [ 1, %bb.ap ], [ %indvars.iv.next607, %bb.be ] ; 2 uses
  %.2483 = phi i32 [ %i.eo, %bb.ap ], [ %.3, %bb.be ]
  %.7481 = phi i32 [ %i.ej, %bb.ap ], [ %.10, %bb.be ] ; 3 uses
  %.7208480 = phi i32 [ %i.en, %bb.ap ], [ %.10211, %bb.be ] ; 2 uses
  %.12227479 = phi ptr [ %.10225.lcssa, %bb.ap ], [ %.17, %bb.be ] ; 2 uses
  %.12241478 = phi ptr [ %.10239.lcssa, %bb.ap ], [ %.17246, %bb.be ] ; 2 uses
  %4 = icmp slt i32 %.7481, 2
  br i1 %4, label %.lr.ph462, label %._crit_edge463

.lr.ph462:                                        ; preds = %.preheader357, %bb.av
  %.8461 = phi i32 [ %i.fj, %bb.av ], [ %.7481, %.preheader357 ] ; 3 uses
  %.8209460 = phi i32 [ %i.fi, %bb.av ], [ %.7208480, %.preheader357 ]
  %.13228459 = phi ptr [ %.14, %bb.av ], [ %.12227479, %.preheader357 ] ; 2 uses
  %.13242458 = phi ptr [ %i.fd, %bb.av ], [ %.12241478, %.preheader357 ] ; 2 uses
  %.not278 = icmp ult ptr %.13242458, %.13228459
  br i1 %.not278, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph462
  %i.es = load i32, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %.not.i319 = icmp eq i32 %i.es, 0
  br i1 %.not.i319, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.et = add nsw i32 %i.es, 8
  br label %.sink.split682

bb.as:                                            ; preds = %bb.aq
  %i.eu = load ptr, ptr %0, align 8, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !25
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !38
  %i.ey = tail call i32 %i.ew(ptr noundef %i.ex, ptr noundef nonnull %i.eq, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %lzh_read_input.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = icmp eq i32 %i.ey, 0
  br i1 %i.fa, label %.sink.split682, label %bb.au

.sink.split682:                                   ; preds = %bb.at, %bb.ar
  %.sink683 = phi i32 [ %i.et, %bb.ar ], [ 8, %bb.at ]
  store i32 %.sink683, ptr %i.ek, align 8, !tbaa !44
  store i8 0, ptr %i.eq, align 4, !tbaa !28
  br label %bb.au

bb.au:                                            ; preds = %.sink.split682, %bb.at
  %.0.i320 = phi i32 [ %i.ey, %bb.at ], [ 1, %.sink.split682 ]
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !40
  %i.fb = zext nneg i32 %.0.i320 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fb ; 2 uses
  store ptr %i.fc, ptr %i.c, align 8, !tbaa !41
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph462
  %.14243 = phi ptr [ %i.eq, %bb.au ], [ %.13242458, %.lr.ph462 ] ; 2 uses
  %.14 = phi ptr [ %i.fc, %bb.au ], [ %.13228459, %.lr.ph462 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.14243, i64 1 ; 2 uses
  %i.fe = load i8, ptr %.14243, align 1, !tbaa !28
  %i.ff = zext i8 %i.fe to i32
  %i.fg = sub i32 24, %.8461
  %i.fh = shl nuw i32 %i.ff, %i.fg
  %i.fi = or i32 %i.fh, %.8209460                 ; 2 uses
  %i.fj = add nuw nsw i32 %.8461, 8               ; 2 uses
  %i.fk = icmp slt i32 %.8461, -6
  br i1 %i.fk, label %.lr.ph462, label %._crit_edge463

._crit_edge463:                                   ; preds = %bb.av, %.preheader357
  %.13242.lcssa = phi ptr [ %.12241478, %.preheader357 ], [ %i.fd, %bb.av ] ; 3 uses
  %.13228.lcssa = phi ptr [ %.12227479, %.preheader357 ], [ %.14, %bb.av ] ; 3 uses
  %.8209.lcssa = phi i32 [ %.7208480, %.preheader357 ], [ %i.fi, %bb.av ] ; 2 uses
  %.8.lcssa = phi i32 [ %.7481, %.preheader357 ], [ %i.fj, %bb.av ] ; 2 uses
  %i.fl = lshr i32 %.8209.lcssa, 30               ; 2 uses
  %i.fm = shl i32 %.8209.lcssa, 2                 ; 3 uses
  %i.fn = add nsw i32 %.8.lcssa, -2               ; 4 uses
  %i.fo = load i32, ptr %i.ek, align 8, !tbaa !44 ; 3 uses
  %.not274 = icmp ne i32 %i.fo, 0
  %i.fp = icmp slt i32 %i.fn, %i.fo
  %or.cond300 = select i1 %.not274, i1 %i.fp, i1 false
  br i1 %or.cond300, label %lzh_read_input.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge463
  %i.fq = icmp eq i32 %i.fl, 3
  br i1 %i.fq, label %.preheader355, label %bb.bd

.preheader355:                                    ; preds = %bb.aw
  %5 = icmp slt i32 %.8.lcssa, 6
  br i1 %5, label %.lr.ph472, label %._crit_edge473

.lr.ph472:                                        ; preds = %.preheader355, %bb.bc
  %.9471 = phi i32 [ %i.gi, %bb.bc ], [ %i.fn, %.preheader355 ] ; 3 uses
  %.9210470 = phi i32 [ %i.gh, %bb.bc ], [ %i.fm, %.preheader355 ]
  %.15469 = phi ptr [ %.16, %bb.bc ], [ %.13228.lcssa, %.preheader355 ] ; 2 uses
  %.15244468 = phi ptr [ %i.gc, %bb.bc ], [ %.13242.lcssa, %.preheader355 ] ; 2 uses
  %.not276 = icmp ult ptr %.15244468, %.15469
  br i1 %.not276, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph472
  %i.fr = load i32, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %.not.i323 = icmp eq i32 %i.fr, 0
  br i1 %.not.i323, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fs = add nsw i32 %i.fr, 8
  br label %.sink.split684

bb.az:                                            ; preds = %bb.ax
  %i.ft = load ptr, ptr %0, align 8, !tbaa !37
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !25
  %i.fw = load ptr, ptr %i.er, align 8, !tbaa !38
  %i.fx = tail call i32 %i.fv(ptr noundef %i.fw, ptr noundef nonnull %i.eq, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %lzh_read_input.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = icmp eq i32 %i.fx, 0
  br i1 %i.fz, label %.sink.split684, label %bb.bb

.sink.split684:                                   ; preds = %bb.ba, %bb.ay
  %.sink685 = phi i32 [ %i.fs, %bb.ay ], [ 8, %bb.ba ]
  store i32 %.sink685, ptr %i.ek, align 8, !tbaa !44
  store i8 0, ptr %i.eq, align 4, !tbaa !28
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split684, %bb.ba
  %.0.i324 = phi i32 [ %i.fx, %bb.ba ], [ 1, %.sink.split684 ]
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !40
  %i.ga = zext nneg i32 %.0.i324 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ga ; 2 uses
  store ptr %i.gb, ptr %i.c, align 8, !tbaa !41
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph472
  %.16245 = phi ptr [ %i.eq, %bb.bb ], [ %.15244468, %.lr.ph472 ] ; 2 uses
  %.16 = phi ptr [ %i.gb, %bb.bb ], [ %.15469, %.lr.ph472 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.16245, i64 1 ; 2 uses
  %i.gd = load i8, ptr %.16245, align 1, !tbaa !28
  %i.ge = zext i8 %i.gd to i32
  %i.gf = sub nuw i32 24, %.9471
  %i.gg = shl nuw i32 %i.ge, %i.gf
  %i.gh = or i32 %i.gg, %.9210470                 ; 2 uses
  %i.gi = add nuw nsw i32 %.9471, 8               ; 2 uses
  %i.gj = icmp slt i32 %.9471, -4
  br i1 %i.gj, label %.lr.ph472, label %._crit_edge473.loopexit

._crit_edge473.loopexit:                          ; preds = %bb.bc
  %.pre = load i32, ptr %i.ek, align 8, !tbaa !44
  br label %._crit_edge473

._crit_edge473:                                   ; preds = %._crit_edge473.loopexit, %.preheader355
  %i.gk = phi i32 [ %i.fo, %.preheader355 ], [ %.pre, %._crit_edge473.loopexit ] ; 2 uses
  %.15244.lcssa = phi ptr [ %.13242.lcssa, %.preheader355 ], [ %i.gc, %._crit_edge473.loopexit ]
  %.15.lcssa = phi ptr [ %.13228.lcssa, %.preheader355 ], [ %.16, %._crit_edge473.loopexit ]
  %.9210.lcssa = phi i32 [ %i.fm, %.preheader355 ], [ %i.gh, %._crit_edge473.loopexit ] ; 2 uses
  %.9.lcssa = phi i32 [ %i.fn, %.preheader355 ], [ %i.gi, %._crit_edge473.loopexit ]
  %i.gl = lshr i32 %.9210.lcssa, 28
  %i.gm = shl i32 %.9210.lcssa, 4
  %i.gn = add nsw i32 %.9.lcssa, -4               ; 2 uses
  %.not275 = icmp ne i32 %i.gk, 0
  %i.go = icmp slt i32 %i.gn, %i.gk
  %or.cond301 = select i1 %.not275, i1 %i.go, i1 false
  br i1 %or.cond301, label %lzh_read_input.exit, label %bb.be

bb.bd:                                            ; preds = %bb.aw
  %i.gp = add i32 %.2483, -1
  %i.gq = add i32 %i.gp, %i.fl
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge473, %bb.bd
  %.17246 = phi ptr [ %.13242.lcssa, %bb.bd ], [ %.15244.lcssa, %._crit_edge473 ] ; 2 uses
  %.17 = phi ptr [ %.13228.lcssa, %bb.bd ], [ %.15.lcssa, %._crit_edge473 ] ; 2 uses
  %.10211 = phi i32 [ %i.fm, %bb.bd ], [ %i.gm, %._crit_edge473 ] ; 2 uses
  %.10 = phi i32 [ %i.fn, %bb.bd ], [ %i.gn, %._crit_edge473 ] ; 2 uses
  %.3 = phi i32 [ %i.gq, %bb.bd ], [ %i.gl, %._crit_edge473 ] ; 2 uses
  %i.gr = trunc i32 %.3 to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv606
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !28
  %indvars.iv.next607 = add nuw nsw i64 %indvars.iv606, 1 ; 2 uses
  %exitcond610.not = icmp eq i64 %indvars.iv.next607, %wide.trip.count609
  br i1 %exitcond610.not, label %.loopexit, label %.preheader357

.preheader363:                                    ; preds = %.preheader365, %bb.bl
  %indvars.iv = phi i64 [ 0, %.preheader365 ], [ %indvars.iv.next, %bb.bl ] ; 2 uses
  %.11446 = phi i32 [ %i.h, %.preheader365 ], [ %i.hn, %bb.bl ] ; 3 uses
  %.11212445 = phi i32 [ %i.f, %.preheader365 ], [ %i.hq, %bb.bl ] ; 2 uses
  %.18444 = phi ptr [ %i.d, %.preheader365 ], [ %.19.lcssa, %bb.bl ] ; 2 uses
  %.18247443 = phi ptr [ %i.b, %.preheader365 ], [ %.19248.lcssa, %bb.bl ] ; 2 uses
  %i.gt = icmp slt i32 %.11446, 4
  br i1 %i.gt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader363, %bb.bk
  %.12439 = phi i32 [ %i.hl, %bb.bk ], [ %.11446, %.preheader363 ] ; 3 uses
  %.12213438 = phi i32 [ %i.hk, %bb.bk ], [ %.11212445, %.preheader363 ]
  %.19437 = phi ptr [ %.20, %bb.bk ], [ %.18444, %.preheader363 ] ; 2 uses
  %.19248436 = phi ptr [ %i.hf, %bb.bk ], [ %.18247443, %.preheader363 ] ; 2 uses
  %.not271 = icmp ult ptr %.19248436, %.19437
  br i1 %.not271, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph
  %i.gu = load i32, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  %.not.i327 = icmp eq i32 %i.gu, 0
  br i1 %.not.i327, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gv = add nsw i32 %i.gu, 8
  br label %.sink.split686

bb.bh:                                            ; preds = %bb.bf
  %i.gw = load ptr, ptr %0, align 8, !tbaa !37
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !25
  %i.gz = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ha = tail call i32 %i.gy(ptr noundef %i.gz, ptr noundef nonnull %i.j, i32 noundef 2048) #6, !inline_history !45 ; 3 uses
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %lzh_read_input.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hc = icmp eq i32 %i.ha, 0
  br i1 %i.hc, label %.sink.split686, label %bb.bj

.sink.split686:                                   ; preds = %bb.bi, %bb.bg
  %.sink687 = phi i32 [ %i.gv, %bb.bg ], [ 8, %bb.bi ]
  store i32 %.sink687, ptr %i.i, align 8, !tbaa !44
  store i8 0, ptr %i.j, align 4, !tbaa !28
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split686, %bb.bi
  %.0.i328 = phi i32 [ %i.ha, %bb.bi ], [ 1, %.sink.split686 ]
  store ptr %i.j, ptr %i.a, align 8, !tbaa !40
  %i.hd = zext nneg i32 %.0.i328 to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hd ; 2 uses
  store ptr %i.he, ptr %i.c, align 8, !tbaa !41
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph
  %.20249 = phi ptr [ %i.j, %bb.bj ], [ %.19248436, %.lr.ph ] ; 2 uses
  %.20 = phi ptr [ %i.he, %bb.bj ], [ %.19437, %.lr.ph ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.20249, i64 1 ; 2 uses
  %i.hg = load i8, ptr %.20249, align 1, !tbaa !28
  %i.hh = zext i8 %i.hg to i32
  %i.hi = sub i32 24, %.12439
  %i.hj = shl i32 %i.hh, %i.hi
  %i.hk = or i32 %i.hj, %.12213438                ; 2 uses
  %i.hl = add nsw i32 %.12439, 8                  ; 2 uses
  %i.hm = icmp slt i32 %.12439, -4
  br i1 %i.hm, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bk, %.preheader363
  %.19248.lcssa = phi ptr [ %.18247443, %.preheader363 ], [ %i.hf, %bb.bk ] ; 2 uses
  %.19.lcssa = phi ptr [ %.18444, %.preheader363 ], [ %.20, %bb.bk ] ; 2 uses
  %.12213.lcssa = phi i32 [ %.11212445, %.preheader363 ], [ %i.hk, %bb.bk ] ; 2 uses
  %.12.lcssa = phi i32 [ %.11446, %.preheader363 ], [ %i.hl, %bb.bk ]
  %i.hn = add nsw i32 %.12.lcssa, -4              ; 3 uses
  %i.ho = load i32, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  %.not = icmp ne i32 %i.ho, 0
  %i.hp = icmp slt i32 %i.hn, %i.ho
  %or.cond302 = select i1 %.not, i1 %i.hp, i1 false
  br i1 %or.cond302, label %lzh_read_input.exit, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge
  %i.hq = shl i32 %.12213.lcssa, 4                ; 2 uses
  %i.hr = lshr i32 %.12213.lcssa, 28
  %i.hs = trunc nuw nsw i32 %i.hr to i8
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader363

.loopexit:                                        ; preds = %bb.bl, %bb.be, %bb.ah, %.loopexit.loopexit, %bb.a
  %.21250 = phi ptr [ %i.b, %bb.a ], [ %i.b, %.loopexit.loopexit ], [ %.17246, %bb.be ], [ %.9238, %bb.ah ], [ %.19248.lcssa, %bb.bl ]
  %.21 = phi ptr [ %i.d, %bb.a ], [ %i.d, %.loopexit.loopexit ], [ %.17, %bb.be ], [ %.9224, %bb.ah ], [ %.19.lcssa, %bb.bl ]
  %.13214 = phi i32 [ %i.f, %bb.a ], [ %i.f, %.loopexit.loopexit ], [ %.10211, %bb.be ], [ %.5206, %bb.ah ], [ %i.hq, %bb.bl ]
  %.13 = phi i32 [ %i.h, %bb.a ], [ %i.h, %.loopexit.loopexit ], [ %.10, %bb.be ], [ %.5, %bb.ah ], [ %i.hn, %bb.bl ]
  store ptr %.21250, ptr %i.a, align 8, !tbaa !40
  store ptr %.21, ptr %i.c, align 8, !tbaa !41
  store i32 %.13214, ptr %i.e, align 8, !tbaa !42
  store i32 %.13, ptr %i.g, align 4, !tbaa !43
  br label %lzh_read_input.exit

lzh_read_input.exit:                              ; preds = %._crit_edge, %bb.bh, %bb.al, %._crit_edge473, %._crit_edge463, %bb.as, %bb.az, %bb.g, %._crit_edge560, %bb.x, %bb.p, %bb.m, %bb.t, %bb.ac, %._crit_edge453, %._crit_edge489, %.loopexit
  %.0251 = phi i32 [ 0, %.loopexit ], [ 3, %bb.al ], [ 0, %._crit_edge473 ], [ 0, %._crit_edge489 ], [ 0, %._crit_edge453 ], [ 3, %bb.as ], [ 3, %bb.bh ], [ 3, %bb.g ], [ 3, %bb.az ], [ 3, %bb.ac ], [ 3, %bb.m ], [ 3, %bb.t ], [ 0, %bb.p ], [ 0, %bb.x ], [ 0, %._crit_edge560 ], [ 0, %._crit_edge463 ], [ 0, %._crit_edge ]
  ret i32 %.0251
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
end_hunk_0
