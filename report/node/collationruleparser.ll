inline.NumInlined: 334
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7819CollationRuleParser21parseResetAndPositionER10UErrorCode:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i.i.i, ptr %i.z, ptr %i.x
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.c, %.lr.ph.i
  %.0.i.i.i = phi i32 [ %i.ad, %bb.c ], [ 65535, %.lr.ph.i ]
  %i.ae = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i) #11
  %.not.i = icmp eq i8 %i.ae, 0
  %.pre.pre = load ptr, ptr %i.f, align 8         ; 5 uses
  br i1 %.not.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = add nsw i32 %.04.i, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 8
  %i.ah = load i16, ptr %i.ag, align 8            ; 3 uses
  %i.ai = icmp slt i16 %i.ah, 0
  %i.aj = ashr i16 %i.ah, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.ai, i32 %i.am, i32 %i.ak   ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, !llvm.loop !9

_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d, %bb.b
  %i.aq = phi ptr [ %i.g, %bb.b ], [ %.pre.pre, %bb.d ], [ %.pre.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ]
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.u, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %i.af, %bb.d ] ; 9 uses
  %i.ar = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i32 noundef %.0.lcssa.i, i32 noundef 7, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_16BEFOREE, i32 noundef 0, i32 noundef 7) #11
  %i.as = icmp eq i8 %i.ar, 0
  %.pre65 = load ptr, ptr %i.f, align 8           ; 6 uses
  br i1 %i.as, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread

bb.e:                                             ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit
  %i.at = add nsw i32 %.0.lcssa.i, 7              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre65, i64 8
  %i.av = load i16, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp slt i16 %i.av, 0
  %i.ax = ashr i16 %i.av, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.pre65, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = select i1 %i.aw, i32 %i.ba, i32 %i.ay   ; 2 uses
  %i.bc = icmp slt i32 %i.at, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = icmp ult i32 %i.at, %i.bb
  br i1 %i.bd, label %bb.g, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.g:                                             ; preds = %bb.f
  %i.be = and i16 %i.av, 2
  %.not.i.i.i = icmp eq i16 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre65, i64 10
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre65, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = select i1 %.not.i.i.i, ptr %i.bh, ptr %i.bf
  %i.bj = sext i32 %i.at to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = zext i16 %i.bl to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.bm, %bb.g ], [ 65535, %bb.f ]
  %i.bn = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i) #11
  %.not31 = icmp eq i8 %i.bn, 0
  %.pre66 = load ptr, ptr %i.f, align 8           ; 5 uses
  br i1 %.not31, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.bo = add nsw i32 %.0.lcssa.i, 8              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre66, i64 8
  %i.bq = load i16, ptr %i.bp, align 8            ; 4 uses
  %i.br = icmp slt i16 %i.bq, 0
  %i.bs = ashr i16 %i.bq, 5
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre66, i64 12
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = select i1 %i.br, i32 %i.bv, i32 %i.bt   ; 2 uses
  %i.bx = icmp slt i32 %i.bo, %i.bw
  br i1 %i.bx, label %.lr.ph.preheader.i35, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44

.lr.ph.preheader.i35:                             ; preds = %bb.h
  %i.by = sext i32 %i.bo to i64
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.j, %.lr.ph.preheader.i35
  %indvars.iv.i37 = phi i64 [ %i.by, %.lr.ph.preheader.i35 ], [ %indvars.iv.next.i42, %bb.j ] ; 3 uses
  %i.bz = phi i32 [ %i.bw, %.lr.ph.preheader.i35 ], [ %i.cv, %bb.j ]
  %i.ca = phi i16 [ %i.bq, %.lr.ph.preheader.i35 ], [ %i.cp, %bb.j ]
  %i.cb = phi ptr [ %.pre66, %.lr.ph.preheader.i35 ], [ %.pre60.pre, %bb.j ] ; 2 uses
  %.04.i38 = phi i32 [ %i.bo, %.lr.ph.preheader.i35 ], [ %i.cn, %bb.j ]
  %i.cc = trunc nsw i64 %indvars.iv.i37 to i32    ; 2 uses
  %i.cd = icmp ugt i32 %i.bz, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39

bb.i:                                             ; preds = %.lr.ph.i36
  %i.ce = and i16 %i.ca, 2
  %.not.i.i.i.i43 = icmp eq i16 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = select i1 %.not.i.i.i.i43, ptr %i.ch, ptr %i.cf
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i37
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39

_ZNK6icu_7813UnicodeString6charAtEi.exit.i39:     ; preds = %bb.i, %.lr.ph.i36
  %.0.i.i.i40 = phi i32 [ %i.cl, %bb.i ], [ 65535, %.lr.ph.i36 ]
  %i.cm = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i40) #11
  %.not.i41 = icmp eq i8 %i.cm, 0
  %.pre60.pre = load ptr, ptr %i.f, align 8       ; 7 uses
  br i1 %.not.i41, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge, label %bb.j

_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre60.pre, i64 8
  %.pre61.pre = load i16, ptr %.phi.trans.insert.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert62.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre60.pre, i64 12
  %.pre63.pre = load i32, ptr %.phi.trans.insert62.phi.trans.insert, align 4
  %.pre71 = ashr i16 %.pre61.pre, 5
  %.pre = sext i16 %.pre71 to i32
  br label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39
  %indvars.iv.next.i42 = add nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %i.cn = add nsw i32 %.04.i38, 1                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre60.pre, i64 8
  %i.cp = load i16, ptr %i.co, align 8            ; 4 uses
  %i.cq = icmp slt i16 %i.cp, 0
  %i.cr = ashr i16 %i.cp, 5
  %i.cs = sext i16 %i.cr to i32                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre60.pre, i64 12
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = select i1 %i.cq, i32 %i.cu, i32 %i.cs   ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next.i42, %i.cw
  br i1 %i.cx, label %.lr.ph.i36, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44, !llvm.loop !9

_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44: ; preds = %bb.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge, %bb.h
  %.pre-phi70 = phi i32 [ %i.bt, %bb.h ], [ %.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge ], [ %i.cs, %bb.j ]
  %i.cy = phi i32 [ %i.bv, %bb.h ], [ %.pre63.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge ], [ %i.cu, %bb.j ]
  %i.cz = phi i16 [ %i.bq, %bb.h ], [ %.pre61.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge ], [ %i.cp, %bb.j ] ; 2 uses
  %i.da = phi ptr [ %.pre66, %bb.h ], [ %.pre60.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge ], [ %.pre60.pre, %bb.j ] ; 5 uses
  %.0.lcssa.i34 = phi i32 [ %i.bo, %bb.h ], [ %i.cc, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i39._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44.loopexit_crit_edge ], [ %i.cn, %bb.j ] ; 4 uses
  %i.db = add nsw i32 %.0.lcssa.i34, 1            ; 3 uses
  %i.dc = icmp slt i16 %i.cz, 0
  %i.dd = select i1 %i.dc, i32 %i.cy, i32 %.pre-phi70 ; 3 uses
  %i.de = icmp slt i32 %i.db, %i.dd
  %i.df = icmp ult i32 %.0.lcssa.i34, %i.dd
  %or.cond58 = and i1 %i.de, %i.df
  br i1 %or.cond58, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit47:       ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44
  %i.dg = and i16 %i.cz, 2
  %.not.i.i.i46 = icmp eq i16 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = select i1 %.not.i.i.i46, ptr %i.dj, ptr %i.dh ; 2 uses
  %i.dl = sext i32 %.0.lcssa.i34 to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2            ; 2 uses
  %i.do = zext i16 %i.dn to i32
  %i.dp = add i16 %i.dn, -49
  %or.cond = icmp ult i16 %i.dp, 3
  %i.dq = icmp ult i32 %i.db, %i.dd
  %or.cond59 = and i1 %i.dq, %or.cond
  br i1 %or.cond59, label %_ZNK6icu_7813UnicodeString6charAtEi.exit50, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit50:       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit47
  %i.dr = sext i32 %i.db to i64
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = icmp eq i16 %i.dt, 93
  br i1 %i.du, label %bb.k, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit50
  %i.dv = add nsw i32 %i.do, -49
  %i.dw = add nuw nsw i32 %.0.lcssa.i34, 2
  %i.dx = tail call noundef i32 @_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %i.dw)
  %.pre64 = load ptr, ptr %i.f, align 8
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread: ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44, %_ZNK6icu_7813UnicodeString6charAtEi.exit47, %_ZNK6icu_7813UnicodeString6charAtEi.exit50, %bb.k
  %i.dy = phi ptr [ %.pre64, %bb.k ], [ %i.da, %_ZNK6icu_7813UnicodeString6charAtEi.exit50 ], [ %i.da, %_ZNK6icu_7813UnicodeString6charAtEi.exit47 ], [ %i.da, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44 ], [ %.pre66, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.pre65, %bb.e ], [ %.pre65, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 4 uses
  %.026 = phi i32 [ %i.dx, %bb.k ], [ %.0.lcssa.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit50 ], [ %.0.lcssa.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit47 ], [ %.0.lcssa.i, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44 ], [ %.0.lcssa.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.0.lcssa.i, %bb.e ], [ %.0.lcssa.i, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 5 uses
  %.0 = phi i32 [ %i.dv, %bb.k ], [ 15, %_ZNK6icu_7813UnicodeString6charAtEi.exit50 ], [ 15, %_ZNK6icu_7813UnicodeString6charAtEi.exit47 ], [ 15, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit44 ], [ 15, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 15, %bb.e ], [ 15, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 8            ; 2 uses
  %i.eb = icmp slt i16 %i.ea, 0
  %i.ec = ashr i16 %i.ea, 5
  %i.ed = sext i16 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ef = load i32, ptr %i.ee, align 4            ; 2 uses
  %i.eg = select i1 %i.eb, i32 %i.ef, i32 %i.ed
  %.not32 = icmp slt i32 %.026, %i.eg
  br i1 %.not32, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread
  %i.eh = load i32, ptr %1, align 4
  %i.ei = icmp slt i32 %i.eh, 1
  br i1 %i.ei, label %bb.m, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %1, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.4, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8
  %.not4.i = icmp eq ptr %i.el, null
  br i1 %.not4.i, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit47.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 2, ptr %i.em, align 8
  %i.en = load i16, ptr %i.dz, align 8            ; 3 uses
  %i.eo = icmp slt i16 %i.en, 0
  %i.ep = ashr i16 %i.en, 5
  %i.eq = sext i16 %i.ep to i32
  %i.er = select i1 %i.eo, i32 %i.ef, i32 %i.eq
  %i.es = icmp ult i32 %.026, %i.er
  br i1 %i.es, label %_ZNK6icu_7813UnicodeString6charAtEi.exit53, label %_ZNK6icu_7813UnicodeString6charAtEi.exit53.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit53:       ; preds = %bb.o
  %i.et = and i16 %i.en, 2
  %.not.i.i.i52 = icmp eq i16 %i.et, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = select i1 %.not.i.i.i52, ptr %i.ew, ptr %i.eu
  %i.ey = sext i32 %.026 to i64
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = icmp eq i16 %i.fa, 91
  br i1 %i.fb, label %bb.p, label %_ZNK6icu_7813UnicodeString6charAtEi.exit53.thread

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit53
  %i.fc = call noundef i32 @_ZN6icu_7819CollationRuleParser20parseSpecialPositionEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.026, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %bb.q

_ZNK6icu_7813UnicodeString6charAtEi.exit53.thread: ; preds = %bb.o, %_ZNK6icu_7813UnicodeString6charAtEi.exit53
  %i.fd = call noundef i32 @_ZN6icu_7819CollationRuleParser20parseTailoringStringEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.026, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit53.thread, %bb.p
  %.127 = phi i32 [ %i.fc, %bb.p ], [ %i.fd, %_ZNK6icu_7813UnicodeString6charAtEi.exit53.thread ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fh = load ptr, ptr %i.ff, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  %i.fk = load i32, ptr %1, align 4
  %i.fl = icmp slt i32 %i.fk, 1
  br i1 %i.fl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 %.127, ptr %i.c, align 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.s, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %.0, %bb.s ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -1, -224) i32 @_ZN6icu_7819CollationRuleParser21parseRelationOperatorER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k       ; 2 uses
  %i.o = icmp slt i32 %i.d, %i.n
  br i1 %i.o, label %.lr.ph.preheader.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.p = sext i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.q = phi i32 [ %i.n, %.lr.ph.preheader.i ], [ %i.am, %bb.d ]
  %i.r = phi i16 [ %i.h, %.lr.ph.preheader.i ], [ %i.ag, %bb.d ]
  %i.s = phi ptr [ %i.f, %.lr.ph.preheader.i ], [ %.pre.pre, %bb.d ] ; 2 uses
  %.04.i = phi i32 [ %i.d, %.lr.ph.preheader.i ], [ %i.ae, %bb.d ]
  %i.t = trunc nsw i64 %indvars.iv.i to i32       ; 2 uses
  %i.u = icmp ugt i32 %i.q, %i.t
  br i1 %i.u, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = and i16 %i.r, 2
  %.not.i.i.i.i = icmp eq i16 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %.not.i.i.i.i, ptr %i.y, ptr %i.w
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.c, %.lr.ph.i
  %.0.i.i.i = phi i32 [ %i.ac, %bb.c ], [ 65535, %.lr.ph.i ]
  %i.ad = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i) #11
  %.not.i = icmp eq i8 %i.ad, 0
  %.pre.pre = load ptr, ptr %i.e, align 8         ; 5 uses
  br i1 %.not.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = add nsw i32 %.04.i, 1                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 8
  %i.ag = load i16, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp slt i16 %i.ag, 0
  %i.ai = ashr i16 %i.ag, 5
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = select i1 %i.ah, i32 %i.al, i32 %i.aj   ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next.i, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, !llvm.loop !9

_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d, %bb.b
  %i.ap = phi ptr [ %i.f, %bb.b ], [ %.pre.pre, %bb.d ], [ %.pre.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ %i.d, %bb.b ], [ %i.t, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %i.ae, %bb.d ] ; 10 uses
  store i32 %.0.lcssa.i, ptr %i.c, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i16, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp slt i16 %i.ar, 0
  %i.at = ashr i16 %i.ar, 5
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = select i1 %i.as, i32 %i.aw, i32 %i.au   ; 12 uses
  %.not31 = icmp slt i32 %.0.lcssa.i, %i.ax
  br i1 %.not31, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.e:                                             ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit
  %i.ay = add nsw i32 %.0.lcssa.i, 1              ; 12 uses
  %i.az = icmp ult i32 %.0.lcssa.i, %i.ax
  br i1 %i.az, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.e
  %i.ba = and i16 %i.ar, 2
  %.not.i.i.i = icmp eq i16 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = select i1 %.not.i.i.i, ptr %i.bd, ptr %i.bb ; 6 uses
  %i.bf = sext i32 %.0.lcssa.i to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  switch i16 %i.bh, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 60, label %bb.f
    i16 59, label %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread
    i16 44, label %bb.j
    i16 61, label %bb.k
  ]

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.bi = icmp slt i32 %i.ay, %i.ax
  %i.bj = icmp ult i32 %i.ay, %i.ax
  %or.cond = and i1 %i.bi, %i.bj
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit37:       ; preds = %bb.f
  %i.bk = sext i32 %i.ay to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = icmp eq i16 %i.bm, 60
  br i1 %i.bn, label %bb.g, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit37
  %i.bo = add nuw nsw i32 %.0.lcssa.i, 2          ; 5 uses
  %i.bp = icmp slt i32 %i.bo, %i.ax
  %i.bq = icmp ult i32 %i.bo, %i.ax
  %or.cond54 = and i1 %i.bp, %i.bq
  br i1 %or.cond54, label %_ZNK6icu_7813UnicodeString6charAtEi.exit40, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit40:       ; preds = %bb.g
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = icmp eq i16 %i.bt, 60
  br i1 %i.bu, label %bb.h, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit40
  %i.bv = add nuw nsw i32 %.0.lcssa.i, 3          ; 5 uses
  %i.bw = icmp slt i32 %i.bv, %i.ax
  %i.bx = icmp ult i32 %i.bv, %i.ax
  %or.cond79 = and i1 %i.bw, %i.bx
  br i1 %or.cond79, label %_ZNK6icu_7813UnicodeString6charAtEi.exit43, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit43:       ; preds = %bb.h
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2
  %.fr82 = freeze i16 %i.ca
  %i.cb = icmp eq i16 %.fr82, 60                  ; 2 uses
end_hunk_0
