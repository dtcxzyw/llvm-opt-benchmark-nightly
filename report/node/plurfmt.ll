inline.NumInlined: 152
inline.NumDeleted: 44
begin_hunk_0_@_ZN6icu_7812PluralFormatD0Ev:bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6icu_7811PluralRules9forLocaleERKNS_6LocaleE11UPluralTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePattern16parsePluralStyleERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_7814MessagePattern5clearEv(ptr noundef nonnull align 8 dereferenceable(127)) local_unnamed_addr #2

declare noundef double @_ZNK6icu_7814MessagePattern15getPluralOffsetEi(ptr noundef nonnull align 8 dereferenceable(127), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatERKNS_11FormattableERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZNK6icu_7811Formattable9isNumericEv(ptr noundef nonnull align 8 dereferenceable(112) %1) #11
  %.not12 = icmp eq i8 %i.c, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatERKNS_11FormattableEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, double noundef %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %2, %bb.d ], [ %i.f, %bb.c ], [ %2, %bb.a ]
  ret ptr %.0
}

declare noundef signext i8 @_ZNK6icu_7811Formattable9isNumericEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatERKNS_11FormattableEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::number::impl::UFormattedNumberData", align 8 ; 10 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::Formattable", align 8 ; 5 uses
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(124) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.n = load double, ptr %i.m, align 8
  %i.o = fsub double %2, %i.n                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7831FormattedValueStringBuilderImplC2ENS_22FormattedStringBuilder5FieldE(ptr noundef nonnull align 8 dereferenceable(408) %6, i8 0) #11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number4impl20UFormattedNumberDataE, i64 16), ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 304 ; 4 uses
  call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.p) #11
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 376
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.q) #11
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 400
  store ptr @.str, ptr %i.r, align 8
  %i.s = load double, ptr %i.m, align 8
  %i.t = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNK6icu_7811Formattable23populateDecimalQuantityERNS_6number4impl15DecimalQuantityER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(66) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity11setToDoubleEd(ptr noundef nonnull align 8 dereferenceable(66) %i.p, double noundef %i.o) #11 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i16 2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN6icu_7812NumberFormatE, ptr nonnull @_ZTIN6icu_7813DecimalFormatE, i64 0) #11 ; 2 uses
  %.not75 = icmp eq ptr %i.z, null
  br i1 %.not75, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call noundef ptr @_ZNK6icu_7813DecimalFormat17toNumberFormatterER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  %i.ab = load i32, ptr %5, align 4
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  call void @_ZNK6icu_786number24LocalizedNumberFormatter10formatImplEPNS0_4impl20UFormattedNumberDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312) %i.aa, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  %i.ad = load i32, ptr %5, align 4
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.critedge, label %bb.v

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZNK6icu_7822FormattedStringBuilder15toUnicodeStringEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(136) %i.af) #11
  %i.ag = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.m

.thread:                                          ; preds = %bb.g, %bb.h
  %i.ah = load double, ptr %i.m, align 8
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.aj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Format6formatERKNS_11FormattableERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(4) %5) #11 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112) %9, double noundef %i.o) #11
  %i.ak = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Format6formatERKNS_11FormattableERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(4) %5) #11 ; 0 uses
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.k, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.am = call noundef i32 @_ZN6icu_7812PluralFormat14findSubMessageERKNS_14MessagePatternEiRKNS0_14PluralSelectorEPvdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %i.c, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.p, double noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %i.an = load i32, ptr %5, align 4
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = sext i32 %i.am to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nsw i32 %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %bb.n
  %i.bc = phi ptr [ %i.ar, %bb.n ], [ %.pre, %bb.u ]
  %.070 = phi i32 [ %i.am, %bb.n ], [ %.272, %bb.u ]
  %.067 = phi i32 [ %i.az, %bb.n ], [ %.269, %bb.u ] ; 10 uses
  %i.bd = add nsw i32 %.070, 1                    ; 5 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4            ; 5 uses
  switch i32 %i.bg, label %bb.u [
    i32 1, label %.thread84
    i32 4, label %bb.r
    i32 2, label %bb.p
    i32 5, label %bb.t
  ]

.thread84:                                        ; preds = %bb.o
  %i.bj = sub nsw i32 %i.bi, %.067
  %i.bk = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i32 noundef %.067, i32 noundef %i.bj) #11
  br label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bl = load i32, ptr %i.ba, align 8
  %.not = icmp eq i32 %i.bl, 1
  br i1 %.not, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bm = sub nsw i32 %i.bi, %.067
  %10 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i32 noundef %.067, i32 noundef %i.bm) #11 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bn = sub nsw i32 %i.bi, %.067
  %i.bo = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i32 noundef %.067, i32 noundef %i.bn) #11 ; 0 uses
  %i.bp = load i16, ptr %i.v, align 8             ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = ashr i16 %i.bp, 5
  %i.bs = sext i16 %i.br to i32
  %i.bt = load i32, ptr %i.bb, align 4
  %i.bu = select i1 %i.bq, i32 %i.bt, i32 %i.bs
  %11 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bu) #11 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bv = load i32, ptr %i.bh, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bx = load i16, ptr %i.bw, align 4
  %i.by = zext i16 %i.bx to i32
  %i.bz = add nsw i32 %i.bv, %i.by
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.ca = sub nsw i32 %i.bi, %.067
  %i.cb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i32 noundef %.067, i32 noundef %i.ca) #11 ; 0 uses
  %i.cc = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.be
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4
  %..i = call noundef i32 @llvm.smax.i32(i32 %i.cf, i32 %i.bd) ; 2 uses
  %i.cg = sext i32 %..i to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load i16, ptr %i.ck, align 4
  %i.cm = zext i16 %i.cl to i32
  %i.cn = add nsw i32 %i.cj, %i.cm                ; 2 uses
  call void @_ZN6icu_7811MessageImpl24appendReducedApostrophesERKNS_13UnicodeStringEiiRS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i32 noundef %i.bi, i32 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %3) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.p, %bb.t, %bb.s
  %.272 = phi i32 [ %i.bd, %bb.p ], [ %i.bd, %bb.s ], [ %..i, %bb.t ], [ %i.bd, %bb.o ]
  %.269 = phi i32 [ %.067, %bb.p ], [ %i.bz, %bb.s ], [ %i.cn, %bb.t ], [ %.067, %bb.o ]
  %.pre = load ptr, ptr %i.aq, align 8
  br label %bb.o, !llvm.loop !9

bb.v:                                             ; preds = %.thread84, %bb.m, %bb.i, %bb.j
  %.5 = phi ptr [ %3, %bb.i ], [ %3, %bb.j ], [ %3, %bb.m ], [ %i.bk, %.thread84 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZN6icu_786number4impl20UFormattedNumberDataD1Ev(ptr noundef nonnull align 8 dereferenceable(408) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v, %bb.c
  %.6 = phi ptr [ %.5, %bb.v ], [ %i.l, %bb.c ], [ %3, %bb.a ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7812PluralFormat6formatEiR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::FieldPosition", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::Formattable", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813FieldPositionE, i64 16), ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7811FormattableC1Ei(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef %2) #11
  %i.e = sitofp i32 %2 to double
  %i.f = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatERKNS_11FormattableEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(112) %6, double noundef %i.e, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #11
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

declare void @_ZN6icu_7811FormattableC1Ei(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7812PluralFormat6formatEdR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, double noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::FieldPosition", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::Formattable", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813FieldPositionE, i64 16), ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112) %6, double noundef %2) #11
  %i.e = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatERKNS_11FormattableEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(112) %6, double noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #11
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

declare void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112), double noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::Formattable", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN6icu_7811FormattableC1Ei(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef %1) #11
  %i.a = sitofp i32 %1 to double
  %i.b = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatERKNS_11FormattableEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(112) %5, double noundef %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::Formattable", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112) %5, double noundef %1) #11
  %i.a = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812PluralFormat6formatERKNS_11FormattableEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(112) %5, double noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret ptr %i.a
}

declare void @_ZNK6icu_7811Formattable23populateDecimalQuantityERNS_6number4impl15DecimalQuantityER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(66), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity11setToDoubleEd(ptr noundef nonnull align 8 dereferenceable(66), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #5

declare noundef ptr @_ZNK6icu_7813DecimalFormat17toNumberFormatterER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZNK6icu_786number24LocalizedNumberFormatter10formatImplEPNS0_4impl20UFormattedNumberDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZNK6icu_7822FormattedStringBuilder15toUnicodeStringEv(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Format6formatERKNS_11FormattableERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN6icu_7812PluralFormat14findSubMessageERKNS_14MessagePatternEiRKNS0_14PluralSelectorEPvdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, double noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, -2
  %.not = icmp eq i32 %i.j, 12
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.h) #11
  %i.l = add nsw i32 %1, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.050 = phi i32 [ %i.l, %bb.c ], [ %1, %bb.b ]
  %.049 = phi double [ %i.k, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
end_hunk_0
