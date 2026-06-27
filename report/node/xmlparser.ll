inline.NumInlined: 123
inline.NumDeleted: 43
begin_hunk_0_@_ZN6icu_7810UXMLParser9parseFileEPKcR10UErrorCode:bb.a
  store i16 %storemerge.i, ptr %i.e, align 8
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  %i.au = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.at, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not90 = icmp eq i8 %i.au, 0
  br i1 %.not90, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = call noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.aw = load i16, ptr %i.e, align 8             ; 2 uses
  %i.ax = icmp slt i16 %i.aw, 0
  %i.ay = ashr i16 %i.aw, 5
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = select i1 %i.ax, i32 %i.bb, i32 %i.az
  %i.bd = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, i16 noundef zeroext 108, i32 noundef 0, i32 noundef %i.bc) #9
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 5 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %3) #9 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.n

bb.n:                                             ; preds = %bb.aa, %bb.m
  %.079 = phi ptr [ %i.m, %bb.m ], [ %.180, %bb.aa ] ; 3 uses
  %.0 = phi i32 [ %i.be, %bb.m ], [ %.1, %bb.aa ] ; 3 uses
  %i.bp = icmp slt i32 %.0, %i.av
  br i1 %i.bp, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bq = sext i32 %.0 to i64
  %i.br = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.bf, i64 noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not91 = icmp eq i8 %i.br, 0
  br i1 %.not91, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZNK6icu_7812RegexMatcher5groupEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(336) %i.bf, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZNK6icu_7812RegexMatcher5groupEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(336) %i.bf, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.bs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #9 ; 0 uses
  %i.bt = load i16, ptr %i.bh, align 8            ; 5 uses
  %i.bu = icmp slt i16 %i.bt, 0
  %i.bv = ashr i16 %i.bt, 5
  %i.bw = sext i16 %i.bv to i32
  %i.bx = load i32, ptr %i.bi, align 4
  %i.by = select i1 %i.bu, i32 %i.bx, i32 %i.bw   ; 3 uses
  %i.bz = add nsw i32 %i.by, -1                   ; 3 uses
  %i.ca = trunc i16 %i.bt to i1
  %i.cb = icmp eq i32 %i.bz, 0
  %or.cond.i = and i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.r:                                             ; preds = %bb.p
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp slt i32 %i.by, 1025
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = and i16 %i.bt, 31
  %.tr.i.i.i = trunc i32 %i.bz to i16
  %i.ce = shl i16 %.tr.i.i.i, 5
  %i.cf = or disjoint i16 %i.ce, %i.cd
  store i16 %i.cf, ptr %i.bh, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.u:                                             ; preds = %bb.s
  %i.cg = or i16 %i.bt, -32
  store i16 %i.cg, ptr %i.bh, align 8
  store i32 %i.bz, ptr %i.bi, align 4
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.q, %bb.r, %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr @.str.15, ptr %7, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1, ptr noundef nonnull %7, i32 noundef 8) #9
  %i.ch = load i16, ptr %i.bj, align 8            ; 3 uses
  %i.ci = and i16 %i.ch, 1
  %.not.i96 = icmp eq i16 %i.ci, 0
  br i1 %.not.i96, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit
  %i.cj = load i16, ptr %i.bk, align 8
  %i.ck = trunc i16 %i.cj to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.w:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit
  %i.cl = icmp slt i16 %i.ch, 0
  %i.cm = ashr i16 %i.ch, 5
  %i.cn = sext i16 %i.cm to i32
  %i.co = load i32, ptr %i.bl, align 4
  %i.cp = select i1 %i.cl, i32 %i.co, i32 %i.cn   ; 2 uses
  %i.cq = load i16, ptr %i.bk, align 8            ; 4 uses
  %i.cr = icmp slt i16 %i.cq, 0
  %i.cs = ashr i16 %i.cq, 5
  %i.ct = sext i16 %i.cs to i32
  %i.cu = load i32, ptr %i.bm, align 4
  %i.cv = select i1 %i.cr, i32 %i.cu, i32 %i.ct
  %i.cw = and i16 %i.cq, 1
  %.not9.i = icmp eq i16 %i.cw, 0
  %i.cx = icmp eq i32 %i.cp, %i.cv
  %or.cond.i98 = and i1 %.not9.i, %i.cx
  br i1 %or.cond.i98, label %bb.x, label %.critedge101

bb.x:                                             ; preds = %bb.w
  %i.cy = and i16 %i.cq, 2
  %.not.i.i.i = icmp eq i16 %i.cy, 0
  %i.cz = load ptr, ptr %i.bo, align 8
  %i.da = select i1 %.not.i.i.i, ptr %i.cz, ptr %i.bn
  %i.db = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.da, i32 noundef %i.cp) #9
  %i.dc = icmp ne i8 %i.db, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.v, %bb.x
  %.0.i97 = phi i1 [ %i.ck, %bb.v ], [ %i.dc, %bb.x ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #9
  %i.dd = load ptr, ptr %7, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.dd) #9, !srcloc !6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br i1 %.0.i97, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.de = call noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPcj(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull %i.b, i32 noundef 100) #9 ; 0 uses
  br label %bb.aa

.critedge101:                                     ; preds = %bb.w
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #9
  %i.df = load ptr, ptr %7, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.df) #9, !srcloc !6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.z

bb.z:                                             ; preds = %.critedge101, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.dg = call noundef i32 @_ZNK6icu_7812RegexMatcher3endEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.bf, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.180 = phi ptr [ %i.b, %bb.y ], [ %.079, %bb.z ] ; 2 uses
  %i.dh = phi i1 [ false, %bb.y ], [ true, %bb.z ]
  %.1 = phi i32 [ %.0, %bb.y ], [ %i.dg, %bb.z ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br i1 %i.dh, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.n, %bb.o
  %.2 = phi ptr [ %.180, %bb.aa ], [ %.079, %bb.o ], [ %.079, %bb.n ] ; 2 uses
  %i.di = icmp eq ptr %.2, null
  %spec.store.select = select i1 %i.di, ptr @.str.16, ptr %.2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %.critedge
  %spec.store.select.sink = phi ptr [ %spec.store.select, %.critedge ], [ %i.m, %bb.f ]
  %i.dj = call ptr @ucnv_open_78(ptr noundef nonnull %spec.store.select.sink, ptr noundef nonnull %2) #9
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.l
  %.077 = phi ptr [ null, %bb.l ], [ %i.dj, %.sink.split ] ; 4 uses
  %i.dk = load i32, ptr %2, align 4
  %i.dl = icmp slt i32 %i.dk, 1
  br i1 %i.dl, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.dm = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.076) #9 ; 0 uses
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0) #9
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store ptr %i.a, ptr %i.c, align 8
  %i.do = load i16, ptr %i.e, align 8
  %i.dp = load i32, ptr %i.dn, align 4
  %i.dq = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.076) #9 ; 3 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.dq) #9, !srcloc !5
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.ag
  %i.dt = phi ptr [ %i.dq, %.lr.ph.lr.ph ], [ %i.fm, %bb.ag ]
  %i.du = phi i32 [ %i.dp, %.lr.ph.lr.ph ], [ %i.fl, %bb.ag ]
  %i.dv = phi i16 [ %i.do, %.lr.ph.lr.ph ], [ %i.fk, %bb.ag ]
  %.071107 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %spec.select, %bb.ag ]
  %.073106 = phi i32 [ %.076, %.lr.ph.lr.ph ], [ %.174103, %bb.ag ]
  %.075105 = phi i32 [ %i.j, %.lr.ph.lr.ph ], [ %i.fi, %bb.ag ]
  %i.dw = sext i32 %.075105 to i64
  %i.dx = getelementptr inbounds i8, ptr %i.a, i64 %i.dw
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ag, %bb.ae, %bb.ac
  store i32 7, ptr %2, align 4
  br label %.loopexit

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %i.dy = phi ptr [ %i.dt, %.lr.ph ], [ %i.ff, %bb.ae ] ; 3 uses
  %i.dz = phi i32 [ %i.du, %.lr.ph ], [ %i.fe, %bb.ae ]
  %i.ea = phi i16 [ %i.dv, %.lr.ph ], [ %i.ey, %bb.ae ] ; 2 uses
  %.174103 = phi i32 [ %.073106, %.lr.ph ], [ %i.fd, %bb.ae ] ; 2 uses
  %i.eb = icmp slt i16 %i.ea, 0
  %i.ec = ashr i16 %i.ea, 5
  %i.ed = sext i16 %i.ec to i32
  %i.ee = select i1 %i.eb, i32 %i.dz, i32 %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.ef
  store ptr %i.eg, ptr %i.d, align 8
  %i.eh = load i16, ptr %i.e, align 8
  %i.ei = and i16 %i.eh, 2
  %.not.i99 = icmp eq i16 %i.ei, 0
  %i.ej = load i32, ptr %i.ds, align 8
  %i.ek = sext i32 %i.ej to i64
  %i.el = select i1 %.not.i99, i64 %i.ek, i64 27
  %i.em = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.el
  call void @ucnv_toUnicode_78(ptr noundef %.077, ptr noundef nonnull %i.d, ptr noundef nonnull %i.em, ptr noundef nonnull %i.c, ptr noundef nonnull %i.dx, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull %2) #9
  %i.en = load i32, ptr %2, align 4
  %i.eo = icmp sgt i32 %i.en, 0
  %i.ep = load ptr, ptr %i.d, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.dy to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = lshr exact i64 %i.es, 1
  %i.eu = trunc i64 %i.et to i32
  %i.ev = select i1 %i.eo, i32 0, i32 %i.eu
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.ev) #9
  %i.ew = load i32, ptr %2, align 4               ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 15
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %2, align 4
  %i.ey = load i16, ptr %i.e, align 8             ; 2 uses
  %i.ez = and i16 %i.ey, 2
  %.not.i100 = icmp eq i16 %i.ez, 0
  %i.fa = load i32, ptr %i.ds, align 8
  %i.fb = mul nsw i32 %i.fa, 3
  %i.fc = sdiv i32 %i.fb, 2
  %i.fd = select i1 %.not.i100, i32 %i.fc, i32 40 ; 2 uses
  %i.fe = load i32, ptr %i.dn, align 4
  %i.ff = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.fd) #9 ; 3 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ff) #9, !srcloc !5
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %._crit_edge, label %bb.ad, !llvm.loop !7

bb.af:                                            ; preds = %bb.ad
  %i.fh = icmp sgt i32 %i.ew, 0
  %8 = zext i1 %i.fh to i8
  %9 = or i8 %.071107, %8
  %or.cond3.not = icmp eq i8 %9, 0
  br i1 %or.cond3.not, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.fi = call i32 @T_FileStream_read(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 4096) #9 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  %spec.select = zext i1 %i.fj to i8
  store ptr %i.a, ptr %i.c, align 8
  %i.fk = load i16, ptr %i.e, align 8
  %i.fl = load i32, ptr %i.dn, align 4
  %i.fm = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.174103) #9 ; 3 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.fm) #9, !srcloc !5
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %._crit_edge, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %bb.af, %bb.ab, %bb.g, %._crit_edge, %bb.k, %bb.i
  %.178 = phi ptr [ %.077, %bb.ab ], [ %.077, %._crit_edge ], [ null, %bb.k ], [ %i.q, %bb.g ], [ %i.q, %bb.i ], [ %.077, %bb.af ]
  call void @ucnv_close_78(ptr noundef %.178) #9
  call void @T_FileStream_close(ptr noundef nonnull %i.h) #9
  %i.fo = load i32, ptr %2, align 4
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.fq = call noundef ptr @_ZN6icu_7810UXMLParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %bb.a, %bb.ah, %bb.c
  %.069 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.fq, %bb.ah ], [ null, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.069
}

declare ptr @T_FileStream_open(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @T_FileStream_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @T_FileStream_size(ptr noundef) local_unnamed_addr #3

declare ptr @ucnv_detectUnicodeSignature_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ucnv_open_78(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #3

declare void @ucnv_toUnicode_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #3

declare void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #3

declare void @ucnv_close_78(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336), i64 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZNK6icu_7812RegexMatcher5groupEiR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(336), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) unnamed_addr #3

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPcj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6icu_7812RegexMatcher3endEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @T_FileStream_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7810UXMLParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 25 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 3 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 5 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 4 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 6 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.u = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.w = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %i.y = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %i.aa = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4040
  %i.ac = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  %i.ad = load i32, ptr %i.c, align 8
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.d, i64 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not75 = icmp eq i8 %i.af, 0
  br i1 %.not75, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  store i32 %i.ag, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6icu_7810UXMLParser9parseMiscER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ah = load i32, ptr %i.c, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.j, i64 noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not76 = icmp eq i8 %i.aj, 0
  br i1 %.not76, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  store i32 %i.ak, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6icu_7810UXMLParser9parseMiscER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.al = load i32, ptr %i.c, align 8
  %i.am = sext i32 %i.al to i64
  %i.an = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.r, i64 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not77 = icmp eq i8 %i.an, 0
  br i1 %.not77, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call noundef ptr @_ZN6icu_7810UXMLParser13createElementERNS_12RegexMatcherER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(336) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ap = tail call noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  store i32 %i.ap, ptr %i.c, align 8
  br label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit106

bb.h:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.c, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.n, i64 noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.au = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812RegexMatcher5inputEv(ptr noundef nonnull align 8 dereferenceable(336) %i.d) #9 ; 3 uses
  %i.av = load i32, ptr %i.c, align 8
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i, label %._crit_edge.i

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i:    ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i
  %.011.i = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i ], [ %i.bf, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i ]
  %.0910.i = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i ], [ %i.bg, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i ]
  %i.ay = add nuw nsw i32 %.011.i, 1
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.az = icmp slt i16 %.pre.i.i, 0
  %i.ba = ashr i16 %.pre.i.i, 5
  %i.bb = sext i16 %i.ba to i32
  %i.bc = load i32, ptr %i.ax, align 4
  %i.bd = select i1 %i.az, i32 %i.bc, i32 %i.bb   ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  %i.be = sub nsw i32 %i.bd, %spec.select.i.i
  %i.bf = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.au, i16 noundef zeroext 10, i32 noundef %spec.select.i.i, i32 noundef %i.be) #9 ; 3 uses
  %i.bg = add nuw nsw i32 %.0910.i, 1             ; 2 uses
  %i.bh = load i32, ptr %i.c, align 8
  %i.bi = icmp slt i32 %i.bf, %i.bh
  %i.bj = icmp sgt i32 %i.bf, -1
  %i.bk = and i1 %i.bj, %i.bi
  br i1 %i.bk, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i, %bb.i
  %.09.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.bg, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i ]
  %i.bl = load ptr, ptr @stderr, align 8
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %.09.lcssa.i) #10 ; 0 uses
  %i.bn = load i32, ptr %2, align 4
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  store i32 9, ptr %2, align 4
  br label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.bp = tail call noundef ptr @_ZN6icu_7810UXMLParser13createElementERNS_12RegexMatcherER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(336) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4464 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4488
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
end_hunk_0
