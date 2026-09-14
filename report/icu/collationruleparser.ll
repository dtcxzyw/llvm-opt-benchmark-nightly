Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationruleparser?download=true
inline.NumInlined: 359
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7819CollationRuleParser21parseResetAndPositionER10UErrorCode:bb.a

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.q, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.r = phi i32 [ %i.o, %.lr.ph.preheader.i ], [ %i.an, %bb.d ]
  %i.s = phi i16 [ %i.i, %.lr.ph.preheader.i ], [ %i.ah, %bb.d ]
  %i.t = phi ptr [ %i.g, %.lr.ph.preheader.i ], [ %.pre.pre, %bb.d ] ; 2 uses
  %.04.i = phi i32 [ %i.e, %.lr.ph.preheader.i ], [ %i.af, %bb.d ]
  %i.u = trunc nsw i64 %indvars.iv.i to i32       ; 2 uses
  %i.v = icmp ugt i32 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = and i16 %i.s, 2
  %.not.i.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i.i.i, ptr %i.z, ptr %i.x
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29
  %i.ad = zext i16 %i.ac to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.c, %.lr.ph.i
  %.0.i.i.i = phi i32 [ %i.ad, %bb.c ], [ 65535, %.lr.ph.i ]
  %i.ae = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i)
  %.not.i = icmp eq i8 %i.ae, 0
  %.pre.pre = load ptr, ptr %i.f, align 8, !tbaa !19 ; 5 uses
  br i1 %.not.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = add nsw i32 %.04.i, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 8
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  %i.ai = icmp slt i16 %i.ah, 0
  %i.aj = ashr i16 %i.ah, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.ai, i32 %i.am, i32 %i.ak   ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, !llvm.loop !0

_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d, %bb.b
  %i.aq = phi ptr [ %i.g, %bb.b ], [ %.pre.pre, %bb.d ], [ %.pre.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ]
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.u, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %i.af, %bb.d ] ; 9 uses
  %i.ar = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i32 noundef %.0.lcssa.i, i32 noundef 7, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_16BEFOREE, i32 noundef 0, i32 noundef 7)
  %i.as = icmp eq i8 %i.ar, 0
  %.pre67 = load ptr, ptr %i.f, align 8, !tbaa !19 ; 6 uses
  br i1 %i.as, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread

bb.e:                                             ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit
  %i.at = add nsw i32 %.0.lcssa.i, 7              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre67, i64 8
  %i.av = load i16, ptr %i.au, align 8, !tbaa !32 ; 3 uses
  %i.aw = icmp slt i16 %i.av, 0
  %i.ax = ashr i16 %i.av, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.pre67, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = select i1 %i.aw, i32 %i.ba, i32 %i.ay   ; 2 uses
  %i.bc = icmp slt i32 %i.at, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = icmp ult i32 %i.at, %i.bb
  br i1 %i.bd, label %bb.g, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.g:                                             ; preds = %bb.f
  %i.be = and i16 %i.av, 2
  %.not.i.i.i = icmp eq i16 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre67, i64 10
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre67, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = select i1 %.not.i.i.i, ptr %i.bh, ptr %i.bf
  %i.bj = sext i32 %i.at to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !29
  %i.bm = zext i16 %i.bl to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.bm, %bb.g ], [ 65535, %bb.f ]
  %i.bn = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i)
  %.not33 = icmp eq i8 %i.bn, 0
  %.pre68 = load ptr, ptr %i.f, align 8, !tbaa !19 ; 5 uses
  br i1 %.not33, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.bo = add nsw i32 %.0.lcssa.i, 8              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre68, i64 8
  %i.bq = load i16, ptr %i.bp, align 8, !tbaa !32 ; 4 uses
  %i.br = icmp slt i16 %i.bq, 0
  %i.bs = ashr i16 %i.bq, 5
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre68, i64 12
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = select i1 %i.br, i32 %i.bv, i32 %i.bt   ; 2 uses
  %i.bx = icmp slt i32 %i.bo, %i.bw
  br i1 %i.bx, label %.lr.ph.preheader.i37, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46

.lr.ph.preheader.i37:                             ; preds = %bb.h
  %i.by = sext i32 %i.bo to i64
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.j, %.lr.ph.preheader.i37
  %indvars.iv.i39 = phi i64 [ %i.by, %.lr.ph.preheader.i37 ], [ %indvars.iv.next.i44, %bb.j ] ; 3 uses
  %i.bz = phi i32 [ %i.bw, %.lr.ph.preheader.i37 ], [ %i.cv, %bb.j ]
  %i.ca = phi i16 [ %i.bq, %.lr.ph.preheader.i37 ], [ %i.cp, %bb.j ]
  %i.cb = phi ptr [ %.pre68, %.lr.ph.preheader.i37 ], [ %.pre62.pre, %bb.j ] ; 2 uses
  %.04.i40 = phi i32 [ %i.bo, %.lr.ph.preheader.i37 ], [ %i.cn, %bb.j ]
  %i.cc = trunc nsw i64 %indvars.iv.i39 to i32    ; 2 uses
  %i.cd = icmp ugt i32 %i.bz, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41

bb.i:                                             ; preds = %.lr.ph.i38
  %i.ce = and i16 %i.ca, 2
  %.not.i.i.i.i45 = icmp eq i16 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = select i1 %.not.i.i.i.i45, ptr %i.ch, ptr %i.cf
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i39
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !29
  %i.cl = zext i16 %i.ck to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41

_ZNK6icu_7813UnicodeString6charAtEi.exit.i41:     ; preds = %bb.i, %.lr.ph.i38
  %.0.i.i.i42 = phi i32 [ %i.cl, %bb.i ], [ 65535, %.lr.ph.i38 ]
  %i.cm = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i42)
  %.not.i43 = icmp eq i8 %i.cm, 0
  %.pre62.pre = load ptr, ptr %i.f, align 8, !tbaa !19 ; 7 uses
  br i1 %.not.i43, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge, label %bb.j

_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre62.pre, i64 8
  %.pre63.pre = load i16, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert64.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre62.pre, i64 12
  %.pre65.pre = load i32, ptr %.phi.trans.insert64.phi.trans.insert, align 4
  %.pre73 = ashr i16 %.pre63.pre, 5
  %.pre = sext i16 %.pre73 to i32
  br label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41
  %indvars.iv.next.i44 = add nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %i.cn = add nsw i32 %.04.i40, 1                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre62.pre, i64 8
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !32 ; 4 uses
  %i.cq = icmp slt i16 %i.cp, 0
  %i.cr = ashr i16 %i.cp, 5
  %i.cs = sext i16 %i.cr to i32                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre62.pre, i64 12
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = select i1 %i.cq, i32 %i.cu, i32 %i.cs   ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next.i44, %i.cw
  br i1 %i.cx, label %.lr.ph.i38, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46, !llvm.loop !0

_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46: ; preds = %bb.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge, %bb.h
  %.pre-phi72 = phi i32 [ %i.bt, %bb.h ], [ %.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge ], [ %i.cs, %bb.j ]
  %i.cy = phi i32 [ %i.bv, %bb.h ], [ %.pre65.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge ], [ %i.cu, %bb.j ]
  %i.cz = phi i16 [ %i.bq, %bb.h ], [ %.pre63.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge ], [ %i.cp, %bb.j ] ; 2 uses
  %i.da = phi ptr [ %.pre68, %bb.h ], [ %.pre62.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge ], [ %.pre62.pre, %bb.j ] ; 5 uses
  %.0.lcssa.i36 = phi i32 [ %i.bo, %bb.h ], [ %i.cc, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i41._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46.loopexit_crit_edge ], [ %i.cn, %bb.j ] ; 4 uses
  %i.db = add nsw i32 %.0.lcssa.i36, 1            ; 3 uses
  %i.dc = icmp slt i16 %i.cz, 0
  %i.dd = select i1 %i.dc, i32 %i.cy, i32 %.pre-phi72 ; 3 uses
  %i.de = icmp slt i32 %i.db, %i.dd
  %i.df = icmp ult i32 %.0.lcssa.i36, %i.dd
  %or.cond60 = and i1 %i.de, %i.df
  br i1 %or.cond60, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit49:       ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46
  %i.dg = and i16 %i.cz, 2
  %.not.i.i.i48 = icmp eq i16 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = select i1 %.not.i.i.i48, ptr %i.dj, ptr %i.dh ; 2 uses
  %i.dl = sext i32 %.0.lcssa.i36 to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !29 ; 2 uses
  %i.do = zext nneg i16 %i.dn to i32
  %i.dp = add i16 %i.dn, -49
  %or.cond = icmp ult i16 %i.dp, 3
  %i.dq = icmp ult i32 %i.db, %i.dd
  %or.cond61 = and i1 %i.dq, %or.cond
  br i1 %or.cond61, label %_ZNK6icu_7813UnicodeString6charAtEi.exit52, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit52:       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit49
  %i.dr = sext i32 %i.db to i64
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !29
  %i.du = icmp eq i16 %i.dt, 93
  br i1 %i.du, label %bb.k, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit52
  %i.dv = add nsw i32 %i.do, -49
  %i.dw = add nuw nsw i32 %.0.lcssa.i36, 2
  %i.dx = tail call noundef i32 @_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %i.dw)
  %.pre66 = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread: ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46, %_ZNK6icu_7813UnicodeString6charAtEi.exit49, %_ZNK6icu_7813UnicodeString6charAtEi.exit52, %bb.k
  %i.dy = phi ptr [ %.pre66, %bb.k ], [ %i.da, %_ZNK6icu_7813UnicodeString6charAtEi.exit52 ], [ %i.da, %_ZNK6icu_7813UnicodeString6charAtEi.exit49 ], [ %i.da, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46 ], [ %.pre68, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.pre67, %bb.e ], [ %.pre67, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 4 uses
  %.029 = phi i32 [ %i.dv, %bb.k ], [ 15, %_ZNK6icu_7813UnicodeString6charAtEi.exit52 ], [ 15, %_ZNK6icu_7813UnicodeString6charAtEi.exit49 ], [ 15, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46 ], [ 15, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 15, %bb.e ], [ 15, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 2 uses
  %.027 = phi i32 [ %i.dx, %bb.k ], [ %.0.lcssa.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit52 ], [ %.0.lcssa.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit49 ], [ %.0.lcssa.i, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit46 ], [ %.0.lcssa.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.0.lcssa.i, %bb.e ], [ %.0.lcssa.i, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !32 ; 2 uses
  %i.eb = icmp slt i16 %i.ea, 0
  %i.ec = ashr i16 %i.ea, 5
  %i.ed = sext i16 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = select i1 %i.eb, i32 %i.ef, i32 %i.ed
  %.not34 = icmp slt i32 %.027, %i.eg
  br i1 %.not34, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread
  %i.eh = load i32, ptr %1, align 4, !tbaa !22
  %i.ei = icmp slt i32 %i.eh, 1
  br i1 %i.ei, label %bb.m, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %1, align 4, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.4, ptr %i.ej, align 8, !tbaa !30
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !24
  %.not4.i = icmp eq ptr %i.el, null
  br i1 %.not4.i, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit49.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 2, ptr %i.em, align 8, !tbaa !32
  %i.en = load i16, ptr %i.dz, align 8, !tbaa !32 ; 3 uses
  %i.eo = icmp slt i16 %i.en, 0
  %i.ep = ashr i16 %i.en, 5
  %i.eq = sext i16 %i.ep to i32
  %i.er = load i32, ptr %i.ee, align 4
  %i.es = select i1 %i.eo, i32 %i.er, i32 %i.eq
  %i.et = icmp ult i32 %.027, %i.es
  br i1 %i.et, label %_ZNK6icu_7813UnicodeString6charAtEi.exit55, label %_ZNK6icu_7813UnicodeString6charAtEi.exit55.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit55:       ; preds = %bb.o
  %i.eu = and i16 %i.en, 2
  %.not.i.i.i54 = icmp eq i16 %i.eu, 0
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dy, i64 10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = select i1 %.not.i.i.i54, ptr %i.ex, ptr %i.ev
  %i.ez = sext i32 %.027 to i64
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !29
  %i.fc = icmp eq i16 %i.fb, 91
  br i1 %i.fc, label %bb.p, label %_ZNK6icu_7813UnicodeString6charAtEi.exit55.thread

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit55
  %i.fd = invoke noundef i32 @_ZN6icu_7819CollationRuleParser20parseSpecialPositionEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.027, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.r, %_ZNK6icu_7813UnicodeString6charAtEi.exit55.thread, %bb.p
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.fe

_ZNK6icu_7813UnicodeString6charAtEi.exit55.thread: ; preds = %bb.o, %_ZNK6icu_7813UnicodeString6charAtEi.exit55
  %i.ff = invoke noundef i32 @_ZN6icu_7819CollationRuleParser20parseTailoringStringEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.027, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.r unwind label %bb.q

bb.r:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit55.thread, %bb.p
  %.128 = phi i32 [ %i.fd, %bb.p ], [ %i.ff, %_ZNK6icu_7813UnicodeString6charAtEi.exit55.thread ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !49 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, i32 noundef %.029, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.fm = load i32, ptr %1, align 4, !tbaa !22
  %i.fn = icmp slt i32 %i.fm, 1
  br i1 %i.fn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %.128, ptr %i.c, align 8, !tbaa !31
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.u, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %.029, %bb.u ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, -224) i32 @_ZN6icu_7819CollationRuleParser21parseRelationOperatorER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !22
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !32   ; 3 uses
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
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !29
  %i.ac = zext i16 %i.ab to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.c, %.lr.ph.i
  %.0.i.i.i = phi i32 [ %i.ac, %bb.c ], [ 65535, %.lr.ph.i ]
  %i.ad = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i)
  %.not.i = icmp eq i8 %i.ad, 0
  %.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !19 ; 5 uses
  br i1 %.not.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = add nsw i32 %.04.i, 1                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = icmp slt i16 %i.ag, 0
  %i.ai = ashr i16 %i.ag, 5
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = select i1 %i.ah, i32 %i.al, i32 %i.aj   ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next.i, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, !llvm.loop !0

_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.d, %bb.b
  %i.ap = phi ptr [ %i.f, %bb.b ], [ %.pre.pre, %bb.d ], [ %.pre.pre, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ %i.d, %bb.b ], [ %i.t, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %i.ae, %bb.d ] ; 10 uses
  store i32 %.0.lcssa.i, ptr %i.c, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !32 ; 3 uses
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
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !29
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
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !29
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
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !29
  %i.bu = icmp eq i16 %i.bt, 60
  br i1 %i.bu, label %bb.h, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit40
  %i.bv = add nuw nsw i32 %.0.lcssa.i, 3          ; 5 uses
  %i.bw = icmp slt i32 %i.bv, %i.ax
  %i.bx = icmp ult i32 %i.bv, %i.ax
  %or.cond83 = and i1 %i.bw, %i.bx
  br i1 %or.cond83, label %_ZNK6icu_7813UnicodeString6charAtEi.exit43, label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit43:       ; preds = %bb.h
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !29
  %.fr86 = freeze i16 %i.ca
  %i.cb = icmp eq i16 %.fr86, 60                  ; 2 uses
  %i.cc = add nuw nsw i32 %.0.lcssa.i, 4
  %spec.select = select i1 %i.cb, i32 3, i32 2
  %spec.select87 = select i1 %i.cb, i32 %i.cc, i32 %i.bv
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit43, %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit37, %bb.g, %_ZNK6icu_7813UnicodeString6charAtEi.exit40, %bb.h
  %.023 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit37 ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit40 ], [ %spec.select, %_ZNK6icu_7813UnicodeString6charAtEi.exit43 ] ; 3 uses
  %.0 = phi i32 [ %i.ay, %bb.f ], [ %i.bo, %bb.g ], [ %i.bv, %bb.h ], [ %i.ay, %_ZNK6icu_7813UnicodeString6charAtEi.exit37 ], [ %i.bo, %_ZNK6icu_7813UnicodeString6charAtEi.exit40 ], [ %spec.select87, %_ZNK6icu_7813UnicodeString6charAtEi.exit43 ] ; 6 uses
  %i.cd = icmp slt i32 %.0, %i.ax
  %i.ce = icmp ult i32 %.0, %i.ax
  %or.cond55 = and i1 %i.cd, %i.ce
  br i1 %or.cond55, label %_ZNK6icu_7813UnicodeString6charAtEi.exit46, label %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit46:       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread
  %i.cf = sext i32 %.0 to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !29
  %i.ci = icmp eq i16 %i.ch, 42
  br i1 %i.ci, label %bb.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit46
  %i.cj = add nuw nsw i32 %.0, 1
  %i.ck = or disjoint i32 %.023, 16
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.cl = icmp slt i32 %i.ay, %i.ax
  %i.cm = icmp ult i32 %i.ay, %i.ax
  %or.cond84 = and i1 %i.cl, %i.cm
  br i1 %or.cond84, label %_ZNK6icu_7813UnicodeString6charAtEi.exit49, label %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit49:       ; preds = %bb.k
  %i.cn = sext i32 %i.ay to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !29
  %.fr = freeze i16 %i.cp
  %i.cq = icmp eq i16 %.fr, 42                    ; 2 uses
  %i.cr = add nuw nsw i32 %.0.lcssa.i, 2
  %spec.select88 = select i1 %i.cq, i32 31, i32 15
  %spec.select89 = select i1 %i.cq, i32 %i.cr, i32 %i.ay
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit49, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.k, %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit46, %bb.i, %bb.j
  %.124 = phi i32 [ %i.ck, %bb.i ], [ %.023, %_ZNK6icu_7813UnicodeString6charAtEi.exit46 ], [ %.023, %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread ], [ 15, %bb.k ], [ 2, %bb.j ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %spec.select88, %_ZNK6icu_7813UnicodeString6charAtEi.exit49 ]
  %.1 = phi i32 [ %i.cj, %bb.i ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit46 ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit37.thread ], [ %i.ay, %bb.k ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %spec.select89, %_ZNK6icu_7813UnicodeString6charAtEi.exit49 ]
  %i.cs = sub nsw i32 %.1, %.0.lcssa.i
  %i.ct = shl i32 %i.cs, 8
  %i.cu = or i32 %i.ct, %.124
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, %bb.a
  %.126 = phi i32 [ -1, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ], [ -1, %bb.a ], [ %i.cu, %_ZNK6icu_7813UnicodeString6charAtEi.exit46.thread ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.e ]
  ret i32 %.126
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7819CollationRuleParser20parseRelationStringsEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 2, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !32
  %i.d = invoke noundef i32 @_ZN6icu_7819CollationRuleParser20parseTailoringStringEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %bb.c       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %3, align 4, !tbaa !22
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n       ; 2 uses
  %i.r = icmp slt i32 %i.d, %i.q
  %i.s = icmp ult i32 %i.d, %i.q
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit48.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.d
  %i.t = and i16 %i.k, 2
  %.not.i.i.i = icmp eq i16 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %.not.i.i.i, ptr %i.w, ptr %i.u
  %i.y = sext i32 %i.d to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !29  ; 2 uses
  %i.ab = icmp eq i16 %i.aa, 124
  br i1 %i.ab, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit48

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ad = add nuw nsw i32 %i.d, 1
  %i.ae = invoke noundef i32 @_ZN6icu_7819CollationRuleParser20parseTailoringStringEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.g unwind label %bb.h       ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %3, align 4, !tbaa !22
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.i, label %.critedge

bb.h:                                             ; preds = %bb.y, %bb.w, %bb.k, %bb.f, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !19  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = select i1 %i.al, i32 %i.ap, i32 %i.an   ; 2 uses
  %i.ar = icmp slt i32 %i.ae, %i.aq
  %i.as = icmp ult i32 %i.ae, %i.aq
  %or.cond51 = and i1 %i.ar, %i.as
  br i1 %or.cond51, label %bb.j, label %_ZNK6icu_7813UnicodeString6charAtEi.exit48.thread

bb.j:                                             ; preds = %bb.i
  %i.at = and i16 %i.ak, 2
  %.not.i.i.i47 = icmp eq i16 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = select i1 %.not.i.i.i47, ptr %i.aw, ptr %i.au
  %i.ay = sext i32 %i.ae to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !29
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit48

_ZNK6icu_7813UnicodeString6charAtEi.exit48:       ; preds = %bb.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.031 = phi i32 [ %i.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.ae, %bb.j ] ; 2 uses
  %.0 = phi i16 [ %i.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.ba, %bb.j ]
  %i.bb = icmp eq i16 %.0, 47
  br i1 %i.bb, label %bb.k, label %_ZNK6icu_7813UnicodeString6charAtEi.exit48.thread

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit48
  %i.bc = add nuw nsw i32 %.031, 1
  %i.bd = invoke noundef i32 @_ZN6icu_7819CollationRuleParser20parseTailoringStringEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZNK6icu_7813UnicodeString6charAtEi.exit48.thread unwind label %bb.h

_ZNK6icu_7813UnicodeString6charAtEi.exit48.thread: ; preds = %bb.d, %bb.i, %bb.k, %_ZNK6icu_7813UnicodeString6charAtEi.exit48
  %.132 = phi i32 [ %.031, %_ZNK6icu_7813UnicodeString6charAtEi.exit48 ], [ %i.bd, %bb.k ], [ %i.d, %bb.d ], [ %i.ae, %bb.i ]
  %i.be = load i16, ptr %i.a, align 8, !tbaa !32
  %i.bf = icmp ugt i16 %i.be, 31
  br i1 %i.bf, label %bb.l, label %bb.w

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit48.thread
  %i.bg = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bh = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62, !nonnull !50, !align !51 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %i.bg)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %.not37 = icmp eq i8 %i.bn, 0
  br i1 %.not37, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !62, !nonnull !50, !align !51 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %i.bh)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %.not38 = icmp eq i8 %i.bs, 0
  br i1 %.not38, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.bt = load i32, ptr %3, align 4, !tbaa !22
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  store i32 3, ptr %3, align 4, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.5, ptr %i.bv, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24
  %.not4.i = icmp eq ptr %i.bx, null
  br i1 %.not4.i, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %.critedge unwind label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %bb.t, %bb.p, %bb.n, %bb.m
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa
end_hunk_0
begin_hunk_1_@_ZN6icu_7819CollationRuleParser15setErrorContextEv:bb.a
  %.fr38 = freeze i16 %i.x
  %i.y = and i16 %.fr38, -1024
  %i.z = icmp eq i16 %i.y, -9216
  %i.aa = add nsw i32 %i.e, -14
  %spec.select = select i1 %i.z, i32 %i.aa, i32 %i.g
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.b, %bb.c
  %.017 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ], [ %spec.select, %_ZNK6icu_7813UnicodeString6charAtEi.exit ] ; 2 uses
  %i.ab = sub nsw i32 %i.e, %.017                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  invoke void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %.pre, i32 noundef %.017, i32 noundef %i.ab, ptr noundef nonnull %i.ac, i32 noundef 0)
          to label %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit unwind label %bb.f

_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ac) #14, !srcloc !68
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = sext i32 %i.ab to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ag
  store i16 0, ptr %i.ah, align 2, !tbaa !29
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = select i1 %i.al, i32 %i.ap, i32 %i.an   ; 2 uses
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !31  ; 3 uses
  %i.as = sub nsw i32 %i.aq, %i.ar                ; 2 uses
  %i.at = icmp sgt i32 %i.as, 15
  br i1 %i.at, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit25

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit
  %i.au = add nsw i32 %i.ar, 14                   ; 2 uses
  %i.av = icmp ult i32 %i.au, %i.aq
  br i1 %i.av, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit25

bb.e:                                             ; preds = %bb.d
  %i.aw = and i16 %i.ak, 2
  %.not.i.i.i24 = icmp eq i16 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = select i1 %.not.i.i.i24, ptr %i.az, ptr %i.ax
  %i.bb = sext i32 %i.au to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !29
  %i.be = and i16 %i.bd, -1024
  %i.bf = icmp eq i16 %i.be, -10240
  %i.bg = select i1 %i.bf, i32 14, i32 15
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit25

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ac) #14, !srcloc !68
  br label %bb.i

_ZNK6icu_7813UnicodeString6charAtEi.exit25:       ; preds = %bb.e, %bb.d, %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit
  %.016 = phi i32 [ %i.as, %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit ], [ %i.bg, %bb.e ], [ 15, %bb.d ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 3 uses
  invoke void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i32 noundef %i.ar, i32 noundef %.016, ptr noundef nonnull %i.bi, i32 noundef 0)
          to label %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit26 unwind label %bb.h

_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit26: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit25
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bi) #14, !srcloc !68
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = sext i32 %.016 to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bl
  store i16 0, ptr %i.bm, align 2, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK6icu_7813UnicodeString7extractEiiNS_9Char16PtrEi.exit26
  ret void

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit25
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bi) #14, !srcloc !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %i.bh, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7819CollationRuleParser11parseStringEiRNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !22
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = and i16 %i.g, 1
  %.not.i = icmp eq i16 %i.h, 0
  %i.i = and i16 %i.g, 30
  %storemerge.i = select i1 %.not.i, i16 %i.i, i16 2 ; 2 uses
  store i16 %storemerge.i, ptr %i.f, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !32   ; 3 uses
  %i.n = icmp slt i16 %i.m, 0
  %i.o = ashr i16 %i.m, 5
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = select i1 %i.n, i32 %i.r, i32 %i.p       ; 2 uses
  %i.t = icmp slt i32 %1, %i.s
  br i1 %i.t, label %.lr.ph127, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107

.lr.ph127:                                        ; preds = %bb.b, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit
  %i.u = phi i32 [ %i.de, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit ], [ %i.r, %bb.b ]
  %i.v = phi i32 [ %i.df, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit ], [ %i.s, %bb.b ] ; 7 uses
  %i.w = phi i16 [ %i.cz, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit ], [ %i.m, %bb.b ] ; 4 uses
  %i.x = phi ptr [ %i.cx, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit ], [ %i.k, %bb.b ] ; 4 uses
  %.059125 = phi i32 [ %.463, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit ], [ %1, %bb.b ] ; 18 uses
  %i.y = add nsw i32 %.059125, 1                  ; 10 uses
  %i.z = icmp ult i32 %.059125, %i.v
  br i1 %i.z, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %.lr.ph127
  %i.aa = and i16 %i.w, 2
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %.not.i.i.i, ptr %i.ad, ptr %i.ab ; 2 uses
  %i.af = sext i32 %.059125 to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !29 ; 7 uses
  %i.ai = add i16 %i.ah, -33
  %or.cond.i = icmp ult i16 %i.ai, 94
  br i1 %or.cond.i, label %bb.c, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.aj = icmp samesign ult i16 %i.ah, 48
  br i1 %i.aj, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread95, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i16 %i.ah, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit [
    i16 92, label %bb.i
    i16 58, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 59, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 60, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 61, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 62, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 63, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 64, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 91, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 93, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 94, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 95, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
    i16 96, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit
  ]

_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit: ; preds = %switch.early.test.i
  %i.ak = icmp samesign ult i16 %i.ah, 123
  br i1 %i.ak, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread95

_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread95: ; preds = %bb.c, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit
  %cond = icmp eq i16 %i.ah, 39
  br i1 %cond, label %bb.d, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit

bb.d:                                             ; preds = %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread95
  %i.al = icmp slt i32 %i.y, %i.v
  %i.am = icmp ult i32 %i.y, %i.v
  %or.cond116 = and i1 %i.al, %i.am
  br i1 %or.cond116, label %_ZNK6icu_7813UnicodeString6charAtEi.exit75, label %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit75:       ; preds = %bb.d
  %i.an = sext i32 %i.y to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = icmp eq i16 %i.ap, 39
  br i1 %i.aq, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 39, ptr %i.c, align 2, !tbaa !29
  %i.ar = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.as = add nuw nsw i32 %.059125, 2
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit, !llvm.loop !69

_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit75, %bb.d
  %i.at = icmp slt i16 %i.w, 0
  %i.au = ashr i16 %i.w, 5
  %i.av = sext i16 %i.au to i32
  %i.aw = select i1 %i.at, i32 %i.u, i32 %i.av    ; 2 uses
  %i.ax = icmp eq i32 %i.y, %i.aw
  br i1 %i.ax, label %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge, label %.lr.ph

_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread
  %.160.lcssa = phi i32 [ %.261, %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread ], [ %i.y, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread ] ; 3 uses
  %i.ay = load i32, ptr %3, align 4, !tbaa !22
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.f, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge
  store i32 3, ptr %3, align 4, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.15, ptr %i.ba, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !24
  %.not4.i = icmp eq ptr %i.bc, null
  br i1 %.not4.i, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split

.lr.ph:                                           ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread
  %i.bd = phi i32 [ %i.ch, %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread ], [ %i.aw, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread ] ; 3 uses
  %i.be = phi i16 [ %i.cb, %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread ], [ %i.w, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread ]
  %i.bf = phi ptr [ %i.bz, %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread ], [ %i.x, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread ] ; 2 uses
  %.160123 = phi i32 [ %.261, %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread ], [ %i.y, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread ] ; 4 uses
  %i.bg = add nsw i32 %.160123, 1                 ; 7 uses
  %i.bh = icmp ult i32 %.160123, %i.bd
  br i1 %i.bh, label %_ZNK6icu_7813UnicodeString6charAtEi.exit78, label %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit78:       ; preds = %.lr.ph
  %i.bi = and i16 %i.be, 2
  %.not.i.i.i77 = icmp eq i16 %i.bi, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = select i1 %.not.i.i.i77, ptr %i.bl, ptr %i.bj ; 2 uses
  %i.bn = sext i32 %.160123 to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !29 ; 2 uses
  %i.bq = icmp eq i16 %i.bp, 39
  br i1 %i.bq, label %bb.g, label %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit78
  %i.br = icmp slt i32 %i.bg, %i.bd
  %i.bs = icmp ult i32 %i.bg, %i.bd
  %or.cond117 = and i1 %i.br, %i.bs
  br i1 %or.cond117, label %_ZNK6icu_7813UnicodeString6charAtEi.exit81, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit81:       ; preds = %bb.g
  %i.bt = sext i32 %i.bg to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !29
  %i.bw = icmp eq i16 %i.bv, 39
  br i1 %i.bw, label %bb.h, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit81
  %i.bx = add nuw nsw i32 %.160123, 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread: ; preds = %.lr.ph, %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit78
  %.0.i.i76101 = phi i16 [ 39, %bb.h ], [ %i.bp, %_ZNK6icu_7813UnicodeString6charAtEi.exit78 ], [ -1, %.lr.ph ]
  %.261 = phi i32 [ %i.bx, %bb.h ], [ %i.bg, %_ZNK6icu_7813UnicodeString6charAtEi.exit78 ], [ %i.bg, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.0.i.i76101, ptr %i.b, align 2, !tbaa !29
  %i.by = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !19  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i16, ptr %i.ca, align 8, !tbaa !32 ; 3 uses
  %i.cc = icmp slt i16 %i.cb, 0
  %i.cd = ashr i16 %i.cb, 5
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = select i1 %i.cc, i32 %i.cg, i32 %i.ce   ; 2 uses
  %i.ci = icmp eq i32 %.261, %i.ch
  br i1 %i.ci, label %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge, label %.lr.ph, !llvm.loop !70

bb.i:                                             ; preds = %switch.early.test.i
  %i.cj = icmp eq i32 %i.y, %i.v
  br i1 %i.cj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ck = load i32, ptr %3, align 4, !tbaa !22
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.k, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %3, align 4, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.16, ptr %i.cm, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !24
  %.not4.i82 = icmp eq ptr %i.co, null
  br i1 %.not4.i82, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split

bb.l:                                             ; preds = %bb.i
  %i.cp = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i32 noundef %i.y) ; 2 uses
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.cp) ; 0 uses
  %i.cr = icmp ult i32 %i.cp, 65536
  %i.cs = select i1 %i.cr, i32 1, i32 2
  %i.ct = add nsw i32 %i.cs, %i.y
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread: ; preds = %.lr.ph127, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit
  %.0.i.i9093 = phi i16 [ %i.ah, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit ], [ %i.ah, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %.lr.ph127 ] ; 2 uses
  %i.cu = zext i16 %.0.i.i9093 to i32
  %i.cv = call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %i.cu)
  %.not72 = icmp eq i8 %i.cv, 0
  br i1 %.not72, label %bb.m, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit

bb.m:                                             ; preds = %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0.i.i9093, ptr %i.a, align 2, !tbaa !29
  %i.cw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit81, %bb.g, %bb.m, %bb.l, %bb.e
  %.463 = phi i32 [ %i.as, %bb.e ], [ %i.y, %bb.m ], [ %i.ct, %bb.l ], [ %i.bg, %bb.g ], [ %i.bg, %_ZNK6icu_7813UnicodeString6charAtEi.exit81 ] ; 3 uses
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !19  ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !32 ; 3 uses
  %i.da = icmp slt i16 %i.cz, 0
  %i.db = ashr i16 %i.cz, 5
  %i.dc = sext i16 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  %i.df = select i1 %i.da, i32 %i.de, i32 %i.dc   ; 2 uses
  %i.dg = icmp slt i32 %.463, %i.df
  br i1 %i.dg, label %.lr.ph127, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit: ; preds = %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread95, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit
  %.059.lcssa.ph = phi i32 [ %.463, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit ], [ %.059125, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread ], [ %.059125, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread95 ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ], [ %.059125, %switch.early.test.i ]
  %.pre = load i16, ptr %i.f, align 8, !tbaa !32
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107: ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit, %bb.b
  %i.dh = phi i16 [ %storemerge.i, %bb.b ], [ %.pre, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit ] ; 2 uses
  %.059.lcssa = phi i32 [ %1, %bb.b ], [ %.059.lcssa.ph, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit ] ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.dj = icmp slt i16 %i.dh, 0
  %i.dk = ashr i16 %i.dh, 5
  %i.dl = sext i16 %i.dk to i32
  %i.dm = load i32, ptr %i.di, align 4
  %i.dn = select i1 %i.dj, i32 %i.dm, i32 %i.dl
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph155, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

.lr.ph155:                                        ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85
  %.0154 = phi i32 [ %i.ef, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85 ], [ 0, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107 ] ; 2 uses
  %i.dp = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0154) ; 3 uses
  %i.dq = and i32 %i.dp, -2048
  %i.dr = icmp eq i32 %i.dq, 55296
  br i1 %i.dr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph155
  %i.ds = load i32, ptr %3, align 4, !tbaa !22
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %bb.o, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %3, align 4, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.17, ptr %i.du, align 8, !tbaa !30
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !24
  %.not4.i84 = icmp eq ptr %i.dw, null
  br i1 %.not4.i84, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split

bb.p:                                             ; preds = %.lr.ph155
  %i.dx = add i32 %i.dp, -65533
  %or.cond = icmp ult i32 %i.dx, 3
  br i1 %or.cond, label %bb.q, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85

bb.q:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %3, align 4, !tbaa !22
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.r, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %3, align 4, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.18, ptr %i.ea, align 8, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !24
  %.not4.i86 = icmp eq ptr %i.ec, null
  br i1 %.not4.i86, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85: ; preds = %bb.p
  %i.ed = icmp ult i32 %i.dp, 65536
  %i.ee = select i1 %i.ed, i32 1, i32 2
  %i.ef = add nuw nsw i32 %i.ee, %.0154           ; 2 uses
  %i.eg = load i16, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.eh = icmp slt i16 %i.eg, 0
  %i.ei = ashr i16 %i.eg, 5
  %i.ej = sext i16 %i.ei to i32
  %i.ek = load i32, ptr %i.di, align 4
  %i.el = select i1 %i.eh, i32 %i.ek, i32 %i.ej
  %i.em = icmp slt i32 %i.ef, %i.el
  br i1 %i.em, label %.lr.ph155, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, !llvm.loop !71

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split: ; preds = %bb.r, %bb.o, %bb.k, %bb.f
  %.6.ph = phi i32 [ %.059.lcssa, %bb.o ], [ %.160.lcssa, %bb.f ], [ %i.v, %bb.k ], [ %.059.lcssa, %bb.r ]
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread: ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107, %bb.k, %bb.j, %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge, %bb.n, %bb.o, %bb.q, %bb.r, %bb.a
  %.6 = phi i32 [ %1, %bb.a ], [ %.160.lcssa, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge ], [ %.6.ph, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split ], [ %.160.lcssa, %bb.f ], [ %.059.lcssa, %bb.n ], [ %.059.lcssa, %bb.o ], [ %.059.lcssa, %bb.q ], [ %.059.lcssa, %bb.r ], [ %.059.lcssa, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107 ], [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %.059.lcssa, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85 ]
  ret i32 %.6
}

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7819CollationRuleParser12isSyntaxCharEi(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i32 %0, -33
  %or.cond = icmp ult i32 %i.a, 94
  br i1 %or.cond, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 48
  br i1 %i.b, label %switch.lookup, label %switch.early.test

switch.early.test:                                ; preds = %bb.b
  %switch.tableidx = add nsw i32 %0, -58          ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 39
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 541165879423, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond15 = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond15, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %switch.early.test
  %i.d = icmp samesign ugt i32 %0, 122
  %i.e = zext i1 %i.d to i8
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.early.test, %bb.b, %bb.c, %bb.a
  %i.f = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.e, %bb.c ], [ 1, %switch.early.test ]
  ret i8 %i.f
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7819CollationRuleParser9readWordsEiRNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = and i16 %i.d, 1
  %.not.i = icmp eq i16 %i.e, 0
  %i.f = and i16 %i.d, 30
  %storemerge.i = select i1 %.not.i, i16 %i.f, i16 2
end_hunk_1
