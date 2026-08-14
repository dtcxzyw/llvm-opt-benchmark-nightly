inline.NumInlined: 400
inline.NumDeleted: 100
begin_hunk_0_@_ZNK6icu_7813MessageFormat23formatComplexSubMessageEiPKvPKNS_11FormattableEPKNS_13UnicodeStringEiRNS_17AppendableWrapperER10UErrorCode:bb.a
  %.2 = phi i32 [ %.0, %bb.e ], [ %i.bm, %bb.n ], [ %i.ca, %bb.o ]
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.e, !llvm.loop !61

bb.q:                                             ; preds = %bb.e
  %i.cb = sub nsw i32 %i.ad, %.0
  %i.cc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i32 noundef %.0, i32 noundef %i.cb) #16 ; 0 uses
  %i.cd = load i16, ptr %i.f, align 8             ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = ashr i16 %i.cd, 5
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = select i1 %i.ce, i32 %i.ci, i32 %i.cg
  %i.ck = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %9, i16 noundef zeroext 123, i32 noundef 0, i32 noundef %i.cj) #16
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %10, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 2, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @_ZN6icu_786FormatC2Ev(ptr noundef nonnull align 8 dereferenceable(392) %11) #16, !inline_history !59
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN6icu_7813MessageFormatE, i64 16), ptr %11, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 3 uses
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.v) #16, !inline_history !59
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  call void @_ZN6icu_7814MessagePatternC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %i.co, ptr noundef nonnull align 4 dereferenceable(4) %7) #16, !inline_history !59
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 256
  store ptr null, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 264
  store i32 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 272
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 296
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cr, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813MessageFormat22PluralSelectorProviderE, i64 16), ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 336
  store ptr %11, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 344
  store ptr null, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 352
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 360
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813MessageFormat22PluralSelectorProviderE, i64 16), ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 368
  store ptr %11, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 376
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 384
  store i32 1, ptr %i.da, align 8
  %i.db = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #16, !inline_history !59
  %i.dc = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #16, !inline_history !59
  call void @_ZN6icu_786Format12setLocaleIDsEPKcS2_(ptr noundef nonnull align 8 dereferenceable(392) %11, ptr noundef %i.db, ptr noundef %i.dc) #16, !inline_history !59
  %i.dd = load ptr, ptr %11, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(392) %11, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(4) %7) #16, !inline_history !59
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %.not.i = icmp eq i32 %i.dh, 1
  br i1 %.not.i, label %_ZN6icu_7813MessageFormat12applyPatternERKNS_13UnicodeStringE29UMessagePatternApostropheModeP11UParseErrorR10UErrorCode.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN6icu_7814MessagePattern5clearEv(ptr noundef nonnull align 8 dereferenceable(127) %i.co) #16
  store i32 1, ptr %i.dg, align 8
  br label %_ZN6icu_7813MessageFormat12applyPatternERKNS_13UnicodeStringE29UMessagePatternApostropheModeP11UParseErrorR10UErrorCode.exit

_ZN6icu_7813MessageFormat12applyPatternERKNS_13UnicodeStringE29UMessagePatternApostropheModeP11UParseErrorR10UErrorCode.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.di = load ptr, ptr %11, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(392) %11, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(4) %7) #16, !inline_history !62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZNK6icu_7813MessageFormat6formatEiPKvPKNS_11FormattableEPKNS_13UnicodeStringEiRNS_17AppendableWrapperEPNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %11, i32 noundef 0, ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %7)
  call void @_ZN6icu_7813MessageFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.x

bb.t:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr %6, align 8, !nonnull !49, !align !50 ; 2 uses
  %i.dm = load i16, ptr %i.f, align 8             ; 4 uses
  %i.dn = and i16 %i.dm, 17
  %.not.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i, label %bb.u, label %_ZN6icu_7817AppendableWrapper6appendERKNS_13UnicodeStringE.exit

bb.u:                                             ; preds = %bb.t
  %i.do = and i16 %i.dm, 2
  %.not2.i.i = icmp eq i16 %i.do, 0
  br i1 %.not2.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 10
  br label %_ZN6icu_7817AppendableWrapper6appendERKNS_13UnicodeStringE.exit

bb.w:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  br label %_ZN6icu_7817AppendableWrapper6appendERKNS_13UnicodeStringE.exit

_ZN6icu_7817AppendableWrapper6appendERKNS_13UnicodeStringE.exit: ; preds = %bb.t, %bb.v, %bb.w
  %.0.i.i = phi ptr [ %i.dr, %bb.w ], [ %i.dp, %bb.v ], [ null, %bb.t ]
  %i.ds = icmp slt i16 %i.dm, 0
  %i.dt = ashr i16 %i.dm, 5
  %i.du = sext i16 %i.dt to i32
  %i.dv = load i32, ptr %i.ch, align 4
  %i.dw = select i1 %i.ds, i32 %i.dv, i32 %i.du
  %i.dx = load ptr, ptr %i.dl, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef signext i8 %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %.0.i.i, i32 noundef %i.dw) #16, !inline_history !57 ; 0 uses
  %i.eb = load i16, ptr %i.f, align 8             ; 2 uses
  %i.ec = icmp slt i16 %i.eb, 0
  %i.ed = ashr i16 %i.eb, 5
  %i.ee = sext i16 %i.ed to i32
  %i.ef = load i32, ptr %i.ch, align 4
  %i.eg = select i1 %i.ec, i32 %i.ef, i32 %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = add nsw i32 %i.eg, %i.ei
  store i32 %i.ej, ptr %i.eh, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN6icu_7817AppendableWrapper6appendERKNS_13UnicodeStringE.exit, %_ZN6icu_7813MessageFormat12applyPatternERKNS_13UnicodeStringE29UMessagePatternApostropheModeP11UParseErrorR10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x, %bb.c
  ret void
}

declare noundef double @_ZNK6icu_7814MessagePattern15getPluralOffsetEi(ptr noundef nonnull align 8 dereferenceable(127), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_121PluralSelectorContextC2EiRKNS_13UnicodeStringERKNS_11FormattableEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(217) initializes((0, 4), (8, 16)) %0, i32 noundef range(i32 -2147483645, -2147483648) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3, double noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::Formattable", align 8 ; 5 uses
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.h, align 8
  %i.i = fcmp oeq double %4, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %3) #16 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.k = tail call noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #16
  %i.l = fsub double %i.k, %4
  call void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112) %6, double noundef %i.l) #16
  %i.m = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %6) #16 ; 0 uses
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef i32 @_ZN6icu_7812PluralFormat14findSubMessageERKNS_14MessagePatternEiRKNS0_14PluralSelectorEPvdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, double noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZN6icu_7812SelectFormat14findSubMessageERKNS_14MessagePatternEiRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK6icu_7813MessageFormat14updateMetaDataERNS_17AppendableWrapperEiPNS_13FieldPositionEPKNS_11FormattableE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN6icu_7811MessageImpl24appendReducedApostrophesERKNS_13UnicodeStringEiiRS1_(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7813MessageFormat33getLiteralStringUntilNextArgumentEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i16, ptr %i.h, align 4
  %i.j = zext i16 %i.i to i32
  %i.k = add nsw i32 %i.g, %i.j                   ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.l, align 8
  %3 = sext i32 %2 to i64
  %4 = getelementptr [16 x i8], ptr %i.c, i64 %3  ; 2 uses
  %5 = getelementptr i8, ptr %4, i64 16           ; 2 uses
  %i.m = load i32, ptr %5, align 4
  %i.n = getelementptr i8, ptr %4, i64 20         ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sub nsw i32 %i.o, %i.k
  %i.q = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.k, i32 noundef %i.p) #16 ; 0 uses
  %i.r = and i32 %i.m, -5
  %or.cond.not24 = icmp eq i32 %i.r, 1
  br i1 %or.cond.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %6 = add nsw i64 %i.d, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %6, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.s = phi ptr [ %i.n, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ]
  %i.t = phi ptr [ %5, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %i.u = load i32, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i16, ptr %i.v, align 4
  %i.x = zext i16 %i.w to i32
  %i.y = add nsw i32 %i.u, %i.x                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %indvars.iv.next ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sub nsw i32 %i.ad, %i.y
  %i.af = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.y, i32 noundef %i.ae) #16 ; 0 uses
  %i.ag = and i32 %i.ab, -5
  %or.cond.not = icmp eq i32 %i.ag, 1
  br i1 %or.cond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZNK6icu_7813MessageFormat19findOtherSubMessageEi(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %3 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, -2
  %.not = icmp eq i32 %i.h, 12
  %i.i = zext i1 %.not to i32
  %spec.select = add nsw i32 %1, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr @_ZL12OTHER_STRING, ptr %3, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext 0, ptr noundef nonnull align 8 %3, i32 noundef 5) #16
  %i.j = load ptr, ptr %3, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.j) #16, !srcloc !63
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.q = phi ptr [ %.pre, %bb.a ], [ %i.aq, %bb.e ]
  %.117 = phi i32 [ %spec.select, %bb.a ], [ %i.ba, %bb.e ] ; 3 uses
  %i.r = add nsw i32 %.117, 1                     ; 3 uses
  %i.s = sext i32 %.117 to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 6
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i16, ptr %i.k, align 8              ; 4 uses
  %i.x = and i16 %i.w, 1
  %.not.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i16, ptr %i.l, align 8
  %i.z = trunc i16 %i.y to i8
  %i.aa = and i8 %i.z, 1
  %i.ab = xor i8 %i.aa, 1
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit

.sink.split.i.i.i.i:                              ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp slt i16 %i.w, 0
  %i.ai = load i32, ptr %i.n, align 4
  %i.aj = ashr i16 %i.w, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = select i1 %i.ah, i32 %i.ai, i32 %i.ak   ; 2 uses
  %spec.select.i.i.i = call i32 @llvm.smin.i32(i32 %i.al, i32 0)
  %.010.i.i.i = call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.am = and i16 %i.w, 2
  %.not.i.i.i.i = icmp eq i16 %i.am, 0
  %i.an = load ptr, ptr %i.p, align 8
  %i.ao = select i1 %.not.i.i.i.i, ptr %i.an, ptr %i.o
  %i.ap = call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i32 noundef %i.ag, i32 noundef %i.ae, ptr noundef %i.ao, i32 noundef %spec.select.i.i.i, i32 noundef %.010.i.i.i) #16
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit

_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit: ; preds = %bb.d, %.sink.split.i.i.i.i
  %.0.i.i.i = phi i8 [ %i.ab, %bb.d ], [ %i.ap, %.sink.split.i.i.i.i ]
  %.not32 = icmp eq i8 %.0.i.i.i, 0
  br i1 %.not32, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit
  %i.aq = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ar = sext i32 %i.r to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, -2
  %.not33 = icmp eq i32 %i.au, 12
  %i.av = add nsw i32 %.117, 2
  %spec.select22 = select i1 %.not33, i32 %i.av, i32 %i.r ; 2 uses
  %i.aw = sext i32 %spec.select22 to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %..i = call noundef i32 @llvm.smax.i32(i32 %i.az, i32 %spec.select22)
  %i.ba = add nsw i32 %..i, 1                     ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.b
  br i1 %i.bb, label %bb.b, label %.thread, !llvm.loop !64

.thread:                                          ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit, %bb.e, %bb.b
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ %i.r, %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.2
}

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZNK6icu_7813MessageFormat24findFirstPluralNumberArgEiRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %i.a, align 8
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.a
  %.ph40 = phi ptr [ %i.aj, %.thread ], [ %.pre, %bb.a ] ; 3 uses
  %.022.in.ph = phi i32 [ %..i, %.thread ], [ %1, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.b
  %.022.in = phi i32 [ %.022, %bb.b ], [ %.022.in.ph, %.outer ] ; 2 uses
  %.022 = add nsw i32 %.022.in, 1                 ; 4 uses
  %i.h = sext i32 %.022 to i64                    ; 2 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %.ph40, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %bb.b [
    i32 1, label %.loopexit.loopexit
    i32 4, label %.loopexit
    i32 5, label %bb.c
  ], !llvm.loop !65

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.l = load i16, ptr %i.k, align 2
  %i.m = load i16, ptr %i.b, align 8              ; 5 uses
  %i.n = icmp ugt i16 %i.m, 31
  %or.cond = icmp ult i16 %i.l, 2
  %or.cond28 = and i1 %or.cond, %i.n
  br i1 %or.cond28, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = and i16 %i.m, 1
  %.not.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i16, ptr %i.c, align 8
  %i.q = trunc i16 %i.p to i8
  %i.r = and i8 %i.q, 1
  %i.s = xor i8 %i.r, 1
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit

.sink.split.i.i.i.i:                              ; preds = %bb.d
  %i.t = sext i32 %.022.in to i64
  %i.u = getelementptr [16 x i8], ptr %.ph40, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load i16, ptr %i.v, align 4
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr i8, ptr %i.u, i64 36
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp slt i16 %i.m, 0
  %i.ab = load i32, ptr %i.e, align 4
  %i.ac = ashr i16 %i.m, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = select i1 %i.aa, i32 %i.ab, i32 %i.ad   ; 2 uses
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 0)
  %.010.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.af = and i16 %i.m, 2
  %.not.i.i.i.i = icmp eq i16 %i.af, 0
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = select i1 %.not.i.i.i.i, ptr %i.ag, ptr %i.f
  %i.ai = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i32 noundef %i.z, i32 noundef %i.x, ptr noundef %i.ah, i32 noundef %spec.select.i.i.i, i32 noundef %.010.i.i.i) #16
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit

_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit: ; preds = %bb.e, %.sink.split.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK6icu_7813MessageFormat24findFirstPluralNumberArgEiRKNS_13UnicodeStringE:bb.a
.loopexit:                                        ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit, %bb.b, %.loopexit.loopexit
  %.3.ph = phi i32 [ -1, %bb.b ], [ %.022, %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit ], [ 0, %.loopexit.loopexit ]
  ret i32 %.3.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7813MessageFormat5parseEiRKNS_13UnicodeStringERNS_13ParsePositionERiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca [16 x i16], align 16              ; 5 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %6 = alloca %"class.icu_78::ParsePosition", align 8 ; 10 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  store i32 0, ptr %4, align 4
  %i.d = load i32, ptr %5, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.g, ptr %i.h, align 4
  br label %_ZN6icu_7810LocalArrayINS_11FormattableEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.k = load i8, ptr %i.j, align 4
  %.not127 = icmp eq i8 %i.k, 0
  br i1 %.not127, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 65804, ptr %5, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.m, ptr %i.n, align 4
  br label %_ZN6icu_7810LocalArrayINS_11FormattableEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = load i32, ptr %i.o, align 8
  %narrow = tail call i32 @llvm.umax.i32(i32 %i.p, i32 1)
  %spec.select = sext i32 %narrow to i64          ; 3 uses
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %spec.select, i64 112) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = or disjoint i64 %i.s, 8
  %i.u = select i1 %i.r, i64 -1, i64 %i.t
  %i.v = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.u) #16 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %spec.select, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = getelementptr inbounds [112 x i8], ptr %i.x, i64 %spec.select
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %i.x, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  tail call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.z) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 112 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.g, %bb.e
  %i.ac = phi ptr [ null, %bb.e ], [ %i.x, %bb.g ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = zext i16 %i.al to i32
  %i.an = add nsw i32 %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %6, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 -1, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.aj, %.loopexit
  %i.bj = phi ptr [ %i.af, %.loopexit ], [ %.pre, %bb.aj ]
  %.0106.in = phi i32 [ %1, %.loopexit ], [ %.2108190, %bb.aj ] ; 3 uses
  %.0100 = phi i32 [ %i.ap, %.loopexit ], [ %.5105191, %bb.aj ] ; 4 uses
  %.097 = phi i32 [ %i.an, %.loopexit ], [ %.299192, %bb.aj ] ; 3 uses
  %.0106 = add nsw i32 %.0106.in, 1               ; 5 uses
  %i.bk = sext i32 %.0106 to i64                  ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bk ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = sub nsw i32 %i.bo, %.097                ; 4 uses
  %i.bq = icmp eq i32 %i.bo, %.097
  br i1 %i.bq, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load i16, ptr %i.as, align 8            ; 4 uses
  %i.bs = and i16 %i.br, 1
  %.not.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = load i16, ptr %i.at, align 8
  %i.bu = trunc i16 %i.bt to i8
  %i.bv = and i8 %i.bu, 1
  %i.bw = xor i8 %i.bv, 1
  br label %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.bx = icmp slt i16 %i.br, 0
  %i.by = ashr i16 %i.br, 5
  %i.bz = sext i16 %i.by to i32
  %i.ca = load i32, ptr %i.au, align 4
  %i.cb = select i1 %i.bx, i32 %i.ca, i32 %i.bz   ; 2 uses
  %i.cc = icmp slt i32 %.0100, 0
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %.0100, i32 %i.cb)
  %.011.i.i = select i1 %i.cc, i32 0, i32 %spec.select.i.i ; 2 uses
  %i.cd = icmp slt i32 %i.bp, 0
  %i.ce = sub nsw i32 %i.cb, %.011.i.i
  %spec.select13.i.i = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.ce)
  %.010.i.i = select i1 %i.cd, i32 0, i32 %spec.select13.i.i
  %i.cf = and i16 %i.br, 2
  %.not.i.i.i = icmp eq i16 %i.cf, 0
  %i.cg = load ptr, ptr %i.aw, align 8
  %i.ch = select i1 %.not.i.i.i, ptr %i.cg, ptr %i.av
  %i.ci = call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i32 noundef %.097, i32 noundef %i.bp, ptr noundef %i.ch, i32 noundef %.011.i.i, i32 noundef %.010.i.i) #16
  br label %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit

_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit: ; preds = %bb.j, %.sink.split.i.i.i
  %.0.i.i = phi i8 [ %i.bw, %bb.j ], [ %i.ci, %.sink.split.i.i.i ]
  %i.cj = icmp eq i8 %.0.i.i, 0
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit, %bb.h
  %i.ck = add nsw i32 %i.bp, %.0100               ; 13 uses
  %i.cl = icmp eq i32 %i.bm, 1
  br i1 %i.cl, label %.thread173.thread, label %bb.m

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.0100, ptr %i.cm, align 4
  br label %.thread173

.thread173.thread:                                ; preds = %bb.k
  store i32 %i.ck, ptr %i.ao, align 8
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN6icu_7810LocalArrayINS_11FormattableEED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.cn = and i32 %i.bm, -2
  %or.cond = icmp eq i32 %i.cn, 2
  br i1 %or.cond, label %.thread182, label %bb.n

.thread182:                                       ; preds = %bb.m
  %i.co = load i32, ptr %i.bn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cq = load i16, ptr %i.cp, align 4
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nsw i32 %i.co, %i.cr
  br label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.ct = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.bk
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = load i32, ptr %i.cv, align 4
  %..i = call noundef i32 @llvm.smax.i32(i32 %i.cw, i32 %.0106) ; 3 uses
  %i.cx = load i32, ptr %i.bl, align 4
  %i.cy = add i32 %i.cx, -5
  %or.cond.i = icmp ult i32 %i.cy, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i32
  %.0.i = select i1 %or.cond.i, i32 %i.db, i32 0  ; 3 uses
  %i.dc = sext i32 %.0106.in to i64
  %i.dd = getelementptr [16 x i8], ptr %i.ct, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 42
  %i.df = load i16, ptr %i.de, align 2            ; 2 uses
  %i.dg = sext i16 %i.df to i32                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  store i16 2, ptr %i.ax, align 8
  %i.dh = add nsw i32 %.0106.in, 3
  %i.di = sext i16 %i.df to i64
  %i.dj = getelementptr inbounds [112 x i8], ptr %i.ac, i64 %i.di ; 3 uses
  %i.dk = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not129 = icmp eq ptr %i.dk, null
  br i1 %.not129, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = call ptr @uhash_iget_78(ptr noundef nonnull %i.dk, i32 noundef %.0106) #16 ; 4 uses
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = call ptr @__dynamic_cast(ptr nonnull %i.dl, ptr nonnull @_ZTIN6icu_786FormatE, ptr nonnull @_ZTIN6icu_7813MessageFormat11DummyFormatE, i64 0) #16
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit.thread

_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit: ; preds = %bb.p
  store i32 %i.ck, ptr %i.aq, align 8
  %i.do = load ptr, ptr %i.dl, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(88) %i.dl, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  %i.dr = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.ds = icmp eq i32 %i.dr, %i.ck
  br i1 %i.ds, label %bb.q, label %.thread163

bb.q:                                             ; preds = %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ck, ptr %i.dt, align 4
  br label %.thread195

_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit.thread: ; preds = %bb.p, %bb.o, %bb.n
  %i.du = icmp eq i32 %.0.i, 0
  br i1 %i.du, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit.thread
  %i.dv = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not131 = icmp eq ptr %i.dv, null
  br i1 %.not131, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = call ptr @uhash_iget_78(ptr noundef nonnull %i.dv, i32 noundef %.0106) #16
  %.not132 = icmp eq ptr %i.dw, null
  br i1 %.not132, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.dx = load ptr, ptr %i.ae, align 8, !noalias !66
  %i.dy = sext i32 %..i to i64                    ; 2 uses
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !noalias !66
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ed = load i16, ptr %i.ec, align 4, !noalias !66
  %i.ee = zext i16 %i.ed to i32
  %i.ef = add nsw i32 %i.eb, %i.ee                ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !alias.scope !66
  store i16 2, ptr %i.az, align 8, !alias.scope !66
  %11 = getelementptr i8, ptr %i.dz, i64 16       ; 2 uses
  %i.eg = load i32, ptr %11, align 4, !noalias !66
  %i.eh = getelementptr i8, ptr %i.dz, i64 20     ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !noalias !66
  %i.ej = sub nsw i32 %i.ei, %i.ef
  %i.ek = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i32 noundef %i.ef, i32 noundef %i.ej) #16 ; 0 uses
  %i.el = and i32 %i.eg, -5
  %or.cond.not24.i = icmp eq i32 %i.el, 1
  br i1 %or.cond.not24.i, label %_ZNK6icu_7813MessageFormat33getLiteralStringUntilNextArgumentEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %12 = add nsw i64 %i.dy, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %12, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.em = phi ptr [ %i.eh, %.lr.ph.preheader.i ], [ %i.ew, %.lr.ph.i ]
  %i.en = phi ptr [ %11, %.lr.ph.preheader.i ], [ %i.eu, %.lr.ph.i ]
  %i.eo = load i32, ptr %i.em, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i16, ptr %i.ep, align 4
  %i.er = zext i16 %i.eq to i32
  %i.es = add nsw i32 %i.eo, %i.er                ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.et = load ptr, ptr %i.ae, align 8, !noalias !66
  %i.eu = getelementptr inbounds [16 x i8], ptr %i.et, i64 %indvars.iv.next.i ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = sub nsw i32 %i.ex, %i.es
  %i.ez = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i32 noundef %i.es, i32 noundef %i.ey) #16 ; 0 uses
  %i.fa = and i32 %i.ev, -5
  %or.cond.not.i = icmp eq i32 %i.fa, 1
  br i1 %or.cond.not.i, label %_ZNK6icu_7813MessageFormat33getLiteralStringUntilNextArgumentEi.exit, label %.lr.ph.i

_ZNK6icu_7813MessageFormat33getLiteralStringUntilNextArgumentEi.exit: ; preds = %.lr.ph.i, %bb.t
  %i.fb = load i16, ptr %i.az, align 8            ; 5 uses
  %i.fc = icmp ugt i16 %i.fb, 31
  br i1 %i.fc, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZNK6icu_7813MessageFormat33getLiteralStringUntilNextArgumentEi.exit
  %i.fd = icmp slt i32 %i.ck, 0
  %.pre.i = load i16, ptr %i.as, align 8          ; 3 uses
  %.pre7.i = ashr i16 %.pre.i, 5
  %.pre8.i = sext i16 %.pre7.i to i32             ; 2 uses
  br i1 %i.fd, label %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i, label %bb.v

._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i: ; preds = %bb.u
  %.pre6.i = load i32, ptr %i.au, align 4
  br label %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i

bb.v:                                             ; preds = %bb.u
  %i.fe = icmp slt i16 %.pre.i, 0
  %i.ff = load i32, ptr %i.au, align 4            ; 2 uses
  %i.fg = select i1 %i.fe, i32 %i.ff, i32 %.pre8.i
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.fg)
  br label %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i

_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i:    ; preds = %bb.v, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i
  %i.fh = phi i32 [ %.pre6.i, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %i.ff, %bb.v ]
  %.0.i138 = phi i32 [ 0, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i ], [ %spec.select.i, %bb.v ] ; 2 uses
  %i.fi = icmp slt i16 %i.fb, 0
  %i.fj = ashr i16 %i.fb, 5
  %i.fk = sext i16 %i.fj to i32
  %i.fl = load i32, ptr %i.ba, align 4
  %i.fm = select i1 %i.fi, i32 %i.fl, i32 %i.fk   ; 4 uses
  %i.fn = icmp slt i16 %.pre.i, 0
  %i.fo = select i1 %i.fn, i32 %i.fh, i32 %.pre8.i
  %i.fp = sub nsw i32 %i.fo, %.0.i138
  %i.fq = and i16 %i.fb, 1
  %.not.i.i139 = icmp eq i16 %i.fq, 0
  br i1 %.not.i.i139, label %.sink.split.i.i.i141, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread

.sink.split.i.i.i141:                             ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i
  %spec.select.i.i142 = call i32 @llvm.smin.i32(i32 %i.fm, i32 0) ; 2 uses
  %i.fr = icmp slt i32 %i.fm, 0
  br i1 %i.fr, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i141
  %i.fs = sub nuw nsw i32 %i.fm, %spec.select.i.i142
  %i.ft = call i32 @llvm.umin.i32(i32 %i.fm, i32 %i.fs) ; 2 uses
  %.not.i143 = icmp eq i32 %i.ft, 0
  br i1 %.not.i143, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.fu = and i16 %i.fb, 2
  %.not.i.i.i144 = icmp eq i16 %i.fu, 0
  %i.fv = load ptr, ptr %i.bc, align 8
  %i.fw = select i1 %.not.i.i.i144, ptr %i.fv, ptr %i.bb
  %i.fx = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.fw, i32 noundef %spec.select.i.i142, i32 noundef %i.ft, i32 noundef %.0.i138, i32 noundef %i.fp) #16
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

bb.x:                                             ; preds = %_ZNK6icu_7813MessageFormat33getLiteralStringUntilNextArgumentEi.exit
  %i.fy = load i16, ptr %i.as, align 8            ; 2 uses
  %i.fz = icmp slt i16 %i.fy, 0
  %i.ga = ashr i16 %i.fy, 5
  %i.gb = sext i16 %i.ga to i32
  %i.gc = load i32, ptr %i.au, align 4
  %i.gd = select i1 %i.fz, i32 %i.gc, i32 %i.gb
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit:   ; preds = %bb.w, %bb.x
  %.096 = phi i32 [ %i.gd, %bb.x ], [ %i.fx, %bb.w ] ; 4 uses
  %i.ge = icmp sgt i32 %.096, -1
  br i1 %i.ge, label %bb.y, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread

bb.y:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.gf = sub nsw i32 %.096, %i.ck
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.ck, i32 noundef %i.gf) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %10, align 8
  store i16 2, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 123, ptr %i.c, align 2
  %i.gg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.gh = call i32 @uprv_itou_78(ptr noundef nonnull %i.b, i32 noundef 16, i32 noundef %i.dg, i32 noundef 10, i32 noundef 0) #16 ; 0 uses
  %i.gi = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef -1) #16 ; 0 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.b) #16, !srcloc !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 125, ptr %i.a, align 2
  %i.gj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gk = load i16, ptr %i.be, align 8            ; 3 uses
  %i.gl = load i16, ptr %i.bd, align 8            ; 4 uses
  %i.gm = and i16 %i.gl, 1
  %.not.i.i145 = icmp eq i16 %i.gm, 0
  br i1 %.not.i.i145, label %.sink.split.i.i.i147, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = trunc i16 %i.gk to i8
  %i.go = and i8 %i.gn, 1
  %i.gp = xor i8 %i.go, 1
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

.sink.split.i.i.i147:                             ; preds = %bb.y
  %i.gq = icmp slt i16 %i.gl, 0
  %i.gr = load i32, ptr %i.bf, align 4
  %i.gs = ashr i16 %i.gl, 5
  %i.gt = sext i16 %i.gs to i32
  %i.gu = select i1 %i.gq, i32 %i.gr, i32 %i.gt   ; 2 uses
  %i.gv = icmp slt i16 %i.gk, 0
  %i.gw = load i32, ptr %i.bg, align 4
  %i.gx = ashr i16 %i.gk, 5
  %i.gy = sext i16 %i.gx to i32
  %i.gz = select i1 %i.gv, i32 %i.gw, i32 %i.gy
  %spec.select.i.i148 = call i32 @llvm.smin.i32(i32 %i.gu, i32 0)
  %.010.i.i149 = call i32 @llvm.smax.i32(i32 %i.gu, i32 0)
  %i.ha = and i16 %i.gl, 2
  %.not.i.i.i150 = icmp eq i16 %i.ha, 0
  %i.hb = load ptr, ptr %i.bi, align 8
  %i.hc = select i1 %.not.i.i.i150, ptr %i.hb, ptr %i.bh
  %i.hd = call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef 0, i32 noundef %i.gz, ptr noundef %i.hc, i32 noundef %spec.select.i.i148, i32 noundef %.010.i.i149) #16
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.z, %.sink.split.i.i.i147
  %.0.i.i146 = phi i8 [ %i.gp, %bb.z ], [ %i.hd, %.sink.split.i.i.i147 ]
  %.not135 = icmp eq i8 %.0.i.i146, 0
  br i1 %.not135, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  call void @_ZN6icu_7811Formattable9setStringERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(112) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %9) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.thread163

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread: ; preds = %.sink.split.i.i.i141, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ck, ptr %i.he, align 4
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.thread195

bb.ab:                                            ; preds = %bb.s, %bb.r
  %i.hf = icmp eq i32 %.0.i, 2
  br i1 %i.hf, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.ck, ptr %i.aq, align 8
  %i.hg = call noundef double @_ZN6icu_7812ChoiceFormat13parseArgumentERKNS_14MessagePatternEiRKNS_13UnicodeStringERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(127) %i.i, i32 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  %i.hh = load i32, ptr %i.aq, align 8
  %.not133 = icmp eq i32 %i.hh, %i.ck
  br i1 %.not133, label %.thread159, label %bb.ad

.thread159:                                       ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ck, ptr %i.hi, align 4
  br label %.thread195

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6icu_7811Formattable9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(112) %i.dj, double noundef %i.hg) #16
  %i.hj = load i32, ptr %i.aq, align 8
  br label %.thread163

bb.ae:                                            ; preds = %bb.ab
  %i.hk = add nsw i32 %.0.i, -3
  %or.cond6 = icmp ult i32 %i.hk, 3
  br i1 %or.cond6, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 16, ptr %5, align 4
  br label %.thread195

bb.ag:                                            ; preds = %bb.ae
  store i32 5, ptr %5, align 4
  br label %.thread195

.thread163:                                       ; preds = %bb.aa, %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, %bb.ad
  %.3103168 = phi i32 [ %.096, %bb.aa ], [ %i.dr, %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit ], [ %i.hj, %bb.ad ] ; 2 uses
  %i.hl = load i32, ptr %4, align 4
  %.not137 = icmp sgt i32 %i.hl, %i.dg
end_hunk_1
