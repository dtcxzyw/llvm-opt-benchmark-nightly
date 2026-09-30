Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genmbcs?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL12MBCSAddTableP12NewConverterP8UCMTableP20UConverterStaticData:bb.a

bb.w:                                             ; preds = %bb.v
  %i.cu = load i8, ptr %i.cj, align 4, !tbaa !17
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %MBCSOkForBaseFromUnicode.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cw = load i8, ptr %i.r, align 2, !tbaa !16
  %i.cx = icmp ne i8 %i.cw, 0
  %or.cond6.i = and i1 %i.cd, %i.cx
  br i1 %or.cond6.i, label %bb.y, label %MBCSOkForBaseFromUnicode.exit

bb.y:                                             ; preds = %bb.x
  %i.cy = load i16, ptr %i.bv, align 8, !tbaa !19
  %i.cz = zext i16 %i.cy to i32
  %.not.i114 = icmp sgt i32 %i.by, %i.cz
  br i1 %.not.i114, label %MBCSOkForBaseFromUnicode.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load i8, ptr %i.cj, align 4, !tbaa !17
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %MBCSOkForBaseFromUnicode.exit.thread, label %MBCSOkForBaseFromUnicode.exit

MBCSOkForBaseFromUnicode.exit:                    ; preds = %bb.x, %bb.y, %bb.z
  %i.dc = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.dd = icmp ne i8 %i.dc, 0
  %i.de = icmp ne i8 %i.ca, 0
  %or.cond12.not.i.not = and i1 %i.de, %i.dd
  br i1 %or.cond12.not.i.not, label %MBCSOkForBaseFromUnicode.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %MBCSOkForBaseFromUnicode.exit
  %i.df = tail call fastcc noundef signext i8 @_ZL18MBCSAddFromUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.cj, i32 noundef %i.cq, i32 noundef %i.by, i8 noundef signext %i.ca)
  %i.dg = and i8 %i.df, %i.co
  br label %bb.an

MBCSOkForBaseFromUnicode.exit.thread:             ; preds = %bb.w, %bb.z, %MBCSOkForBaseFromUnicode.exit
  %i.dh = load i8, ptr %i.bz, align 2, !tbaa !82
  %i.di = or i8 %i.dh, 16
  store i8 %i.di, ptr %i.bz, align 2, !tbaa !82
  %i.dj = getelementptr inbounds nuw i8, ptr %.0106152, i64 11
  store i8 1, ptr %i.dj, align 1, !tbaa !84
  br label %bb.an

bb.ab:                                            ; preds = %bb.s
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.bo, align 2, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %.0106152, i64 4
  %i.dl = tail call fastcc noundef signext i8 @_ZL24MBCSSingleAddFromUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.dk, i32 noundef %i.by, i8 noundef signext 1)
  %i.dm = and i8 %i.dl, %.0154
  br label %bb.an

bb.ad:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %.0106152, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0106152, i64 9
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !83
  %i.dq = sext i8 %i.dp to i32
  %i.dr = load i8, ptr %i.dn, align 4, !tbaa !17
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %MBCSOkForBaseFromUnicode.exit123.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i8, ptr %i.r, align 2, !tbaa !16
  %.not155 = icmp eq i8 %i.dt, 0
  br i1 %.not155, label %MBCSOkForBaseFromUnicode.exit123, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = load i16, ptr %i.bv, align 8, !tbaa !19
  %i.dv = zext i16 %i.du to i32
  %.not.i121 = icmp sgt i32 %i.by, %i.dv
  %.not = icmp eq i8 %i.cb, 0
  %or.cond133 = and i1 %.not, %.not.i121
  br i1 %or.cond133, label %bb.ag, label %MBCSOkForBaseFromUnicode.exit123.thread

MBCSOkForBaseFromUnicode.exit123:                 ; preds = %bb.ae
  %.not.old = icmp eq i8 %i.cb, 0
  br i1 %.not.old, label %bb.ag, label %MBCSOkForBaseFromUnicode.exit123.thread

bb.ag:                                            ; preds = %bb.af, %MBCSOkForBaseFromUnicode.exit123
  store i8 1, ptr %i.bo, align 2, !tbaa !76
  %i.dw = tail call fastcc noundef signext i8 @_ZL18MBCSAddFromUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.dn, i32 noundef %i.dq, i32 noundef %i.by, i8 noundef signext 1)
  %i.dx = and i8 %i.dw, %.0154
  br label %bb.an

MBCSOkForBaseFromUnicode.exit123.thread:          ; preds = %bb.af, %bb.ad, %MBCSOkForBaseFromUnicode.exit123
  store i8 17, ptr %i.bz, align 2, !tbaa !82
  %i.dy = getelementptr inbounds nuw i8, ptr %.0106152, i64 11
  store i8 1, ptr %i.dy, align 1, !tbaa !84
  br label %bb.an

bb.ah:                                            ; preds = %bb.s
  br i1 %i.bw, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %.0106152, i64 9
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !83
  %i.eb = icmp eq i8 %i.ea, 1
  br i1 %i.eb, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  store i8 18, ptr %i.bz, align 2, !tbaa !82
  %i.ec = getelementptr inbounds nuw i8, ptr %.0106152, i64 11
  store i8 1, ptr %i.ec, align 1, !tbaa !84
  br label %bb.an

bb.ak:                                            ; preds = %bb.s
  store i8 1, ptr %i.bp, align 1, !tbaa !77
  %i.ed = getelementptr inbounds nuw i8, ptr %.0106152, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.0106152, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !83
  %i.eg = sext i8 %i.ef to i32
  %i.eh = tail call fastcc noundef signext i8 @_ZL16MBCSAddToUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.ed, i32 noundef %i.eg, i32 noundef %i.by, i8 noundef signext 3)
  %i.ei = and i8 %i.eh, %.0154
  br label %bb.an

bb.al:                                            ; preds = %bb.s
  store i8 20, ptr %i.bz, align 2, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %.0106152, i64 11
  store i8 1, ptr %i.ej, align 1, !tbaa !84
  br label %bb.an

bb.am:                                            ; preds = %bb.s
  %i.ek = sext i8 %i.ca to i32
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.em = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.3, i32 noundef %i.ek) #16 ; 0 uses
  br label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.aa, %MBCSOkForBaseFromUnicode.exit.thread, %bb.u, %bb.ag, %MBCSOkForBaseFromUnicode.exit123.thread, %bb.ac, %bb.aj, %bb.ai, %bb.ah
  %.1 = phi i8 [ %i.cs, %bb.u ], [ %i.dg, %bb.aa ], [ %i.co, %MBCSOkForBaseFromUnicode.exit.thread ], [ %i.dm, %bb.ac ], [ %i.dx, %bb.ag ], [ %.0154, %MBCSOkForBaseFromUnicode.exit123.thread ], [ %.0154, %bb.aj ], [ %.0154, %bb.ai ], [ %.0154, %bb.ah ], [ %i.ei, %bb.ak ], [ %.0154, %bb.al ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0106152, i64 12
  %i.eo = add nuw nsw i32 %.0105153, 1            ; 2 uses
  %i.ep = load i32, ptr %i.bq, align 4, !tbaa !78
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.p, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.an, %bb.o
  %.0.lcssa = phi i8 [ 1, %bb.o ], [ %.1, %bb.an ] ; 2 uses
  %i.er = load ptr, ptr %i.j, align 8, !tbaa !20  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 132120
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !85 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 65576
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !39
  %i.ez = load i8, ptr @VERBOSE, align 1, !tbaa !17
  tail call void @ucm_optimizeStates(ptr noundef nonnull %i.es, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ew, i32 noundef %i.ey, i8 noundef signext %i.ez)
  %i.fa = load ptr, ptr %i.j, align 8, !tbaa !20  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 132120
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !30 ; 7 uses
  %i.fd = icmp ult i32 %i.fc, 3
  br i1 %i.fd, label %.loopexit.i124, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.fe = load i32, ptr %i.bn, align 4, !tbaa !38 ; 5 uses
  %i.ff = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 5 uses
  %i.fg = icmp eq i32 %i.fc, 4
  %spec.select.idx.i.i = select i1 %i.fg, i64 3, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 %spec.select.idx.i.i
  %.not.i.i = icmp eq i32 %i.fe, 0                ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao, %bb.ap
  %.07588.i.i = phi i32 [ %i.fk, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.fh = zext i32 %.07588.i.i to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !17
  switch i8 %i.fj, label %.loopexit.i124 [
    i8 -113, label %bb.ap
    i8 -114, label %bb.ap
    i8 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.fk = add i32 %.07588.i.i, %i.fc              ; 2 uses
  %i.fl = icmp ult i32 %i.fk, %i.fe
  br i1 %i.fl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !50

._crit_edge.i.i:                                  ; preds = %bb.ap, %bb.ao
  %i.fm = trunc i32 %i.fc to i8
  %i.fn = add i8 %i.fm, 5
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 132129
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !40
  %i.fp = add i32 %i.fc, -1
  %i.fq = mul i32 %i.fe, %i.fp
  %i.fr = udiv i32 %i.fq, %i.fc
  store i32 %i.fr, ptr %i.bn, align 4, !tbaa !38
  %i.fs = icmp eq i32 %i.fc, 3
  br i1 %i.fs, label %.preheader.i.i, label %.preheader85.i.i

.preheader85.i.i:                                 ; preds = %._crit_edge.i.i
  br i1 %.not.i.i, label %_ZL12transformEUCP8MBCSData.exit.thread.i, label %.lr.ph92.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i
  br i1 %.not.i.i, label %_ZL12transformEUCP8MBCSData.exit.thread.i, label %.lr.ph96.i.i

.lr.ph96.i.i:                                     ; preds = %.preheader.i.i, %bb.at
  %.07395.i.i = phi ptr [ %.174.i.i, %bb.at ], [ %i.ff, %.preheader.i.i ] ; 2 uses
  %.17694.i.i = phi i32 [ %i.gc, %bb.at ], [ 0, %.preheader.i.i ]
  %.17893.i.i = phi ptr [ %i.gb, %bb.at ], [ %i.ff, %.preheader.i.i ] ; 5 uses
  %i.ft = load i8, ptr %.17893.i.i, align 1, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %.17893.i.i, i64 1 ; 3 uses
  switch i8 %i.ft, label %bb.as [
    i8 0, label %bb.aq
    i8 -114, label %bb.ar
  ]

bb.aq:                                            ; preds = %.lr.ph96.i.i
  %3 = load i16, ptr %i.fu, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  br label %bb.at

bb.ar:                                            ; preds = %.lr.ph96.i.i
  %5 = load i8, ptr %i.fu, align 1, !tbaa !17
  %i.fv = and i8 %5, 127
  %6 = zext nneg i8 %i.fv to i16
  %7 = shl nuw nsw i16 %6, 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.17893.i.i, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !17
  %8 = zext i8 %i.fx to i16
  %9 = or disjoint i16 %7, %8
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph96.i.i
  %10 = load i8, ptr %i.fu, align 1, !tbaa !17
  %11 = zext i8 %10 to i16
  %12 = shl nuw i16 %11, 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.17893.i.i, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !17
  %i.ga = and i8 %i.fz, 127
  %13 = zext nneg i8 %i.ga to i16
  %14 = or disjoint i16 %12, %13
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.sink.i.i = phi i16 [ %9, %bb.ar ], [ %14, %bb.as ], [ %4, %bb.aq ]
  store i16 %.sink.i.i, ptr %.07395.i.i, align 2, !tbaa !32
  %.174.i.i = getelementptr inbounds nuw i8, ptr %.07395.i.i, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %.17893.i.i, i64 3
  %i.gc = add i32 %.17694.i.i, 3                  ; 2 uses
  %i.gd = icmp ult i32 %i.gc, %i.fe
  br i1 %i.gd, label %.lr.ph96.i.i, label %_ZL12transformEUCP8MBCSData.exit.thread.i, !llvm.loop !51

.lr.ph92.i.i:                                     ; preds = %.preheader85.i.i, %bb.ay
  %.091.i.i = phi ptr [ %i.ge, %bb.ay ], [ %i.ff, %.preheader85.i.i ] ; 2 uses
  %.07290.i.i = phi ptr [ %.1.i.i, %bb.ay ], [ %i.ff, %.preheader85.i.i ] ; 9 uses
  %.289.i.i = phi i32 [ %i.hb, %bb.ay ], [ 0, %.preheader85.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.091.i.i, i64 4
  %i.gf = load i32, ptr %.091.i.i, align 4, !tbaa !37 ; 9 uses
  %i.gg = icmp ult i32 %i.gf, 16777216
  br i1 %i.gg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph92.i.i
  %i.gh = lshr i32 %i.gf, 16
  %i.gi = trunc nuw i32 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %.07290.i.i, i64 1
  store i8 %i.gi, ptr %.07290.i.i, align 1, !tbaa !17
  %i.gk = lshr i32 %i.gf, 8
  %i.gl = trunc i32 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %.07290.i.i, i64 2
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !17
  %i.gn = trunc i32 %i.gf to i8
  store i8 %i.gn, ptr %i.gm, align 1, !tbaa !17
  br label %bb.ay

bb.av:                                            ; preds = %.lr.ph92.i.i
  %i.go = icmp ult i32 %i.gf, -1895825408
  %i.gp = lshr i32 %i.gf, 16
  %i.gq = trunc i32 %i.gp to i8                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.07290.i.i, i64 2 ; 2 uses
  %i.gs = trunc i32 %i.gf to i8                   ; 2 uses
  br i1 %i.go, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gt = and i8 %i.gq, 127
  %i.gu = getelementptr inbounds nuw i8, ptr %.07290.i.i, i64 1
  store i8 %i.gt, ptr %.07290.i.i, align 1, !tbaa !17
  %i.gv = lshr i32 %i.gf, 8
  %i.gw = trunc i32 %i.gv to i8
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !17
  store i8 %i.gs, ptr %i.gr, align 1, !tbaa !17
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.gx = getelementptr inbounds nuw i8, ptr %.07290.i.i, i64 1
  store i8 %i.gq, ptr %.07290.i.i, align 1, !tbaa !17
  %i.gy = lshr i32 %i.gf, 8
  %i.gz = trunc i32 %i.gy to i8
  %i.ha = and i8 %i.gz, 127
  store i8 %i.ha, ptr %i.gx, align 1, !tbaa !17
  store i8 %i.gs, ptr %i.gr, align 1, !tbaa !17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.07290.i.i, i64 3
  %i.hb = add nuw i32 %.289.i.i, 4                ; 2 uses
  %i.hc = icmp ult i32 %i.hb, %i.fe
  br i1 %i.hc, label %.lr.ph92.i.i, label %_ZL12transformEUCP8MBCSData.exit.thread.i, !llvm.loop !52

_ZL12transformEUCP8MBCSData.exit.thread.i:        ; preds = %bb.ay, %bb.at, %.preheader.i.i, %.preheader85.i.i
  %i.hd = add nsw i32 %i.eu, -1
  br label %.loopexit.i124

.loopexit.i124:                                   ; preds = %.lr.ph.i.i, %_ZL12transformEUCP8MBCSData.exit.thread.i, %._crit_edge
  %i.he = phi i32 [ %i.hd, %_ZL12transformEUCP8MBCSData.exit.thread.i ], [ %i.eu, %._crit_edge ], [ %i.eu, %.lr.ph.i.i ] ; 2 uses
  %i.hf = load i8, ptr %i.r, align 2, !tbaa !16
  %.not20.i = icmp eq i8 %i.hf, 0
  br i1 %.not20.i, label %bb.az, label %bb.dd

bb.az:                                            ; preds = %.loopexit.i124
  %i.hg = icmp eq i32 %i.eu, 1
  br i1 %i.hg, label %bb.ba, label %bb.cs

bb.ba:                                            ; preds = %bb.az
  %i.hh = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i16 0, ptr %i.c, align 16, !tbaa !32
  %i.hi = load i32, ptr %i.bn, align 4, !tbaa !38 ; 5 uses
  %i.hj = icmp ugt i32 %i.hi, 16
  br i1 %i.hj, label %.lr.ph85.i.i, label %._crit_edge.i22.i

.lr.ph85.i.i:                                     ; preds = %bb.ba, %.loopexit.i.i
  %i.hk = phi i32 [ %i.rc, %.loopexit.i.i ], [ 16, %bb.ba ] ; 4 uses
  %.084.i.i = phi i16 [ %.3.i.i, %.loopexit.i.i ], [ 16, %bb.ba ] ; 27 uses
  %.05283.i.i = phi i16 [ %.355.i.i, %.loopexit.i.i ], [ 16, %bb.ba ] ; 21 uses
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hl ; 16 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !32
  %i.ho = icmp eq i16 %i.hn, 0
  br i1 %i.ho, label %bb.bb, label %.critedge.i.i

bb.bb:                                            ; preds = %.lr.ph85.i.i
  %i.hp = add i16 %.084.i.i, -1
  %i.hq = zext i16 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hq ; 16 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !32
  %i.ht = icmp eq i16 %i.hs, 0
  br i1 %i.ht, label %bb.bc, label %.critedge.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !32
  %i.hw = icmp eq i16 %i.hv, 0
  br i1 %i.hw, label %bb.bd, label %.lr.ph.preheader.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.hx = getelementptr i8, ptr %i.hr, i64 -2
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !32
  %i.hz = icmp eq i16 %i.hy, 0
  br i1 %i.hz, label %bb.be, label %.lr.ph.preheader.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !32
  %i.ic = icmp eq i16 %i.ib, 0
  br i1 %i.ic, label %bb.bf, label %.lr.ph.preheader.i.i

bb.bf:                                            ; preds = %bb.be
  %i.id = getelementptr i8, ptr %i.hr, i64 -4
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !32
  %i.if = icmp eq i16 %i.ie, 0
  br i1 %i.if, label %bb.bg, label %.lr.ph.preheader.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hm, i64 6
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !32
  %i.ii = icmp eq i16 %i.ih, 0
  br i1 %i.ii, label %bb.bh, label %.lr.ph.preheader.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ij = getelementptr i8, ptr %i.hr, i64 -6
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !32
  %i.il = icmp eq i16 %i.ik, 0
  br i1 %i.il, label %bb.bi, label %.lr.ph.preheader.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.in = load i16, ptr %i.im, align 2, !tbaa !32
  %i.io = icmp eq i16 %i.in, 0
  br i1 %i.io, label %bb.bj, label %.lr.ph.preheader.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.ip = getelementptr i8, ptr %i.hr, i64 -8
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !32
  %i.ir = icmp eq i16 %i.iq, 0
  br i1 %i.ir, label %bb.bk, label %.lr.ph.preheader.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.is = getelementptr inbounds nuw i8, ptr %i.hm, i64 10
  %i.it = load i16, ptr %i.is, align 2, !tbaa !32
  %i.iu = icmp eq i16 %i.it, 0
  br i1 %i.iu, label %bb.bl, label %.lr.ph.preheader.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.iv = getelementptr i8, ptr %i.hr, i64 -10
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !32
  %i.ix = icmp eq i16 %i.iw, 0
  br i1 %i.ix, label %bb.bm, label %.lr.ph.preheader.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !32
  %i.ja = icmp eq i16 %i.iz, 0
  br i1 %i.ja, label %bb.bn, label %.lr.ph.preheader.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.jb = getelementptr i8, ptr %i.hr, i64 -12
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !32
  %i.jd = icmp eq i16 %i.jc, 0
  br i1 %i.jd, label %bb.bo, label %.lr.ph.preheader.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.je = getelementptr inbounds nuw i8, ptr %i.hm, i64 14
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !32
  %i.jg = icmp eq i16 %i.jf, 0
  br i1 %i.jg, label %bb.bp, label %.lr.ph.preheader.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.jh = getelementptr i8, ptr %i.hr, i64 -14
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !32
  %i.jj = icmp eq i16 %i.ji, 0
  br i1 %i.jj, label %bb.bq, label %.lr.ph.preheader.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !32
  %i.jm = icmp eq i16 %i.jl, 0
  br i1 %i.jm, label %bb.br, label %.lr.ph.preheader.i.i

bb.br:                                            ; preds = %bb.bq
  %i.jn = getelementptr i8, ptr %i.hr, i64 -16
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !32
  %i.jp = icmp eq i16 %i.jo, 0
  br i1 %i.jp, label %bb.bs, label %.lr.ph.preheader.i.i

bb.bs:                                            ; preds = %bb.br
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hm, i64 18
end_hunk_0
begin_hunk_1_@_ZL18MBCSAddFromUnicodeP8MBCSDataPKhiia:bb.a

.lr.ph254:                                        ; preds = %.preheader
  %i.hw = shl nsw i32 %i.e, 4
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.hy = icmp sgt i32 %2, 0
  br i1 %i.hy, label %.lr.ph.i199, label %_ZL10printBytesPcmPKhi.exit206

.lr.ph.i199:                                      ; preds = %bb.u
  %i.hz = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.ia = lshr i8 %i.hz, 4                        ; 2 uses
  %i.ib = icmp ult i8 %i.hz, -96
  %i.ic = or disjoint i8 %i.ia, 48
  %narrow.i.i203 = add nuw nsw i8 %i.ia, 87
  %i.id = select i1 %i.ib, i8 %i.ic, i8 %narrow.i.i203
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.id, ptr %i.a, align 1, !tbaa !17
  %i.if = and i8 %i.hz, 15                        ; 3 uses
  %i.ig = icmp samesign ult i8 %i.if, 10
  %i.ih = or disjoint i8 %i.if, 48
  %narrow.i17.i204 = add nuw nsw i8 %i.if, 87
  %i.ii = select i1 %i.ig, i8 %i.ih, i8 %narrow.i17.i204
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.ii, ptr %i.ie, align 1, !tbaa !17
  %.not318 = icmp eq i32 %2, 1
  br i1 %.not318, label %_ZL10printBytesPcmPKhi.exit206, label %.lr.ph.i199.1

.lr.ph.i199.1:                                    ; preds = %.lr.ph.i199
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !17  ; 3 uses
  %i.im = lshr i8 %i.il, 4                        ; 2 uses
  %i.in = icmp ult i8 %i.il, -96
  %i.io = or disjoint i8 %i.im, 48
  %narrow.i.i203.1 = add nuw nsw i8 %i.im, 87
  %i.ip = select i1 %i.in, i8 %i.io, i8 %narrow.i.i203.1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ip, ptr %i.ij, align 1, !tbaa !17
  %i.ir = and i8 %i.il, 15                        ; 3 uses
  %i.is = icmp samesign ult i8 %i.ir, 10
  %i.it = or disjoint i8 %i.ir, 48
  %narrow.i17.i204.1 = add nuw nsw i8 %i.ir, 87
  %i.iu = select i1 %i.is, i8 %i.it, i8 %narrow.i17.i204.1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.iu, ptr %i.iq, align 1, !tbaa !17
  %i.iw = icmp sgt i32 %2, 2
  br i1 %i.iw, label %.lr.ph.i199.2, label %_ZL10printBytesPcmPKhi.exit206

.lr.ph.i199.2:                                    ; preds = %.lr.ph.i199.1
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !17  ; 3 uses
  %i.iz = lshr i8 %i.iy, 4                        ; 2 uses
  %i.ja = icmp ult i8 %i.iy, -96
  %i.jb = or disjoint i8 %i.iz, 48
  %narrow.i.i203.2 = add nuw nsw i8 %i.iz, 87
  %i.jc = select i1 %i.ja, i8 %i.jb, i8 %narrow.i.i203.2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.jc, ptr %i.iv, align 1, !tbaa !17
  %i.je = and i8 %i.iy, 15                        ; 3 uses
  %i.jf = icmp samesign ult i8 %i.je, 10
  %i.jg = or disjoint i8 %i.je, 48
  %narrow.i17.i204.2 = add nuw nsw i8 %i.je, 87
  %i.jh = select i1 %i.jf, i8 %i.jg, i8 %narrow.i17.i204.2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.jh, ptr %i.jd, align 1, !tbaa !17
  %.not319 = icmp eq i32 %2, 3
  br i1 %.not319, label %_ZL10printBytesPcmPKhi.exit206, label %.lr.ph.i199.3

.lr.ph.i199.3:                                    ; preds = %.lr.ph.i199.2
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !17  ; 3 uses
  %i.jl = lshr i8 %i.jk, 4                        ; 2 uses
  %i.jm = icmp ult i8 %i.jk, -96
  %i.jn = or disjoint i8 %i.jl, 48
  %narrow.i.i203.3 = add nuw nsw i8 %i.jl, 87
  %i.jo = select i1 %i.jm, i8 %i.jn, i8 %narrow.i.i203.3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.jo, ptr %i.ji, align 1, !tbaa !17
  %i.jq = and i8 %i.jk, 15                        ; 3 uses
  %i.jr = icmp samesign ult i8 %i.jq, 10
  %i.js = or disjoint i8 %i.jq, 48
  %narrow.i17.i204.3 = add nuw nsw i8 %i.jq, 87
  %i.jt = select i1 %i.jr, i8 %i.js, i8 %narrow.i17.i204.3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.jt, ptr %i.jp, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit206

_ZL10printBytesPcmPKhi.exit206:                   ; preds = %.lr.ph.i199, %.lr.ph.i199.1, %.lr.ph.i199.2, %.lr.ph.i199.3, %bb.u
  %.0.lcssa.i198 = phi ptr [ %i.a, %bb.u ], [ %i.ij, %.lr.ph.i199 ], [ %i.iv, %.lr.ph.i199.1 ], [ %i.ji, %.lr.ph.i199.2 ], [ %i.ju, %.lr.ph.i199.3 ]
  store i8 0, ptr %.0.lcssa.i198, align 1, !tbaa !17
  %i.jv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ap

bb.v:                                             ; preds = %.lr.ph254, %bb.v
  %.4253 = phi i32 [ %.3, %.lr.ph254 ], [ %i.kb, %bb.v ] ; 2 uses
  %.1164252 = phi i32 [ %i.fu, %.lr.ph254 ], [ %i.jy, %bb.v ] ; 2 uses
  %i.jw = lshr i32 %.4253, 4
  %i.jx = udiv i32 %i.jw, %i.e
  %i.jy = add i32 %.1164252, 1
  %i.jz = zext i32 %.1164252 to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.jz
  store i32 %i.jx, ptr %i.ka, align 4, !tbaa !37
  %i.kb = add i32 %.4253, %i.hw                   ; 2 uses
  %i.kc = icmp ult i32 %i.kb, %i.hs
  br i1 %i.kc, label %bb.v, label %._crit_edge255, !llvm.loop !109

._crit_edge255:                                   ; preds = %bb.v, %.preheader
  store i32 %i.hs, ptr %i.gc, align 4, !tbaa !38
  %.pre270 = load i32, ptr %i.fz, align 4, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge255, %bb.p
  %i.kd = phi i32 [ %.pre270, %._crit_edge255 ], [ %i.ga, %bb.p ]
  %i.ke = shl i32 %i.kd, 4                        ; 2 uses
  %i.kf = and i32 %i.ke, 1048560                  ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 456520 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 8, !tbaa !19
  %i.ki = zext i16 %i.kh to i32
  %.not187 = icmp sgt i32 %3, %i.ki
  br i1 %.not187, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kj = icmp samesign ugt i32 %i.kf, 65535
  br i1 %i.kj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i16 -257, ptr %i.kg, align 8, !tbaa !19
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.kk = trunc i32 %i.ke to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 454472
  %i.km = ashr i32 %3, 6
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.kl, i64 %i.kn
  store i16 %i.kk, ptr %i.ko, align 2, !tbaa !32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.w
  switch i32 %2, label %bb.af [
    i32 4, label %bb.ac
    i32 3, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kq = load i8, ptr %1, align 1, !tbaa !17
  %i.kr = zext i8 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0170 = phi ptr [ %i.kp, %bb.ac ], [ %1, %bb.ab ] ; 2 uses
  %.0167 = phi i32 [ %i.ks, %bb.ac ], [ 0, %bb.ab ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  %i.ku = load i8, ptr %.0170, align 1, !tbaa !17
  %i.kv = zext i8 %i.ku to i32
  %i.kw = or disjoint i32 %.0167, %i.kv
  %i.kx = shl nuw nsw i32 %i.kw, 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.1171 = phi ptr [ %i.kt, %bb.ad ], [ %1, %bb.ab ] ; 2 uses
  %.1168 = phi i32 [ %i.kx, %bb.ad ], [ 0, %bb.ab ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.1171, i64 1
  %i.kz = load i8, ptr %.1171, align 1, !tbaa !17
  %i.la = zext i8 %i.kz to i32
  %i.lb = or disjoint i32 %.1168, %i.la
  %i.lc = shl nuw i32 %i.lb, 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.2172 = phi ptr [ %1, %bb.ab ], [ %i.ky, %bb.ae ]
  %.2169 = phi i32 [ 0, %bb.ab ], [ %i.lc, %bb.ae ] ; 3 uses
  %i.ld = load i8, ptr %.2172, align 1, !tbaa !17 ; 2 uses
  %i.le = zext i8 %i.ld to i32
  %i.lf = or disjoint i32 %.2169, %i.le           ; 2 uses
  %i.lg = add nuw nsw i32 %i.kf, %i.fw
  %i.lh = mul i32 %i.lg, %i.e
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.li ; 8 uses
  switch i32 %i.e, label %bb.aj [
    i32 2, label %bb.ag
    i32 3, label %bb.ah
    i32 4, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !32
  %i.ll = zext i16 %i.lk to i32
  %i.lm = trunc i32 %i.lf to i16
  store i16 %i.lm, ptr %i.lj, align 2, !tbaa !32
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %5 = load i16, ptr %i.lj, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.ln = zext i16 %6 to i32
  %i.lo = shl nuw nsw i32 %i.ln, 8
  %i.lp = lshr i32 %.2169, 16
  %i.lq = trunc i32 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  store i8 %i.lq, ptr %i.lj, align 1, !tbaa !17
  %i.ls = lshr exact i32 %.2169, 8
  %i.lt = trunc i32 %i.ls to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 2 ; 2 uses
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !17
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !17
  %i.lw = zext i8 %i.lv to i32
  %i.lx = or disjoint i32 %i.lo, %i.lw
  store i8 %i.ld, ptr %i.lu, align 1, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ly = load i32, ptr %i.lj, align 4, !tbaa !37
  store i32 %i.lf, ptr %i.lj, align 4, !tbaa !37
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ag
  %.0166 = phi i32 [ 0, %bb.af ], [ %i.ll, %bb.ag ], [ %i.lx, %bb.ah ], [ %i.ly, %bb.ai ] ; 3 uses
  %i.lz = lshr i32 %i.fw, 4
  %i.ma = add nuw nsw i32 %i.lz, %i.fu
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.mb ; 3 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !37 ; 3 uses
  %i.me = zext i32 %i.md to i64
  %i.mf = and i32 %3, 15
  %i.mg = or disjoint i32 %i.mf, 16
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = shl nuw nsw i64 1, %i.mh                ; 2 uses
  %i.mj = and i64 %i.mi, %i.me
  %i.mk = icmp ne i64 %i.mj, 0
  %i.ml = icmp ne i32 %.0166, 0
  %or.cond9 = select i1 %i.mk, i1 true, i1 %i.ml
  br i1 %or.cond9, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.mm = icmp sgt i8 %4, -1
  br i1 %i.mm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mn = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.mo = icmp sgt i32 %2, 0
  br i1 %i.mo, label %.lr.ph.i208, label %_ZL10printBytesPcmPKhi.exit215

.lr.ph.i208:                                      ; preds = %bb.al
  %i.mp = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.mq = lshr i8 %i.mp, 4                        ; 2 uses
  %i.mr = icmp ult i8 %i.mp, -96
  %i.ms = or disjoint i8 %i.mq, 48
  %narrow.i.i212 = add nuw nsw i8 %i.mq, 87
  %i.mt = select i1 %i.mr, i8 %i.ms, i8 %narrow.i.i212
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.mt, ptr %i.a, align 1, !tbaa !17
  %i.mv = and i8 %i.mp, 15                        ; 3 uses
  %i.mw = icmp samesign ult i8 %i.mv, 10
  %i.mx = or disjoint i8 %i.mv, 48
  %narrow.i17.i213 = add nuw nsw i8 %i.mv, 87
  %i.my = select i1 %i.mw, i8 %i.mx, i8 %narrow.i17.i213
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.my, ptr %i.mu, align 1, !tbaa !17
  %.not316 = icmp eq i32 %2, 1
  br i1 %.not316, label %_ZL10printBytesPcmPKhi.exit215, label %.lr.ph.i208.1

.lr.ph.i208.1:                                    ; preds = %.lr.ph.i208
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !17  ; 3 uses
  %i.nc = lshr i8 %i.nb, 4                        ; 2 uses
  %i.nd = icmp ult i8 %i.nb, -96
  %i.ne = or disjoint i8 %i.nc, 48
  %narrow.i.i212.1 = add nuw nsw i8 %i.nc, 87
  %i.nf = select i1 %i.nd, i8 %i.ne, i8 %narrow.i.i212.1
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.nf, ptr %i.mz, align 1, !tbaa !17
  %i.nh = and i8 %i.nb, 15                        ; 3 uses
  %i.ni = icmp samesign ult i8 %i.nh, 10
  %i.nj = or disjoint i8 %i.nh, 48
  %narrow.i17.i213.1 = add nuw nsw i8 %i.nh, 87
  %i.nk = select i1 %i.ni, i8 %i.nj, i8 %narrow.i17.i213.1
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.nk, ptr %i.ng, align 1, !tbaa !17
  %i.nm = icmp sgt i32 %2, 2
  br i1 %i.nm, label %.lr.ph.i208.2, label %_ZL10printBytesPcmPKhi.exit215

.lr.ph.i208.2:                                    ; preds = %.lr.ph.i208.1
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !17  ; 3 uses
  %i.np = lshr i8 %i.no, 4                        ; 2 uses
  %i.nq = icmp ult i8 %i.no, -96
  %i.nr = or disjoint i8 %i.np, 48
  %narrow.i.i212.2 = add nuw nsw i8 %i.np, 87
  %i.ns = select i1 %i.nq, i8 %i.nr, i8 %narrow.i.i212.2
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ns, ptr %i.nl, align 1, !tbaa !17
  %i.nu = and i8 %i.no, 15                        ; 3 uses
  %i.nv = icmp samesign ult i8 %i.nu, 10
  %i.nw = or disjoint i8 %i.nu, 48
  %narrow.i17.i213.2 = add nuw nsw i8 %i.nu, 87
  %i.nx = select i1 %i.nv, i8 %i.nw, i8 %narrow.i17.i213.2
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.nx, ptr %i.nt, align 1, !tbaa !17
  %.not317 = icmp eq i32 %2, 3
  br i1 %.not317, label %_ZL10printBytesPcmPKhi.exit215, label %.lr.ph.i208.3

.lr.ph.i208.3:                                    ; preds = %.lr.ph.i208.2
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !17  ; 3 uses
  %i.ob = lshr i8 %i.oa, 4                        ; 2 uses
  %i.oc = icmp ult i8 %i.oa, -96
  %i.od = or disjoint i8 %i.ob, 48
  %narrow.i.i212.3 = add nuw nsw i8 %i.ob, 87
  %i.oe = select i1 %i.oc, i8 %i.od, i8 %narrow.i.i212.3
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.oe, ptr %i.ny, align 1, !tbaa !17
  %i.og = and i8 %i.oa, 15                        ; 3 uses
  %i.oh = icmp samesign ult i8 %i.og, 10
  %i.oi = or disjoint i8 %i.og, 48
  %narrow.i17.i213.3 = add nuw nsw i8 %i.og, 87
  %i.oj = select i1 %i.oh, i8 %i.oi, i8 %narrow.i17.i213.3
  %i.ok = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.oj, ptr %i.of, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit215

_ZL10printBytesPcmPKhi.exit215:                   ; preds = %.lr.ph.i208, %.lr.ph.i208.1, %.lr.ph.i208.2, %.lr.ph.i208.3, %bb.al
  %.0.lcssa.i207 = phi ptr [ %i.a, %bb.al ], [ %i.mz, %.lr.ph.i208 ], [ %i.nl, %.lr.ph.i208.1 ], [ %i.ny, %.lr.ph.i208.2 ], [ %i.ok, %.lr.ph.i208.3 ]
  store i8 0, ptr %.0.lcssa.i207, align 1, !tbaa !17
  %i.ol = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mn, ptr noundef nonnull @.str.26, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0166) #16 ; 0 uses
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.om = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not188 = icmp eq i8 %i.om, 0
  br i1 %.not188, label %.thread234, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.on = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.oo = icmp sgt i32 %2, 0
  br i1 %i.oo, label %.lr.ph.i217, label %_ZL10printBytesPcmPKhi.exit224

.lr.ph.i217:                                      ; preds = %bb.an
  %i.op = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.oq = lshr i8 %i.op, 4                        ; 2 uses
  %i.or = icmp ult i8 %i.op, -96
  %i.os = or disjoint i8 %i.oq, 48
  %narrow.i.i221 = add nuw nsw i8 %i.oq, 87
  %i.ot = select i1 %i.or, i8 %i.os, i8 %narrow.i.i221
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ot, ptr %i.a, align 1, !tbaa !17
  %i.ov = and i8 %i.op, 15                        ; 3 uses
  %i.ow = icmp samesign ult i8 %i.ov, 10
  %i.ox = or disjoint i8 %i.ov, 48
  %narrow.i17.i222 = add nuw nsw i8 %i.ov, 87
  %i.oy = select i1 %i.ow, i8 %i.ox, i8 %narrow.i17.i222
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.oy, ptr %i.ou, align 1, !tbaa !17
  %.not314 = icmp eq i32 %2, 1
  br i1 %.not314, label %_ZL10printBytesPcmPKhi.exit224, label %.lr.ph.i217.1

.lr.ph.i217.1:                                    ; preds = %.lr.ph.i217
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !17  ; 3 uses
  %i.pc = lshr i8 %i.pb, 4                        ; 2 uses
  %i.pd = icmp ult i8 %i.pb, -96
  %i.pe = or disjoint i8 %i.pc, 48
  %narrow.i.i221.1 = add nuw nsw i8 %i.pc, 87
  %i.pf = select i1 %i.pd, i8 %i.pe, i8 %narrow.i.i221.1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.pf, ptr %i.oz, align 1, !tbaa !17
  %i.ph = and i8 %i.pb, 15                        ; 3 uses
  %i.pi = icmp samesign ult i8 %i.ph, 10
  %i.pj = or disjoint i8 %i.ph, 48
  %narrow.i17.i222.1 = add nuw nsw i8 %i.ph, 87
  %i.pk = select i1 %i.pi, i8 %i.pj, i8 %narrow.i17.i222.1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.pk, ptr %i.pg, align 1, !tbaa !17
  %i.pm = icmp sgt i32 %2, 2
  br i1 %i.pm, label %.lr.ph.i217.2, label %_ZL10printBytesPcmPKhi.exit224

.lr.ph.i217.2:                                    ; preds = %.lr.ph.i217.1
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !17  ; 3 uses
  %i.pp = lshr i8 %i.po, 4                        ; 2 uses
  %i.pq = icmp ult i8 %i.po, -96
  %i.pr = or disjoint i8 %i.pp, 48
  %narrow.i.i221.2 = add nuw nsw i8 %i.pp, 87
  %i.ps = select i1 %i.pq, i8 %i.pr, i8 %narrow.i.i221.2
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ps, ptr %i.pl, align 1, !tbaa !17
  %i.pu = and i8 %i.po, 15                        ; 3 uses
  %i.pv = icmp samesign ult i8 %i.pu, 10
  %i.pw = or disjoint i8 %i.pu, 48
  %narrow.i17.i222.2 = add nuw nsw i8 %i.pu, 87
  %i.px = select i1 %i.pv, i8 %i.pw, i8 %narrow.i17.i222.2
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.px, ptr %i.pt, align 1, !tbaa !17
  %.not315 = icmp eq i32 %2, 3
  br i1 %.not315, label %_ZL10printBytesPcmPKhi.exit224, label %.lr.ph.i217.3

.lr.ph.i217.3:                                    ; preds = %.lr.ph.i217.2
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !17  ; 3 uses
  %i.qb = lshr i8 %i.qa, 4                        ; 2 uses
  %i.qc = icmp ult i8 %i.qa, -96
  %i.qd = or disjoint i8 %i.qb, 48
  %narrow.i.i221.3 = add nuw nsw i8 %i.qb, 87
  %i.qe = select i1 %i.qc, i8 %i.qd, i8 %narrow.i.i221.3
  %i.qf = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.qe, ptr %i.py, align 1, !tbaa !17
  %i.qg = and i8 %i.qa, 15                        ; 3 uses
  %i.qh = icmp samesign ult i8 %i.qg, 10
  %i.qi = or disjoint i8 %i.qg, 48
  %narrow.i17.i222.3 = add nuw nsw i8 %i.qg, 87
  %i.qj = select i1 %i.qh, i8 %i.qi, i8 %narrow.i17.i222.3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.qj, ptr %i.qf, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit224

_ZL10printBytesPcmPKhi.exit224:                   ; preds = %.lr.ph.i217, %.lr.ph.i217.1, %.lr.ph.i217.2, %.lr.ph.i217.3, %bb.an
  %.0.lcssa.i216 = phi ptr [ %i.a, %bb.an ], [ %i.oz, %.lr.ph.i217 ], [ %i.pl, %.lr.ph.i217.1 ], [ %i.py, %.lr.ph.i217.2 ], [ %i.qk, %.lr.ph.i217.3 ]
  store i8 0, ptr %.0.lcssa.i216, align 1, !tbaa !17
  %i.ql = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.on, ptr noundef nonnull @.str.27, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0166) #16 ; 0 uses
  %.pre271 = load i32, ptr %i.mc, align 4, !tbaa !37
  br label %.thread234

bb.ao:                                            ; preds = %bb.aj
  %i.qm = icmp slt i8 %4, 1
  br i1 %i.qm, label %.thread234, label %bb.ap

.thread234:                                       ; preds = %bb.am, %_ZL10printBytesPcmPKhi.exit224, %bb.ao
  %i.qn = phi i32 [ %i.md, %bb.am ], [ %.pre271, %_ZL10printBytesPcmPKhi.exit224 ], [ %i.md, %bb.ao ]
  %i.qo = trunc nuw i64 %i.mi to i32
  %i.qp = or i32 %i.qn, %i.qo
  store i32 %i.qp, ptr %i.mc, align 4, !tbaa !37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread234, %_ZL10printBytesPcmPKhi.exit215, %_ZL10printBytesPcmPKhi.exit206, %_ZL10printBytesPcmPKhi.exit197, %bb.f, %_ZL10printBytesPcmPKhi.exit
  %.0173 = phi i8 [ 0, %bb.f ], [ 0, %_ZL10printBytesPcmPKhi.exit197 ], [ 0, %_ZL10printBytesPcmPKhi.exit206 ], [ 0, %_ZL10printBytesPcmPKhi.exit215 ], [ 0, %_ZL10printBytesPcmPKhi.exit ], [ 1, %.thread234 ], [ 1, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i8 %.0173
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZL10printBytesPcmPKhi(ptr noundef nonnull returned %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -128, 128) %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !17      ; 2 uses
  %i.c = lshr i8 %i.b, 4                          ; 2 uses
  %i.d = icmp ult i8 %i.b, -96
  %i.e = or disjoint i8 %i.c, 48
  %narrow.i = add nuw nsw i8 %i.c, 87
  %i.f = select i1 %i.d, i8 %i.e, i8 %narrow.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %0, align 1, !tbaa !17
  %i.h = load i8, ptr %1, align 1, !tbaa !17
  %i.i = and i8 %i.h, 15                          ; 3 uses
  %i.j = icmp samesign ult i8 %i.i, 10
  %i.k = or disjoint i8 %i.i, 48
  %narrow.i17 = add nuw nsw i8 %i.i, 87
  %i.l = select i1 %i.j, i8 %i.k, i8 %narrow.i17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i8 %i.l, ptr %i.g, align 1, !tbaa !17
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 2 uses
  %i.p = lshr i8 %i.o, 4                          ; 2 uses
  %i.q = icmp ult i8 %i.o, -96
  %i.r = or disjoint i8 %i.p, 48
  %narrow.i.1 = add nuw nsw i8 %i.p, 87
  %i.s = select i1 %i.q, i8 %i.r, i8 %narrow.i.1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.s, ptr %i.m, align 1, !tbaa !17
  %i.u = load i8, ptr %i.n, align 1, !tbaa !17
  %i.v = and i8 %i.u, 15                          ; 3 uses
  %i.w = icmp samesign ult i8 %i.v, 10
  %i.x = or disjoint i8 %i.v, 48
  %narrow.i17.1 = add nuw nsw i8 %i.v, 87
  %i.y = select i1 %i.w, i8 %i.x, i8 %narrow.i17.1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 %i.y, ptr %i.t, align 1, !tbaa !17
  %i.aa = icmp sgt i32 %2, 2
  br i1 %i.aa, label %.lr.ph.2, label %.critedge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17  ; 2 uses
  %i.ad = lshr i8 %i.ac, 4                        ; 2 uses
  %i.ae = icmp ult i8 %i.ac, -96
  %i.af = or disjoint i8 %i.ad, 48
  %narrow.i.2 = add nuw nsw i8 %i.ad, 87
  %i.ag = select i1 %i.ae, i8 %i.af, i8 %narrow.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ag, ptr %i.z, align 1, !tbaa !17
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.aj = and i8 %i.ai, 15                        ; 3 uses
  %i.ak = icmp samesign ult i8 %i.aj, 10
  %i.al = or disjoint i8 %i.aj, 48
  %narrow.i17.2 = add nuw nsw i8 %i.aj, 87
  %i.am = select i1 %i.ak, i8 %i.al, i8 %narrow.i17.2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  store i8 %i.am, ptr %i.ah, align 1, !tbaa !17
  %.not1 = icmp eq i32 %2, 3
  br i1 %.not1, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17  ; 2 uses
  %i.aq = lshr i8 %i.ap, 4                        ; 2 uses
  %i.ar = icmp ult i8 %i.ap, -96
  %i.as = or disjoint i8 %i.aq, 48
  %narrow.i.3 = add nuw nsw i8 %i.aq, 87
  %i.at = select i1 %i.ar, i8 %i.as, i8 %narrow.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.at, ptr %i.an, align 1, !tbaa !17
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aw = and i8 %i.av, 15                        ; 3 uses
  %i.ax = icmp samesign ult i8 %i.aw, 10
  %i.ay = or disjoint i8 %i.aw, 48
  %narrow.i17.3 = add nuw nsw i8 %i.aw, 87
  %i.az = select i1 %i.ax, i8 %i.ay, i8 %narrow.i17.3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.az, ptr %i.au, align 1, !tbaa !17
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.m, %.lr.ph ], [ %i.z, %.lr.ph.1 ], [ %i.an, %.lr.ph.2 ], [ %i.ba, %.lr.ph.3 ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !17
  ret ptr %0
}

declare i32 @ucm_findFallback(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @ucm_optimizeStates(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #8

declare void @udata_writeBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { allocsize(0) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTS12NewConverter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!11 = !{!"p1 _ZTS7UCMFile", !9, i64 0}
!12 = !{!"p1 short", !9, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!"_ZTS8MBCSData", !10, i64 0, !11, i64 32, !5, i64 40, !6, i64 65576, !12, i64 65584, !5, i64 65592, !5, i64 67768, !5, i64 196664, !13, i64 454456, !6, i64 454464, !6, i64 454468, !5, i64 454472, !14, i64 456520, !5, i64 456522, !5, i64 456523}
!16 = !{!15, !5, i64 456522}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !5, i64 456523}
!19 = !{!15, !14, i64 456520}
!20 = !{!15, !11, i64 32}
!21 = !{!15, !12, i64 65584}
!22 = !{!15, !13, i64 454456}
!23 = !{!"_ZTS20UConverterStaticData", !6, i64 0, !5, i64 4, !6, i64 64, !5, i64 68, !5, i64 69, !5, i64 70, !5, i64 71, !5, i64 72, !5, i64 76, !5, i64 77, !5, i64 78, !5, i64 79, !5, i64 80, !5, i64 81}
!24 = !{!23, !5, i64 79}
!25 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS8UCMTable", !9, i64 0}
!28 = !{!"_ZTS9UCMStates", !5, i64 0, !5, i64 131072, !5, i64 131584, !6, i64 132096, !6, i64 132100, !6, i64 132104, !6, i64 132108, !5, i64 132112, !5, i64 132113}
!29 = !{!"_ZTS7UCMFile", !27, i64 0, !27, i64 8, !28, i64 16, !5, i64 132132}
!30 = !{!29, !6, i64 132120}
!31 = !{!29, !6, i64 132124}
!32 = !{!14, !14, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!15, !6, i64 454464}
!37 = !{!6, !6, i64 0}
!38 = !{!15, !6, i64 454468}
!39 = !{!15, !6, i64 65576}
!40 = !{!29, !5, i64 132129}
!41 = !{!29, !6, i64 132112}
!42 = !{!15, !9, i64 0}
!43 = !{!15, !9, i64 8}
!44 = !{!15, !9, i64 16}
!45 = !{!15, !9, i64 24}
!46 = distinct !{!46, !33, !34, !35}
!47 = distinct !{!47, !33, !34, !35}
!48 = distinct !{!48, !33, !35, !34}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33}
!57 = distinct !{!57, !33, !34, !35}
!58 = distinct !{!58, !33, !34, !35}
!59 = distinct !{!59, !33, !34}
!60 = distinct !{!60, !33, !34}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33, !34, !35}
!65 = distinct !{!65, !33, !34}
!66 = distinct !{!66, !33, !34}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = !{!"p1 _ZTS9UCMapping", !9, i64 0}
!70 = !{!"p1 int", !9, i64 0}
!71 = !{!"_ZTS8UCMTable", !69, i64 0, !6, i64 8, !6, i64 12, !70, i64 16, !6, i64 24, !6, i64 28, !13, i64 32, !6, i64 40, !6, i64 44, !70, i64 48, !5, i64 56, !5, i64 57, !5, i64 58}
!72 = !{!71, !5, i64 56}
!73 = !{!23, !5, i64 69}
!74 = !{!71, !5, i64 57}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = !{!23, !5, i64 78}
!77 = !{!23, !5, i64 77}
!78 = !{!71, !6, i64 12}
!79 = !{!71, !69, i64 0}
!80 = !{!"_ZTS9UCMapping", !6, i64 0, !5, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11}
!81 = !{!80, !6, i64 0}
!82 = !{!80, !5, i64 10}
!83 = !{!80, !5, i64 9}
!84 = !{!80, !5, i64 11}
!85 = !{!28, !6, i64 132104}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33, !34, !35}
!88 = distinct !{!88, !33, !34, !35}
!89 = !{!"_ZTS11_MBCSHeader", !5, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!90 = !{!89, !6, i64 32}
!91 = !{!89, !6, i64 36}
!92 = !{!89, !6, i64 4}
!93 = !{!89, !6, i64 8}
!94 = !{!89, !6, i64 12}
!95 = !{!89, !6, i64 16}
!96 = !{!89, !6, i64 20}
!97 = !{!89, !6, i64 28}
!98 = !{!89, !6, i64 24}
!99 = distinct !{!99, !33}
!100 = !{!"_ZTS16_MBCSToUFallback", !6, i64 0, !6, i64 4}
!101 = !{!100, !6, i64 4}
!102 = !{!100, !6, i64 0}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !33}
!105 = distinct !{!105, !33, !34, !35}
!106 = distinct !{!106, !33, !35, !34}
!107 = distinct !{!107, !33}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !33}
end_hunk_1
