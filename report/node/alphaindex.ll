inline.NumInlined: 328
inline.NumDeleted: 99
begin_hunk_0_@_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode:bb.a
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

.thread288:                                       ; preds = %.critedge214
  %i.fc = load i32, ptr %1, align 4
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224, label %bb.aa

bb.aa:                                            ; preds = %.thread288, %bb.z
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

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224: ; preds = %.thread288, %bb.ac, %bb.ad, %bb.ae
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
  switch i32 %i.fw, label %.thread299 [
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
  br i1 %or.cond, label %bb.ag, label %.thread299

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ge = zext nneg i16 %i.gc to i64
  %i.gf = load i32, ptr %i.at, align 8
  %i.gg = add nsw i32 %i.gf, -1
  %i.gh = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.gg) #13
  %i.gi = add nuw nsw i64 %i.ge, 4294967231
  %i.gj = and i64 %i.gi, 4294967295
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gj
  store ptr %i.gh, ptr %i.gk, align 8
  br label %.thread299

bb.ah:                                            ; preds = %bb.af
  %i.gl = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not193 = icmp eq i8 %i.gl, 0
  br i1 %.not193, label %.thread301, label %bb.ai

.thread301:                                       ; preds = %bb.ah
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread299

bb.ai:                                            ; preds = %bb.ah
  %i.gm = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.gn = icmp slt i16 %i.gm, 0
  %i.go = ashr i16 %i.gm, 5
  %i.gp = sext i16 %i.go to i32
  %i.gq = load i32, ptr %i.fu, align 4
  %i.gr = select i1 %i.gn, i32 %i.gq, i32 %i.gp
  %i.gs = icmp ugt i32 %i.gr, 1
  br i1 %i.gs, label %bb.aj, label %.thread465

.thread465:                                       ; preds = %bb.ai
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread299

bb.aj:                                            ; preds = %bb.ai
  %i.gt = and i16 %i.gm, 2
  %.not.i.i.i226 = icmp eq i16 %i.gt, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = select i1 %.not.i.i.i226, ptr %i.gw, ptr %i.gu
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.gz = load i16, ptr %i.gy, align 2            ; 2 uses
  %i.ha = add i16 %i.gz, -65
  %spec.select = icmp ult i16 %i.ha, 26
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %spec.select, label %bb.ak, label %.thread299

bb.ak:                                            ; preds = %bb.aj
  %i.hb = load i32, ptr %i.at, align 8
  %i.hc = add nsw i32 %i.hb, -1
  %i.hd = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.hc) #13
  %i.he = zext nneg i16 %i.gz to i64
  %i.hf = getelementptr [8 x i8], ptr %i.g, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 -520
  store ptr %i.hd, ptr %i.hg, align 8
  br label %.thread299

.thread299:                                       ; preds = %.thread465, %bb.af, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %.thread301, %bb.aj, %bb.ak, %bb.ag
  %.1147 = phi i8 [ %.0146383, %bb.ag ], [ 1, %bb.ak ], [ %.0146383, %bb.aj ], [ %.0146383, %.thread301 ], [ %.0146383, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.0146383, %bb.af ], [ %.0146383, %.thread465 ] ; 2 uses
  %i.hh = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not194 = icmp eq i8 %i.hh, 0
  br i1 %.not194, label %bb.al, label %.critedge

bb.al:                                            ; preds = %.thread299
  %i.hi = load ptr, ptr %i.k, align 8
  call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.hi, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.hj = load i32, ptr %1, align 4
  %i.hk = icmp slt i32 %i.hj, 1
  br i1 %i.hk, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.al
  %i.hl = load i32, ptr %i.av, align 8            ; 2 uses
  %.not2527.i = icmp sgt i32 %i.hl, 0
  br i1 %.not2527.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i, label %.critedge

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i: ; preds = %.preheader.i
  %i.hm = load ptr, ptr %i.aw, align 8
  %wide.trip.count.i = zext nneg i32 %i.hl to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

_ZNK6icu_789UVector6410elementAtiEi.exit.i:       ; preds = %bb.am, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.am ] ; 2 uses
  %.01829.i = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %.220.i, %bb.am ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = lshr i64 %i.ho, 32
  %i.hq = trunc nuw i64 %i.hp to i32
  %7 = icmp ult i32 %.0129, %i.hq
  br i1 %7, label %8, label %bb.am

8:                                                ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.not24.i = icmp eq i8 %.01829.i, 0
  br i1 %.not24.i, label %bb.am, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit

bb.am:                                            ; preds = %8, %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.220.i = phi i8 [ %.01829.i, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ 1, %8 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i, !llvm.loop !18

_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit: ; preds = %8
  %i.hr = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.hs = icmp slt i16 %i.hr, 0
  %i.ht = ashr i16 %i.hr, 5
  %i.hu = sext i16 %i.ht to i32
  %i.hv = load i32, ptr %i.fu, align 4
  %i.hw = select i1 %i.hs, i32 %i.hv, i32 %i.hu   ; 2 uses
  %.not = icmp eq i32 %i.hw, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit230.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit230

_ZNK6icu_7813UnicodeString6charAtEi.exit230.thread: ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread319

_ZNK6icu_7813UnicodeString6charAtEi.exit230:      ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit
  %i.hx = and i16 %i.hr, 2
  %.not.i.i.i229 = icmp eq i16 %i.hx, 0
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = select i1 %.not.i.i.i229, ptr %i.ia, ptr %i.hy
  %i.ic = sext i32 %i.hw to i64
  %i.id = getelementptr [2 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 -2
  %i.if = load i16, ptr %i.ie, align 2
  %.not196 = icmp eq i16 %i.if, -1
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %.not196, label %.thread319, label %bb.an

bb.an:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit230
  %i.ig = load i32, ptr %i.at, align 8
  %i.ih = add nsw i32 %i.ig, -2                   ; 2 uses
  %i.ii = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.ih) #13 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 136
  %i.ik = load i32, ptr %i.ij, align 8
  %.not197377 = icmp eq i32 %i.ik, 0
  br i1 %.not197377, label %.lr.ph, label %.thread319

.lr.ph:                                           ; preds = %bb.an, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244
  %i.il = phi ptr [ %i.jk, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244 ], [ %i.ii, %bb.an ] ; 3 uses
  %.0156378 = phi i32 [ %i.jj, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244 ], [ %i.ih, %bb.an ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 144
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.ao, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244

bb.ao:                                            ; preds = %.lr.ph
  %i.ip = load ptr, ptr %i.k, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.ip, ptr noundef nonnull align 8 dereferenceable(64) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.ir = load i32, ptr %1, align 4
  %i.is = icmp slt i32 %i.ir, 1
  br i1 %i.is, label %.preheader.i232, label %.loopexit367

.preheader.i232:                                  ; preds = %bb.ao
  %i.it = load i32, ptr %i.av, align 8            ; 2 uses
  %.not2527.i233 = icmp sgt i32 %i.it, 0
  br i1 %.not2527.i233, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234, label %.loopexit367

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234: ; preds = %.preheader.i232
  %i.iu = load ptr, ptr %i.aw, align 8
  %wide.trip.count.i235 = zext nneg i32 %i.it to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i236

_ZNK6icu_789UVector6410elementAtiEi.exit.i236:    ; preds = %bb.ap, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234
  %indvars.iv.i237 = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234 ], [ %indvars.iv.next.i242, %bb.ap ] ; 2 uses
  %.01829.i238 = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234 ], [ %.220.i239, %bb.ap ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i237
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = lshr i64 %i.iw, 32
  %i.iy = trunc nuw i64 %i.ix to i32
  %9 = icmp ult i32 %.0129, %i.iy
  br i1 %9, label %10, label %bb.ap

10:                                               ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i236
  %.not24.i242 = icmp eq i8 %.01829.i238, 0
  br i1 %.not24.i242, label %bb.ap, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244

bb.ap:                                            ; preds = %10, %_ZNK6icu_789UVector6410elementAtiEi.exit.i236
  %.220.i239 = phi i8 [ %.01829.i238, %_ZNK6icu_789UVector6410elementAtiEi.exit.i236 ], [ 1, %10 ]
  %indvars.iv.next.i242 = add nuw nsw i64 %indvars.iv.i237, 1 ; 2 uses
  %exitcond.not.i243 = icmp eq i64 %indvars.iv.next.i242, %wide.trip.count.i235
  br i1 %exitcond.not.i243, label %.loopexit367, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i236, !llvm.loop !18

.loopexit367:                                     ; preds = %bb.ao, %.preheader.i232, %bb.ap
  %i.iz = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 3 uses
  %.not199 = icmp eq ptr %i.iz, null
  br i1 %.not199, label %.critedge216, label %.critedge218

.critedge216:                                     ; preds = %.loopexit367
  %i.ja = load i32, ptr %1, align 4
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.critedge216
  %i.jc = load ptr, ptr %4, align 8               ; 3 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.je = load ptr, ptr %i.jc, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(168) %i.jc) #13, !inline_history !16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store ptr null, ptr %4, align 8
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.critedge218:                                     ; preds = %.loopexit367
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 -1, ptr %i.a, align 2
  %i.jh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN6icu_7815AlphabeticIndex6BucketC2ERKNS_13UnicodeStringES4_25UAlphabeticIndexLabelType(ptr noundef nonnull align 8 dereferenceable(168) %i.iz, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.jh, i32 noundef 0)
  call void @_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.iz, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pre405.a = load i32, ptr %1, align 4
  %i.ji = icmp slt i32 %.pre405.a, 1
  br i1 %i.ji, label %bb.at, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244: ; preds = %10, %.lr.ph
  %i.jj = add nsw i32 %.0156378, -1               ; 2 uses
  %i.jk = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.jj) #13 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 136
  %i.jm = load i32, ptr %i.jl, align 8
  %.not197 = icmp eq i32 %i.jm, 0
  br i1 %.not197, label %.lr.ph, label %.thread319, !llvm.loop !19

bb.at:                                            ; preds = %.critedge218
  %i.jn = load ptr, ptr %4, align 8               ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 144
  store ptr %i.il, ptr %i.jo, align 8
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.jn, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.jp = load i32, ptr %1, align 4
  %.fr = freeze i32 %i.jp
  %i.jq = icmp slt i32 %.fr, 1
  br i1 %i.jq, label %.thread319, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.critedge:                                        ; preds = %bb.am, %.preheader.i, %bb.al, %.thread299
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread319

.thread319:                                       ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244, %bb.an, %bb.at, %_ZNK6icu_7813UnicodeString6charAtEi.exit230.thread, %.critedge, %_ZNK6icu_7813UnicodeString6charAtEi.exit230
  %.4137.ph = phi i8 [ 1, %bb.at ], [ %.0133384, %_ZNK6icu_7813UnicodeString6charAtEi.exit230.thread ], [ %.0133384, %_ZNK6icu_7813UnicodeString6charAtEi.exit230 ], [ %.0133384, %.critedge ], [ %.0133384, %bb.an ], [ %.0133384, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit244 ] ; 2 uses
  %i.jr = add nuw nsw i32 %.0168380, 1            ; 2 uses
  %i.js = load i32, ptr %i.aq, align 8
  %.not202 = icmp slt i32 %i.jr, %i.js
  br i1 %.not202, label %bb.l, label %.thread348, !llvm.loop !20

.thread348:                                       ; preds = %.thread319
  %.pre406.a = load i32, ptr %1, align 4
  %i.jt = icmp slt i32 %.pre406.a, 1
  %i.ju = icmp eq i8 %.1147, 0
  br i1 %i.jt, label %.thread348.thread, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.thread348.thread:                                ; preds = %bb.k, %.thread348
  %.0133.lcssa473 = phi i8 [ %.4137.ph, %.thread348 ], [ 0, %bb.k ] ; 2 uses
  %.0146.lcssa472 = phi i1 [ %i.ju, %.thread348 ], [ true, %bb.k ]
  %.0164.lcssa471 = phi ptr [ %.1165, %.thread348 ], [ %i.ap, %bb.k ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.jw = load i32, ptr %i.jv, align 8
  %i.jx = icmp eq i32 %i.jw, 1
  br i1 %i.jx, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.thread348.thread
  %i.jy = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #13 ; 3 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  call void @_ZN6icu_7810BucketListC2EPNS_7UVectorES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q)
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.ax:                                            ; preds = %.thread348.thread
  %i.ka = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 3 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kc = load ptr, ptr %0, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = call noundef nonnull align 8 dereferenceable(64) ptr %i.ke(ptr noundef nonnull align 8 dereferenceable(400) %0) #13
  call void @_ZN6icu_7815AlphabeticIndex6BucketC2ERKNS_13UnicodeStringES4_25UAlphabeticIndexLabelType(ptr noundef nonnull align 8 dereferenceable(168) %i.ka, ptr noundef nonnull align 8 dereferenceable(64) %i.kf, ptr noundef nonnull align 8 dereferenceable(64) %.0164.lcssa471, i32 noundef 3)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ka, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.kg = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.kg, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.kh = load i32, ptr %1, align 4
  %i.ki = icmp slt i32 %i.kh, 1
  br i1 %i.ki, label %bb.ba, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  br i1 %.0146.lcssa472, label %.loopexit.thread, label %.preheader366.preheader

.preheader366.preheader:                          ; preds = %bb.ba
  %i.kj = load ptr, ptr %i.f, align 16            ; 3 uses
  %i.kk = load ptr, ptr %i.g, align 16            ; 2 uses
  %i.kl = icmp ne ptr %i.kk, null
  %i.km = icmp ne ptr %i.kj, null
  %or.cond8 = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond8, label %bb.bb, label %.preheader366.1

bb.bb:                                            ; preds = %.preheader366.preheader
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 144
  store ptr %i.kj, ptr %i.kn, align 8
  br label %.preheader366.1

.preheader366.1:                                  ; preds = %.preheader366.preheader, %bb.bb
  %.8141 = phi i8 [ 1, %bb.bb ], [ %.0133.lcssa473, %.preheader366.preheader ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8            ; 2 uses
  %.not212.1 = icmp eq ptr %i.kp, null
  %spec.select220.1 = select i1 %.not212.1, ptr %i.kj, ptr %i.kp ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8            ; 2 uses
  %i.ks = icmp ne ptr %i.kr, null
  %i.kt = icmp ne ptr %spec.select220.1, null
  %or.cond8.1 = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %or.cond8.1, label %bb.bc, label %.preheader366.2

bb.bc:                                            ; preds = %.preheader366.1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 144
  store ptr %spec.select220.1, ptr %i.ku, align 8
  br label %.preheader366.2

.preheader366.2:                                  ; preds = %bb.bc, %.preheader366.1
  %.8141.1 = phi i8 [ 1, %bb.bc ], [ %.8141, %.preheader366.1 ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kw = load ptr, ptr %i.kv, align 16           ; 2 uses
  %.not212.2 = icmp eq ptr %i.kw, null
  %spec.select220.2 = select i1 %.not212.2, ptr %spec.select220.1, ptr %i.kw ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ky = load ptr, ptr %i.kx, align 16           ; 2 uses
  %i.kz = icmp ne ptr %i.ky, null
  %i.la = icmp ne ptr %spec.select220.2, null
  %or.cond8.2 = select i1 %i.kz, i1 %i.la, i1 false
  br i1 %or.cond8.2, label %bb.bd, label %.preheader366.3

bb.bd:                                            ; preds = %.preheader366.2
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 144
  store ptr %spec.select220.2, ptr %i.lb, align 8
  br label %.preheader366.3

.preheader366.3:                                  ; preds = %bb.bd, %.preheader366.2
  %.8141.2 = phi i8 [ 1, %bb.bd ], [ %.8141.1, %.preheader366.2 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %.not212.3 = icmp eq ptr %i.ld, null
  %spec.select220.3 = select i1 %.not212.3, ptr %spec.select220.2, ptr %i.ld ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.lf = load ptr, ptr %i.le, align 8            ; 2 uses
  %i.lg = icmp ne ptr %i.lf, null
  %i.lh = icmp ne ptr %spec.select220.3, null
  %or.cond8.3 = select i1 %i.lg, i1 %i.lh, i1 false
  br i1 %or.cond8.3, label %bb.be, label %.preheader366.4

bb.be:                                            ; preds = %.preheader366.3
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 144
  store ptr %spec.select220.3, ptr %i.li, align 8
  br label %.preheader366.4

.preheader366.4:                                  ; preds = %bb.be, %.preheader366.3
  %.8141.3 = phi i8 [ 1, %bb.be ], [ %.8141.2, %.preheader366.3 ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.lk = load ptr, ptr %i.lj, align 16           ; 2 uses
  %.not212.4 = icmp eq ptr %i.lk, null
  %spec.select220.4 = select i1 %.not212.4, ptr %spec.select220.3, ptr %i.lk ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.lm = load ptr, ptr %i.ll, align 16           ; 2 uses
  %i.ln = icmp ne ptr %i.lm, null
  %i.lo = icmp ne ptr %spec.select220.4, null
  %or.cond8.4 = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %or.cond8.4, label %bb.bf, label %.preheader366.5

bb.bf:                                            ; preds = %.preheader366.4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 144
  store ptr %spec.select220.4, ptr %i.lp, align 8
  br label %.preheader366.5

.preheader366.5:                                  ; preds = %bb.bf, %.preheader366.4
  %.8141.4 = phi i8 [ 1, %bb.bf ], [ %.8141.3, %.preheader366.4 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8            ; 2 uses
  %.not212.5 = icmp eq ptr %i.lr, null
  %spec.select220.5 = select i1 %.not212.5, ptr %spec.select220.4, ptr %i.lr ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.lt = load ptr, ptr %i.ls, align 8            ; 2 uses
  %i.lu = icmp ne ptr %i.lt, null
  %i.lv = icmp ne ptr %spec.select220.5, null
  %or.cond8.5 = select i1 %i.lu, i1 %i.lv, i1 false
  br i1 %or.cond8.5, label %bb.bg, label %.preheader366.6

bb.bg:                                            ; preds = %.preheader366.5
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 144
  store ptr %spec.select220.5, ptr %i.lw, align 8
  br label %.preheader366.6

.preheader366.6:                                  ; preds = %bb.bg, %.preheader366.5
  %.8141.5 = phi i8 [ 1, %bb.bg ], [ %.8141.4, %.preheader366.5 ]
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ly = load ptr, ptr %i.lx, align 16           ; 2 uses
  %.not212.6 = icmp eq ptr %i.ly, null
  %spec.select220.6 = select i1 %.not212.6, ptr %spec.select220.5, ptr %i.ly ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ma = load ptr, ptr %i.lz, align 16           ; 2 uses
  %i.mb = icmp ne ptr %i.ma, null
  %i.mc = icmp ne ptr %spec.select220.6, null
  %or.cond8.6 = select i1 %i.mb, i1 %i.mc, i1 false
  br i1 %or.cond8.6, label %bb.bh, label %.preheader366.7

bb.bh:                                            ; preds = %.preheader366.6
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 144
end_hunk_0
