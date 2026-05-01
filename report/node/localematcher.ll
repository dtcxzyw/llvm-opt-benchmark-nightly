inline.NumInlined: 201
inline.NumDeleted: 72
begin_hunk_0_@_ZN6icu_7813LocaleMatcherC2ERKNS0_7BuilderER10UErrorCode:bb.a
bb.a:
  %3 = alloca %"struct.icu_78::LSR", align 8      ; 9 uses
  %4 = alloca %"struct.icu_78::LSR", align 8      ; 13 uses
  %5 = alloca %"struct.icu_78::LSR", align 8      ; 12 uses
  %6 = alloca %"class.icu_78::MaybeStackArray", align 8 ; 10 uses
  %7 = alloca %"struct.icu_78::LSR", align 8      ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7813LocaleMatcherC2ERKNS0_7BuilderER10UErrorCode:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %i.bu = phi ptr [ %i.br, %bb.n ], [ %i.bx, %bb.o ] ; 5 uses
  store ptr @.str, ptr %i.bu, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @.str.1, ptr %9, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr @.str.1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
end_hunk_1
begin_hunk_2_@_ZN6icu_7813LocaleMatcherC2ERKNS0_7BuilderER10UErrorCode:bb.a
  br i1 %.not133181, label %.lr.ph, label %.critedge143

.lr.ph:                                           ; preds = %bb.q
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 32
end_hunk_2
begin_hunk_3_@_ZN6icu_7813LocaleMatcherC2ERKNS0_7BuilderER10UErrorCode:bb.a
  br i1 %i.dd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr @.str, ptr %5, align 8, !alias.scope !19
  store ptr @.str.1, ptr %10, align 8, !alias.scope !19
  store ptr @.str.1, ptr %i.cf, align 8, !alias.scope !19
  store ptr null, ptr %i.cg, align 8, !alias.scope !19
  %i.de = call noundef i32 @_ZN6icu_783LSR14indexForRegionEPKc(ptr noundef nonnull @.str.1) #14, !noalias !19
  store i32 %i.de, ptr %i.ch, align 8, !alias.scope !19
  store i32 7, ptr %i.ci, align 4, !alias.scope !19
  store i32 0, ptr %i.cj, align 8, !alias.scope !19
  br label %_ZN6icu_7812_GLOBAL__N_118getMaximalLsrOrUndERKNS_13LikelySubtagsERKNS_6LocaleER10UErrorCode.exit151
end_hunk_3
begin_hunk_4_@_ZNK6icu_7813LocaleMatcher16getBestSuppIndexENS_3LSREPNS_17LocaleLsrIteratorER10UErrorCode
define dso_local range(i64 0, 8589934592) i64 @_ZNK6icu_7813LocaleMatcher16getBestSuppIndexENS_3LSREPNS_17LocaleLsrIteratorER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"struct.icu_78::LSR", align 8      ; 12 uses
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.loopexit
end_hunk_4
begin_hunk_5_@_ZNK6icu_7813LocaleMatcher16getBestSuppIndexENS_3LSREPNS_17LocaleLsrIteratorER10UErrorCode:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
end_hunk_5
begin_hunk_6_@_ZNK6icu_7813LocaleMatcher16getBestSuppIndexENS_3LSREPNS_17LocaleLsrIteratorER10UErrorCode:bb.a
  br i1 %i.ch, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr @.str, ptr %4, align 8, !alias.scope !38
  store ptr @.str.1, ptr %5, align 8, !alias.scope !38
  store ptr @.str.1, ptr %i.s, align 8, !alias.scope !38
  store ptr null, ptr %i.t, align 8, !alias.scope !38
  %i.ci = call noundef i32 @_ZN6icu_783LSR14indexForRegionEPKc(ptr noundef nonnull @.str.1) #14, !noalias !38
  store i32 %i.ci, ptr %i.u, align 8, !alias.scope !38
  store i32 7, ptr %i.v, align 4, !alias.scope !38
  store i32 0, ptr %i.w, align 8, !alias.scope !38
  br label %_ZN6icu_7817LocaleLsrIterator4nextER10UErrorCode.exit
end_hunk_6
