inline.NumInlined: 328
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode:bb.a
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.co = load i32, ptr %1, align 4
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %.critedge214, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.critedge214:                                     ; preds = %.preheader368.preheader, %.loopexit402, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit, %bb.l
  %.1165 = phi ptr [ %.0164380, %bb.l ], [ %i.bj, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit ], [ %i.bj, %.loopexit402 ], [ %i.bd, %.preheader368.preheader ] ; 2 uses
  %.2154 = phi i32 [ %.0152381, %bb.l ], [ %i.bi, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit ], [ %i.bi, %.loopexit402 ], [ %i.bc, %.preheader368.preheader ]
  %i.cq = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 11 uses
  %i.cr = icmp eq ptr %i.cq, null                 ; 2 uses
  br i1 %i.cr, label %.thread287, label %bb.t

bb.t:                                             ; preds = %.critedge214
  %i.cs = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not.i = icmp eq i8 %i.cs, 0
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %.not.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 8            ; 3 uses
  %i.cv = icmp slt i16 %i.cu, 0
  %i.cw = ashr i16 %i.cu, 5
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = select i1 %i.cv, i32 %i.cz, i32 %i.cx
  %i.db = icmp ugt i32 %i.da, 1
  br i1 %i.db, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.u
  %i.dc = and i16 %i.cu, 2
  %.not.i.i.i.i = icmp eq i16 %i.dc, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = select i1 %.not.i.i.i.i, ptr %i.df, ptr %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2            ; 4 uses
  %i.dj = add i16 %i.di, -10241
  %or.cond.i223 = icmp ult i16 %i.dj, 255
  br i1 %or.cond.i223, label %bb.v, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

bb.v:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.dk = trunc i16 %i.di to i8                   ; 3 uses
  %i.dl = urem i8 %i.dk, 10
  %i.dm = udiv i8 %i.dk, 10
  %i.dn = or disjoint i8 %i.dl, 48
  %i.do = zext nneg i8 %i.dn to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.do, ptr %i.e, align 2
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %i.dp = load i16, ptr %i.ao, align 8            ; 2 uses
  %i.dq = icmp slt i16 %i.dp, 0
  %i.dr = ashr i16 %i.dp, 5
  %i.ds = sext i16 %i.dr to i32
  %i.dt = load i32, ptr %i.au, align 4
  %i.du = select i1 %i.dq, i32 %i.dt, i32 %i.ds
  %i.dv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.du, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dw = icmp samesign ugt i16 %i.di, 10249
  br i1 %i.dw, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dx = urem i8 %i.dm, 10
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = zext nneg i8 %i.dy to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.dz, ptr %i.d, align 2
  %i.ea = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.eb = icmp samesign ugt i16 %i.di, 10339
  br i1 %i.eb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = udiv i8 %i.dk, 100
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = zext nneg i8 %i.ed to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ee, ptr %i.c, align 2
  %i.ef = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 21123, ptr %i.b, align 2
  %i.eg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.u
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %.pre.i.i = load i16, ptr %i.ct, align 8        ; 2 uses
  %i.eh = icmp slt i16 %.pre.i.i, 0
  %i.ei = ashr i16 %.pre.i.i, 5
  %i.ej = sext i16 %i.ei to i32
  %i.ek = load i32, ptr %i.cy, align 4
  %i.el = select i1 %i.eh, i32 %i.ek, i32 %i.ej   ; 2 uses
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.el, i32 1) ; 2 uses
  %i.em = load i16, ptr %i.ao, align 8            ; 2 uses
  %i.en = icmp slt i16 %i.em, 0
  %i.eo = ashr i16 %i.em, 5
  %i.ep = sext i16 %i.eo to i32
  %i.eq = load i32, ptr %i.au, align 4
  %i.er = select i1 %i.en, i32 %i.eq, i32 %i.ep
  %i.es = sub nsw i32 %i.el, %spec.select.i.i
  %i.et = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef %spec.select.i.i, i32 noundef %i.es) #13
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.y, %bb.t
  %.1.i = phi ptr [ %i.ax, %bb.t ], [ %i.eg, %bb.y ], [ %i.et, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex6BucketE, i64 16), ptr %i.cq, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, ptr noundef nonnull align 8 dereferenceable(64) %.1.i) #13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  store i32 0, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cq, i64 144
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cq, i64 152
  store i32 -1, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cq, i64 160
  store ptr null, ptr %i.ez, align 8
  %i.fa = load i32, ptr %1, align 4
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %bb.ae, label %bb.aa

.thread287:                                       ; preds = %.critedge214
  %i.fc = load i32, ptr %1, align 4
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224, label %bb.aa

bb.aa:                                            ; preds = %.thread287, %bb.z
  %i.fe = load ptr, ptr %4, align 8               ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.fe, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(168) %i.fe) #13, !inline_history !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.cq, ptr %4, align 8
  br i1 %i.cr, label %bb.ad, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224

bb.ad:                                            ; preds = %bb.ac
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224

bb.ae:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %i.cq, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(168) %i.cq) #13, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224: ; preds = %.thread287, %bb.ac, %bb.ad, %bb.ae
  %i.fm = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.fm, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.fn = load i32, ptr %1, align 4
  %i.fo = icmp slt i32 %i.fn, 1
  br i1 %i.fo, label %bb.af, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.af:                                            ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.fq = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.fr = icmp slt i16 %i.fq, 0
  %i.fs = ashr i16 %i.fq, 5
  %i.ft = sext i16 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = select i1 %i.fr, i32 %i.fv, i32 %i.ft
  switch i32 %i.fw, label %.thread298 [
    i32 1, label %_ZNK6icu_7813UnicodeString6charAtEi.exit
    i32 2, label %bb.ah
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.af
  %i.fx = and i16 %i.fq, 2
  %.not.i.i.i = icmp eq i16 %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = select i1 %.not.i.i.i, ptr %i.ga, ptr %i.fy
  %i.gc = load i16, ptr %i.gb, align 2            ; 2 uses
  %i.gd = add i16 %i.gc, -65
  %or.cond = icmp ult i16 %i.gd, 26
  br i1 %or.cond, label %bb.ag, label %.thread298

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ge = zext nneg i16 %i.gc to i64
  %i.gf = load i32, ptr %i.at, align 8
  %i.gg = add nsw i32 %i.gf, -1
  %i.gh = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.gg) #13
  %7 = add nuw nsw i64 %i.ge, 4294967231
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %8
  store ptr %i.gh, ptr %9, align 8
  br label %.thread298

bb.ah:                                            ; preds = %bb.af
  %i.gi = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not193 = icmp eq i8 %i.gi, 0
  br i1 %.not193, label %.thread300, label %bb.ai

.thread300:                                       ; preds = %bb.ah
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread298

bb.ai:                                            ; preds = %bb.ah
  %i.gj = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.gk = icmp slt i16 %i.gj, 0
  %i.gl = ashr i16 %i.gj, 5
  %i.gm = sext i16 %i.gl to i32
  %i.gn = load i32, ptr %i.fu, align 4
  %i.go = select i1 %i.gk, i32 %i.gn, i32 %i.gm
  %i.gp = icmp ugt i32 %i.go, 1
  br i1 %i.gp, label %bb.aj, label %.thread464

.thread464:                                       ; preds = %bb.ai
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread298

bb.aj:                                            ; preds = %bb.ai
  %i.gq = and i16 %i.gj, 2
  %.not.i.i.i226 = icmp eq i16 %i.gq, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = select i1 %.not.i.i.i226, ptr %i.gt, ptr %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.gw = load i16, ptr %i.gv, align 2            ; 2 uses
  %i.gx = add i16 %i.gw, -65
  %spec.select = icmp ult i16 %i.gx, 26
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %spec.select, label %bb.ak, label %.thread298

bb.ak:                                            ; preds = %bb.aj
  %i.gy = load i32, ptr %i.at, align 8
  %i.gz = add nsw i32 %i.gy, -1
  %i.ha = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.gz) #13
  %i.hb = zext nneg i16 %i.gw to i64
  %i.hc = getelementptr [8 x i8], ptr %i.g, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 -520
  store ptr %i.ha, ptr %i.hd, align 8
  br label %.thread298

.thread298:                                       ; preds = %.thread464, %bb.af, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %.thread300, %bb.aj, %bb.ak, %bb.ag
  %.1147 = phi i8 [ %.0146382, %bb.ag ], [ 1, %bb.ak ], [ %.0146382, %bb.aj ], [ %.0146382, %.thread300 ], [ %.0146382, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.0146382, %bb.af ], [ %.0146382, %.thread464 ] ; 2 uses
  %i.he = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not194 = icmp eq i8 %i.he, 0
  br i1 %.not194, label %bb.al, label %.critedge

bb.al:                                            ; preds = %.thread298
  %i.hf = load ptr, ptr %i.k, align 8
  call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.hf, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.hg = load i32, ptr %1, align 4
  %i.hh = icmp slt i32 %i.hg, 1
  br i1 %i.hh, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.al
  %i.hi = load i32, ptr %i.av, align 8            ; 2 uses
  %.not2526.i = icmp sgt i32 %i.hi, 0
  br i1 %.not2526.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i, label %.critedge

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i: ; preds = %.preheader.i
  %i.hj = load ptr, ptr %i.aw, align 8
  %wide.trip.count.i = zext nneg i32 %i.hi to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

_ZNK6icu_789UVector6410elementAtiEi.exit.i:       ; preds = %bb.an, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.an ] ; 2 uses
  %.01828.i = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %.220.i, %bb.an ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = lshr i64 %i.hl, 32
  %i.hn = trunc nuw i64 %i.hm to i32
  %i.ho = icmp ult i32 %.0129, %i.hn
  br i1 %i.ho, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.not24.i = icmp eq i8 %.01828.i, 0
  br i1 %.not24.i, label %bb.an, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit

bb.an:                                            ; preds = %bb.am, %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.220.i = phi i8 [ %.01828.i, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ 1, %bb.am ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i, !llvm.loop !18

_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit: ; preds = %bb.am
  %i.hp = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.hq = icmp slt i16 %i.hp, 0
  %i.hr = ashr i16 %i.hp, 5
  %i.hs = sext i16 %i.hr to i32
  %i.ht = load i32, ptr %i.fu, align 4
  %i.hu = select i1 %i.hq, i32 %i.ht, i32 %i.hs   ; 2 uses
  %.not = icmp eq i32 %i.hu, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit230.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit230

_ZNK6icu_7813UnicodeString6charAtEi.exit230.thread: ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread318

_ZNK6icu_7813UnicodeString6charAtEi.exit230:      ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit
  %i.hv = and i16 %i.hp, 2
  %.not.i.i.i229 = icmp eq i16 %i.hv, 0
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = select i1 %.not.i.i.i229, ptr %i.hy, ptr %i.hw
  %i.ia = sext i32 %i.hu to i64
  %i.ib = getelementptr [2 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 -2
  %i.id = load i16, ptr %i.ic, align 2
  %.not196 = icmp eq i16 %i.id, -1
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %.not196, label %.thread318, label %bb.ao

bb.ao:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit230
  %i.ie = load i32, ptr %i.at, align 8
  %i.if = add nsw i32 %i.ie, -2                   ; 2 uses
  %i.ig = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.if) #13 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 136
  %i.ii = load i32, ptr %i.ih, align 8
  %.not197376 = icmp eq i32 %i.ii, 0
  br i1 %.not197376, label %.lr.ph, label %.thread318

.lr.ph:                                           ; preds = %bb.ao, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit243
  %i.ij = phi ptr [ %i.jj, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit243 ], [ %i.ig, %bb.ao ] ; 3 uses
  %.0156377 = phi i32 [ %i.ji, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit243 ], [ %i.if, %bb.ao ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 144
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.ap, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit243

bb.ap:                                            ; preds = %.lr.ph
  %i.in = load ptr, ptr %i.k, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.in, ptr noundef nonnull align 8 dereferenceable(64) %i.io, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.ip = load i32, ptr %1, align 4
  %i.iq = icmp slt i32 %i.ip, 1
  br i1 %i.iq, label %.preheader.i232, label %.loopexit366

.preheader.i232:                                  ; preds = %bb.ap
  %i.ir = load i32, ptr %i.av, align 8            ; 2 uses
  %.not2526.i233 = icmp sgt i32 %i.ir, 0
  br i1 %.not2526.i233, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234, label %.loopexit366

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234: ; preds = %.preheader.i232
  %i.is = load ptr, ptr %i.aw, align 8
  %wide.trip.count.i235 = zext nneg i32 %i.ir to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i236

_ZNK6icu_789UVector6410elementAtiEi.exit.i236:    ; preds = %bb.ar, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234
  %indvars.iv.i237 = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234 ], [ %indvars.iv.next.i240, %bb.ar ] ; 2 uses
  %.01828.i238 = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234 ], [ %.220.i239, %bb.ar ] ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i237
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = lshr i64 %i.iu, 32
  %i.iw = trunc nuw i64 %i.iv to i32
  %i.ix = icmp ult i32 %.0129, %i.iw
  br i1 %i.ix, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i236
  %.not24.i242 = icmp eq i8 %.01828.i238, 0
  br i1 %.not24.i242, label %bb.ar, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit243

bb.ar:                                            ; preds = %bb.aq, %_ZNK6icu_789UVector6410elementAtiEi.exit.i236
  %.220.i239 = phi i8 [ %.01828.i238, %_ZNK6icu_789UVector6410elementAtiEi.exit.i236 ], [ 1, %bb.aq ]
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i237, 1 ; 2 uses
  %exitcond.not.i241 = icmp eq i64 %indvars.iv.next.i240, %wide.trip.count.i235
  br i1 %exitcond.not.i241, label %.loopexit366, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i236, !llvm.loop !18

.loopexit366:                                     ; preds = %bb.ap, %.preheader.i232, %bb.ar
  %i.iy = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 3 uses
  %.not199 = icmp eq ptr %i.iy, null
  br i1 %.not199, label %.critedge216, label %.critedge218

.critedge216:                                     ; preds = %.loopexit366
  %i.iz = load i32, ptr %1, align 4
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %.critedge216
  %i.jb = load ptr, ptr %4, align 8               ; 3 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jd = load ptr, ptr %i.jb, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(168) %i.jb) #13, !inline_history !16
  br label %bb.au

end_hunk_0
