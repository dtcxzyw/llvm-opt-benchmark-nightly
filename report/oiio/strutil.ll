Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/strutil?download=true
inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 52
begin_hunk_0_@oiio_stbsp_vsprintfcb:bb.a
    i8 101, label %bb.bv
    i8 102, label %bb.cl
    i8 66, label %bb.eh
    i8 98, label %bb.eh
    i8 111, label %bb.ek
    i8 112, label %bb.en
    i8 88, label %bb.eo
    i8 120, label %bb.eo
    i8 117, label %bb.fg
    i8 105, label %bb.fg
    i8 100, label %bb.fg
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i32, ptr %4, align 8               ; 3 uses
  %i.fh = icmp ult i32 %i.fg, 41
  br i1 %i.fh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.i, align 8
  %i.fj = zext nneg i32 %i.fg to i64
  %i.fk = getelementptr i8, ptr %i.fi, i64 %i.fj
  %i.fl = add nuw nsw i32 %i.fg, 8
  store i32 %i.fl, ptr %4, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fm = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  store ptr %i.fn, ptr %i.h, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fo = phi ptr [ %i.fk, %bb.ak ], [ %i.fm, %bb.al ]
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !58 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  %spec.store.select = select i1 %i.fq, ptr @.str, ptr %i.fp ; 5 uses
  %i.fr = call i32 @llvm.smax.i32(i32 %.1807, i32 -1) ; 2 uses
  %i.fs = ptrtoint ptr %spec.store.select to i64  ; 4 uses
  %i.ft = and i64 %i.fs, 3
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.am
  %.not.i1690 = icmp eq i32 %.1807, 0
  br i1 %.not.i1690, label %_ZL21stbsp__strlen_limitedPKcj.exit, label %.lr.ph1693.preheader

.lr.ph1693.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.fv = load i8, ptr %spec.store.select, align 1, !tbaa !54
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %_ZL21stbsp__strlen_limitedPKcj.exit, label %.lr.ph2352

.preheader.i:                                     ; preds = %.lr.ph2352, %bb.am
  %.022.lcssa.i = phi i32 [ %i.fr, %bb.am ], [ %i.gb, %.lr.ph2352 ] ; 3 uses
  %.021.lcssa.i = phi ptr [ %spec.store.select, %bb.am ], [ %i.ga, %.lr.ph2352 ] ; 2 uses
  %i.fx = icmp ugt i32 %.022.lcssa.i, 3
  br i1 %i.fx, label %.lr.ph2357, label %._crit_edge2358

.lr.ph.i:                                         ; preds = %.lr.ph2352
  %.not.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i, label %.lr.ph.i._ZL21stbsp__strlen_limitedPKcj.exit.loopexit_crit_edge, label %.lr.ph1693, !llvm.loop !326

.lr.ph1693:                                       ; preds = %.lr.ph.i
  %i.fy = load i8, ptr %i.ga, align 1, !tbaa !54
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %_ZL21stbsp__strlen_limitedPKcj.exit, label %.lr.ph2352, !llvm.loop !326

.lr.ph2352:                                       ; preds = %.lr.ph1693.preheader, %.lr.ph1693
  %.02135.i16912351 = phi ptr [ %i.ga, %.lr.ph1693 ], [ %spec.store.select, %.lr.ph1693.preheader ]
  %.02234.i16922350 = phi i32 [ %i.gb, %.lr.ph1693 ], [ %i.fr, %.lr.ph1693.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.02135.i16912351, i64 1 ; 4 uses
  %i.gb = add i32 %.02234.i16922350, -1           ; 3 uses
  %i.gc = ptrtoint ptr %i.ga to i64               ; 3 uses
  %i.gd = and i64 %i.gc, 3
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.preheader.i, label %.lr.ph.i, !llvm.loop !326

bb.an:                                            ; preds = %.lr.ph2357
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i2356, i64 4 ; 2 uses
  %i.gg = add i32 %.123.i2355, -4                 ; 3 uses
  %i.gh = icmp ugt i32 %i.gg, 3
  br i1 %i.gh, label %.lr.ph2357, label %._crit_edge2358

.lr.ph2357:                                       ; preds = %.preheader.i, %bb.an
  %.1.i2356 = phi ptr [ %i.gf, %bb.an ], [ %.021.lcssa.i, %.preheader.i ] ; 3 uses
  %.123.i2355 = phi i32 [ %i.gg, %bb.an ], [ %.022.lcssa.i, %.preheader.i ] ; 2 uses
  %i.gi = load i32, ptr %.1.i2356, align 4, !tbaa !53 ; 2 uses
  %i.gj = sub i32 16843008, %i.gi
  %i.gk = or i32 %i.gj, %i.gi
  %i.gl = and i32 %i.gk, -2139062144
  %.not28.i = icmp eq i32 %i.gl, -2139062144
  br i1 %.not28.i, label %bb.an, label %.lr.ph40.preheader.i

._crit_edge2358:                                  ; preds = %bb.an, %.preheader.i
  %.123.i.lcssa = phi i32 [ %.022.lcssa.i, %.preheader.i ], [ %i.gg, %bb.an ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.021.lcssa.i, %.preheader.i ], [ %i.gf, %bb.an ] ; 2 uses
  %.not2937.i = icmp eq i32 %.123.i.lcssa, 0
  br i1 %.not2937.i, label %.critedge.i, label %.lr.ph40.preheader.i

.lr.ph40.preheader.i:                             ; preds = %.lr.ph2357, %._crit_edge2358
  %.123.i2307 = phi i32 [ %.123.i.lcssa, %._crit_edge2358 ], [ %.123.i2355, %.lr.ph2357 ] ; 2 uses
  %.1.i2305 = phi ptr [ %.1.i.lcssa, %._crit_edge2358 ], [ %.1.i2356, %.lr.ph2357 ] ; 2 uses
  %scevgep2001.a = getelementptr i8, ptr %.1.i2305, i64 1
  %i.gm = add i32 %.123.i2307, -1
  %i.gn = zext i32 %i.gm to i64
  %scevgep2002 = getelementptr i8, ptr %scevgep2001.a, i64 %i.gn
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.ao, %.lr.ph40.preheader.i
  %.439.i = phi ptr [ %i.gp, %bb.ao ], [ %.1.i2305, %.lr.ph40.preheader.i ] ; 3 uses
  %.42638.i = phi i32 [ %i.gq, %bb.ao ], [ %.123.i2307, %.lr.ph40.preheader.i ]
  %i.go = load i8, ptr %.439.i, align 1, !tbaa !54
  %.not30.i = icmp eq i8 %i.go, 0
  br i1 %.not30.i, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph40.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.439.i, i64 1
  %i.gq = add i32 %.42638.i, -1                   ; 2 uses
  %.not29.i = icmp eq i32 %i.gq, 0
  br i1 %.not29.i, label %.critedge.i, label %.lr.ph40.i, !llvm.loop !327

.critedge.i:                                      ; preds = %bb.ao, %.lr.ph40.i, %._crit_edge2358
  %.4.lcssa.i = phi ptr [ %.1.i.lcssa, %._crit_edge2358 ], [ %.439.i, %.lr.ph40.i ], [ %scevgep2002, %bb.ao ]
  %i.gr = ptrtoint ptr %.4.lcssa.i to i64
  br label %_ZL21stbsp__strlen_limitedPKcj.exit

.lr.ph.i._ZL21stbsp__strlen_limitedPKcj.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %_ZL21stbsp__strlen_limitedPKcj.exit, !llvm.loop !326

_ZL21stbsp__strlen_limitedPKcj.exit:              ; preds = %.lr.ph1693, %.lr.ph1693.preheader, %.lr.ph.i._ZL21stbsp__strlen_limitedPKcj.exit.loopexit_crit_edge, %.lr.ph.i.preheader, %.critedge.i
  %.pn.i = phi i64 [ %i.gr, %.critedge.i ], [ %i.fs, %.lr.ph.i.preheader ], [ %i.gc, %.lr.ph.i._ZL21stbsp__strlen_limitedPKcj.exit.loopexit_crit_edge ], [ %i.fs, %.lr.ph1693.preheader ], [ %i.gc, %.lr.ph1693 ]
  %.027.in.i = sub i64 %.pn.i, %i.fs
  %.027.i = trunc i64 %.027.in.i to i32
  store i32 %.027.i, ptr %i.e, align 4, !tbaa !53
  store i8 0, ptr %i.c, align 1, !tbaa !54
  store i8 0, ptr %i.d, align 1, !tbaa !54
  store i32 0, ptr %i.f, align 4, !tbaa !53
  br label %bb.gg

bb.ap:                                            ; preds = %bb.ai
  %i.gs = load i32, ptr %4, align 8               ; 3 uses
  %i.gt = icmp ult i32 %i.gs, 41
  br i1 %i.gt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gu = load ptr, ptr %i.i, align 8
  %i.gv = zext nneg i32 %i.gs to i64
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.gv
  %i.gx = add nuw nsw i32 %i.gs, 8
  store i32 %i.gx, ptr %4, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gy = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.h, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ha = phi ptr [ %i.gw, %bb.aq ], [ %i.gy, %bb.ar ]
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !53
  %i.hc = trunc i32 %i.hb to i8
  store i8 %i.hc, ptr %i.u, align 1, !tbaa !54
  store i32 1, ptr %i.e, align 4, !tbaa !53
  store i8 0, ptr %i.c, align 1, !tbaa !54
  store i8 0, ptr %i.d, align 1, !tbaa !54
  store i32 0, ptr %i.f, align 4, !tbaa !53
  br label %bb.gg

bb.at:                                            ; preds = %bb.ai
  %i.hd = load i32, ptr %4, align 8               ; 3 uses
  %i.he = icmp ult i32 %i.hd, 41
  br i1 %i.he, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hf = load ptr, ptr %i.i, align 8
  %i.hg = zext nneg i32 %i.hd to i64
  %i.hh = getelementptr i8, ptr %i.hf, i64 %i.hg
  %i.hi = add nuw nsw i32 %i.hd, 8
  store i32 %i.hi, ptr %4, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.hj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  store ptr %i.hk, ptr %i.h, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hl = phi ptr [ %i.hh, %bb.au ], [ %i.hj, %bb.av ]
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60
  %i.hn = ptrtoint ptr %.2886 to i64
  %i.ho = ptrtoint ptr %.1936 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = add nsw i32 %.1832, %i.hq
  store i32 %i.hr, ptr %i.hm, align 4, !tbaa !53
  br label %.backedge2424

bb.ax:                                            ; preds = %bb.ai, %bb.ai
  %i.hs = icmp eq i8 %i.ff, 65                    ; 2 uses
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex = select i1 %i.hs, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex ; 6 uses
  %i.ht = load i32, ptr %i.n, align 4             ; 3 uses
  %i.hu = icmp ult i32 %i.ht, 161
  br i1 %i.hu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hv = load ptr, ptr %i.i, align 8
  %i.hw = zext nneg i32 %i.ht to i64
  %i.hx = getelementptr i8, ptr %i.hv, i64 %i.hw
  %i.hy = add nuw nsw i32 %i.ht, 16
  store i32 %i.hy, ptr %i.n, align 4
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 8
  store ptr %i.ia, ptr %i.h, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ib = phi ptr [ %i.hx, %bb.ay ], [ %i.hz, %bb.az ]
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !62 ; 3 uses
  %i.id = icmp eq i32 %.1807, -1
  %spec.store.select17 = select i1 %i.id, i32 6, i32 %.1807 ; 7 uses
  %i.ie = and i64 %i.ic, 4503599627370495         ; 3 uses
  %i.if = lshr i64 %i.ic, 52
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = and i32 %i.ig, 2047                     ; 2 uses
  %i.ii = add nsw i32 %i.ih, -1023
  %i.ij = or i32 %.3785, 128
  %.not11291441 = icmp slt i64 %i.ic, 0
  %spec.select1184.a = select i1 %.not11291441, i32 %i.ij, i32 %.3785 ; 4 uses
  %i.ik = and i32 %spec.select1184.a, 128
  %.not.i1232 = icmp eq i32 %i.ik, 0
  br i1 %.not.i1232, label %bb.bb, label %.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.il = and i32 %spec.select1184.a, 4
  %.not9.i = icmp eq i32 %i.il, 0
  br i1 %.not9.i, label %bb.bc, label %.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.im = and i32 %spec.select1184.a, 2
  %.not10.i = icmp eq i32 %i.im, 0
  br i1 %.not10.i, label %_ZL16stbsp__lead_signjPc.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sink.i = phi i8 [ 45, %bb.ba ], [ 32, %bb.bb ], [ 43, %bb.bc ]
  store i8 %.sink.i, ptr %i.j, align 1, !tbaa !54
  br label %_ZL16stbsp__lead_signjPc.exit

_ZL16stbsp__lead_signjPc.exit:                    ; preds = %bb.bc, %.sink.split.i
  %i.in = phi i8 [ 0, %bb.bc ], [ 1, %.sink.split.i ] ; 2 uses
  %i.io = icmp eq i32 %i.ih, 0
  br i1 %i.io, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit
  %.not1130.a = icmp eq i64 %i.ie, 0
  %i.ip = select i1 %.not1130.a, i32 0, i32 -1022 ; 2 uses
  store i32 %i.ip, ptr %i.f, align 4, !tbaa !53
  br label %bb.bf

bb.be:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit
  %i.iq = or disjoint i64 %i.ie, 4503599627370496
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ir = phi i32 [ %i.ip, %bb.bd ], [ %i.ii, %bb.be ] ; 3 uses
  %.0 = phi i64 [ %i.ie, %bb.bd ], [ %i.iq, %bb.be ]
  %i.is = shl nuw nsw i64 %.0, 8
  %i.it = icmp slt i32 %spec.store.select17, 15
  %i.iu = shl nsw i32 %spec.store.select17, 2
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = lshr i64 576460752303423488, %i.iv
  %i.ix = select i1 %i.it, i64 %i.iw, i64 0
  %storemerge1131 = add nuw nsw i64 %i.is, %i.ix  ; 3 uses
  %i.iy = zext nneg i8 %i.in to i64
  %i.iz = getelementptr i8, ptr %i.c, i64 %i.iy   ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 1
  store i8 48, ptr %i.ja, align 1, !tbaa !54
  %i.jb = getelementptr i8, ptr %i.iz, i64 2
  store i8 120, ptr %i.jb, align 1, !tbaa !54
  %i.jc = or disjoint i8 %i.in, 2
  store i8 %i.jc, ptr %i.c, align 1, !tbaa !54
  %i.jd = lshr i64 %storemerge1131, 60
  %i.je = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !54
  store i8 %i.jf, ptr %i.o, align 16, !tbaa !54
  %.not1132.a = icmp eq i32 %spec.store.select17, 0
  br i1 %.not1132.a, label %.thread2121, label %.lr.ph1680.preheader

.thread2121:                                      ; preds = %bb.bf
  store ptr %i.q, ptr %i.g, align 8, !tbaa !58
  br label %._crit_edge1681

.lr.ph1680.preheader:                             ; preds = %bb.bf
  %i.jg = load i8, ptr @_ZL13stbsp__period, align 1, !tbaa !54
  store i8 %i.jg, ptr %i.q, align 1, !tbaa !54
  store ptr %i.r, ptr %i.g, align 8, !tbaa !58
  %spec.store.select18 = call i32 @llvm.umin.i32(i32 %spec.store.select17, i32 13) ; 5 uses
  %i.jh = icmp sgt i32 %spec.store.select17, %spec.store.select18
  %i.ji = sub i32 %spec.store.select17, %spec.store.select18
  %spec.select1185.a = select i1 %i.jh, i32 %i.ji, i32 0 ; 2 uses
  %xtraiter2531.a = and i32 %spec.store.select18, 3 ; 2 uses
  %lcmp.mod2532.not.a = icmp eq i32 %xtraiter2531.a, 0
  br i1 %lcmp.mod2532.not.a, label %.lr.ph1680.prol.loopexit, label %.lr.ph1680.prol

.lr.ph1680.prol:                                  ; preds = %.lr.ph1680.preheader, %.lr.ph1680.prol
  %.07241678.prol = phi i32 [ %i.jj, %.lr.ph1680.prol ], [ %spec.store.select18, %.lr.ph1680.preheader ]
  %.17431677.prol = phi ptr [ %i.jn, %.lr.ph1680.prol ], [ %i.r, %.lr.ph1680.preheader ] ; 2 uses
  %.11261.in1676.prol = phi i64 [ %.11261.prol, %.lr.ph1680.prol ], [ %storemerge1131, %.lr.ph1680.preheader ]
  %prol.iter2533.a = phi i32 [ %prol.iter2533.next.a, %.lr.ph1680.prol ], [ 0, %.lr.ph1680.preheader ]
  %.11261.prol = shl i64 %.11261.in1676.prol, 4   ; 3 uses
  %i.jj = add nsw i32 %.07241678.prol, -1         ; 2 uses
  %i.jk = lshr i64 %.11261.prol, 60
  %i.jl = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !54
  %i.jn = getelementptr inbounds nuw i8, ptr %.17431677.prol, i64 1 ; 3 uses
  store i8 %i.jm, ptr %.17431677.prol, align 1, !tbaa !54
  %prol.iter2533.next.a = add i32 %prol.iter2533.a, 1 ; 2 uses
  %prol.iter2533.cmp.not.a = icmp eq i32 %prol.iter2533.next.a, %xtraiter2531.a
  br i1 %prol.iter2533.cmp.not.a, label %.lr.ph1680.prol.loopexit, label %.lr.ph1680.prol, !llvm.loop !328

.lr.ph1680.prol.loopexit:                         ; preds = %.lr.ph1680.prol, %.lr.ph1680.preheader
  %.lcssa2464.unr = phi ptr [ poison, %.lr.ph1680.preheader ], [ %i.jn, %.lr.ph1680.prol ]
  %.07241678.unr = phi i32 [ %spec.store.select18, %.lr.ph1680.preheader ], [ %i.jj, %.lr.ph1680.prol ]
  %.17431677.unr = phi ptr [ %i.r, %.lr.ph1680.preheader ], [ %i.jn, %.lr.ph1680.prol ]
  %.11261.in1676.unr = phi i64 [ %storemerge1131, %.lr.ph1680.preheader ], [ %.11261.prol, %.lr.ph1680.prol ]
  %i.jo = icmp ult i32 %spec.store.select17, 4
  br i1 %i.jo, label %._crit_edge1681, label %.lr.ph1680

.lr.ph1680:                                       ; preds = %.lr.ph1680.prol.loopexit, %.lr.ph1680
  %.07241678 = phi i32 [ %i.ke, %.lr.ph1680 ], [ %.07241678.unr, %.lr.ph1680.prol.loopexit ]
  %.17431677 = phi ptr [ %i.ki, %.lr.ph1680 ], [ %.17431677.unr, %.lr.ph1680.prol.loopexit ] ; 5 uses
  %.11261.in1676 = phi i64 [ %.11261.3, %.lr.ph1680 ], [ %.11261.in1676.unr, %.lr.ph1680.prol.loopexit ] ; 4 uses
  %i.jp = lshr i64 %.11261.in1676, 56
  %i.jq = and i64 %i.jp, 15
  %i.jr = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %.17431677, i64 1
  store i8 %i.js, ptr %.17431677, align 1, !tbaa !54
  %i.ju = lshr i64 %.11261.in1676, 52
  %i.jv = and i64 %i.ju, 15
  %i.jw = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !54
  %i.jy = getelementptr inbounds nuw i8, ptr %.17431677, i64 2
  store i8 %i.jx, ptr %i.jt, align 1, !tbaa !54
  %i.jz = lshr i64 %.11261.in1676, 48
  %i.ka = and i64 %i.jz, 15
  %i.kb = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %.17431677, i64 3
  store i8 %i.kc, ptr %i.jy, align 1, !tbaa !54
  %.11261.3 = shl i64 %.11261.in1676, 16          ; 2 uses
  %i.ke = add nsw i32 %.07241678, -4              ; 2 uses
  %i.kf = lshr i64 %.11261.3, 60
  %i.kg = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !54
  %i.ki = getelementptr inbounds nuw i8, ptr %.17431677, i64 4 ; 2 uses
  store i8 %i.kh, ptr %i.kd, align 1, !tbaa !54
  %.not1133.3 = icmp eq i32 %i.ke, 0
  br i1 %.not1133.3, label %._crit_edge1681, label %.lr.ph1680, !llvm.loop !329

._crit_edge1681:                                  ; preds = %.lr.ph1680.prol.loopexit, %.lr.ph1680, %.thread2121
  %spec.select11852126 = phi i32 [ 0, %.thread2121 ], [ %spec.select1185.a, %.lr.ph1680 ], [ %spec.select1185.a, %.lr.ph1680.prol.loopexit ]
  %.07422125 = phi ptr [ %i.q, %.thread2121 ], [ %i.r, %.lr.ph1680 ], [ %i.r, %.lr.ph1680.prol.loopexit ]
  %.1743.lcssa = phi ptr [ %i.q, %.thread2121 ], [ %.lcssa2464.unr, %.lr.ph1680.prol.loopexit ], [ %i.ki, %.lr.ph1680 ]
  %5 = select i1 %i.hs, i8 80, i8 112
  store i8 %5, ptr %i.s, align 1, !tbaa !54
  %i.kj = icmp slt i32 %i.ir, 0
  br i1 %i.kj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge1681
  store i8 45, ptr %i.t, align 1, !tbaa !54
  %i.kk = sub nsw i32 0, %i.ir
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge1681
  store i8 43, ptr %i.t, align 1, !tbaa !54
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.promoted1683 = phi i32 [ %i.ir, %bb.bh ], [ %i.kk, %bb.bg ] ; 7 uses
  %i.kl = icmp samesign ult i32 %.promoted1683, 1000 ; 2 uses
  %i.km = icmp samesign ugt i32 %.promoted1683, 99
  %i.kn = icmp samesign ugt i32 %.promoted1683, 9
  %i.ko = select i1 %i.kn, i32 4, i32 3
  %i.kp = select i1 %i.km, i32 5, i32 %i.ko
  %i.kq = select i1 %i.kl, i32 %i.kp, i32 6       ; 4 uses
  %i.kr = trunc nuw nsw i32 %i.kq to i8
  store i8 %i.kr, ptr %i.d, align 1, !tbaa !54
  %.lhs.trunc = trunc nsw i32 %.promoted1683 to i16
  %i.ks = urem i16 %.lhs.trunc, 10
  %i.kt = trunc nuw nsw i16 %i.ks to i8
  %i.ku = or disjoint i8 %i.kt, 48
  %i.kv = zext nneg i32 %i.kq to i64              ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kv
  store i8 %i.ku, ptr %i.kw, align 1, !tbaa !54
  %i.kx = icmp samesign ult i32 %i.kq, 4
  br i1 %i.kx, label %._crit_edge1688, label %.lr.ph1687

.lr.ph1687:                                       ; preds = %bb.bi
  %i.ky = udiv i32 %.promoted1683, 10
  %i.kz = urem i32 %i.ky, 10
  %i.la = trunc nuw nsw i32 %i.kz to i8
  %i.lb = or disjoint i8 %i.la, 48
  %i.lc = getelementptr i8, ptr %i.d, i64 %i.kv
  %i.ld = getelementptr i8, ptr %i.lc, i64 -1
  store i8 %i.lb, ptr %i.ld, align 1, !tbaa !54
  %i.le = icmp eq i32 %i.kq, 4
  br i1 %i.le, label %._crit_edge1688, label %.lr.ph1687.1

.lr.ph1687.1:                                     ; preds = %.lr.ph1687
  %i.lf = udiv i32 %.promoted1683, 100
  %i.lg = urem i32 %i.lf, 10
  %i.lh = trunc nuw nsw i32 %i.lg to i8
  %i.li = or disjoint i8 %i.lh, 48
  %i.lj = getelementptr i8, ptr %i.d, i64 %i.kv
  %i.lk = getelementptr i8, ptr %i.lj, i64 -2
  store i8 %i.li, ptr %i.lk, align 1, !tbaa !54
  br i1 %i.kl, label %._crit_edge1688, label %.lr.ph1687.2

.lr.ph1687.2:                                     ; preds = %.lr.ph1687.1
  %i.ll = udiv i32 %.promoted1683, 1000
  %i.lm = urem i32 %i.ll, 10
  %i.ln = trunc nuw nsw i32 %i.lm to i8
  %i.lo = or disjoint i8 %i.ln, 48
  %i.lp = getelementptr i8, ptr %i.d, i64 %i.kv
  %i.lq = getelementptr i8, ptr %i.lp, i64 -3
  store i8 %i.lo, ptr %i.lq, align 1, !tbaa !54
  br label %._crit_edge1688

._crit_edge1688:                                  ; preds = %.lr.ph1687, %.lr.ph1687.1, %.lr.ph1687.2, %bb.bi
  %i.lr = ptrtoint ptr %.1743.lcssa to i64        ; 2 uses
  %i.ls = ptrtoint ptr %.07422125 to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = trunc i64 %i.lt to i32
  store i32 %i.lu, ptr %i.f, align 4, !tbaa !53
  %i.lv = sub i64 %i.lr, %i.p
  %i.lw = trunc i64 %i.lv to i32
  store i32 %i.lw, ptr %i.e, align 4, !tbaa !53
  br label %bb.gg

bb.bj:                                            ; preds = %bb.ai, %bb.ai
  %i.lx = icmp eq i8 %i.ff, 71
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex19 = select i1 %i.lx, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex ; 2 uses
  %i.ly = load i32, ptr %i.n, align 4             ; 3 uses
  %i.lz = icmp ult i32 %i.ly, 161
  br i1 %i.lz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ma = load ptr, ptr %i.i, align 8
  %i.mb = zext nneg i32 %i.ly to i64
  %i.mc = getelementptr i8, ptr %i.ma, i64 %i.mb
  %i.md = add nuw nsw i32 %i.ly, 16
  store i32 %i.md, ptr %i.n, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.me = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 8
  store ptr %i.mf, ptr %i.h, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.mg = phi ptr [ %i.mc, %bb.bk ], [ %i.me, %bb.bl ]
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !62
  %i.mi = icmp eq i32 %.1807, -1
  %spec.store.select20 = call i32 @llvm.umax.i32(i32 %.1807, i32 1)
  %.2808 = select i1 %i.mi, i32 6, i32 %spec.store.select20 ; 6 uses
  %i.mj = add i32 %.2808, 2147483647
  %i.mk = or i32 %i.mj, -2147483648
  %i.ml = call fastcc noundef i32 @_ZL18stbsp__real_to_strPPKcPjPcPidj(ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.f, double noundef %i.mh, i32 noundef %i.mk)
  %.not1108.a = icmp eq i32 %i.ml, 0
  %i.mm = or i32 %.3785, 128
  %.5787 = select i1 %.not1108.a, i32 %.3785, i32 %i.mm ; 4 uses
  %i.mn = load i32, ptr %i.e, align 4, !tbaa !53  ; 2 uses
  %spec.store.select1439 = call i32 @llvm.umin.i32(i32 %i.mn, i32 %.2808) ; 2 uses
  %i.mo = icmp ugt i32 %spec.store.select1439, 1
  br i1 %i.mo, label %.lr.ph1606, label %.critedge23

.lr.ph1606:                                       ; preds = %bb.bm
  %i.mp = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.mq = call i32 @llvm.umin.i32(i32 %.2808, i32 %i.mn)
  %umin = zext i32 %i.mq to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1606, %bb.bo
  %indvars.iv = phi i64 [ %umin, %.lr.ph1606 ], [ %indvars.iv.next, %bb.bo ] ; 2 uses
  %.38091604 = phi i32 [ %.2808, %.lr.ph1606 ], [ %i.mx, %bb.bo ] ; 2 uses
  %i.mr = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ms = add i32 %i.mr, -1                       ; 3 uses
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !54
  %i.mw = icmp eq i8 %i.mv, 48
  br i1 %i.mw, label %bb.bo, label %.critedge23

bb.bo:                                            ; preds = %bb.bn
  %i.mx = add nsw i32 %.38091604, -1              ; 3 uses
  %i.my = icmp ugt i32 %i.ms, 1
  %i.mz = icmp ne i32 %i.mx, 0
  %or.cond = select i1 %i.my, i1 %i.mz, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %or.cond, label %bb.bn, label %.critedge23, !llvm.loop !330

.critedge23:                                      ; preds = %bb.bn, %bb.bo, %bb.bm
  %storemerge1440.lcssa1602 = phi i32 [ %spec.store.select1439, %bb.bm ], [ %i.ms, %bb.bo ], [ %i.mr, %bb.bn ] ; 6 uses
  %.3809.lcssa = phi i32 [ %.2808, %bb.bm ], [ %i.mx, %bb.bo ], [ %.38091604, %bb.bn ] ; 3 uses
  store i32 %storemerge1440.lcssa1602, ptr %i.e, align 4, !tbaa !53
  %i.na = load i32, ptr %i.f, align 4, !tbaa !53  ; 6 uses
  %i.nb = icmp slt i32 %i.na, -3
  %i.nc = icmp sgt i32 %i.na, %.2808
  %or.cond1186 = or i1 %i.nb, %i.nc
  br i1 %or.cond1186, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.critedge23
  %i.nd = icmp sgt i32 %.3809.lcssa, %storemerge1440.lcssa1602
  br i1 %i.nd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ne = add i32 %storemerge1440.lcssa1602, -1
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %spec.select1187 = call i32 @llvm.usub.sat.i32(i32 %.3809.lcssa, i32 1)
  br label %bb.bz

bb.bs:                                            ; preds = %.critedge23
  %i.nf = icmp sgt i32 %i.na, 0
  br i1 %i.nf, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ng = icmp slt i32 %i.na, %storemerge1440.lcssa1602
  %i.nh = sub i32 %storemerge1440.lcssa1602, %i.na
  %i.ni = select i1 %i.ng, i32 %i.nh, i32 0
  br label %bb.cx

bb.bu:                                            ; preds = %bb.bs
  %i.nj = call i32 @llvm.smin.i32(i32 %.3809.lcssa, i32 %storemerge1440.lcssa1602)
  %i.nk = sub nsw i32 %i.nj, %i.na
  br label %bb.cx

bb.bv:                                            ; preds = %bb.ai, %bb.ai
  %i.nl = icmp eq i8 %i.ff, 69
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex24 = select i1 %i.nl, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex
  %i.nm = load i32, ptr %i.n, align 4             ; 3 uses
  %i.nn = icmp ult i32 %i.nm, 161
  br i1 %i.nn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.no = load ptr, ptr %i.i, align 8
  %i.np = zext nneg i32 %i.nm to i64
  %i.nq = getelementptr i8, ptr %i.no, i64 %i.np
  %i.nr = add nuw nsw i32 %i.nm, 16
  store i32 %i.nr, ptr %i.n, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.ns = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 8
  store ptr %i.nt, ptr %i.h, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.nu = phi ptr [ %i.nq, %bb.bw ], [ %i.ns, %bb.bx ]
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !62
  %i.nw = icmp eq i32 %.1807, -1
  %spec.store.select25 = select i1 %i.nw, i32 6, i32 %.1807 ; 2 uses
end_hunk_0
begin_hunk_1_@oiio_stbsp_vsprintfcb:bb.a
bb.dp:                                            ; preds = %bb.do
  %i.ws = load i8, ptr @_ZL12stbsp__comma, align 1, !tbaa !54
  store i8 %i.ws, ptr %.147561627, align 1, !tbaa !54
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %.lr.ph1631
  %.4714 = phi i32 [ %i.wq, %bb.do ], [ %.37131629, %.lr.ph1631 ]
  store i8 48, ptr %.147561627, align 1, !tbaa !54
  %i.wt = add i32 %.107341628, -1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.11735 = phi i32 [ %.107341628, %bb.dp ], [ %i.wt, %bb.dq ] ; 2 uses
  %.5715 = phi i32 [ 0, %bb.dp ], [ %.4714, %bb.dq ]
  %.15757 = getelementptr inbounds nuw i8, ptr %.147561627, i64 1 ; 2 uses
  %.not1116 = icmp eq i32 %.11735, 0
  br i1 %.not1116, label %.loopexit1477, label %.lr.ph1631, !llvm.loop !340

.loopexit1477:                                    ; preds = %bb.dr, %.loopexit1479, %bb.dm
  %.16758 = phi ptr [ %i.vs, %bb.dm ], [ %.13755, %.loopexit1479 ], [ %.15757, %bb.dr ] ; 4 uses
  %i.wu = ptrtoint ptr %.16758 to i64
  %i.wv = sub i64 %i.wu, %i.p
  %i.ww = trunc i64 %i.wv to i32
  %i.wx = add nsw i32 %i.ww, 50331648             ; 2 uses
  %.not1117 = icmp eq i32 %.6812, 0
  br i1 %.not1117, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %.loopexit1477
  %i.wy = load i8, ptr @_ZL13stbsp__period, align 1, !tbaa !54
  %i.wz = getelementptr inbounds nuw i8, ptr %.16758, i64 1
  store i8 %i.wy, ptr %.16758, align 1, !tbaa !54
  br label %bb.ea

bb.dt:                                            ; preds = %.preheader1476.peel.next, %bb.du, %.preheader1476.outer
  %.17759.lcssa = phi ptr [ %.17759.ph, %.preheader1476.outer ], [ %.17759.ph, %bb.du ], [ %i.xk, %.preheader1476.peel.next ] ; 3 uses
  %.7717 = phi i32 [ %.6716.ph, %.preheader1476.outer ], [ %i.xh, %bb.du ], [ 1, %.preheader1476.peel.next ]
  %i.xa = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.xb = zext i32 %.12736.ph to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !54
  %i.xe = getelementptr inbounds nuw i8, ptr %.17759.lcssa, i64 1 ; 4 uses
  store i8 %i.xd, ptr %.17759.lcssa, align 1, !tbaa !54
  %i.xf = add i32 %.12736.ph, 1                   ; 4 uses
  %i.xg = load i32, ptr %i.f, align 4, !tbaa !53  ; 2 uses
  %.not1111 = icmp ult i32 %i.xf, %i.xg
  br i1 %.not1111, label %.preheader1476.outer, label %bb.dv, !llvm.loop !341

.preheader1476.outer:                             ; preds = %bb.dj, %bb.dt
  %.17759.ph = phi ptr [ %i.xe, %bb.dt ], [ %i.o, %bb.dj ] ; 4 uses
  %.12736.ph = phi i32 [ %i.xf, %bb.dt ], [ 0, %bb.dj ] ; 2 uses
  %.6716.ph = phi i32 [ %.7717, %bb.dt ], [ %i.vm, %bb.dj ] ; 2 uses
  br i1 %.not1109.a, label %bb.dt, label %bb.du

bb.du:                                            ; preds = %.preheader1476.outer
  %i.xh = add nuw nsw i32 %.6716.ph, 1            ; 2 uses
  %i.xi = icmp eq i32 %i.xh, 4
  br i1 %i.xi, label %.preheader1476.peel.next, label %bb.dt

.preheader1476.peel.next:                         ; preds = %bb.du
  %i.xj = load i8, ptr @_ZL12stbsp__comma, align 1, !tbaa !54
  %i.xk = getelementptr inbounds nuw i8, ptr %.17759.ph, i64 1
  store i8 %i.xj, ptr %.17759.ph, align 1, !tbaa !54
  br label %bb.dt

bb.dv:                                            ; preds = %bb.dt
  %i.xl = ptrtoint ptr %i.xe to i64
  %i.xm = sub i64 %i.xl, %i.p
  %i.xn = trunc i64 %i.xm to i32
  %i.xo = add nsw i32 %i.xn, 50331648
  %.not1112 = icmp eq i32 %.6812, 0
  br i1 %.not1112, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xp = load i8, ptr @_ZL13stbsp__period, align 1, !tbaa !54
  %i.xq = getelementptr inbounds nuw i8, ptr %.17759.lcssa, i64 2
  store i8 %i.xp, ptr %i.xe, align 1, !tbaa !54
  %.pre2034.a = load i32, ptr %i.f, align 4, !tbaa !53
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.xr = phi i32 [ %.pre2034.a, %bb.dw ], [ %i.xg, %bb.dv ] ; 3 uses
  %.19761 = phi ptr [ %i.xq, %bb.dw ], [ %i.xe, %bb.dv ] ; 2 uses
  %i.xs = load i32, ptr %i.e, align 4, !tbaa !53  ; 2 uses
  %i.xt = sub i32 %i.xs, %i.xr
  %i.xu = icmp ugt i32 %i.xt, %.6812
  br i1 %i.xu, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.xv = add nsw i32 %i.xr, %.6812               ; 2 uses
  store i32 %i.xv, ptr %i.e, align 4, !tbaa !53
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.xw = phi i32 [ %i.xv, %bb.dy ], [ %i.xs, %bb.dx ] ; 2 uses
  %i.xx = icmp ult i32 %i.xf, %i.xw
  br i1 %i.xx, label %.lr.ph1636.preheader, label %._crit_edge1637

.lr.ph1636.preheader:                             ; preds = %bb.dz
  %i.xy = zext i32 %i.xf to i64
  br label %.lr.ph1636

.lr.ph1636:                                       ; preds = %.lr.ph1636.preheader, %.lr.ph1636
  %indvars.iv1983 = phi i64 [ %i.xy, %.lr.ph1636.preheader ], [ %indvars.iv.next1984, %.lr.ph1636 ] ; 2 uses
  %.207621633 = phi ptr [ %.19761, %.lr.ph1636.preheader ], [ %i.yc, %.lr.ph1636 ] ; 2 uses
  %i.xz = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 %indvars.iv1983
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !54
  %i.yc = getelementptr inbounds nuw i8, ptr %.207621633, i64 1 ; 2 uses
  store i8 %i.yb, ptr %.207621633, align 1, !tbaa !54
  %indvars.iv.next1984 = add nuw nsw i64 %indvars.iv1983, 1 ; 2 uses
  %i.yd = load i32, ptr %i.e, align 4, !tbaa !53  ; 2 uses
  %i.ye = zext i32 %i.yd to i64
  %i.yf = icmp samesign ult i64 %indvars.iv.next1984, %i.ye
  br i1 %i.yf, label %.lr.ph1636, label %._crit_edge1637.loopexit, !llvm.loop !342

._crit_edge1637.loopexit:                         ; preds = %.lr.ph1636
  %.pre2035 = load i32, ptr %i.f, align 4, !tbaa !53
  br label %._crit_edge1637

._crit_edge1637:                                  ; preds = %._crit_edge1637.loopexit, %bb.dz
  %i.yg = phi i32 [ %i.xr, %bb.dz ], [ %.pre2035, %._crit_edge1637.loopexit ]
  %.20762.lcssa = phi ptr [ %.19761, %bb.dz ], [ %i.yc, %._crit_edge1637.loopexit ]
  %.lcssa1507 = phi i32 [ %i.xw, %bb.dz ], [ %i.yd, %._crit_edge1637.loopexit ]
  %.neg1113 = sub i32 %.6812, %.lcssa1507
  %i.yh = add i32 %.neg1113, %i.yg
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge1637, %bb.ds, %.loopexit1477, %._crit_edge1664
  %.1802 = phi i32 [ %i.vi, %._crit_edge1664 ], [ %.6812, %bb.ds ], [ 0, %.loopexit1477 ], [ %i.yh, %._crit_edge1637 ] ; 3 uses
  %.21 = phi ptr [ %.8750.lcssa, %._crit_edge1664 ], [ %i.wz, %bb.ds ], [ %.16758, %.loopexit1477 ], [ %.20762.lcssa, %._crit_edge1637 ] ; 3 uses
  %.9719 = phi i32 [ 50331649, %._crit_edge1664 ], [ %i.wx, %bb.ds ], [ %i.wx, %.loopexit1477 ], [ %i.xo, %._crit_edge1637 ] ; 3 uses
  %i.yi = and i32 %.10792, 256
  %.not1122.a = icmp eq i32 %i.yi, 0
  br i1 %.not1122.a, label %bb.eg, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.yj = and i32 %.10792, 1024                   ; 2 uses
  %.not1123.a = icmp eq i32 %i.yj, 0              ; 2 uses
  %spec.store.select28 = zext i1 %.not1123.a to i8
  store i8 %spec.store.select28, ptr %i.d, align 1, !tbaa !54
  store i8 32, ptr %i.s, align 1, !tbaa !54
  %i.yk = lshr i32 %.10792, 24                    ; 2 uses
  %.not1124 = icmp eq i32 %i.yk, 0
  br i1 %.not1124, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.yl = and i32 %.10792, 2048
  %.not1125.a = icmp eq i32 %i.yl, 0
  %i.ym = zext nneg i32 %i.yk to i64              ; 2 uses
  %.lobit = lshr exact i32 %i.yj, 10
  %i.yn = sub nuw nsw i32 2, %.lobit
  %i.yo = zext nneg i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.yo ; 2 uses
  %i.yq = select i1 %.not1123.a, i8 2, i8 1       ; 4 uses
  br i1 %.not1125.a, label %.thread1285, label %bb.ed

.thread1285:                                      ; preds = %bb.ec
  %i.yr = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.ym
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !54
  store i8 %i.ys, ptr %i.yp, align 1, !tbaa !54
  br label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.yt = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ym
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !54
  store i8 %i.yu, ptr %i.yp, align 1, !tbaa !54
  %i.yv = and i32 %.10792, 4096
  %.not1127 = icmp eq i32 %i.yv, 0
  br i1 %.not1127, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.yw = zext nneg i8 %i.yq to i64
  %i.yx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 1
  store i8 105, ptr %i.yy, align 1, !tbaa !54
  %i.yz = add nuw nsw i8 %i.yq, 1
  br label %bb.ef

bb.ef:                                            ; preds = %.thread1285, %bb.ee, %bb.ed
  %.0702 = phi i8 [ %i.yq, %bb.ed ], [ %i.yz, %bb.ee ], [ %i.yq, %.thread1285 ]
  store i8 %.0702, ptr %i.d, align 1, !tbaa !54
  br label %bb.eg

.loopexit1473:                                    ; preds = %bb.ck, %bb.cj
  %.lcssa2463 = phi i32 [ %i.rf, %bb.cj ], [ %i.rl, %bb.ck ]
  store i32 %.lcssa2463, ptr %i.f, align 4, !tbaa !53
  br label %bb.eg

bb.eg:                                            ; preds = %.loopexit1473, %bb.eb, %bb.ef, %bb.ea
  %.2803 = phi i32 [ %.1802, %bb.ea ], [ %.1802, %bb.eb ], [ %.1802, %bb.ef ], [ %i.qq, %.loopexit1473 ]
  %.11793 = phi i32 [ %.10792, %bb.ea ], [ %.10792, %bb.eb ], [ %.10792, %bb.ef ], [ %.6788, %.loopexit1473 ]
  %.22 = phi ptr [ %.21, %bb.ea ], [ %.21, %bb.eb ], [ %.21, %bb.ef ], [ %.3745.lcssa, %.loopexit1473 ]
  %.10720 = phi i32 [ %.9719, %bb.ea ], [ %.9719, %bb.eb ], [ %.9719, %bb.ef ], [ 50331649, %.loopexit1473 ]
  %i.za = ptrtoint ptr %.22 to i64
  %i.zb = sub i64 %i.za, %i.p
  %i.zc = trunc i64 %i.zb to i32
  store i32 %i.zc, ptr %i.e, align 4, !tbaa !53
  br label %bb.gg

bb.eh:                                            ; preds = %bb.ai, %bb.ai
  %i.zd = icmp eq i8 %i.ff, 66                    ; 2 uses
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex29 = select i1 %i.zd, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex
  store i8 0, ptr %i.c, align 1, !tbaa !54
  %i.ze = and i32 %.3785, 8
  %.not1098.a = icmp eq i32 %i.ze, 0
  br i1 %.not1098.a, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i8 2, ptr %i.c, align 1, !tbaa !54
  store i8 48, ptr %i.j, align 1, !tbaa !54
  %6 = select i1 %i.zd, i8 66, i8 98
  store i8 %6, ptr %i.k, align 1, !tbaa !54
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  store i32 384, ptr %i.e, align 4, !tbaa !53
  br label %bb.eq

bb.ek:                                            ; preds = %bb.ai
  store i8 0, ptr %i.c, align 1, !tbaa !54
  %i.zf = and i32 %.3785, 8
  %.not1097 = icmp eq i32 %i.zf, 0
  br i1 %.not1097, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store i8 1, ptr %i.c, align 1, !tbaa !54
  store i8 48, ptr %i.j, align 1, !tbaa !54
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  store i32 816, ptr %i.e, align 4, !tbaa !53
  br label %bb.eq

bb.en:                                            ; preds = %bb.ai
  %i.zg = and i32 %.3785, -49
  %i.zh = or disjoint i32 %i.zg, 32
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ai, %bb.ai
  %.8814 = phi i32 [ 16, %bb.en ], [ %.1807, %bb.ai ], [ %.1807, %bb.ai ] ; 2 uses
  %.12794 = phi i32 [ %i.zh, %bb.en ], [ %.3785, %bb.ai ], [ %.3785, %bb.ai ] ; 3 uses
  %i.zi = icmp eq i8 %i.ff, 88                    ; 2 uses
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex30 = select i1 %i.zi, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex ; 2 uses
  store i32 1088, ptr %i.e, align 4, !tbaa !53
  store i8 0, ptr %i.c, align 1, !tbaa !54
  %i.zj = and i32 %.12794, 8
  %.not1095 = icmp eq i32 %i.zj, 0
  br i1 %.not1095, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i8 2, ptr %i.c, align 1, !tbaa !54
  store i8 48, ptr %i.j, align 1, !tbaa !54
  %7 = select i1 %i.zi, i8 88, i8 120
  store i8 %7, ptr %i.k, align 1, !tbaa !54
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep, %bb.em, %bb.ej
  %.pre2033.a = phi i32 [ 1, %bb.ej ], [ 3, %bb.em ], [ 4, %bb.ep ], [ 4, %bb.eo ]
  %.9815 = phi i32 [ %.1807, %bb.ej ], [ %.1807, %bb.em ], [ %.8814, %bb.ep ], [ %.8814, %bb.eo ] ; 4 uses
  %.13795 = phi i32 [ %.3785, %bb.ej ], [ %.3785, %bb.em ], [ %.12794, %bb.ep ], [ %.12794, %bb.eo ] ; 4 uses
  %.1741 = phi ptr [ %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex29, %bb.ej ], [ @_ZZ21oiio_stbsp_vsprintfcbE4hexu, %bb.em ], [ %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex30, %bb.ep ], [ %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex30, %bb.eo ] ; 2 uses
  %i.zk = and i32 %.13795, 32
  %.not1100.a = icmp eq i32 %i.zk, 0
  %i.zl = load i32, ptr %4, align 8               ; 5 uses
  %i.zm = icmp ult i32 %i.zl, 41                  ; 2 uses
  br i1 %.not1100.a, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  br i1 %i.zm, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.zn = load ptr, ptr %i.i, align 8
  %i.zo = zext nneg i32 %i.zl to i64
  %i.zp = getelementptr i8, ptr %i.zn, i64 %i.zo
  %i.zq = add nuw nsw i32 %i.zl, 8
  store i32 %i.zq, ptr %4, align 8
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.zr = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zr, i64 8
  store ptr %i.zs, ptr %i.h, align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.zt = phi ptr [ %i.zp, %bb.es ], [ %i.zr, %bb.et ]
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !68
  br label %bb.ez

bb.ev:                                            ; preds = %bb.eq
  br i1 %i.zm, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.zv = load ptr, ptr %i.i, align 8
  %i.zw = zext nneg i32 %i.zl to i64
  %i.zx = getelementptr i8, ptr %i.zv, i64 %i.zw
  %i.zy = add nuw nsw i32 %i.zl, 8
  store i32 %i.zy, ptr %4, align 8
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.zz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.aaa = getelementptr i8, ptr %i.zz, i64 8
  store ptr %i.aaa, ptr %i.h, align 8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.aab = phi ptr [ %i.zx, %bb.ew ], [ %i.zz, %bb.ex ]
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !53
  %i.aad = zext i32 %i.aac to i64
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.eu
  %storemerge1101 = phi i64 [ %i.aad, %bb.ey ], [ %i.zu, %bb.eu ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !53
  store i8 0, ptr %i.d, align 1, !tbaa !54
  %i.aae = icmp eq i64 %storemerge1101, 0
  br i1 %i.aae, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  store i8 0, ptr %i.c, align 1, !tbaa !54
  %i.aaf = icmp eq i32 %.9815, 0
  br i1 %i.aaf, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.e, align 4, !tbaa !53
  br label %bb.gg

bb.fc:                                            ; preds = %bb.fa, %bb.ez
  %i.aag = and i32 %.13795, 64
  %.not1103 = icmp eq i32 %i.aag, 0
  %notmask2340 = shl nsw i32 -1, %.pre2033.a
  %i.aah = xor i32 %notmask2340, -1
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = and i64 %storemerge1101, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %.1741, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !54
  store i8 %i.aal, ptr %i.w, align 1, !tbaa !54
  %i.aam = load i32, ptr %i.e, align 4, !tbaa !53 ; 3 uses
  %i.aan = lshr i32 %i.aam, 8
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = lshr i64 %storemerge1101, %i.aao       ; 2 uses
  %.not11022341 = icmp ne i64 %i.aap, 0
  %i.aaq = icmp sgt i32 %.9815, 1
  %or.cond18772342 = select i1 %.not11022341, i1 true, i1 %i.aaq
  br i1 %or.cond18772342, label %.lr.ph2345, label %._crit_edge2346

.lr.ph2345:                                       ; preds = %bb.fc, %bb.ff
  %i.aar = phi i64 [ %i.abn, %bb.ff ], [ %i.aap, %bb.fc ] ; 2 uses
  %i.aas = phi i32 [ %i.abk, %bb.ff ], [ %i.aam, %bb.fc ] ; 2 uses
  %i.aat = phi ptr [ %i.abj, %bb.ff ], [ %i.w, %bb.fc ] ; 2 uses
  %.232343 = phi ptr [ %.24, %bb.ff ], [ %i.l, %bb.fc ]
  br i1 %.not1103, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph2345
  %i.aau = add i32 %i.aas, 1                      ; 5 uses
  store i32 %i.aau, ptr %i.e, align 4, !tbaa !53
  %i.aav = lshr i32 %i.aau, 4
  %i.aaw = xor i32 %i.aav, %i.aau
  %i.aax = and i32 %i.aaw, 15
  %i.aay = icmp eq i32 %i.aax, 0
  br i1 %i.aay, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aaz = and i32 %i.aau, -16
  store i32 %i.aaz, ptr %i.e, align 4, !tbaa !53
  %i.aba = load i8, ptr @_ZL12stbsp__comma, align 1, !tbaa !54
  %i.abb = getelementptr inbounds i8, ptr %.232343, i64 -2 ; 2 uses
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !54
  %.pre2032 = load i32, ptr %i.e, align 4, !tbaa !53
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fd, %bb.fe, %.lr.ph2345
  %i.abc = phi i32 [ %.pre2032, %bb.fe ], [ %i.aau, %bb.fd ], [ %i.aas, %.lr.ph2345 ]
  %.24 = phi ptr [ %i.abb, %bb.fe ], [ %i.aat, %bb.fd ], [ %i.aat, %.lr.ph2345 ] ; 2 uses
  %i.abd = lshr i32 %i.abc, 8
  %notmask = shl nsw i32 -1, %i.abd
  %i.abe = xor i32 %notmask, -1
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = and i64 %i.aar, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %.1741, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !54
  %i.abj = getelementptr inbounds i8, ptr %.24, i64 -1 ; 4 uses
  store i8 %i.abi, ptr %i.abj, align 1, !tbaa !54
  %i.abk = load i32, ptr %i.e, align 4, !tbaa !53 ; 3 uses
  %i.abl = lshr i32 %i.abk, 8
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = lshr i64 %i.aar, %i.abm                ; 2 uses
  %.not1102 = icmp ne i64 %i.abn, 0
  %i.abo = ptrtoint ptr %i.abj to i64
  %i.abp = sub i64 %i.m, %i.abo
  %i.abq = trunc i64 %i.abp to i32                ; 2 uses
  %i.abr = icmp sgt i32 %.9815, %i.abq
  %or.cond1877 = select i1 %.not1102, i1 true, i1 %i.abr
  br i1 %or.cond1877, label %.lr.ph2345, label %._crit_edge2346, !llvm.loop !343

._crit_edge2346:                                  ; preds = %bb.ff, %bb.fc
  %.lcssa2286 = phi ptr [ %i.w, %bb.fc ], [ %i.abj, %bb.ff ]
  %.lcssa2285 = phi i32 [ %i.aam, %bb.fc ], [ %i.abk, %bb.ff ]
  %.lcssa2284 = phi i32 [ 1, %bb.fc ], [ %i.abq, %bb.ff ] ; 2 uses
  %i.abs = shl i32 %.lcssa2285, 20
  %i.abt = and i32 %i.abs, 251658240
  %i.abu = add i32 %i.abt, %.lcssa2284
  store i32 %.lcssa2284, ptr %i.e, align 4, !tbaa !53
  br label %bb.gg

bb.fg:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  %i.abv = and i32 %.3785, 32
  %.not1079 = icmp eq i32 %i.abv, 0
  %i.abw = load i32, ptr %4, align 8              ; 5 uses
  %i.abx = icmp ult i32 %i.abw, 41                ; 2 uses
  br i1 %.not1079, label %bb.fm, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.abx, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.aby = load ptr, ptr %i.i, align 8
  %i.abz = zext nneg i32 %i.abw to i64
  %i.aca = getelementptr i8, ptr %i.aby, i64 %i.abz
  %i.acb = add nuw nsw i32 %i.abw, 8
  store i32 %i.acb, ptr %4, align 8
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.acc = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.acd = getelementptr i8, ptr %i.acc, i64 8
  store ptr %i.acd, ptr %i.h, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ace = phi ptr [ %i.aca, %bb.fi ], [ %i.acc, %bb.fj ]
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !68 ; 3 uses
  %i.acg = load i8, ptr %.12882, align 1, !tbaa !54
  %i.ach = icmp ne i8 %i.acg, 117
  %i.aci = icmp slt i64 %i.acf, 0
  %or.cond32 = select i1 %i.ach, i1 %i.aci, i1 false
  br i1 %or.cond32, label %bb.fl, label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  %i.acj = sub nsw i64 0, %i.acf
  %i.ack = or i32 %.3785, 128
  br label %bb.fr

bb.fm:                                            ; preds = %bb.fg
  br i1 %i.abx, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.acl = load ptr, ptr %i.i, align 8
  %i.acm = zext nneg i32 %i.abw to i64
  %i.acn = getelementptr i8, ptr %i.acl, i64 %i.acm
  %i.aco = add nuw nsw i32 %i.abw, 8
  store i32 %i.aco, ptr %4, align 8
  br label %bb.fp
end_hunk_1
