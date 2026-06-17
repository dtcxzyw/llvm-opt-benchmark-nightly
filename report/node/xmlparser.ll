inline.NumInlined: 123
inline.NumDeleted: 43
begin_hunk_0_@_ZN6icu_7810UXMLParser9parseFileEPKcR10UErrorCode:bb.a
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
  %i.dt = phi ptr [ %i.dq, %.lr.ph.lr.ph ], [ %i.fo, %bb.ag ]
  %i.du = phi i32 [ %i.dp, %.lr.ph.lr.ph ], [ %i.fn, %bb.ag ]
  %i.dv = phi i16 [ %i.do, %.lr.ph.lr.ph ], [ %i.fm, %bb.ag ]
  %.071107 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %spec.select, %bb.ag ]
  %.073106 = phi i32 [ %.076, %.lr.ph.lr.ph ], [ %.174103, %bb.ag ]
  %.075105 = phi i32 [ %i.j, %.lr.ph.lr.ph ], [ %i.fk, %bb.ag ]
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
  %i.fi = zext i1 %i.fh to i8
  %i.fj = or i8 %.071107, %i.fi
  %or.cond3.not = icmp eq i8 %i.fj, 0
  br i1 %or.cond3.not, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.fk = call i32 @T_FileStream_read(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 4096) #9 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  %spec.select = zext i1 %i.fl to i8
  store ptr %i.a, ptr %i.c, align 8
  %i.fm = load i16, ptr %i.e, align 8
  %i.fn = load i32, ptr %i.dn, align 4
  %i.fo = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.174103) #9 ; 3 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.fo) #9, !srcloc !5
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %._crit_edge, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %bb.af, %bb.ab, %bb.g, %._crit_edge, %bb.k, %bb.i
  %.178 = phi ptr [ %.077, %bb.ab ], [ %.077, %._crit_edge ], [ null, %bb.k ], [ %i.q, %bb.g ], [ %i.q, %bb.i ], [ %.077, %bb.af ]
  call void @ucnv_close_78(ptr noundef %.178) #9
  call void @T_FileStream_close(ptr noundef nonnull %i.h) #9
  %i.fq = load i32, ptr %2, align 4
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.fs = call noundef ptr @_ZN6icu_7810UXMLParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %bb.a, %bb.ah, %bb.c
  %.069 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.fs, %bb.ah ], [ null, %.loopexit ]
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
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
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
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.k
  %.072.ph = phi ptr [ %i.bp, %bb.k ], [ %.072.ph.be, %.backedge.outer.backedge ] ; 8 uses
  %5 = getelementptr inbounds nuw i8, ptr %.072.ph, i64 168
  %6 = getelementptr inbounds nuw i8, ptr %.072.ph, i64 168
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %.thread137
  %i.bx = load i32, ptr %i.c, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.n, i64 noundef %i.by, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not78 = icmp eq i8 %i.bz, 0
  br i1 %.not78, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.backedge
  %i.ca = call noundef ptr @_ZN6icu_7810UXMLParser13createElementERNS_12RegexMatcherER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(336) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.072.ph, i64 168
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 208
  store ptr %.072.ph, ptr %i.cc, align 8
  %i.cd = load ptr, ptr %i.br, align 8
  %.not9.i = icmp eq ptr %i.cd, null
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull %.072.ph, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  br label %.backedge.outer.backedge

bb.n:                                             ; preds = %bb.l
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull %.072.ph, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  br label %.backedge.outer.backedge

bb.o:                                             ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6icu_7810UXMLParser11scanContentER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ce = load i16, ptr %i.bs, align 8            ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = ashr i16 %i.ce, 5
  %i.ch = sext i16 %i.cg to i32
  %i.ci = load i32, ptr %i.bt, align 4
  %i.cj = select i1 %i.cf, i32 %i.ci, i32 %i.ch
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cl = call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %3) #9 ; 0 uses
  %i.cm = call noundef signext i8 @_ZN6icu_7812RegexMatcher7matchesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN6icu_7810UXMLParser15replaceCharRefsERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.co = call noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.co, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cp = call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1) #9 ; 0 uses
  br label %.thread137, !llvm.loop !11

bb.s:                                             ; preds = %bb.o
  %i.cq = load i32, ptr %i.c, align 8
  %i.cr = sext i32 %i.cq to i64
  %i.cs = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.f, i64 noundef %i.cr, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not79 = icmp eq i8 %i.cs, 0
  br i1 %.not79, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = call noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  store i32 %i.ct, ptr %i.c, align 8
  br label %.thread137, !llvm.loop !11

bb.u:                                             ; preds = %bb.s
  %i.cu = load i32, ptr %i.c, align 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.l, i64 noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not80 = icmp eq i8 %i.cw, 0
  br i1 %.not80, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = call noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  store i32 %i.cx, ptr %i.c, align 8
  br label %.thread137, !llvm.loop !11

bb.w:                                             ; preds = %bb.u
  %i.cy = load i32, ptr %i.c, align 8
  %i.cz = sext i32 %i.cy to i64
  %i.da = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.p, i64 noundef %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not81 = icmp eq i8 %i.da, 0
  br i1 %.not81, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = call noundef i32 @_ZNK6icu_7812RegexMatcher3endEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.p, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  store i32 %i.db, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZNK6icu_7812RegexMatcher5groupEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(336) %i.p, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.dc = getelementptr inbounds nuw i8, ptr %.072.ph, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8            ; 5 uses
  %i.de = load i16, ptr %i.bu, align 8            ; 3 uses
  %i.df = and i16 %i.de, 1
  %.not.i.i = icmp eq i16 %i.df, 0
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load i16, ptr %i.dg, align 8
  %i.di = trunc i16 %i.dh to i1
  br i1 %i.di, label %bb.ab, label %_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.dj = icmp slt i16 %i.de, 0
  %i.dk = ashr i16 %i.de, 5
  %i.dl = sext i16 %i.dk to i32
  %i.dm = load i32, ptr %i.bv, align 4
  %i.dn = select i1 %i.dj, i32 %i.dm, i32 %i.dl   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dp = load i16, ptr %i.do, align 8            ; 4 uses
  %i.dq = icmp slt i16 %i.dp, 0
  %i.dr = ashr i16 %i.dp, 5
  %i.ds = sext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = select i1 %i.dq, i32 %i.du, i32 %i.ds
  %i.dw = and i16 %i.dp, 1
  %.not9.i.i = icmp eq i16 %i.dw, 0
  %i.dx = icmp eq i32 %i.dn, %i.dv
  %or.cond.i.i = and i1 %.not9.i.i, %i.dx
  br i1 %or.cond.i.i, label %_ZNK6icu_7813UnicodeStringneERKS0_.exit, label %_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringneERKS0_.exit:          ; preds = %bb.z
  %i.dy = and i16 %i.dp, 2
  %.not.i.i.i.i = icmp eq i16 %i.dy, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = select i1 %.not.i.i.i.i, ptr %i.eb, ptr %i.dz
  %i.ed = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.ec, i32 noundef %i.dn) #9
  %.not152 = icmp eq i8 %i.ed, 0
  br i1 %.not152, label %_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread, label %bb.ab

_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread:   ; preds = %bb.y, %bb.z, %_ZNK6icu_7813UnicodeStringneERKS0_.exit
  %i.ee = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812RegexMatcher5inputEv(ptr noundef nonnull align 8 dereferenceable(336) %i.d) #9 ; 3 uses
  %i.ef = load i32, ptr %i.c, align 8
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i89, label %._crit_edge.i87

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i89: ; preds = %_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread
  %.phi.trans.insert.i.i90 = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91:  ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i89
  %.011.i92 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i89 ], [ %i.ep, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91 ]
  %.0910.i93 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i89 ], [ %i.eq, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91 ]
  %i.ei = add nuw nsw i32 %.011.i92, 1
  %.pre.i.i94 = load i16, ptr %.phi.trans.insert.i.i90, align 8 ; 2 uses
  %i.ej = icmp slt i16 %.pre.i.i94, 0
  %i.ek = ashr i16 %.pre.i.i94, 5
  %i.el = sext i16 %i.ek to i32
  %i.em = load i32, ptr %i.eh, align 4
  %i.en = select i1 %i.ej, i32 %i.em, i32 %i.el   ; 2 uses
  %spec.select.i.i95 = call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.en) ; 2 uses
  %i.eo = sub nsw i32 %i.en, %spec.select.i.i95
  %i.ep = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, i16 noundef zeroext 10, i32 noundef %spec.select.i.i95, i32 noundef %i.eo) #9 ; 3 uses
  %i.eq = add nuw nsw i32 %.0910.i93, 1           ; 2 uses
  %i.er = load i32, ptr %i.c, align 8
  %i.es = icmp slt i32 %i.ep, %i.er
  %i.et = icmp sgt i32 %i.ep, -1
  %i.eu = and i1 %i.et, %i.es
  br i1 %i.eu, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91, label %._crit_edge.i87, !llvm.loop !10

._crit_edge.i87:                                  ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91, %_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread
  %.09.lcssa.i88 = phi i32 [ 0, %_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread ], [ %i.eq, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i91 ]
  %i.ev = load ptr, ptr @stderr, align 8
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, i32 noundef %.09.lcssa.i88) #10 ; 0 uses
  %i.ex = load i32, ptr %2, align 4
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i87
  store i32 9, ptr %2, align 4
  br label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.loopexit

bb.ab:                                            ; preds = %bb.y, %_ZNK6icu_7813UnicodeStringneERKS0_.exit
  %i.ez = load i32, ptr %i.bw, align 8
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %.loopexit.loopexit, label %.thread144

.thread144:                                       ; preds = %bb.ab
  %i.fa = call noundef ptr @_ZN6icu_786UStack3popEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #9
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.backedge.outer.backedge

.backedge.outer.backedge:                         ; preds = %.thread144, %bb.m, %bb.n
  %.072.ph.be = phi ptr [ %i.ca, %bb.n ], [ %i.ca, %bb.m ], [ %i.fa, %.thread144 ]
  br label %.backedge.outer

bb.ac:                                            ; preds = %bb.w
  %i.fb = load i32, ptr %i.c, align 8
  %i.fc = sext i32 %i.fb to i64
  %i.fd = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.r, i64 noundef %i.fc, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not82 = icmp eq i8 %i.fd, 0
  br i1 %.not82, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = call noundef ptr @_ZN6icu_7810UXMLParser13createElementERNS_12RegexMatcherER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(336) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.fe, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  br label %.thread137

.thread:                                          ; preds = %bb.ac
  call void @_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ff = icmp eq ptr %.072.ph, null
  br label %.loopexit

.thread137:                                       ; preds = %bb.r, %bb.t, %bb.v, %bb.ad
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.backedge

.loopexit.loopexit:                               ; preds = %bb.ab
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread
  %.274120 = phi i1 [ %i.ff, %.thread ], [ true, %.loopexit.loopexit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.fg = load i32, ptr %i.bw, align 8
  %.not123 = icmp eq i32 %i.fg, 0
  %or.cond = select i1 %.274120, i1 %.not123, i1 false
  br i1 %or.cond, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit106, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.fh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812RegexMatcher5inputEv(ptr noundef nonnull align 8 dereferenceable(336) %i.d) #9 ; 3 uses
  %i.fi = load i32, ptr %i.c, align 8
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i99, label %._crit_edge.i97

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i99: ; preds = %bb.ae
  %.phi.trans.insert.i.i100 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101: ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i99
  %.011.i102 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i99 ], [ %i.fs, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101 ]
  %.0910.i103 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i99 ], [ %i.ft, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101 ]
  %i.fl = add nuw nsw i32 %.011.i102, 1
  %.pre.i.i104 = load i16, ptr %.phi.trans.insert.i.i100, align 8 ; 2 uses
  %i.fm = icmp slt i16 %.pre.i.i104, 0
  %i.fn = ashr i16 %.pre.i.i104, 5
  %i.fo = sext i16 %i.fn to i32
  %i.fp = load i32, ptr %i.fk, align 4
  %i.fq = select i1 %i.fm, i32 %i.fp, i32 %i.fo   ; 2 uses
  %spec.select.i.i105 = call i32 @llvm.smin.i32(i32 %i.fl, i32 %i.fq) ; 2 uses
  %i.fr = sub nsw i32 %i.fq, %spec.select.i.i105
  %i.fs = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.fh, i16 noundef zeroext 10, i32 noundef %spec.select.i.i105, i32 noundef %i.fr) #9 ; 3 uses
  %i.ft = add nuw nsw i32 %.0910.i103, 1          ; 2 uses
  %i.fu = load i32, ptr %i.c, align 8
  %i.fv = icmp slt i32 %i.fs, %i.fu
  %i.fw = icmp sgt i32 %i.fs, -1
  %i.fx = and i1 %i.fw, %i.fv
  br i1 %i.fx, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101, label %._crit_edge.i97, !llvm.loop !10

._crit_edge.i97:                                  ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101, %bb.ae
  %.09.lcssa.i98 = phi i32 [ 0, %bb.ae ], [ %i.ft, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i101 ]
  %i.fy = load ptr, ptr @stderr, align 8
  %i.fz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %.09.lcssa.i98) #10 ; 0 uses
  %i.ga = load i32, ptr %2, align 4
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i97
  store i32 9, ptr %2, align 4
  br label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit

_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit106: ; preds = %.loopexit, %bb.g
  %.070 = phi ptr [ %i.ao, %bb.g ], [ %i.bp, %.loopexit ] ; 3 uses
  call void @_ZN6icu_7810UXMLParser9parseMiscER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.gc = load i32, ptr %i.c, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ge = load i16, ptr %i.gd, align 8            ; 2 uses
  %i.gf = icmp slt i16 %i.ge, 0
  %i.gg = ashr i16 %i.ge, 5
  %i.gh = sext i16 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = select i1 %i.gf, i32 %i.gj, i32 %i.gh
  %.not86 = icmp eq i32 %i.gc, %i.gk
  br i1 %.not86, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit106
  %i.gl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812RegexMatcher5inputEv(ptr noundef nonnull align 8 dereferenceable(336) %i.d) #9 ; 3 uses
  %i.gm = load i32, ptr %i.c, align 8
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i109, label %._crit_edge.i107

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i109: ; preds = %bb.ag
  %.phi.trans.insert.i.i110 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111: ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i109
  %.011.i112 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i109 ], [ %i.gw, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111 ]
  %.0910.i113 = phi i32 [ 0, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.lr.ph.i109 ], [ %i.gx, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111 ]
  %i.gp = add nuw nsw i32 %.011.i112, 1
  %.pre.i.i114 = load i16, ptr %.phi.trans.insert.i.i110, align 8 ; 2 uses
  %i.gq = icmp slt i16 %.pre.i.i114, 0
  %i.gr = ashr i16 %.pre.i.i114, 5
  %i.gs = sext i16 %i.gr to i32
  %i.gt = load i32, ptr %i.go, align 4
  %i.gu = select i1 %i.gq, i32 %i.gt, i32 %i.gs   ; 2 uses
  %spec.select.i.i115 = call i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gu) ; 2 uses
  %i.gv = sub nsw i32 %i.gu, %spec.select.i.i115
  %i.gw = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.gl, i16 noundef zeroext 10, i32 noundef %spec.select.i.i115, i32 noundef %i.gv) #9 ; 3 uses
  %i.gx = add nuw nsw i32 %.0910.i113, 1          ; 2 uses
  %i.gy = load i32, ptr %i.c, align 8
  %i.gz = icmp slt i32 %i.gw, %i.gy
  %i.ha = icmp sgt i32 %i.gw, -1
  %i.hb = and i1 %i.ha, %i.gz
  br i1 %i.hb, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111, label %._crit_edge.i107, !llvm.loop !10

._crit_edge.i107:                                 ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111, %bb.ag
  %.09.lcssa.i108 = phi i32 [ 0, %bb.ag ], [ %i.gx, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit.i111 ]
  %i.hc = load ptr, ptr @stderr, align 8
  %i.hd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %.09.lcssa.i108) #10 ; 0 uses
  %i.he = load i32, ptr %2, align 4
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i107
  store i32 9, ptr %2, align 4
  br label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit

_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.loopexit: ; preds = %._crit_edge.i87, %bb.aa
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit

_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit: ; preds = %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.loopexit, %bb.af, %._crit_edge.i97, %bb.ah, %._crit_edge.i107
  %.171 = phi ptr [ %.070, %._crit_edge.i107 ], [ %.070, %bb.ah ], [ %i.bp, %bb.af ], [ %i.bp, %._crit_edge.i97 ], [ %i.bp, %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.loopexit ] ; 3 uses
  %i.hg = icmp eq ptr %.171, null
  br i1 %i.hg, label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit
  %i.hh = load ptr, ptr %.171, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(216) %.171) #9
  br label %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.thread

_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit.thread: ; preds = %._crit_edge.i, %bb.j, %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit106, %bb.ai, %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.070, %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit106 ], [ null, %_ZN6icu_7810UXMLParser5errorEPKcR10UErrorCode.exit ], [ null, %bb.ai ], [ null, %bb.j ], [ null, %._crit_edge.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810UXMLParser9parseMiscER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.d = load i32, ptr %i.b, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812RegexMatcher5inputEv(ptr noundef nonnull align 8 dereferenceable(336) %i.c) #9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i16, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %.not10 = icmp slt i32 %i.d, %i.m
  br i1 %.not10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.o = load i32, ptr %i.b, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.c, i64 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %1) #9
  %.not7 = icmp eq i8 %i.q, 0
  br i1 %.not7, label %bb.c, label %.backedge

.backedge:                                        ; preds = %bb.b, %bb.d, %bb.c
  %.sink12 = phi ptr [ %i.a, %bb.d ], [ %i.n, %bb.c ], [ %i.c, %bb.b ]
  %i.r = tail call noundef i32 @_ZNK6icu_7812RegexMatcher3endER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %.sink12, ptr noundef nonnull align 4 dereferenceable(4) %1) #9 ; 2 uses
  store i32 %i.r, ptr %i.b, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812RegexMatcher5inputEv(ptr noundef nonnull align 8 dereferenceable(336) %i.c) #9 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i16, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = select i1 %i.v, i32 %i.z, i32 %i.x
  %.not = icmp slt i32 %i.r, %i.aa
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.b, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.n, i64 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %1) #9
  %.not8 = icmp eq i8 %i.ad, 0
  br i1 %.not8, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.b, align 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.a, i64 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(4) %1) #9
  %.not9 = icmp eq i8 %i.ag, 0
  br i1 %.not9, label %._crit_edge, label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7810UXMLParser13createElementERNS_12RegexMatcherER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4576) %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 216) #9 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZNK6icu_7812RegexMatcher5groupEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4376 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call noundef ptr @uhash_find_78(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %3) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #9 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  br label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i

_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i: ; preds = %bb.d, %bb.c
  %i.h = call noundef i32 @uhash_puti_78(ptr noundef %i.e, ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9 ; 0 uses
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call noundef ptr @uhash_find_78(ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i
  %.pn.i = phi ptr [ %i.j, %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i ], [ %i.d, %bb.b ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811UXMLElementE, i64 16), ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr null, ptr %i.r, align 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.e
  %i.s = call noundef i32 @_ZNK6icu_7812RegexMatcher3endEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 5 uses
  %i.u = sext i32 %i.s to i64
  %i.v = call noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %i.t, i64 noundef %i.u, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %.not2737 = icmp eq i8 %i.v, 0
  br i1 %.not2737, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3704 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4512
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4376 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN6icu_7810UXMLParser6internERKNS_13UnicodeStringER10UErrorCode.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZNK6icu_7812RegexMatcher5groupEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(336) %i.t, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZNK6icu_7812RegexMatcher5groupEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(336) %i.t, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #9 ; 0 uses
  %i.af = load i16, ptr %i.w, align 8             ; 5 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i32, ptr %i.x, align 4
  %i.ak = select i1 %i.ag, i32 %i.aj, i32 %i.ai   ; 3 uses
  %i.al = add nsw i32 %i.ak, -1                   ; 3 uses
  %i.am = trunc i16 %i.af to i1
  %i.an = icmp eq i32 %i.al, 0
  %or.cond.i = and i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.h:                                             ; preds = %bb.f
  %.not36 = icmp eq i32 %i.ak, 0
  br i1 %.not36, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp slt i32 %i.ak, 1025
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = and i16 %i.af, 31
  %.tr.i.i.i = trunc i32 %i.al to i16
  %i.aq = shl i16 %.tr.i.i.i, 5
  %i.ar = or disjoint i16 %i.aq, %i.ap
  store i16 %i.ar, ptr %i.w, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.k:                                             ; preds = %bb.i
end_hunk_0
