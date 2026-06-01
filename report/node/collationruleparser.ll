inline.NumInlined: 334
inline.NumDeleted: 67
begin_hunk_0_@_ZN6icu_7819CollationRuleParser11parseStringEiRNS_13UnicodeStringER10UErrorCode:bb.a
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
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
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
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = icmp eq i16 %i.bv, 39
  br i1 %i.bw, label %bb.h, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit81
  %i.bx = add nuw nsw i32 %.160123, 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit78.thread: ; preds = %.lr.ph, %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit78
  %.0.i.i76101 = phi i16 [ 39, %bb.h ], [ %i.bp, %_ZNK6icu_7813UnicodeString6charAtEi.exit78 ], [ -1, %.lr.ph ]
  %.261 = phi i32 [ %i.bx, %bb.h ], [ %i.bg, %_ZNK6icu_7813UnicodeString6charAtEi.exit78 ], [ %i.bg, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.0.i.i76101, ptr %i.b, align 2
  %i.by = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bz = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i16, ptr %i.ca, align 8            ; 3 uses
  %i.cc = icmp slt i16 %i.cb, 0
  %i.cd = ashr i16 %i.cb, 5
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = select i1 %i.cc, i32 %i.cg, i32 %i.ce   ; 2 uses
  %i.ci = icmp eq i32 %.261, %i.ch
  br i1 %i.ci, label %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge, label %.lr.ph, !llvm.loop !17

bb.i:                                             ; preds = %switch.early.test.i
  %i.cj = icmp eq i32 %i.y, %i.v
  br i1 %i.cj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ck = load i32, ptr %3, align 4
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.k, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %3, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.16, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load ptr, ptr %i.cn, align 8
  %.not4.i82 = icmp eq ptr %i.co, null
  br i1 %.not4.i82, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split

bb.l:                                             ; preds = %bb.i
  %i.cp = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i32 noundef %i.y) #11 ; 2 uses
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.cp) #11 ; 0 uses
  %i.cr = icmp ult i32 %i.cp, 65536
  %i.cs = select i1 %i.cr, i32 1, i32 2
  %i.ct = add nsw i32 %i.cs, %i.y
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread: ; preds = %.lr.ph127, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit
  %.0.i.i9093 = phi i16 [ %i.ah, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit ], [ %i.ah, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %.lr.ph127 ] ; 2 uses
  %i.cu = zext i16 %.0.i.i9093 to i32
  %i.cv = call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %i.cu) #11
  %.not72 = icmp eq i8 %i.cv, 0
  br i1 %.not72, label %bb.m, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107.loopexit

bb.m:                                             ; preds = %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0.i.i9093, ptr %i.a, align 2
  %i.cw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit81, %bb.g, %bb.m, %bb.l, %bb.e
  %.463 = phi i32 [ %i.as, %bb.e ], [ %i.y, %bb.m ], [ %i.ct, %bb.l ], [ %i.bg, %bb.g ], [ %i.bg, %_ZNK6icu_7813UnicodeString6charAtEi.exit81 ] ; 3 uses
  %i.cx = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i16, ptr %i.cy, align 8            ; 3 uses
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
  %.pre = load i16, ptr %i.f, align 8
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
  %.054154 = phi i32 [ %i.ef, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85 ], [ 0, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107 ] ; 2 uses
  %i.dp = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.054154) #11 ; 3 uses
  %i.dq = and i32 %i.dp, -2048
  %i.dr = icmp eq i32 %i.dq, 55296
  br i1 %i.dr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph155
  %i.ds = load i32, ptr %3, align 4
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %bb.o, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %3, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.17, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8
  %.not4.i84 = icmp eq ptr %i.dw, null
  br i1 %.not4.i84, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split

bb.p:                                             ; preds = %.lr.ph155
  %i.dx = add i32 %i.dp, -65533
  %or.cond = icmp ult i32 %i.dx, 3
  br i1 %or.cond, label %bb.q, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85

bb.q:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %3, align 4
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.r, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %3, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.18, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not4.i86 = icmp eq ptr %i.ec, null
  br i1 %.not4.i86, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85: ; preds = %bb.p
  %i.ed = icmp ult i32 %i.dp, 65536
  %i.ee = select i1 %i.ed, i32 1, i32 2
  %i.ef = add nuw nsw i32 %i.ee, %.054154         ; 2 uses
  %i.eg = load i16, ptr %i.f, align 8             ; 2 uses
  %i.eh = icmp slt i16 %i.eg, 0
  %i.ei = ashr i16 %i.eg, 5
  %i.ej = sext i16 %i.ei to i32
  %i.ek = load i32, ptr %i.di, align 4
  %i.el = select i1 %i.eh, i32 %i.ek, i32 %i.ej
  %i.em = icmp slt i32 %i.ef, %i.el
  br i1 %i.em, label %.lr.ph155, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread, !llvm.loop !18

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split: ; preds = %bb.r, %bb.o, %bb.k, %bb.f
  %.6.ph = phi i32 [ %.059.lcssa, %bb.o ], [ %.160.lcssa, %bb.f ], [ %i.v, %bb.k ], [ %.059.lcssa, %bb.r ]
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread: ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107, %bb.k, %bb.j, %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge, %bb.n, %bb.o, %bb.q, %bb.r, %bb.a
  %.6 = phi i32 [ %1, %bb.a ], [ %.160.lcssa, %_ZNK6icu_7813UnicodeString6charAtEi.exit75.thread._crit_edge ], [ %.6.ph, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread.sink.split ], [ %.160.lcssa, %bb.f ], [ %.059.lcssa, %bb.n ], [ %.059.lcssa, %bb.o ], [ %.059.lcssa, %bb.q ], [ %.059.lcssa, %bb.r ], [ %.059.lcssa, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit.thread107 ], [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %.059.lcssa, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit85 ]
  ret i32 %.6
}

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7819CollationRuleParser12isSyntaxCharEi(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i32 %0, -33
  %or.cond = icmp ult i32 %i.a, 94
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 48
  br i1 %i.b, label %bb.d, label %switch.early.test

switch.early.test:                                ; preds = %bb.b
  %switch.tableidx = add nsw i32 %0, -58          ; 2 uses
  %1 = icmp ult i32 %switch.tableidx, 39
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 541165879423, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond15 = select i1 %1, i1 %switch.lobit, i1 false
  br i1 %or.cond15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.early.test
  %i.c = icmp samesign ugt i32 %0, 122
  %i.d = zext i1 %i.c to i8
  br label %bb.d

bb.d:                                             ; preds = %switch.early.test, %bb.b, %bb.c, %bb.a
  %2 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.d, %bb.c ], [ 1, %switch.early.test ]
  ret i8 %2
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7819CollationRuleParser9readWordsEiRNS_13UnicodeStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = and i16 %i.d, 1
  %.not.i = icmp eq i16 %i.e, 0
  %i.f = and i16 %i.d, 30
  %storemerge.i = select i1 %.not.i, i16 %i.f, i16 2
  store i16 %storemerge.i, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m       ; 2 uses
  %i.q = icmp slt i32 %1, %i.p
  br i1 %i.q, label %.lr.ph.preheader.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.r = sext i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.r, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.s = phi i32 [ %i.p, %.lr.ph.preheader.i ], [ %i.ap, %bb.c ]
  %i.t = phi i16 [ %i.j, %.lr.ph.preheader.i ], [ %i.aj, %bb.c ]
  %i.u = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.ah, %bb.c ] ; 2 uses
  %.04.i = phi i32 [ %1, %.lr.ph.preheader.i ], [ %i.ag, %bb.c ]
  %i.v = trunc nsw i64 %indvars.iv.i to i32       ; 2 uses
  %i.w = icmp ugt i32 %i.s, %i.v
  br i1 %i.w, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.x = and i16 %i.t, 2
  %.not.i.i.i.i = icmp eq i16 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %.not.i.i.i.i, ptr %i.aa, ptr %i.y
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.b, %.lr.ph.i
  %.0.i.i.i = phi i32 [ %i.ae, %bb.b ], [ 65535, %.lr.ph.i ]
  %i.af = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i) #11
  %.not.i33 = icmp eq i8 %i.af, 0
  br i1 %.not.i33, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = add nsw i32 %.04.i, 1                   ; 2 uses
  %i.ah = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i16, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = select i1 %i.ak, i32 %i.ao, i32 %i.am   ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, !llvm.loop !9

_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.c, %bb.a
  %.0.lcssa.i = phi i32 [ %1, %bb.a ], [ %i.v, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %i.ag, %bb.c ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.at = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i16, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp slt i16 %i.av, 0
  %i.ax = ashr i16 %i.av, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = select i1 %i.aw, i32 %i.ba, i32 %i.ay   ; 2 uses
  %.not8999 = icmp slt i32 %.0.lcssa.i, %i.bb
  br i1 %.not8999, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit, %.outer.backedge
  %i.bc = phi i32 [ %i.gt, %.outer.backedge ], [ %i.bb, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ]
  %i.bd = phi i16 [ %i.gn, %.outer.backedge ], [ %i.av, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ]
  %i.be = phi ptr [ %i.gl, %.outer.backedge ], [ %i.at, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 2 uses
  %.026.ph101 = phi i32 [ %.026.ph.be, %.outer.backedge ], [ undef, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 5 uses
  %.027.ph100 = phi i32 [ %.027.ph.be, %.outer.backedge ], [ %.0.lcssa.i, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ] ; 29 uses
  %i.bf = sext i32 %.027.ph100 to i64             ; 2 uses
  %i.bg = icmp ult i32 %.027.ph100, %i.bc
  br i1 %i.bg, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.peel, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread63

_ZNK6icu_7813UnicodeString6charAtEi.exit.peel:    ; preds = %.lr.ph
  %i.bh = and i16 %i.bd, 2
  %.not.i.i.i.peel = icmp eq i16 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = select i1 %.not.i.i.i.peel, ptr %i.bk, ptr %i.bi
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bf
  %i.bn = load i16, ptr %i.bm, align 2            ; 10 uses
  %i.bo = add i16 %i.bn, -33
  %or.cond.i.peel = icmp ult i16 %i.bo, 94
  br i1 %or.cond.i.peel, label %bb.d, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread63

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.peel
  %i.bp = icmp samesign ult i16 %i.bn, 48
  br i1 %i.bp, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread.peel, label %switch.early.test.i.peel

switch.early.test.i.peel:                         ; preds = %bb.d
  %switch.tableidx.peel = add nsw i16 %i.bn, -58  ; 3 uses
  %i.bq = icmp ult i16 %switch.tableidx.peel, 39
  br i1 %i.bq, label %switch.hole_check.peel, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.peel

switch.hole_check.peel:                           ; preds = %switch.early.test.i.peel
  %switch.maskindex.peel = zext nneg i16 %switch.tableidx.peel to i64
  %switch.shifted.peel = lshr i64 541165879423, %switch.maskindex.peel
  %switch.lobit.peel = trunc i64 %switch.shifted.peel to i1
  br i1 %switch.lobit.peel, label %switch.lookup.peel, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.peel

_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.peel: ; preds = %switch.hole_check.peel, %switch.early.test.i.peel
  %i.br = icmp samesign ugt i16 %i.bn, 122
  br i1 %i.br, label %switch.early.test.peel, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread63

switch.lookup.peel:                               ; preds = %switch.hole_check.peel
  %switch.cast.peel = zext nneg i16 %switch.tableidx.peel to i39
  %switch.downshift.peel = lshr i39 -146028887937, %switch.cast.peel
  %switch.masked.peel = trunc i39 %switch.downshift.peel to i1
  br label %switch.early.test.peel

_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread.peel: ; preds = %bb.d
  %i.bs = icmp ne i16 %i.bn, 45
  br label %switch.early.test.peel

switch.early.test.peel:                           ; preds = %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread.peel, %switch.lookup.peel, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.peel
  %or.cond561.peel = phi i1 [ %i.bs, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread.peel ], [ true, %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.peel ], [ %switch.masked.peel, %switch.lookup.peel ] ; 8 uses
  switch i16 %i.bn, label %bb.e [
    i16 95, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread63
    i16 45, label %_ZN6icu_7819CollationRuleParser12isSyntaxCharEi.exit.thread63
  ]

bb.e:                                             ; preds = %switch.early.test.peel
  %i.bt = load i16, ptr %i.c, align 8             ; 3 uses
  %i.bu = icmp ugt i16 %i.bt, 31
  br i1 %i.bu, label %bb.f, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.f:                                             ; preds = %bb.e
  %i.bv = icmp slt i16 %i.bt, 0
  %i.bw = ashr i16 %i.bt, 5
  %i.bx = sext i16 %i.bw to i32
  %i.by = load i32, ptr %i.as, align 4
  %i.bz = select i1 %i.bv, i32 %i.by, i32 %i.bx
  %i.ca = add nsw i32 %i.bz, -1
  %i.cb = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.ca, i32 noundef 1, ptr noundef nonnull @_ZZNK6icu_7819CollationRuleParser9readWordsEiRNS_13UnicodeStringEE2sp, i32 noundef 0, i32 noundef 1) #11
  %.not32.peel = icmp eq i8 %i.cb, 0
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZZNK6icu_7819CollationRuleParser9readWordsEiRNS_13UnicodeStringEE2sp) #11, !srcloc !8
  br i1 %.not32.peel, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load i16, ptr %i.c, align 8             ; 5 uses
  %i.cd = icmp slt i16 %i.cc, 0
  %i.ce = ashr i16 %i.cc, 5
  %i.cf = sext i16 %i.ce to i32
  %i.cg = load i32, ptr %i.as, align 4
  %i.ch = select i1 %i.cd, i32 %i.cg, i32 %i.cf   ; 3 uses
  %i.ci = add nsw i32 %i.ch, -1                   ; 3 uses
  %i.cj = trunc i16 %i.cc to i1
  %i.ck = icmp eq i32 %i.ci, 0
  %or.cond.i34.peel = and i1 %i.ck, %i.cj
  br i1 %or.cond.i34.peel, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not69.peel = icmp eq i32 %i.ch, 0
  br i1 %.not69.peel, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = icmp slt i32 %i.ch, 1025
  br i1 %i.cl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = or i16 %i.cc, -32
  store i16 %i.cm, ptr %i.c, align 8
  store i32 %i.ci, ptr %i.as, align 4
  br i1 %or.cond561.peel, label %.loopexit, label %.backedge.peel

bb.k:                                             ; preds = %bb.i
  %i.cn = and i16 %i.cc, 31
  %.tr.i.i.i.peel = trunc i32 %i.ci to i16
  %i.co = shl i16 %.tr.i.i.i.peel, 5
  %i.cp = or disjoint i16 %i.co, %i.cn
end_hunk_0
