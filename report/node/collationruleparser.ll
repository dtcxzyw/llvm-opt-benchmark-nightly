inline.NumInlined: 334
inline.NumDeleted: 67
begin_hunk_0_@_ZN6icu_7819CollationRuleParser22parseStarredCharactersEiiR10UErrorCode:bb.a
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit
  %i.ar = load i16, ptr %i.b, align 8             ; 2 uses
  %i.as = icmp ugt i16 %i.ar, 31
  br i1 %i.as, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  store i32 3, ptr %3, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.6, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %.not4.i = icmp eq ptr %i.ba, null
  br i1 %.not4.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %.critedge

bb.g:                                             ; preds = %.preheader, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77
  %i.bb = phi i16 [ %.pre, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77 ], [ %i.ar, %.preheader ] ; 2 uses
  %.046 = phi i32 [ %i.fb, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77 ], [ 0, %.preheader ] ; 2 uses
  %.0 = phi i32 [ %i.dg, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77 ], [ %i.ao, %.preheader ] ; 5 uses
  %i.bc = icmp slt i16 %i.bb, 0
  %i.bd = ashr i16 %i.bb, 5
  %i.be = sext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.at, align 4
  %i.bg = select i1 %i.bc, i32 %i.bf, i32 %i.be
  %i.bh = icmp slt i32 %.046, %i.bg
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %.14799 = phi i32 [ %i.ca, %bb.m ], [ %.046, %bb.g ] ; 2 uses
  %i.bi = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %.14799) #11 ; 4 uses
  %i.bj = load ptr, ptr %0, align 8, !nonnull !10, !align !11 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %i.bi) #11
  %.not64 = icmp eq i8 %i.bn, 0
  br i1 %.not64, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.bo = load i32, ptr %3, align 4
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %3, align 4
  store ptr @.str.7, ptr %i.av, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %.not4.i68 = icmp eq ptr %i.br, null
  br i1 %.not4.i68, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.bs = load ptr, ptr %i.au, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %i.bi) #11
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bw = load i32, ptr %3, align 4
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.by = icmp ult i32 %i.bi, 65536
  %i.bz = select i1 %i.by, i32 1, i32 2
  %i.ca = add nuw nsw i32 %i.bz, %.14799          ; 2 uses
  %i.cb = load i16, ptr %i.b, align 8             ; 2 uses
  %i.cc = icmp slt i16 %i.cb, 0
  %i.cd = ashr i16 %i.cb, 5
  %i.ce = sext i16 %i.cd to i32
  %i.cf = load i32, ptr %i.at, align 4
  %i.cg = select i1 %i.cc, i32 %i.cf, i32 %i.ce
  %i.ch = icmp slt i32 %i.ca, %i.cg
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.m, %bb.g
  %.150.lcssa = phi i32 [ -1, %bb.g ], [ %i.bi, %bb.m ] ; 4 uses
  %i.ci = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i16, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp slt i16 %i.ck, 0
  %i.cm = ashr i16 %i.ck, 5
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = select i1 %i.cl, i32 %i.cp, i32 %i.cn   ; 2 uses
  %.not57 = icmp slt i32 %.0, %i.cq
  %i.cr = icmp ult i32 %.0, %i.cq
  %or.cond86 = and i1 %.not57, %i.cr
  br i1 %or.cond86, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %._crit_edge
  %i.cs = and i16 %i.ck, 2
  %.not.i.i.i = icmp eq i16 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = select i1 %.not.i.i.i, ptr %i.cv, ptr %i.ct
  %i.cx = sext i32 %.0 to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2
  %.not58 = icmp eq i16 %i.cz, 45
  br i1 %.not58, label %bb.n, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.da = icmp slt i32 %.150.lcssa, 0
  br i1 %i.da, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.db = load i32, ptr %3, align 4
  %i.dc = icmp slt i32 %i.db, 1
  br i1 %i.dc, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  store i32 3, ptr %3, align 4
  store ptr @.str.8, ptr %i.av, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load ptr, ptr %i.dd, align 8
  %.not4.i70 = icmp eq ptr %i.de, null
  br i1 %.not4.i70, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %.critedge

bb.r:                                             ; preds = %bb.n
  %i.df = add nuw nsw i32 %.0, 1
  %i.dg = call noundef i32 @_ZN6icu_7819CollationRuleParser11parseStringEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.dh = load i32, ptr %3, align 4
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dj = load i16, ptr %i.b, align 8
  %i.dk = icmp ugt i16 %i.dj, 31
  br i1 %i.dk, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 3, ptr %3, align 4
  store ptr @.str.9, ptr %i.av, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8
  %.not4.i72 = icmp eq ptr %i.dm, null
  br i1 %.not4.i72, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %.critedge

bb.v:                                             ; preds = %bb.s
  %i.dn = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0) #11 ; 4 uses
  %i.do = icmp slt i32 %i.dn, %.150.lcssa
  br i1 %i.do, label %.critedge67, label %bb.y

.critedge67:                                      ; preds = %bb.v
  %i.dp = load i32, ptr %3, align 4
  %i.dq = icmp slt i32 %i.dp, 1
  br i1 %i.dq, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.critedge67
  store i32 3, ptr %3, align 4
  store ptr @.str.10, ptr %i.av, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  %.not4.i74 = icmp eq ptr %i.ds, null
  br i1 %.not4.i74, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %.critedge

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  store i16 2, ptr %i.aw, align 8
  %exitcond.not141 = icmp eq i32 %.150.lcssa, %i.dn
  br i1 %exitcond.not141, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77, label %.lr.ph144

bb.z:                                             ; preds = %bb.ai
  %exitcond.not = icmp eq i32 %8, %i.dn
  br i1 %exitcond.not, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77, label %.lr.ph144, !llvm.loop !13

.lr.ph144:                                        ; preds = %bb.y, %bb.z
  %.352142 = phi i32 [ %8, %bb.z ], [ %.150.lcssa, %bb.y ] ; 2 uses
  %8 = add i32 %.352142, 1                        ; 5 uses
  %i.dt = load ptr, ptr %0, align 8, !nonnull !10, !align !11 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call noundef signext i8 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 noundef %8) #11
  %.not62 = icmp eq i8 %i.dx, 0
  br i1 %.not62, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph144
  %i.dy = load i32, ptr %3, align 4
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.ab, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %3, align 4
  store ptr @.str.11, ptr %i.av, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8
  %.not4.i76 = icmp eq ptr %i.eb, null
  br i1 %.not4.i76, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread.sink.split

bb.ac:                                            ; preds = %.lr.ph144
  %i.ec = and i32 %8, 2147481600
  %i.ed = icmp eq i32 %i.ec, 55296
  br i1 %i.ed, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ee = load i32, ptr %3, align 4
  %i.ef = icmp slt i32 %i.ee, 1
  br i1 %i.ef, label %bb.ae, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread

bb.ae:                                            ; preds = %bb.ad
  store i32 3, ptr %3, align 4
  store ptr @.str.12, ptr %i.av, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8
  %.not4.i78 = icmp eq ptr %i.eh, null
  br i1 %.not4.i78, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread.sink.split

bb.af:                                            ; preds = %bb.ac
  %i.ei = add nsw i32 %.352142, -65532
  %or.cond = icmp ult i32 %i.ei, 3
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ej = load i32, ptr %3, align 4
  %i.ek = icmp slt i32 %i.ej, 1
  br i1 %i.ek, label %bb.ah, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread

bb.ah:                                            ; preds = %bb.ag
  store i32 3, ptr %3, align 4
  store ptr @.str.13, ptr %i.av, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.em = load ptr, ptr %i.el, align 8
  %.not4.i80 = icmp eq ptr %i.em, null
  br i1 %.not4.i80, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread.sink.split

bb.ai:                                            ; preds = %bb.af
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  %i.en = load i16, ptr %i.aw, align 8            ; 2 uses
  %i.eo = icmp slt i16 %i.en, 0
  %i.ep = ashr i16 %i.en, 5
  %i.eq = sext i16 %i.ep to i32
  %i.er = load i32, ptr %i.ax, align 4
  %i.es = select i1 %i.eo, i32 %i.er, i32 %i.eq
  %i.et = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.es, i32 noundef %8) #11 ; 0 uses
  %i.eu = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %i.ey = load i32, ptr %3, align 4
  %i.ez = icmp slt i32 %i.ey, 1
  br i1 %i.ez, label %bb.z, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread.sink.split, !llvm.loop !13

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread.sink.split: ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ab
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread: ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread.sink.split, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.aa
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.critedge

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77: ; preds = %bb.z, %bb.y
  %i.fa = icmp ult i32 %i.dn, 65536
  %i.fb = select i1 %i.fa, i32 1, i32 2
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.pre = load i16, ptr %i.b, align 8
  br label %bb.g

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %._crit_edge, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.fc = call noundef i32 @_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.0)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.fc, ptr %i.fd, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit77.thread, %bb.x, %bb.w, %.critedge67, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %bb.l, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g       ; 2 uses
  %i.k = icmp slt i32 %1, %i.j
  br i1 %i.k, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = phi i32 [ %i.j, %.lr.ph.preheader ], [ %i.aj, %bb.c ]
  %i.n = phi i16 [ %i.d, %.lr.ph.preheader ], [ %i.ad, %bb.c ]
  %i.o = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ab, %bb.c ] ; 2 uses
  %.04 = phi i32 [ %1, %.lr.ph.preheader ], [ %i.aa, %bb.c ]
  %i.p = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.q = icmp ugt i32 %i.m, %i.p
  br i1 %i.q, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.b:                                             ; preds = %.lr.ph
  %i.r = and i16 %i.n, 2
  %.not.i.i.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %.not.i.i.i, ptr %i.u, ptr %i.s
  %i.w = getelementptr inbounds [2 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %.lr.ph, %bb.b
  %.0.i.i = phi i32 [ %i.y, %bb.b ], [ 65535, %.lr.ph ]
  %i.z = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i) #11
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = add nsw i32 %.04, 1                     ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i16, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp slt i16 %i.ad, 0
  %i.af = ashr i16 %i.ad, 5
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = select i1 %i.ae, i32 %i.ai, i32 %i.ag   ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %.lr.ph, label %.critedge, !llvm.loop !9

.critedge:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.c, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.aa, %bb.c ], [ %i.p, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7819CollationRuleParser20parseSpecialPositionEiRNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.d = load i32, ptr %3, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i16 2, ptr %i.f, align 8
  %i.g = add nsw i32 %1, 1
  %i.h = call noundef i32 @_ZNK6icu_7819CollationRuleParser9readWordsEiRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(64) %4) ; 4 uses
  %i.i = icmp sgt i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i16, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp slt i16 %i.m, 0
  %i.o = ashr i16 %i.m, 5
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = select i1 %i.n, i32 %i.r, i32 %i.p
  %i.t = icmp ult i32 %i.h, %i.s
  br i1 %i.t, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.c
  %i.u = and i16 %i.m, 2
  %.not.i.i.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not.i.i.i, ptr %i.x, ptr %i.v
  %i.z = sext i32 %i.h to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = icmp eq i16 %i.ab, 93
  %i.ad = load i16, ptr %i.f, align 8
  %i.ae = icmp ugt i16 %i.ad, 31
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.af = add nuw nsw i32 %i.h, 1                 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_7812_GLOBAL__N_19positionsE, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %i.am, i32 noundef -1, i32 noundef 0) #11
  %i.an = load i16, ptr %i.f, align 8             ; 3 uses
  %i.ao = and i16 %i.an, 1
  %.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i16, ptr %i.ag, align 8
  %i.aq = trunc i16 %i.ap to i1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br i1 %i.aq, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = icmp slt i16 %i.an, 0
  %i.as = ashr i16 %i.an, 5
  %i.at = sext i16 %i.as to i32
  %i.au = load i32, ptr %i.ah, align 4
  %i.av = select i1 %i.ar, i32 %i.au, i32 %i.at   ; 2 uses
  %i.aw = load i16, ptr %i.ag, align 8            ; 4 uses
  %i.ax = icmp slt i16 %i.aw, 0
end_hunk_0
begin_hunk_1_@_ZNK6icu_7819CollationRuleParser9readWordsEiRNS_13UnicodeStringE:bb.a

.loopexit:                                        ; preds = %bb.y, %_ZN6icu_7813UnicodeString8truncateEi.exit, %.outer.backedge, %.backedge, %bb.u, %bb.q, %bb.t, %bb.j, %bb.k, %bb.l, %.backedge.peel, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit
  %.2 = phi i32 [ 0, %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit ], [ %.027.ph100, %bb.j ], [ %.027.ph100, %bb.q ], [ %.027.ph100, %bb.t ], [ 0, %.backedge ], [ %.027.ph100, %bb.u ], [ 0, %.backedge.peel ], [ %.027.ph100, %bb.l ], [ %.027.ph100, %bb.k ], [ %.02690.lcssa, %bb.y ], [ %.1, %_ZN6icu_7813UnicodeString8truncateEi.exit ], [ 0, %.outer.backedge ]
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8
  %i.f = trunc i16 %i.e to i1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i16 %i.b, 0
  %i.h = ashr i16 %i.b, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = and i16 %i.n, 1
  %.not9 = icmp eq i16 %i.u, 0
  %i.v = icmp eq i32 %i.l, %i.t
  %or.cond = and i1 %.not9, %i.v
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = and i16 %i.n, 2
  %.not.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i, ptr %i.z, ptr %i.x
  %i.ab = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aa, i32 noundef %i.l) #11
  %i.ac = icmp ne i8 %i.ab, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ %i.ac, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEDs(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %i.j = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #11
  ret ptr %i.j
}

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser15parseReorderingERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UVector32", align 8 ; 8 uses
  %4 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = icmp eq i32 %i.j, 7
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @_ZN6icu_7817CollationSettings15resetReorderingEv(ptr noundef nonnull align 8 dereferenceable(852) %i.m) #11
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN6icu_789UVector32C1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %i.n = load i32, ptr %2, align 4
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  store ptr %i.p, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 40, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i8 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i32 0, ptr %i.s, align 8
  store i8 0, ptr %i.p, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %bb.e
  %.0 = phi i32 [ 7, %bb.e ], [ %.025, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ] ; 3 uses
  %i.w = load i16, ptr %i.c, align 8              ; 2 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32
  %i.aa = load i32, ptr %i.h, align 4
  %i.ab = select i1 %i.x, i32 %i.aa, i32 %i.z     ; 2 uses
  %i.ac = icmp slt i32 %.0, %i.ab
  br i1 %i.ac, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit, label %bb.n

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %bb.f
  %i.ad = add nsw i32 %.0, 1                      ; 3 uses
  %i.ae = icmp slt i32 %.0, -1
  %.0.i = select i1 %i.ae, i32 0, i32 %i.ad       ; 2 uses
  %i.af = sub nsw i32 %i.ab, %.0.i
  %i.ag = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 32, i32 noundef %.0.i, i32 noundef %i.af) #11 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.ai = load i16, ptr %i.c, align 8             ; 2 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = load i32, ptr %i.h, align 4
  %i.an = select i1 %i.aj, i32 %i.am, i32 %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %.025 = phi i32 [ %i.an, %bb.g ], [ %i.ag, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ] ; 2 uses
  store i32 0, ptr %i.s, align 8
  %i.ao = load ptr, ptr %4, align 8
  store i8 0, ptr %i.ao, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ap = sub nsw i32 %.025, %i.ad
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ad, i32 noundef %i.ap) #11
  %i.aq = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ar = load i32, ptr %2, align 4
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %4, align 8
  %i.au = call noundef i32 @_ZN6icu_7819CollationRuleParser14getReorderCodeEPKc(ptr noundef %i.at) ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %2, align 4
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %2, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.53, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %.not4.i = icmp eq ptr %i.ba, null
  br i1 %.not4.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %.critedge

bb.m:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.t, align 8             ; 4 uses
  %i.bc = icmp slt i32 %i.bb, -1
  %i.bd = load i32, ptr %i.u, align 4
  %.not.i.i = icmp sle i32 %i.bd, %i.bb
  %or.cond.i.i = select i1 %i.bc, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.m
  %6 = add nsw i32 %i.bb, 1
  %i.be = call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %.not.i = icmp eq i8 %i.be, 0
  br i1 %.not.i, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i
  %.pre.i33 = load i32, ptr %i.t, align 8
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i, %bb.m
  %i.bf = phi i32 [ %.pre.i33, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i ], [ %i.bb, %bb.m ]
  %i.bg = load ptr, ptr %i.v, align 8
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  store i32 %i.au, ptr %i.bi, align 4
  %i.bj = load i32, ptr %i.t, align 8
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.t, align 8
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i
  %i.bl = load i32, ptr %2, align 4
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.f, label %.critedge, !llvm.loop !21

bb.n:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.v, align 8
  %i.bs = load i32, ptr %i.t, align 8
  call void @_ZN6icu_7817CollationSettings13setReorderingERKNS_13CollationDataEPKiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852) %i.bo, ptr noundef nonnull align 8 dereferenceable(140) %i.bq, ptr noundef %i.br, i32 noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %bb.l, %bb.k, %bb.j, %bb.n
  %i.bt = load i8, ptr %i.r, align 4
  %.not.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bu = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.bu) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %.critedge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %_ZN6icu_7810CharStringD2Ev.exit
  call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.p, %bb.a
  ret void
}

declare void @_ZN6icu_7817CollationSettings11setStrengthEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN6icu_7817CollationSettings20setAlternateHandlingE18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN6icu_7817CollationSettings14setMaxVariableEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #5

declare void @_ZN6icu_7817CollationSettings12setCaseFirstE18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -1, 18) i32 @_ZN6icu_7819CollationRuleParser13getOnOffValueERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr @.str.55, ptr %2, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 1, ptr noundef nonnull %2, i32 noundef -1) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8
  %i.f = trunc i16 %i.e to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i16 %i.b, 0
  %i.h = ashr i16 %i.b, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = and i16 %i.n, 1
  %.not9.i = icmp eq i16 %i.u, 0
  %i.v = icmp eq i32 %i.l, %i.t
  %or.cond.i = and i1 %.not9.i, %i.v
  br i1 %or.cond.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.w = and i16 %i.n, 2
  %.not.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i.i, ptr %i.z, ptr %i.x
  %i.ab = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aa, i32 noundef %i.l) #11
  %i.ac = icmp ne i8 %i.ab, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.b, %bb.d
  %.0.i = phi i1 [ %i.f, %bb.b ], [ %i.ac, %bb.d ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #11
  %i.ad = load ptr, ptr %2, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ad) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br i1 %.0.i, label %bb.i, label %bb.e

.critedge:                                        ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #11
  %i.ae = load ptr, ptr %2, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ae) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr @.str.35, ptr %4, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext 1, ptr noundef nonnull %4, i32 noundef -1) #11
  %i.af = load i16, ptr %i.a, align 8             ; 3 uses
  %i.ag = and i16 %i.af, 1
  %.not.i2 = icmp eq i16 %i.ag, 0
  br i1 %.not.i2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i16, ptr %i.ah, align 8
  %.fr = freeze i16 %i.ai
  %i.aj = trunc i16 %.fr to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp slt i16 %i.af, 0
  %i.al = ashr i16 %i.af, 5
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = select i1 %i.ak, i32 %i.ao, i32 %i.am   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i16, ptr %i.aq, align 8            ; 4 uses
  %i.as = icmp slt i16 %i.ar, 0
  %i.at = ashr i16 %i.ar, 5
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = select i1 %i.as, i32 %i.aw, i32 %i.au
  %i.ay = and i16 %i.ar, 1
  %.not9.i4 = icmp eq i16 %i.ay, 0
  %i.az = icmp eq i32 %i.ap, %i.ax
  %or.cond.i5 = and i1 %.not9.i4, %i.az
  br i1 %or.cond.i5, label %bb.h, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7

bb.h:                                             ; preds = %bb.g
  %i.ba = and i16 %i.ar, 2
  %.not.i.i.i6 = icmp eq i16 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = select i1 %.not.i.i.i6, ptr %i.bd, ptr %i.bb
  %i.bf = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.be, i32 noundef %i.ap) #11
  %i.bg = icmp ne i8 %i.bf, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7

_ZNK6icu_7813UnicodeStringeqERKS0_.exit7:         ; preds = %bb.f, %bb.g, %bb.h
  %.0.i3 = phi i1 [ %i.aj, %bb.f ], [ %i.bg, %bb.h ], [ false, %bb.g ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #11
  %i.bh = load ptr, ptr %4, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bh) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %spec.select = select i1 %.0.i3, i32 16, i32 -1
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %.0 = phi i32 [ 17, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ %spec.select, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7 ]
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

end_hunk_1
