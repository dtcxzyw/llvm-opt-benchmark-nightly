inline.NumInlined: 205
inline.NumDeleted: 90
begin_hunk_0_@_ZN6icu_788numparse4impl21AffixMatcherWarehouse19createAffixMatchersERKNS_6number4impl20AffixPatternProviderERNS1_24MutableMatcherCollectionERKNS1_17IgnorablesMatcherEiR10UErrorCode:bb.a
  %8 = alloca %"class.icu_78::numparse::impl::AffixPatternMatcher", align 8 ; 15 uses
  %9 = alloca %"class.icu_78::numparse::impl::AffixMatcher", align 8 ; 7 uses
  %10 = alloca %"class.icu_78::numparse::impl::AffixMatcher", align 8 ; 7 uses
  %11 = alloca %"class.icu_78::numparse::impl::AffixMatcher", align 16 ; 7 uses
  %12 = alloca %"class.icu_78::numparse::impl::AffixMatcher", align 8 ; 5 uses
  %i.c = tail call noundef zeroext i1 @_ZN6icu_788numparse4impl21AffixMatcherWarehouse13isInterestingERKNS_6number4impl20AffixPatternProviderERKNS1_17IgnorablesMatcherEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(80) %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br i1 %i.c, label %bb.b, label %bb.aa
end_hunk_0
begin_hunk_1_@_ZN6icu_788numparse4impl21AffixMatcherWarehouse19createAffixMatchersERKNS_6number4impl20AffixPatternProviderERNS1_24MutableMatcherCollectionERKNS1_17IgnorablesMatcherEiR10UErrorCode:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  br label %bb.e
end_hunk_1
begin_hunk_2_@_ZN6icu_788numparse4impl21AffixMatcherWarehouse19createAffixMatchersERKNS_6number4impl20AffixPatternProviderERNS1_24MutableMatcherCollectionERKNS1_17IgnorablesMatcherEiR10UErrorCode:bb.a
_ZN12_GLOBAL__N_16equalsEPKN6icu_788numparse4impl19AffixPatternMatcherES5_.exit124.thread141: ; preds = %.thread, %_ZN12_GLOBAL__N_16equalsEPKN6icu_788numparse4impl19AffixPatternMatcherES5_.exit124, %_ZN12_GLOBAL__N_16equalsEPKN6icu_788numparse4impl19AffixPatternMatcherES5_.exit120.thread135
  %.178139 = phi i32 [ %.178138, %_ZN12_GLOBAL__N_16equalsEPKN6icu_788numparse4impl19AffixPatternMatcherES5_.exit124 ], [ %i.eo, %_ZN12_GLOBAL__N_16equalsEPKN6icu_788numparse4impl19AffixPatternMatcherES5_.exit120.thread135 ], [ %.178138, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl12AffixMatcherE, i64 16), ptr null>, ptr %11, align 16
  store ptr %i.cq, ptr %i.ai, align 16
  store i32 %i.ee, ptr %i.aj, align 8
  %i.ev = add nsw i32 %.178139, 1
  %i.ew = sext i32 %.178139 to i64
end_hunk_2
