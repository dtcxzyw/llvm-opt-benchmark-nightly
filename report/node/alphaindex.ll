inline.NumInlined: 328
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode:bb.a
  %i.y = load i32, ptr %1, align 4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.thread496, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 7, ptr %1, align 4
  br label %.thread496

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit: ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(400) %0) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex6BucketE, i64 16), ptr %i.w, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ad) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.ae) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store i32 -1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr null, ptr %i.ak, align 8
  store ptr %i.w, ptr %4, align 8
  %.pre403 = load i32, ptr %1, align 4
  %i.al = icmp slt i32 %.pre403, 1
  br i1 %i.al, label %bb.j, label %.thread477

bb.j:                                             ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull %i.w, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.am = load i32, ptr %1, align 4
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.k, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i16 2, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %.not202378 = icmp sgt i32 %i.ar, 0
  br i1 %.not202378, label %.lr.ph385, label %.thread347.thread

.lr.ph385:                                        ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph385, %.thread318
  %.0133383 = phi i8 [ 0, %.lr.ph385 ], [ %.4137.ph, %.thread318 ] ; 5 uses
  %.0146382 = phi i8 [ 0, %.lr.ph385 ], [ %.1147, %.thread318 ] ; 6 uses
  %.0152381 = phi i32 [ -1, %.lr.ph385 ], [ %.2154, %.thread318 ] ; 2 uses
  %.0164380 = phi ptr [ %i.ap, %.lr.ph385 ], [ %.1165, %.thread318 ] ; 3 uses
  %.0168379 = phi i32 [ 0, %.lr.ph385 ], [ %i.jr, %.thread318 ] ; 2 uses
  %i.ax = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %.0168379) #13 ; 23 uses
  %i.ay = load ptr, ptr %i.k, align 8
  %i.az = call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %.0164380, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %.preheader368.preheader, label %.critedge214

.preheader368.preheader:                          ; preds = %bb.l
  %i.bb = load ptr, ptr %i.as, align 8
  %i.bc = add nsw i32 %.0152381, 1                ; 3 uses
  %i.bd = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i32 noundef %i.bc) #13 ; 2 uses
  %i.be = load ptr, ptr %i.k, align 8
  %i.bf = call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.critedge214, label %.preheader368

.preheader368:                                    ; preds = %.preheader368.preheader, %.preheader368
  %.1153 = phi i32 [ %i.bi, %.preheader368 ], [ %i.bc, %.preheader368.preheader ]
  %i.bh = load ptr, ptr %i.as, align 8
  %i.bi = add nsw i32 %.1153, 1                   ; 4 uses
  %i.bj = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i32 noundef %i.bi) #13 ; 3 uses
  %i.bk = load ptr, ptr %i.k, align 8
  %i.bl = call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.loopexit402, label %.preheader368, !llvm.loop !14

.loopexit402:                                     ; preds = %.preheader368
  %i.bn = load i32, ptr %i.at, align 8
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.m, label %.critedge214

bb.m:                                             ; preds = %.loopexit402
  %i.bp = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 11 uses
  %i.bq = icmp eq ptr %i.bp, null                 ; 2 uses
  br i1 %i.bq, label %.thread285, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(64) ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(400) %0) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex6BucketE, i64 16), ptr %i.bp, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %i.bu) #13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %.0164380) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  store i32 2, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  store i32 -1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  store ptr null, ptr %i.ca, align 8
  %i.cb = load i32, ptr %1, align 4
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.s, label %bb.o

.thread285:                                       ; preds = %bb.m
  %i.cd = load i32, ptr %1, align 4
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit, label %bb.o

bb.o:                                             ; preds = %.thread285, %bb.n
  %i.cf = load ptr, ptr %4, align 8               ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(168) %i.cf) #13, !inline_history !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.bp, ptr %4, align 8
  br i1 %i.bq, label %bb.r, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit

bb.r:                                             ; preds = %bb.q
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit

bb.s:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr %i.bp, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(168) %i.bp) #13, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit: ; preds = %.thread285, %bb.q, %bb.r, %bb.s
  %i.cn = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
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
  %7 = udiv i8 %i.dk, 100
  %8 = or disjoint i8 %7, 48
  %i.ec = zext nneg i8 %8 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ec, ptr %i.c, align 2
  %i.ed = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 21123, ptr %i.b, align 2
  %i.ee = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.u
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %.pre.i.i = load i16, ptr %i.ct, align 8        ; 2 uses
  %i.ef = icmp slt i16 %.pre.i.i, 0
  %i.eg = ashr i16 %.pre.i.i, 5
  %i.eh = sext i16 %i.eg to i32
  %i.ei = load i32, ptr %i.cy, align 4
  %i.ej = select i1 %i.ef, i32 %i.ei, i32 %i.eh   ; 2 uses
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.ej, i32 1) ; 2 uses
  %i.ek = load i16, ptr %i.ao, align 8            ; 2 uses
  %i.el = icmp slt i16 %i.ek, 0
  %i.em = ashr i16 %i.ek, 5
  %i.en = sext i16 %i.em to i32
  %i.eo = load i32, ptr %i.au, align 4
  %i.ep = select i1 %i.el, i32 %i.eo, i32 %i.en
  %i.eq = sub nsw i32 %i.ej, %spec.select.i.i
  %i.er = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef %spec.select.i.i, i32 noundef %i.eq) #13
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.y, %bb.t
  %.1.i = phi ptr [ %i.ax, %bb.t ], [ %i.ee, %bb.y ], [ %i.er, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex6BucketE, i64 16), ptr %i.cq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.es, ptr noundef nonnull align 8 dereferenceable(64) %.1.i) #13
  %i.et = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.et, ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  store i32 0, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 144
  store ptr null, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cq, i64 152
  store i32 -1, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cq, i64 160
  store ptr null, ptr %i.ex, align 8
  %i.ey = load i32, ptr %1, align 4
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ae, label %bb.aa

.thread287:                                       ; preds = %.critedge214
  %i.fa = load i32, ptr %1, align 4
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224, label %bb.aa

bb.aa:                                            ; preds = %.thread287, %bb.z
  %i.fc = load ptr, ptr %4, align 8               ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = load ptr, ptr %i.fc, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(168) %i.fc) #13, !inline_history !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.cq, ptr %4, align 8
  br i1 %i.cr, label %bb.ad, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224

bb.ad:                                            ; preds = %bb.ac
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224

bb.ae:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %i.cq, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(168) %i.cq) #13, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224: ; preds = %.thread287, %bb.ac, %bb.ad, %bb.ae
  %i.fk = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.fk, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.fl = load i32, ptr %1, align 4
  %i.fm = icmp slt i32 %i.fl, 1
  br i1 %i.fm, label %bb.af, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.af:                                            ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit224
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.fo = load i16, ptr %i.fn, align 8            ; 3 uses
  %i.fp = icmp slt i16 %i.fo, 0
  %i.fq = ashr i16 %i.fo, 5
  %i.fr = sext i16 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = select i1 %i.fp, i32 %i.ft, i32 %i.fr
  switch i32 %i.fu, label %.thread298 [
    i32 1, label %_ZNK6icu_7813UnicodeString6charAtEi.exit
    i32 2, label %bb.ah
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.af
  %i.fv = and i16 %i.fo, 2
  %.not.i.i.i = icmp eq i16 %i.fv, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = select i1 %.not.i.i.i, ptr %i.fy, ptr %i.fw
  %i.ga = load i16, ptr %i.fz, align 2            ; 2 uses
  %i.gb = add i16 %i.ga, -65
  %or.cond = icmp ult i16 %i.gb, 26
  br i1 %or.cond, label %bb.ag, label %.thread298

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.gc = zext nneg i16 %i.ga to i64
  %i.gd = load i32, ptr %i.at, align 8
  %i.ge = add nsw i32 %i.gd, -1
  %i.gf = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.ge) #13
  %i.gg = add nuw nsw i64 %i.gc, 4294967231
  %i.gh = and i64 %i.gg, 4294967295
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gh
  store ptr %i.gf, ptr %i.gi, align 8
  br label %.thread298

bb.ah:                                            ; preds = %bb.af
  %i.gj = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not193 = icmp eq i8 %i.gj, 0
  br i1 %.not193, label %.thread300, label %bb.ai

.thread300:                                       ; preds = %bb.ah
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread298

bb.ai:                                            ; preds = %bb.ah
  %i.gk = load i16, ptr %i.fn, align 8            ; 3 uses
  %i.gl = icmp slt i16 %i.gk, 0
  %i.gm = ashr i16 %i.gk, 5
  %i.gn = sext i16 %i.gm to i32
  %i.go = load i32, ptr %i.fs, align 4
  %i.gp = select i1 %i.gl, i32 %i.go, i32 %i.gn
  %i.gq = icmp ugt i32 %i.gp, 1
  br i1 %i.gq, label %bb.aj, label %.thread464

.thread464:                                       ; preds = %bb.ai
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread298

bb.aj:                                            ; preds = %bb.ai
  %i.gr = and i16 %i.gk, 2
  %.not.i.i.i226 = icmp eq i16 %i.gr, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = select i1 %.not.i.i.i226, ptr %i.gu, ptr %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.gx = load i16, ptr %i.gw, align 2            ; 2 uses
  %i.gy = add i16 %i.gx, -65
  %spec.select = icmp ult i16 %i.gy, 26
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %spec.select, label %bb.ak, label %.thread298

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load i32, ptr %i.at, align 8
  %i.ha = add nsw i32 %i.gz, -1
  %i.hb = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.ha) #13
  %i.hc = zext nneg i16 %i.gx to i64
  %i.hd = getelementptr [8 x i8], ptr %i.g, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -520
  store ptr %i.hb, ptr %i.he, align 8
  br label %.thread298

.thread298:                                       ; preds = %.thread464, %bb.af, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %.thread300, %bb.aj, %bb.ak, %bb.ag
  %.1147 = phi i8 [ %.0146382, %bb.ag ], [ 1, %bb.ak ], [ %.0146382, %bb.aj ], [ %.0146382, %.thread300 ], [ %.0146382, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.0146382, %bb.af ], [ %.0146382, %.thread464 ] ; 2 uses
  %i.hf = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not194 = icmp eq i8 %i.hf, 0
  br i1 %.not194, label %bb.al, label %.critedge

bb.al:                                            ; preds = %.thread298
  %i.hg = load ptr, ptr %i.k, align 8
  call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.hg, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.hh = load i32, ptr %1, align 4
  %i.hi = icmp slt i32 %i.hh, 1
  br i1 %i.hi, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.al
  %i.hj = load i32, ptr %i.av, align 8            ; 2 uses
  %.not2526.i = icmp sgt i32 %i.hj, 0
  br i1 %.not2526.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i, label %.critedge

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i: ; preds = %.preheader.i
  %i.hk = load ptr, ptr %i.aw, align 8
  %wide.trip.count.i = zext nneg i32 %i.hj to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

_ZNK6icu_789UVector6410elementAtiEi.exit.i:       ; preds = %bb.an, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.an ] ; 2 uses
  %.01828.i = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %.220.i, %bb.an ] ; 2 uses
end_hunk_0
