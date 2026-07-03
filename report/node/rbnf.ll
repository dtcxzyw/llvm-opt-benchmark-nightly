inline.NumInlined: 300
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7821RuleBasedNumberFormat6formatElRKNS_13UnicodeStringERS1_RNS_13FieldPositionER10UErrorCode:bb.a
_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i: ; preds = %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.i, %bb.g, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.01328.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.as, null
  br i1 %.not17.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

._crit_edge.i:                                    ; preds = %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i, %.preheader.i
  store i32 1, ptr %5, align 4
  br label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread

_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit: ; preds = %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.i, %bb.f
  %i.at = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7821RuleBasedNumberFormat6formatElPNS_9NFRuleSetERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  br label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread

_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread: ; preds = %._crit_edge.i, %bb.d, %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8 ; 4 uses
  br i1 %i.a, label %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge, label %bb.b

._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre5 = load i32, ptr %.phi.trans.insert4, align 4
  %.pre6 = ashr i16 %.pre, 5
  %.pre7 = sext i16 %.pre6 to i32
  br label %_ZNK6icu_7813UnicodeString8pinIndexERi.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i16 %.pre, 0
  %i.c = ashr i16 %.pre, 5
  %i.d = sext i16 %i.c to i32                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = select i1 %i.b, i32 %i.f, i32 %i.d
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.g)
  br label %_ZNK6icu_7813UnicodeString8pinIndexERi.exit

_ZNK6icu_7813UnicodeString8pinIndexERi.exit:      ; preds = %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge, %bb.b
  %.pre-phi8 = phi i32 [ %.pre7, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge ], [ %i.d, %bb.b ]
  %i.h = phi i32 [ %.pre5, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge ], [ %i.f, %bb.b ]
  %.0 = phi i32 [ 0, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = icmp slt i16 %.pre, 0
  %i.j = select i1 %i.i, i32 %i.h, i32 %.pre-phi8
  %i.k = sub nsw i32 %i.j, %.0
  %i.l = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i32 noundef %.0, i32 noundef %i.k) #17
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7821RuleBasedNumberFormat6formatEdRKNS_13UnicodeStringERS1_RNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.c = icmp slt i16 %.pre.i, 0
  %i.d = ashr i16 %.pre.i, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 0) ; 2 uses
  %i.i = sub nsw i32 %i.h, %spec.select.i
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 2, i32 noundef %spec.select.i, i32 noundef %i.i) #17
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %5, align 4
  br label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %5, align 4
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not16.i = icmp eq ptr %i.o, null
  %or.cond.i = select i1 %i.m, i1 true, i1 %.not16.i
  br i1 %or.cond.i, label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not1727.i = icmp eq ptr %i.p, null
  br i1 %.not1727.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i, %.lr.ph.i
  %i.s = phi ptr [ %i.p, %.lr.ph.i ], [ %i.as, %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i ] ; 4 uses
  %.01328.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.ar, %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i16, ptr %i.u, align 8              ; 3 uses
  %i.w = and i16 %i.v, 1
  %.not.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i16, ptr %.phi.trans.insert.i, align 8
  %i.y = trunc i16 %i.x to i1
  br i1 %i.y, label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i

bb.g:                                             ; preds = %bb.e
  %i.z = icmp slt i16 %i.v, 0
  %i.aa = ashr i16 %i.v, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = select i1 %i.z, i32 %i.ad, i32 %i.ab    ; 2 uses
  %i.af = load i16, ptr %.phi.trans.insert.i, align 8 ; 4 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i32, ptr %i.f, align 4
  %i.ak = select i1 %i.ag, i32 %i.aj, i32 %i.ai
  %i.al = and i16 %i.af, 1
  %.not9.i.i.i = icmp eq i16 %i.al, 0
  %i.am = icmp eq i32 %i.ae, %i.ak
  %or.cond.i.i.i = and i1 %.not9.i.i.i, %i.am
  br i1 %or.cond.i.i.i, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.i, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i

_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.i: ; preds = %bb.g
  %i.an = and i16 %i.af, 2
  %.not.i.i.i.i.i = icmp eq i16 %i.an, 0
  %i.ao = load ptr, ptr %i.r, align 8
  %i.ap = select i1 %.not.i.i.i.i.i, ptr %i.ao, ptr %i.q
  %i.aq = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef %i.ap, i32 noundef %i.ae) #17
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i, label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit

_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i: ; preds = %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.i, %bb.g, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.01328.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.as, null
  br i1 %.not17.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

._crit_edge.i:                                    ; preds = %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread.i, %.preheader.i
  store i32 1, ptr %5, align 4
  br label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread

_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit: ; preds = %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.i, %bb.f
  tail call void @_ZNK6icu_7821RuleBasedNumberFormat6formatEdRNS_9NFRuleSetERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(163) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread

_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit.thread: ; preds = %._crit_edge.i, %bb.d, %_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode.exit, %bb.c, %bb.a
  ret ptr %3
}

declare signext i8 @uprv_isNaN_78(double noundef) local_unnamed_addr #5

declare signext i8 @uprv_isInfinite_78(double noundef) local_unnamed_addr #5

declare void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity11setToDoubleEd(ptr noundef nonnull align 8 dereferenceable(66), double noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7812NumberFormat24getMaximumFractionDigitsEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #5

declare void @_ZNK6icu_789NFRuleSet6formatEdRNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(163), double noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7821RuleBasedNumberFormat30adjustForCapitalizationContextEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3) #17 ; 2 uses
  %i.e = icmp ne i32 %i.d, 256
  %i.f = icmp eq i32 %1, 0
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i16, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0) #17
  %i.q = tail call signext i8 @u_islower_78(i32 noundef %i.p) #17
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.i, label %4

4:                                                ; preds = %bb.c
  %5 = load i32, ptr %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %bb.i, label %bb.d

bb.d:                                             ; preds = %4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.s, null
  br i1 %.not14, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.d, label %bb.i [
    i32 258, label %bb.h
    i32 259, label %bb.f
    i32 260, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.u = load i8, ptr %i.t, align 1
  %.not15 = icmp eq i8 %i.u, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 322
  %.old17 = load i8, ptr %.old, align 2
  %.not16.old = icmp eq i8 %.old17, 0
  br i1 %.not16.old, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toTitleEPNS_13BreakIteratorERKNS_6LocaleEj(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i32 noundef 768) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.c, %4, %bb.d, %bb.g, %bb.h, %bb.e, %bb.b, %bb.a
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity9setToLongEl(ptr noundef nonnull align 8 dereferenceable(66), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #6

declare void @_ZNK6icu_789NFRuleSet6formatElRNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(163), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

declare signext i8 @u_islower_78(i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toTitleEPNS_13BreakIteratorERKNS_6LocaleEj(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7821RuleBasedNumberFormat5parseERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::ParsePosition", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::ParsePosition", align 8 ; 6 uses
  %7 = alloca %"class.icu_78::Formattable", align 8 ; 6 uses
  %8 = alloca %"class.icu_78::ParsePosition", align 8 ; 9 uses
  %9 = alloca %"class.icu_78::Formattable", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_i(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 -1, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %6, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 -1, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #17
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not3541 = icmp eq ptr %i.k, null
  br i1 %.not3541, label %.loopexit.thread, label %.lr.ph

.loopexit.thread:                                 ; preds = %bb.c
  %i.l = load i32, ptr %i.d, align 8
  br label %bb.i

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread
  %i.q = phi i32 [ -1, %.lr.ph ], [ %i.al, %.thread ] ; 3 uses
  %i.r = phi i32 [ 0, %.lr.ph ], [ %i.am, %.thread ] ; 4 uses
  %i.s = phi ptr [ %i.k, %.lr.ph ], [ %i.ao, %.thread ] ; 3 uses
  %.042 = phi ptr [ %i.j, %.lr.ph ], [ %i.an, %.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 161
  %i.u = load i8, ptr %i.t, align 1
  %.not36 = icmp eq i8 %i.u, 0
  br i1 %.not36, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 162
  %i.w = load i8, ptr %i.v, align 2
  %.not37 = icmp eq i8 %i.w, 0
  br i1 %.not37, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %8, align 8
  store i32 0, ptr %i.m, align 8
  store i32 -1, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #17
  %i.x = call noundef signext i8 @_ZNK6icu_789NFRuleSet5parseERKNS_13UnicodeStringERNS_13ParsePositionEdjiRNS_11FormattableE(ptr noundef nonnull align 8 dereferenceable(163) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, double noundef f0x42B0000000000000, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(112) %9) #17 ; 0 uses
  %i.y = load i32, ptr %i.m, align 8              ; 5 uses
  %i.z = icmp sgt i32 %i.y, %i.r
  br i1 %i.z, label %bb.g, label %.thread.critedge

bb.g:                                             ; preds = %bb.f
  store i32 %i.y, ptr %i.h, align 8
  %i.aa = load i32, ptr %i.n, align 4             ; 3 uses
  store i32 %i.aa, ptr %i.i, align 4
  %i.ab = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) %9) #17 ; 0 uses
  %i.ac = load i16, ptr %i.o, align 8             ; 2 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.p, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af
  %i.ai = icmp eq i32 %i.y, %i.ah
  br i1 %i.ai, label %bb.h, label %.thread.critedge

.thread.critedge:                                 ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %i.aa, %bb.g ], [ %i.q, %bb.f ]
  %i.ak = phi i32 [ %i.y, %bb.g ], [ %i.r, %bb.f ]
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.thread

bb.h:                                             ; preds = %bb.g
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.loopexit

.thread:                                          ; preds = %.thread.critedge, %bb.e, %bb.d
  %i.al = phi i32 [ %i.aj, %.thread.critedge ], [ %i.q, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.am = phi i32 [ %i.ak, %.thread.critedge ], [ %i.r, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.042, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.ao, null
  br i1 %.not35, label %.loopexit, label %bb.d, !llvm.loop !58

.loopexit:                                        ; preds = %.thread, %bb.h
  %i.ap = phi i32 [ %i.aa, %bb.h ], [ %i.al, %.thread ]
  %i.aq = phi i32 [ %i.y, %bb.h ], [ %i.am, %.thread ] ; 2 uses
  %i.ar = load i32, ptr %i.d, align 8             ; 2 uses
  %i.as = add nsw i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.d, align 8
  %i.at = icmp sgt i32 %i.aq, 0
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit.thread, %.loopexit
  %i.au = phi i32 [ %i.l, %.loopexit.thread ], [ %i.ar, %.loopexit ]
  %i.av = phi i32 [ -1, %.loopexit.thread ], [ %i.ap, %.loopexit ]
  %spec.select = call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %i.aw = add nsw i32 %spec.select, %i.au
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %.sink = phi i32 [ %i.aw, %bb.i ], [ -1, %.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sink, ptr %i.ax, align 4
  %i.ay = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7811FormattableaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(112) %7) #17 ; 0 uses
  %i.az = call noundef i32 @_ZNK6icu_7811Formattable7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load double, ptr %i.bb, align 8         ; 6 uses
  %i.bd = call signext i8 @uprv_isNaN_78(double noundef %i.bc) #17
  %.not38 = icmp eq i8 %i.bd, 0
  br i1 %.not38, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.be = call double @uprv_trunc_78(double noundef %i.bc) #17
  %i.bf = fcmp oeq double %i.bc, %i.be
  %i.bg = fcmp oge double %i.bc, f0xC1E0000000000000
  %or.cond = and i1 %i.bg, %i.bf
  %i.bh = fcmp ole double %i.bc, f0x41DFFFFFFFC00000
  %or.cond4 = and i1 %i.bh, %or.cond
  br i1 %or.cond4, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = fptosi double %i.bc to i32
  call void @_ZN6icu_7811Formattable7setLongEi(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bi) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_i(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #5

declare noundef signext i8 @_ZNK6icu_789NFRuleSet5parseERKNS_13UnicodeStringERNS_13ParsePositionEdjiRNS_11FormattableE(ptr noundef nonnull align 8 dereferenceable(163), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), double noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5
end_hunk_0
