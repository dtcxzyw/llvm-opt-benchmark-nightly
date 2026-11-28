Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/numrange_capi?download=true
inline.NumInlined: 76
inline.NumDeleted: 45
begin_hunk_0_@_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi

declare void @_ZN6icu_786number20NumberRangeFormatter10withLocaleERKNS_6LocaleE(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberRangeFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

declare void @_ZNO6icu_786number28NumberRangeFormatterSettingsINS0_29LocalizedNumberRangeFormatterEE19numberFormatterBothEONS0_26UnlocalizedNumberFormatterE(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberRangeFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(656), ptr noundef nonnull align 8 dereferenceable(289)) local_unnamed_addr #6

declare void @_ZN6icu_786number15NumberFormatter11forSkeletonERKNS_13UnicodeStringER11UParseErrorR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZNO6icu_786number28NumberRangeFormatterSettingsINS0_29LocalizedNumberRangeFormatterEE8collapseE20UNumberRangeCollapse(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberRangeFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(656), i32 noundef) local_unnamed_addr #6

declare void @_ZNO6icu_786number28NumberRangeFormatterSettingsINS0_29LocalizedNumberRangeFormatterEE16identityFallbackE28UNumberRangeIdentityFallback(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberRangeFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(656), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(664) ptr @_ZN6icu_786number29LocalizedNumberRangeFormatteraSEOS1_(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 8 dereferenceable(664)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_786number29LocalizedNumberRangeFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6icu_786number4impl14SymbolsWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %i.g) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @unumrf_formatDoubleRange_78(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !30
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 4, !tbaa !32
  %.not9.i = icmp eq i32 %i.d, 1314014720
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %4, align 4, !tbaa !30
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %.not9.i.i = icmp eq i32 %i.g, 1178881536
  br i1 %.not9.i.i, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit
  %.sink.i.i = phi i32 [ 1, %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit ], [ 3, %bb.d ]
  store i32 %.sink.i.i, ptr %4, align 4, !tbaa !30
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  tail call void @_ZN6icu_7831FormattedValueStringBuilderImpl11resetStringEv(ptr noundef nonnull align 8 dereferenceable(300) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 2 uses
  tail call void @_ZN6icu_786number4impl15DecimalQuantity5clearEv(ptr noundef nonnull align 8 dereferenceable(66) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 2 uses
  tail call void @_ZN6icu_786number4impl15DecimalQuantity5clearEv(ptr noundef nonnull align 8 dereferenceable(66) %i.j)
  %i.k = tail call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity11setToDoubleEd(ptr noundef nonnull align 8 dereferenceable(66) %i.i, double noundef %1) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity11setToDoubleEd(ptr noundef nonnull align 8 dereferenceable(66) %i.j, double noundef %2) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = fcmp oeq double %1, %2
  tail call void @_ZNK6icu_786number29LocalizedNumberRangeFormatter10formatImplERNS0_4impl25UFormattedNumberRangeDataEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(664) %i.m, ptr noundef nonnull align 8 dereferenceable(452) %i.h, i1 noundef zeroext %i.n, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread: ; preds = %bb.a, %.sink.split.i.i, %.sink.split.i, %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit
  ret void
}

declare void @_ZN6icu_7831FormattedValueStringBuilderImpl11resetStringEv(ptr noundef nonnull align 8 dereferenceable(300)) local_unnamed_addr #6

declare void @_ZN6icu_786number4impl15DecimalQuantity5clearEv(ptr noundef nonnull align 8 dereferenceable(66)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity11setToDoubleEd(ptr noundef nonnull align 8 dereferenceable(66), double noundef) local_unnamed_addr #6

declare void @_ZNK6icu_786number29LocalizedNumberRangeFormatter10formatImplERNS0_4impl25UFormattedNumberRangeDataEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 8 dereferenceable(452), i1 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @unumrf_formatDecimalRange_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !30
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 4, !tbaa !32
  %.not9.i = icmp eq i32 %i.d, 1314014720
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %6, align 4, !tbaa !30
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  %i.e = icmp eq ptr %5, null
  br i1 %i.e, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %.not9.i.i = icmp eq i32 %i.g, 1178881536
  br i1 %.not9.i.i, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit
  %.sink.i.i = phi i32 [ 1, %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPKS1_R10UErrorCode.exit ], [ 3, %bb.d ]
  store i32 %.sink.i.i, ptr %6, align 4, !tbaa !30
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  tail call void @_ZN6icu_7831FormattedValueStringBuilderImpl11resetStringEv(ptr noundef nonnull align 8 dereferenceable(300) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 352 ; 2 uses
  tail call void @_ZN6icu_786number4impl15DecimalQuantity5clearEv(ptr noundef nonnull align 8 dereferenceable(66) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 424 ; 2 uses
  tail call void @_ZN6icu_786number4impl15DecimalQuantity5clearEv(ptr noundef nonnull align 8 dereferenceable(66) %i.j)
  %i.k = tail call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %i.i, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %i.j, ptr %3, i32 %4, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = icmp eq ptr %1, %3
  tail call void @_ZNK6icu_786number29LocalizedNumberRangeFormatter10formatImplERNS0_4impl25UFormattedNumberRangeDataEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(664) %i.m, ptr noundef nonnull align 8 dereferenceable(452) %i.h, i1 noundef zeroext %i.n, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit.thread: ; preds = %bb.a, %.sink.split.i.i, %.sink.split.i, %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPS1_R10UErrorCode.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i32 @unumrf_resultGetIdentityResult_78(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !30
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %.not9.i = icmp eq i32 %i.e, 1178881536
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %1, align 4, !tbaa !30
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread: ; preds = %.sink.split.i, %bb.a, %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  %.0 = phi i32 [ %i.g, %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit ], [ 3, %bb.a ], [ 3, %.sink.split.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @unumrf_resultGetFirstDecimalNumber_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::CharStringByteSink", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 8 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !30
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %.not9.i = icmp eq i32 %i.e, 1178881536
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %3, align 4, !tbaa !30
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.g = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %i.f, ptr noundef nonnull align 8 dereferenceable(92) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !61, !alias.scope !94
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8, !tbaa !62, !alias.scope !94
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !63, !alias.scope !94
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 0, ptr %i.k, align 8, !tbaa !65, !alias.scope !94
  store i8 0, ptr %i.h, align 1, !tbaa !66, !alias.scope !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12, !noalias !94
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6icu_786number4impl6DecNum8toStringERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !94
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #12
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !94
  %i.n = invoke noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.o = load i8, ptr %i.j, align 4, !tbaa !63
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %6, align 8, !tbaa !61
  invoke void @uprv_free_78(ptr noundef %i.p)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #13
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !69
  %.not.i.i.i14 = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i14, label %_ZN6icu_786number4impl6DecNumD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !70
  invoke void @uprv_free_78(ptr noundef %i.u)
          to label %_ZN6icu_786number4impl6DecNumD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

_ZN6icu_786number4impl6DecNumD2Ev.exit:           ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.o:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.i
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #12
  br label %.body

.body:                                            ; preds = %bb.o, %bb.h, %bb.p
  %.pn = phi { ptr, i32 } [ %7, %bb.p ], [ %i.x, %bb.o ], [ %.pn.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread: ; preds = %.sink.split.i, %bb.a, %_ZN6icu_786number4impl6DecNumD2Ev.exit
  %.012 = phi i32 [ %i.n, %_ZN6icu_786number4impl6DecNumD2Ev.exit ], [ 0, %bb.a ], [ 0, %.sink.split.i ]
  ret i32 %.012
}

declare void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66), ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !63
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !61
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !69
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !70
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable

_ZN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @unumrf_resultGetSecondDecimalNumber_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::CharStringByteSink", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 8 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !30
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %.not9.i = icmp eq i32 %i.e, 1178881536
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %3, align 4, !tbaa !30
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.g = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %i.f, ptr noundef nonnull align 8 dereferenceable(92) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !61, !alias.scope !97
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8, !tbaa !62, !alias.scope !97
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !63, !alias.scope !97
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 0, ptr %i.k, align 8, !tbaa !65, !alias.scope !97
  store i8 0, ptr %i.h, align 1, !tbaa !66, !alias.scope !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12, !noalias !97
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6icu_786number4impl6DecNum8toStringERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !97
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #12
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !97
  %i.n = invoke noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.o = load i8, ptr %i.j, align 4, !tbaa !63
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %6, align 8, !tbaa !61
  invoke void @uprv_free_78(ptr noundef %i.p)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #13
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !69
  %.not.i.i.i14 = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i14, label %_ZN6icu_786number4impl6DecNumD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !70
  invoke void @uprv_free_78(ptr noundef %i.u)
          to label %_ZN6icu_786number4impl6DecNumD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

_ZN6icu_786number4impl6DecNumD2Ev.exit:           ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.o:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.i
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #12
  br label %.body

.body:                                            ; preds = %bb.o, %bb.h, %bb.p
  %.pn = phi { ptr, i32 } [ %7, %bb.p ], [ %i.x, %bb.o ], [ %.pn.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn

_ZN6icu_7813IcuCApiHelperI21UFormattedNumberRangeNS_6number4impl25UFormattedNumberRangeImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread: ; preds = %.sink.split.i, %bb.a, %_ZN6icu_786number4impl6DecNumD2Ev.exit
  %.012 = phi i32 [ %i.n, %_ZN6icu_786number4impl6DecNumD2Ev.exit ], [ 0, %bb.a ], [ 0, %.sink.split.i ]
  ret i32 %.012
}

; Function Attrs: mustprogress nounwind uwtable
define void @unumrf_close_78(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPS1_R10UErrorCode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !32
  %.not9.i.i = icmp eq i32 %i.b, 1314014720
  br i1 %.not9.i.i, label %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPS1_R10UErrorCode.exit, label %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPS1_R10UErrorCode.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_786number29LocalizedNumberRangeFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.c) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  br label %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPS1_R10UErrorCode.exit.thread: ; preds = %bb.b, %bb.a, %_ZN6icu_7813IcuCApiHelperI21UNumberRangeFormatterNS_6number4impl25UNumberRangeFormatterDataELi1314014720EE8validateEPS1_R10UErrorCode.exit
  ret void
}

declare void @_ZN6icu_7831FormattedValueStringBuilderImplC2ENS_22FormattedStringBuilder5FieldE(ptr noundef nonnull align 8 dereferenceable(300), i8) unnamed_addr #6

declare void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7831FormattedValueStringBuilderImplD2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(300)) unnamed_addr #1

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6icu_786number4impl10MacroPropsC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.a, align 4, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.f, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 4, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i16 -3, ptr %i.h, align 4, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 -2, ptr %i.i, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.k, align 4, !tbaa !104
  store i16 -1, ptr %i.j, align 4, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 7, ptr %i.n, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 9, ptr %i.o, align 4, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.p, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 2, ptr %i.q, align 4, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.s, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.t, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i16 0, ptr %i.v, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.w, align 4, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i16 0, ptr %i.y, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  store i32 3, ptr %i.aa, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.x) #12
  tail call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.u) #12
  tail call void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.r) #12
  tail call void @_ZN6icu_786number4impl14SymbolsWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.l) #12
  tail call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %i.d) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %i.ac, %bb.d ]
  tail call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %i.c) #12
  resume { ptr, i32 } %.pn
}

declare void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl14SymbolsWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19)) unnamed_addr #1

declare void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

declare void @_ZNK6icu_786number4impl6DecNum8toStringERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN6icu_7813IcuCApiHelperI15UFormattedValueNS_19UFormattedValueImplELi1430672896EEE", !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSN6icu_7814FormattedValueE", !9, i64 0}
end_hunk_0
