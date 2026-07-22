inline.NumInlined: 226
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7817CollationIterator23nextCE32FromContractionEPKNS_13CollationDataEjPKDsjiR10UErrorCode:bb.a
  %i.ak = shl nuw nsw i32 %i.r, 10
  %i.al = and i32 %i.ak, 33488896
  %i.am = add nsw i32 %i.al, -16842752
  %i.an = load i16, ptr %i.p, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  br label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = load i16, ptr %i.p, align 2
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

_ZNK6icu_7810UCharsTrie8getValueEv.exit:          ; preds = %bb.g, %bb.i, %bb.j, %bb.l, %bb.n, %bb.o
  %i.ax = phi i32 [ %i.s, %bb.g ], [ %i.af, %bb.j ], [ %i.y, %bb.i ], [ %i.ai, %bb.l ], [ %i.ap, %bb.n ], [ %i.aw, %bb.o ] ; 6 uses
  %i.ay = and i32 %.035, 1
  %.not59 = icmp eq i32 %i.ay, 0
  br i1 %.not59, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit87, label %bb.p

bb.p:                                             ; preds = %_ZNK6icu_7810UCharsTrie8getValueEv.exit
  %i.az = load ptr, ptr %i.d, align 8             ; 5 uses
  %.not.i62 = icmp eq ptr %i.az, null
  br i1 %.not.i62, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = load i16, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp slt i16 %i.bd, 0
  %i.bf = ashr i16 %i.bd, 5
  %i.bg = sext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = select i1 %i.be, i32 %i.bi, i32 %i.bg
  %.not13.i = icmp slt i32 %i.bb, %i.bj
  br i1 %.not13.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bk, i32 noundef %i.bb) #16 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 65536
  %i.bn = select i1 %i.bm, i32 1, i32 2
  %i.bo = load i32, ptr %i.ba, align 8
  %i.bp = add nsw i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %i.ba, align 8
  br label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bq = load i32, ptr %i.m, align 8
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit87, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %6) #16, !inline_history !14 ; 4 uses
  %i.bw = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not12.i = icmp eq ptr %i.bw, null
  br i1 %.not12.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = icmp ugt i16 %i.by, 31
  %i.ca = icmp sgt i32 %i.bv, -1
  %or.cond.i = and i1 %i.ca, %i.bz
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 136 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ce = load i32, ptr %i.m, align 8             ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = icmp sgt i32 %i.bv, -1
  %or.cond3.i = and i1 %i.cg, %i.cf
  br i1 %or.cond3.i, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread90, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread90: ; preds = %bb.w
  %i.ch = add nsw i32 %i.ce, -1
  store i32 %i.ch, ptr %i.m, align 8
  br label %bb.x

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit: ; preds = %bb.r, %bb.w
  %.0.i = phi i32 [ %i.bl, %bb.r ], [ %i.bv, %bb.w ] ; 2 uses
  %i.ci = icmp slt i32 %.0.i, 0
  br i1 %i.ci, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit87, label %bb.x

bb.x:                                             ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread90, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit
  %.0.i92 = phi i32 [ %i.bv, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread90 ], [ %.0.i, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit ] ; 3 uses
  %i.cj = load ptr, ptr %i.d, align 8             ; 4 uses
  %.not60 = icmp eq ptr %i.cj, null
  br i1 %.not60, label %bb.bh, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = icmp ugt i16 %i.cl, 31
  br i1 %i.cm, label %bb.z, label %bb.bh

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.co = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.co, ptr %i.cn, align 8
  %i.cp = load i32, ptr %i.c, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 160
  store i32 %i.cp, ptr %i.cq, align 8
  br label %bb.bh

bb.aa:                                            ; preds = %bb.e
  %i.cr = icmp eq i32 %.035, 0
  br i1 %i.cr, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load ptr, ptr %i.d, align 8             ; 5 uses
  %.not.i63 = icmp eq ptr %i.cs, null
  br i1 %.not.i63, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 136 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cw = load i16, ptr %i.cv, align 8            ; 2 uses
  %i.cx = icmp slt i16 %i.cw, 0
  %i.cy = ashr i16 %i.cw, 5
  %i.cz = sext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = select i1 %i.cx, i32 %i.db, i32 %i.cz
  %.not13.i64 = icmp slt i32 %i.cu, %i.dc
  br i1 %.not13.i64, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.de = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dd, i32 noundef %i.cu) #16 ; 2 uses
  %i.df = icmp ult i32 %i.de, 65536
  %i.dg = select i1 %i.df, i32 1, i32 2
  %i.dh = load i32, ptr %i.ct, align 8
  %i.di = add nsw i32 %i.dg, %i.dh
  store i32 %i.di, ptr %i.ct, align 8
  br label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dj = load i32, ptr %i.m, align 8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %6) #16, !inline_history !14 ; 4 uses
  %i.dp = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not12.i65 = icmp eq ptr %i.dp, null
  br i1 %.not12.i65, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i16, ptr %i.dq, align 8
  %i.ds = icmp ugt i16 %i.dr, 31
  %i.dt = icmp sgt i32 %i.do, -1
  %or.cond.i66 = and i1 %i.dt, %i.ds
  br i1 %or.cond.i66, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.dx = load i32, ptr %i.m, align 8             ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = icmp sgt i32 %i.do, -1
  %or.cond3.i67 = and i1 %i.dz, %i.dy
  br i1 %or.cond3.i67, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread94, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread94: ; preds = %bb.ai
  %i.ea = add nsw i32 %i.dx, -1
  store i32 %i.ea, ptr %i.m, align 8
  br label %bb.bg

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69: ; preds = %bb.ad, %bb.ai
  %.0.i68 = phi i32 [ %i.de, %bb.ad ], [ %i.do, %bb.ai ] ; 2 uses
  %i.eb = icmp slt i32 %.0.i68, 0
  br i1 %i.eb, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread, label %bb.bg

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread: ; preds = %bb.ae, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69, %bb.aa
  %i.ec = sub nsw i32 0, %.037
  %i.ed = and i32 %2, 1024
  %.not58 = icmp eq i32 %i.ed, 0
  br i1 %.not58, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread
  %i.ee = and i32 %2, 256
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = icmp slt i32 %.037, %.040
  %or.cond = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond, label %bb.ak, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.eh = icmp sgt i32 %.037, 1
  br i1 %i.eh, label %bb.al, label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.d, align 8             ; 5 uses
  %.not.i70 = icmp eq ptr %i.ei, null
  br i1 %.not.i70, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i16, ptr %i.ej, align 8            ; 3 uses
  %i.el = icmp ugt i16 %i.ek, 31
  br i1 %i.el, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.en = icmp slt i16 %i.ek, 0
  %i.eo = ashr i16 %i.ek, 5
  %i.ep = sext i16 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = select i1 %i.en, i32 %i.er, i32 %i.ep   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 136 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8            ; 3 uses
  %i.ev = sub nsw i32 %i.eu, %i.es                ; 4 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %.not.i.i = icmp samesign ult i32 %i.ev, %.037
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ex = sub nsw i32 %i.eu, %.037
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.ey = sub nsw i32 %i.ev, %.037
  %i.ez = call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.em, i32 noundef %i.es, i32 noundef %i.ey) #16
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i

bb.ar:                                            ; preds = %bb.an
  %i.fa = call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.em, i32 noundef %i.eu, i32 noundef %i.ec) #16
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i

_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sink.i.i = phi i32 [ %i.fa, %bb.ar ], [ %i.ez, %bb.aq ], [ %i.ex, %bb.ap ]
  %.0.i.i = phi i32 [ 0, %bb.ar ], [ %i.ev, %bb.aq ], [ %.037, %bb.ap ]
  store i32 %.sink.i.i, ptr %i.et, align 8
  br label %bb.as

bb.as:                                            ; preds = %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i, %bb.am, %bb.al
  %.0.i71 = phi i32 [ %.037, %bb.am ], [ %.0.i.i, %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i ], [ %.037, %bb.al ] ; 2 uses
  %i.fb = load ptr, ptr %0, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef %.0.i71, ptr noundef nonnull align 4 dereferenceable(4) %6) #16, !inline_history !15
  %i.fe = load i32, ptr %i.m, align 8             ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  br i1 %i.ff, label %bb.at, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

bb.at:                                            ; preds = %bb.as
  %i.fg = add nuw nsw i32 %i.fe, %.0.i71          ; 2 uses
  store i32 %i.fg, ptr %i.m, align 8
  %i.fh = icmp eq i32 %i.fg, 0
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit: ; preds = %bb.as, %bb.at
  %i.fi = phi i1 [ false, %bb.as ], [ %i.fh, %bb.at ]
  %i.fj = load ptr, ptr %i.d, align 8             ; 5 uses
  %.not.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i72, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 136 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fn = load i16, ptr %i.fm, align 8            ; 2 uses
  %i.fo = icmp slt i16 %i.fn, 0
  %i.fp = ashr i16 %i.fn, 5
  %i.fq = sext i16 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = select i1 %i.fo, i32 %i.fs, i32 %i.fq
  %.not13.i73 = icmp slt i32 %i.fl, %i.ft
  br i1 %.not13.i73, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fv = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, i32 noundef %i.fl) #16 ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 65536
  %i.fx = select i1 %i.fw, i32 1, i32 2
  %i.fy = load i32, ptr %i.fk, align 8
  %i.fz = add nsw i32 %i.fx, %i.fy
  store i32 %i.fz, ptr %i.fk, align 8
  br label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78

bb.aw:                                            ; preds = %bb.au, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit
  br i1 %i.fi, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ga = load ptr, ptr %0, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %6) #16, !inline_history !14 ; 4 uses
  %i.ge = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not12.i74 = icmp eq ptr %i.ge, null
  br i1 %.not12.i74, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i16, ptr %i.gf, align 8
  %i.gh = icmp ugt i16 %i.gg, 31
  %i.gi = icmp sgt i32 %i.gd, -1
  %or.cond.i75 = and i1 %i.gi, %i.gh
  br i1 %or.cond.i75, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 136 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.gm = load i32, ptr %i.m, align 8             ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  %i.go = icmp sgt i32 %i.gd, -1
  %or.cond3.i76 = and i1 %i.go, %i.gn
  br i1 %or.cond3.i76, label %bb.bb, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78

bb.bb:                                            ; preds = %bb.ba
  %i.gp = add nsw i32 %i.gm, -1
  store i32 %i.gp, ptr %i.m, align 8
  br label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78: ; preds = %bb.av, %bb.aw, %bb.ba, %bb.bb
  %.0.i77 = phi i32 [ %i.fv, %bb.av ], [ -1, %bb.aw ], [ %i.gd, %bb.bb ], [ %i.gd, %bb.ba ]
  %.neg = add nuw i32 %.040, 1
  %i.gq = sub i32 %.neg, %.037
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78, %bb.ak
  %.249 = phi i32 [ %.0.i77, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78 ], [ %.047, %bb.ak ] ; 6 uses
  %.141 = phi i32 [ %i.gq, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78 ], [ %.040, %bb.ak ]
  %.138 = phi i32 [ 1, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit78 ], [ %.037, %bb.ak ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !18, !align !19 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i16, ptr %i.gt, align 8
  %i.gv = zext i16 %i.gu to i32
  %i.gw = icmp slt i32 %.249, %i.gv
  br i1 %i.gw, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gx = icmp samesign ult i32 %.249, 65536
  br i1 %i.gx, label %bb.be, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit

bb.be:                                            ; preds = %bb.bd
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = lshr i32 %.249, 8
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1             ; 2 uses
  %i.he = icmp eq i8 %i.hd, 0
  %i.hf = zext i8 %i.hd to i32
  %i.hg = lshr i32 %.249, 5
  %i.hh = and i32 %i.hg, 7
  %i.hi = shl nuw nsw i32 1, %i.hh
  %i.hj = and i32 %i.hi, %i.hf
  %.not6.i.i = icmp eq i32 %i.hj, 0
  %.not.i.i80 = select i1 %i.he, i1 true, i1 %.not6.i.i
  br i1 %.not.i.i80, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit.thread, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit

_ZNK6icu_7813CollationData8getFCD16Ei.exit:       ; preds = %bb.bd, %bb.be
  %i.hk = call noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80) %i.gs, i32 noundef %.249) #16
  %i.hl = icmp ugt i16 %i.hk, 255
  br i1 %i.hl, label %bb.bf, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit.thread

bb.bf:                                            ; preds = %_ZNK6icu_7813CollationData8getFCD16Ei.exit
  %i.hm = call noundef i32 @_ZN6icu_7817CollationIterator36nextCE32FromDiscontiguousContractionEPKNS_13CollationDataERNS_10UCharsTrieEjiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(28) %7, i32 noundef %.044, i32 noundef %.141, i32 noundef %.249, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit87

bb.bg:                                            ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread94, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69
  %.0.i6896 = phi i32 [ %i.do, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69.thread94 ], [ %.0.i68, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit69 ]
  %i.hn = add nsw i32 %.037, 1
  br label %bb.bh
end_hunk_0
begin_hunk_1_@_ZN6icu_7817CollationIterator16appendNumericCEsEjaR10UErrorCode:bb.a
  %.not.i.i.i = icmp eq i8 %i.le, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge2
  %i.lf = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.lf) #16
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %.critedge2, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

declare noundef i32 @_ZN6icu_7810UCharsTrie16nextForCodePointEi(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN6icu_7810UCharsTrieD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef i32 @_ZN6icu_7810UCharsTrie17firstForCodePointEi(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7817CollationIterator36nextCE32FromDiscontiguousContractionEPKNS_13CollationDataERNS_10UCharsTrieEjiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !18, !align !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = zext i16 %i.f to i32
  %i.h = icmp slt i32 %5, %i.g
  br i1 %i.h, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %5, 65536
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = lshr i32 %5, 8
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = zext i8 %i.o to i32
  %i.r = lshr i32 %5, 5
  %i.s = and i32 %i.r, 7
  %i.t = shl nuw nsw i32 1, %i.s
  %i.u = and i32 %i.t, %i.q
  %.not6.i.i = icmp eq i32 %i.u, 0
  %.not.i.i = select i1 %i.p, i1 true, i1 %.not6.i.i
  br i1 %.not.i.i, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %5) #16
  %i.w = trunc i16 %i.v to i8
  br label %_ZNK6icu_7813CollationData8getFCD16Ei.exit

_ZNK6icu_7813CollationData8getFCD16Ei.exit:       ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi i8 [ 0, %bb.b ], [ %i.w, %bb.e ], [ 0, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 19 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7813CollationData8getFCD16Ei.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i16, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = select i1 %i.ad, i32 %i.ah, i32 %i.af
  %.not13.i = icmp slt i32 %i.aa, %i.ai
  br i1 %.not13.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i32 noundef %i.aa) #16 ; 2 uses
  %i.al = icmp ult i32 %i.ak, 65536
  %i.am = select i1 %i.al, i32 1, i32 2
  %i.an = load i32, ptr %i.z, align 8
  %i.ao = add nsw i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.z, align 8
  br label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit

bb.h:                                             ; preds = %bb.f, %_ZNK6icu_7813CollationData8getFCD16Ei.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %6) #16, !inline_history !14 ; 4 uses
  %i.aw = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not12.i = icmp eq ptr %i.aw, null
  br i1 %.not12.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i16, ptr %i.ax, align 8
  %i.az = icmp ugt i16 %i.ay, 31
  %i.ba = icmp sgt i32 %i.av, -1
  %or.cond.i = and i1 %i.ba, %i.az
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.be = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  %i.bg = icmp sgt i32 %i.av, -1
  %or.cond3.i = and i1 %i.bg, %i.bf
  br i1 %or.cond3.i, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread133, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread133: ; preds = %bb.l
  %i.bh = add nsw i32 %i.be, -1
  store i32 %i.bh, ptr %i.ap, align 8
  br label %bb.s

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit: ; preds = %bb.g, %bb.l
  %.0.i = phi i32 [ %i.ak, %bb.g ], [ %i.av, %bb.l ] ; 2 uses
  %i.bi = icmp slt i32 %.0.i, 0
  br i1 %i.bi, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit._ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread_crit_edge, label %bb.s

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit._ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread_crit_edge: ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit
  %.pre161 = load ptr, ptr %i.x, align 8
  br label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread: ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit._ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread_crit_edge, %bb.h
  %i.bj = phi ptr [ %.pre161, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit._ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread_crit_edge ], [ %i.y, %bb.h ] ; 5 uses
  %.not.i92 = icmp eq ptr %i.bj, null
  br i1 %.not.i92, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i16, ptr %i.bk, align 8            ; 3 uses
  %i.bm = icmp ugt i16 %i.bl, 31
  br i1 %i.bm, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp slt i16 %i.bl, 0
  %i.bo = ashr i16 %i.bl, 5
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = select i1 %i.bn, i32 %i.br, i32 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 136 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8            ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, %i.bs
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = add nsw i32 %i.bu, -1
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = tail call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i32 noundef %i.bu, i32 noundef -1) #16
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i

_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i: ; preds = %bb.p, %bb.o
  %.sink.i.i = phi i32 [ %i.by, %bb.p ], [ %i.bw, %bb.o ]
  %.0.i.i94 = phi i32 [ 0, %bb.p ], [ 1, %bb.o ]
  store i32 %.sink.i.i, ptr %i.bt, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i, %bb.m, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread
  %.0.i93 = phi i32 [ 1, %bb.m ], [ %.0.i.i94, %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i ], [ 1, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread ] ; 2 uses
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef %.0.i93, ptr noundef nonnull align 4 dereferenceable(4) %6) #16, !inline_history !15
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %bb.r, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = add nuw nsw i32 %i.cd, %.0.i93
  store i32 %i.cf, ptr %i.cc, align 8
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

bb.s:                                             ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread133, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit
  %.0.i135 = phi i32 [ %i.av, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread133 ], [ %.0.i, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit ] ; 6 uses
  %i.cg = add nuw i32 %4, 1
  %i.ch = load ptr, ptr %i.c, align 8, !nonnull !18, !align !19 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = zext i16 %i.cj to i32
  %i.cl = icmp samesign ult i32 %.0.i135, %i.ck
  br i1 %i.cl, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit99.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = icmp samesign ult i32 %.0.i135, 65536
  br i1 %i.cm, label %bb.u, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit99

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = lshr i32 %.0.i135, 8
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 0
  %i.cu = zext i8 %i.cs to i32
  %i.cv = lshr i32 %.0.i135, 5
  %i.cw = and i32 %i.cv, 7
  %i.cx = shl nuw nsw i32 1, %i.cw
  %i.cy = and i32 %i.cx, %i.cu
  %.not6.i.i97 = icmp eq i32 %i.cy, 0
  %.not.i.i98 = select i1 %i.ct, i1 true, i1 %.not6.i.i97
  br i1 %.not.i.i98, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit99.thread, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit99

_ZNK6icu_7813CollationData8getFCD16Ei.exit99:     ; preds = %bb.t, %bb.u
  %i.cz = tail call noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, i32 noundef %.0.i135) #16 ; 2 uses
  %i.da = icmp ult i16 %i.cz, 256
  br i1 %i.da, label %_ZNK6icu_7813CollationData8getFCD16Ei.exit99.thread, label %bb.ad

_ZNK6icu_7813CollationData8getFCD16Ei.exit99.thread: ; preds = %bb.u, %bb.s, %_ZNK6icu_7813CollationData8getFCD16Ei.exit99
  %i.db = load ptr, ptr %i.x, align 8             ; 5 uses
  %.not.i100 = icmp eq ptr %i.db, null
  br i1 %.not.i100, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %_ZNK6icu_7813CollationData8getFCD16Ei.exit99.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i16, ptr %i.dc, align 8            ; 3 uses
  %i.de = icmp ugt i16 %i.dd, 31
  br i1 %i.de, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dg = icmp slt i16 %i.dd, 0
  %i.dh = ashr i16 %i.dd, 5
  %i.di = sext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = select i1 %i.dg, i32 %i.dk, i32 %i.di   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 136 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8            ; 3 uses
  %i.do = sub nsw i32 %i.dn, %i.dl                ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not.i.i105 = icmp eq i32 %i.do, 1
  br i1 %.not.i.i105, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = add nsw i32 %i.dn, -2
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i102

bb.z:                                             ; preds = %bb.x
  %i.dr = tail call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i32 noundef %i.dl, i32 noundef -1) #16
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i102

bb.aa:                                            ; preds = %bb.w
  %i.ds = tail call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i32 noundef %i.dn, i32 noundef -2) #16
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i102

_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i102: ; preds = %bb.aa, %bb.z, %bb.y
  %.sink.i.i103 = phi i32 [ %i.ds, %bb.aa ], [ %i.dr, %bb.z ], [ %i.dq, %bb.y ]
  %.0.i.i104 = phi i32 [ 0, %bb.aa ], [ 1, %bb.z ], [ 2, %bb.y ]
  store i32 %.sink.i.i103, ptr %i.dm, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i102, %bb.v, %_ZNK6icu_7813CollationData8getFCD16Ei.exit99.thread
  %.0.i101 = phi i32 [ 2, %bb.v ], [ %.0.i.i104, %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i102 ], [ 2, %_ZNK6icu_7813CollationData8getFCD16Ei.exit99.thread ] ; 2 uses
  %i.dt = load ptr, ptr %0, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef %.0.i101, ptr noundef nonnull align 4 dereferenceable(4) %6) #16, !inline_history !15
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8            ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, -1
  br i1 %i.dy, label %bb.ac, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dz = add nuw nsw i32 %i.dx, %.0.i101
  store i32 %i.dz, ptr %i.dw, align 8
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

bb.ad:                                            ; preds = %_ZNK6icu_7813CollationData8getFCD16Ei.exit99
  %i.ea = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ed = load i16, ptr %i.ec, align 8
  %i.ee = icmp ugt i16 %i.ed, 31
  br i1 %i.ee, label %bb.al, label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.ef = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #16 ; 7 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i16 2, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 80
  store i16 2, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  store ptr %i.ef, ptr %i.x, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr null, ptr %i.x, align 8
  store i32 7, ptr %6, align 4
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.en, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 -1, ptr %i.ep, align 8
  %i.eq = icmp sgt i32 %4, 1
  br i1 %i.eq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.er = load ptr, ptr %0, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 104
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %6) #16
  %i.eu = load ptr, ptr %0, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = tail call noundef i32 %i.ew(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %6) #16
  %i.ey = tail call noundef i32 @_ZN6icu_7810UCharsTrie17firstForCodePointEi(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %i.ex) #16 ; 0 uses
  %.not87156 = icmp eq i32 %4, 2
  br i1 %.not87156, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.aj
  %i.ez = load ptr, ptr %0, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fb = load ptr, ptr %i.fa, align 8
  tail call void %i.fb(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %6) #16
  %.pre = load ptr, ptr %i.em, align 8
  br label %bb.ak

.lr.ph:                                           ; preds = %bb.aj, %.lr.ph
  %.065157 = phi i32 [ %i.fh, %.lr.ph ], [ 3, %bb.aj ] ; 2 uses
  %i.fc = load ptr, ptr %0, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = tail call noundef i32 %i.fe(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %6) #16
  %i.fg = tail call noundef i32 @_ZN6icu_7810UCharsTrie16nextForCodePointEi(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %i.ff) #16 ; 0 uses
  %i.fh = add nuw i32 %.065157, 1
  %exitcond.not = icmp eq i32 %.065157, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

bb.ak:                                            ; preds = %._crit_edge, %bb.ai
  %i.fi = phi ptr [ %.pre, %._crit_edge ], [ %i.en, %bb.ai ]
  %i.fj = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  store ptr %i.fi, ptr %i.fk, align 8
  %i.fl = load ptr, ptr %i.eo, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 152
  store ptr %i.fl, ptr %i.fm, align 8
  %i.fn = load i32, ptr %i.ep, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 160
  store i32 %i.fn, ptr %i.fo, align 8
  br label %_ZNK6icu_7812SkippedState16resetToTrieStateERNS_10UCharsTrieE.exit

bb.al:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.fs = load ptr, ptr %i.fp, align 8
  %i.ft = icmp ne ptr %i.fr, %i.fs
  %.not.i.i107 = icmp eq ptr %i.fr, null
  %or.cond.i.i = or i1 %.not.i.i107, %i.ft
  br i1 %or.cond.i.i, label %_ZNK6icu_7812SkippedState16resetToTrieStateERNS_10UCharsTrieE.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_1
