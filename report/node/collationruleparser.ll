Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/collationruleparser?download=true
inline.NumInlined: 334
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>
%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>
%"class.icu_78::UnicodeSet" = type <{ %"class.icu_78::UnicodeFilter", ptr, i32, i32, i8, [7 x i8], ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr, [25 x i32], [4 x i8] }>
%"class.icu_78::UnicodeFilter" = type { %"class.icu_78::UnicodeFunctor", %"class.icu_78::UnicodeMatcher" }
%"class.icu_78::UnicodeFunctor" = type { %"class.icu_78::UObject" }
%"class.icu_78::UnicodeMatcher" = type { ptr }
%"class.icu_78::UVector32" = type { %"class.icu_78::UObject", i32, i32, i32, ptr }

$_ZNK6icu_7813UnicodeStringeqERKS0_ = comdat any

$_ZN6icu_7813UnicodeString5setToEDs = comdat any

@.str = private unnamed_addr constant [39 x i8] c"expected a reset or setting or comment\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"reset not followed by a relation\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"reset-before strength differs from its first relation\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"reset-before strength followed by a stronger relation\00", align 1
@_ZN6icu_7812_GLOBAL__N_16BEFOREE = internal constant [8 x i16] [i16 91, i16 98, i16 101, i16 102, i16 111, i16 114, i16 101, i16 0], align 16
@.str.4 = private unnamed_addr constant [23 x i8] c"reset without position\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"in 'prefix|str', prefix and str must each start with an NFC boundary\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"missing starred-relation string\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"starred-relation string is not all NFD-inert\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"range without start in starred-relation string\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"range without end in starred-relation string\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"range start greater than end in starred-relation string\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"starred-relation string range is not all NFD-inert\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"starred-relation string range contains a surrogate\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"starred-relation string range contains U+FFFD, U+FFFE or U+FFFF\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"missing relation string\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"quoted literal text missing terminating apostrophe\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"backslash escape at the end of the rule string\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"string contains an unpaired surrogate\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"string contains U+FFFD, U+FFFE or U+FFFF\00", align 1
@_ZN6icu_7812_GLOBAL__N_19positionsE = internal unnamed_addr constant [14 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], align 16
@.str.19 = private unnamed_addr constant [4 x i16] [i16 116, i16 111, i16 112, i16 0], align 2
@.str.20 = private unnamed_addr constant [13 x i16] [i16 118, i16 97, i16 114, i16 105, i16 97, i16 98, i16 108, i16 101, i16 32, i16 116, i16 111, i16 112, i16 0], align 2
@.str.21 = private unnamed_addr constant [35 x i8] c"not a valid special reset position\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"expected a setting/option at '['\00", align 1
@.str.23 = private unnamed_addr constant [8 x i16] [i16 114, i16 101, i16 111, i16 114, i16 100, i16 101, i16 114, i16 0], align 2
@.str.24 = private unnamed_addr constant [12 x i16] [i16 98, i16 97, i16 99, i16 107, i16 119, i16 97, i16 114, i16 100, i16 115, i16 32, i16 50, i16 0], align 2
@.str.25 = private unnamed_addr constant [9 x i16] [i16 115, i16 116, i16 114, i16 101, i16 110, i16 103, i16 116, i16 104, i16 0], align 2
@.str.26 = private unnamed_addr constant [10 x i16] [i16 97, i16 108, i16 116, i16 101, i16 114, i16 110, i16 97, i16 116, i16 101, i16 0], align 2
@.str.27 = private unnamed_addr constant [14 x i16] [i16 110, i16 111, i16 110, i16 45, i16 105, i16 103, i16 110, i16 111, i16 114, i16 97, i16 98, i16 108, i16 101, i16 0], align 2
@.str.28 = private unnamed_addr constant [8 x i16] [i16 115, i16 104, i16 105, i16 102, i16 116, i16 101, i16 100, i16 0], align 2
@.str.29 = private unnamed_addr constant [12 x i16] [i16 109, i16 97, i16 120, i16 86, i16 97, i16 114, i16 105, i16 97, i16 98, i16 108, i16 101, i16 0], align 2
@.str.30 = private unnamed_addr constant [6 x i16] [i16 115, i16 112, i16 97, i16 99, i16 101, i16 0], align 2
@.str.31 = private unnamed_addr constant [6 x i16] [i16 112, i16 117, i16 110, i16 99, i16 116, i16 0], align 2
@.str.32 = private unnamed_addr constant [7 x i16] [i16 115, i16 121, i16 109, i16 98, i16 111, i16 108, i16 0], align 2
@.str.33 = private unnamed_addr constant [9 x i16] [i16 99, i16 117, i16 114, i16 114, i16 101, i16 110, i16 99, i16 121, i16 0], align 2
@.str.34 = private unnamed_addr constant [10 x i16] [i16 99, i16 97, i16 115, i16 101, i16 70, i16 105, i16 114, i16 115, i16 116, i16 0], align 2
@.str.35 = private unnamed_addr constant [4 x i16] [i16 111, i16 102, i16 102, i16 0], align 2
@.str.36 = private unnamed_addr constant [6 x i16] [i16 108, i16 111, i16 119, i16 101, i16 114, i16 0], align 2
@.str.37 = private unnamed_addr constant [6 x i16] [i16 117, i16 112, i16 112, i16 101, i16 114, i16 0], align 2
@.str.38 = private unnamed_addr constant [10 x i16] [i16 99, i16 97, i16 115, i16 101, i16 76, i16 101, i16 118, i16 101, i16 108, i16 0], align 2
@.str.39 = private unnamed_addr constant [14 x i16] [i16 110, i16 111, i16 114, i16 109, i16 97, i16 108, i16 105, i16 122, i16 97, i16 116, i16 105, i16 111, i16 110, i16 0], align 2
@.str.40 = private unnamed_addr constant [16 x i16] [i16 110, i16 117, i16 109, i16 101, i16 114, i16 105, i16 99, i16 79, i16 114, i16 100, i16 101, i16 114, i16 105, i16 110, i16 103, i16 0], align 2
@.str.41 = private unnamed_addr constant [10 x i16] [i16 104, i16 105, i16 114, i16 97, i16 103, i16 97, i16 110, i16 97, i16 81, i16 0], align 2
@.str.42 = private unnamed_addr constant [32 x i8] c"[hiraganaQ on] is not supported\00", align 1
@.str.43 = private unnamed_addr constant [7 x i16] [i16 105, i16 109, i16 112, i16 111, i16 114, i16 116, i16 0], align 2
@.str.44 = private unnamed_addr constant [42 x i8] c"expected language tag in [import langTag]\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@__const._ZN6icu_7819CollationRuleParser12parseSettingER10UErrorCode.und = private unnamed_addr constant [4 x i8] c"und\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"collation\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"[import langTag] is not supported\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"[import langTag] failed\00", align 1
@.str.50 = private unnamed_addr constant [9 x i16] [i16 111, i16 112, i16 116, i16 105, i16 109, i16 105, i16 122, i16 101, i16 0], align 2
@.str.51 = private unnamed_addr constant [21 x i16] [i16 115, i16 117, i16 112, i16 112, i16 114, i16 101, i16 115, i16 115, i16 67, i16 111, i16 110, i16 116, i16 114, i16 97, i16 99, i16 116, i16 105, i16 111, i16 110, i16 115, i16 0], align 2
@.str.52 = private unnamed_addr constant [27 x i8] c"not a valid setting/option\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"unknown script or reorder code\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"others\00", align 1
@.str.55 = private unnamed_addr constant [3 x i16] [i16 111, i16 110, i16 0], align 2
@.str.56 = private unnamed_addr constant [39 x i8] c"unbalanced UnicodeSet pattern brackets\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"not a valid UnicodeSet pattern\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"missing option-terminating ']' after UnicodeSet pattern\00", align 1
@_ZZNK6icu_7819CollationRuleParser9readWordsEiRNS_13UnicodeStringEE2sp = internal constant i16 32, align 2
@_ZTVN6icu_7819CollationRuleParser4SinkE = dso_local local_unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN6icu_7819CollationRuleParser4SinkE, ptr @_ZN6icu_7819CollationRuleParser4SinkD2Ev, ptr @_ZN6icu_7819CollationRuleParser4SinkD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6icu_7819CollationRuleParser4Sink20suppressContractionsERKNS_10UnicodeSetERPKcR10UErrorCode, ptr @_ZN6icu_7819CollationRuleParser4Sink8optimizeERKNS_10UnicodeSetERPKcR10UErrorCode] }, align 8
@_ZTIN6icu_7819CollationRuleParser4SinkE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7819CollationRuleParser4SinkE, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7819CollationRuleParser4SinkE = dso_local constant [36 x i8] c"N6icu_7819CollationRuleParser4SinkE\00", align 1
@_ZTIN6icu_787UObjectE = external constant ptr
@_ZTVN6icu_7819CollationRuleParser8ImporterE = dso_local local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6icu_7819CollationRuleParser8ImporterE, ptr @_ZN6icu_7819CollationRuleParser8ImporterD2Ev, ptr @_ZN6icu_7819CollationRuleParser8ImporterD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN6icu_7819CollationRuleParser8ImporterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7819CollationRuleParser8ImporterE, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTSN6icu_7819CollationRuleParser8ImporterE = dso_local constant [40 x i8] c"N6icu_7819CollationRuleParser8ImporterE\00", align 1
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8
@.str.59 = private unnamed_addr constant [25 x i8] c"first tertiary ignorable\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"last tertiary ignorable\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"first secondary ignorable\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"last secondary ignorable\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"first primary ignorable\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"last primary ignorable\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"first variable\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"last variable\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"first regular\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"last regular\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"first implicit\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"last implicit\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"first trailing\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"last trailing\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"currency\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"digit\00", align 1

@_ZN6icu_7819CollationRuleParser4SinkD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CollationRuleParser4SinkD2Ev
@_ZN6icu_7819CollationRuleParser8ImporterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CollationRuleParser8ImporterD2Ev
@_ZN6icu_7819CollationRuleParserC1EPKNS_13CollationDataER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6icu_7819CollationRuleParserC2EPKNS_13CollationDataER10UErrorCode
@_ZN6icu_7819CollationRuleParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CollationRuleParserD2Ev

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser4SinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser4SinkD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser4Sink20suppressContractionsERKNS_10UnicodeSetERPKcR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser4Sink8optimizeERKNS_10UnicodeSetERPKcR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser8ImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser8ImporterD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819CollationRuleParserC2EPKNS_13CollationDataER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(76) initializes((0, 76)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_7811Normalizer214getNFDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef ptr @_ZN6icu_7811Normalizer214getNFCInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.f, i8 0, i64 44, i1 false)
  ret void
}

declare noundef ptr @_ZN6icu_7811Normalizer214getNFDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef ptr @_ZN6icu_7811Normalizer214getNFCInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7819CollationRuleParserD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(76) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringERNS_17CollationSettingsEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(852) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %3, ptr %i.d, align 8
  %.not6 = icmp eq ptr %3, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %3, align 4
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 -1, ptr %i.f, align 4
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i16 0, ptr %i.h, align 4
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i16 0, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.k, align 8
  tail call void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp slt i16 %i.f, 0
  %i.h = ashr i16 %i.f, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %i.q = phi i32 [ %i.l, %.lr.ph ], [ %i.bc, %select.unfold ]
  %i.r = phi i16 [ %i.f, %.lr.ph ], [ %i.aw, %select.unfold ]
  %i.s = phi ptr [ %1, %.lr.ph ], [ %i.au, %select.unfold ] ; 2 uses
  %i.t = phi i32 [ 0, %.lr.ph ], [ %i.at, %select.unfold ] ; 2 uses
  %i.u = icmp ult i32 %i.t, %i.q
  br i1 %i.u, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.d:                                             ; preds = %bb.c
  %i.v = and i16 %i.r, 2
  %.not.i.i.i = icmp eq i16 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 10
end_hunk_0
begin_hunk_1_@_ZN6icu_7819CollationRuleParser12parseSettingER10UErrorCode:bb.a
bb.ap:                                            ; preds = %bb.ao
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.je = load ptr, ptr %i.jd, align 8
  call void @_ZN6icu_7817CollationSettings7setFlagEi18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852) %i.je, i32 noundef 1024, i32 noundef %i.jc, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  store i32 %i.aj, ptr %i.f, align 8
  br label %bb.ci

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #11
  store ptr @.str.39, ptr %37, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %36, i8 noundef signext 1, ptr noundef nonnull align 8 %37, i32 noundef -1) #11
  %i.jf = call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %36)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %36) #11
  %i.jg = load ptr, ptr %37, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.jg) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #11
  br i1 %i.jf, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jh = call noundef i32 @_ZN6icu_7819CollationRuleParser13getOnOffValueERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %7) ; 2 uses
  %.not149 = icmp eq i32 %i.jh, -1
  br i1 %.not149, label %.critedge156, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8
  call void @_ZN6icu_7817CollationSettings7setFlagEi18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852) %i.jj, i32 noundef 1, i32 noundef %i.jh, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  store i32 %i.aj, ptr %i.f, align 8
  br label %bb.ci

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #11
  store ptr @.str.40, ptr %39, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %38, i8 noundef signext 1, ptr noundef nonnull align 8 %39, i32 noundef -1) #11
  %i.jk = call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %38)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %38) #11
  %i.jl = load ptr, ptr %39, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.jl) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #11
  br i1 %i.jk, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jm = call noundef i32 @_ZN6icu_7819CollationRuleParser13getOnOffValueERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %7) ; 2 uses
  %.not148 = icmp eq i32 %i.jm, -1
  br i1 %.not148, label %.critedge156, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8
  call void @_ZN6icu_7817CollationSettings7setFlagEi18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852) %i.jo, i32 noundef 2, i32 noundef %i.jm, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  store i32 %i.aj, ptr %i.f, align 8
  br label %bb.ci

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #11
  store ptr @.str.41, ptr %41, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %40, i8 noundef signext 1, ptr noundef nonnull align 8 %41, i32 noundef -1) #11
  %i.jp = call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %40)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %40) #11
  %i.jq = load ptr, ptr %41, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.jq) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #11
  br i1 %i.jp, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.jr = call noundef i32 @_ZN6icu_7819CollationRuleParser13getOnOffValueERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %7)
  switch i32 %i.jr, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit206 [
    i32 -1, label %.critedge156
    i32 17, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.js = load i32, ptr %1, align 4
  %i.jt = icmp slt i32 %i.js, 1
  br i1 %i.jt, label %bb.az, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit206

bb.az:                                            ; preds = %bb.ay
  store i32 3, ptr %1, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.42, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jw = load ptr, ptr %i.jv, align 8
  %.not4.i205 = icmp eq ptr %i.jw, null
  br i1 %.not4.i205, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit206, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit206

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit206: ; preds = %bb.ax, %bb.ba, %bb.az, %bb.ay
  store i32 %i.aj, ptr %i.f, align 8
  br label %bb.ci

bb.bb:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #11
  store ptr @.str.43, ptr %43, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %42, i8 noundef signext 1, ptr noundef nonnull align 8 %43, i32 noundef -1) #11
  %i.jx = call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %42)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %42) #11
  %i.jy = load ptr, ptr %43, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.jy) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #11
  br i1 %i.jx, label %bb.bc, label %.critedge156

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #11
  %i.jz = getelementptr inbounds nuw i8, ptr %44, i64 13 ; 2 uses
  store ptr %i.jz, ptr %44, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 40, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %44, i64 12 ; 2 uses
  store i8 0, ptr %i.kb, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %44, i64 56 ; 2 uses
  store i32 0, ptr %i.kc, align 8
  store i8 0, ptr %i.jz, align 1
  %i.kd = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %44, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(4) %1) #11 ; 0 uses
  %i.ke = load i32, ptr %1, align 4
  %i.kf = icmp eq i32 %i.ke, 7
  br i1 %i.kf, label %bb.cg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #11
  %i.kg = load ptr, ptr %44, align 8
  call void @_Z25ulocimp_forLanguageTag_78PKciPiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %45, ptr noundef %i.kg, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  %i.kh = load i32, ptr %1, align 4
  %i.ki = icmp slt i32 %i.kh, 1
  br i1 %i.ki, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kj = load i32, ptr %i.a, align 4
  %i.kk = load i32, ptr %i.kc, align 8
  %.not139 = icmp eq i32 %i.kj, %i.kk
  br i1 %.not139, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  store i32 3, ptr %1, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.44, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kn = load ptr, ptr %i.km, align 8
  %.not4.i207 = icmp eq ptr %i.kn, null
  br i1 %.not4.i207, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit208, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit208

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #11
  %i.ko = load ptr, ptr %45, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.kq = load i32, ptr %i.kp, align 8
  %i.kr = sext i32 %i.kq to i64
  call void @_Z22ulocimp_getBaseName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %46, i64 %i.kr, ptr %i.ko, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  %i.ks = load i32, ptr %1, align 4
  %i.kt = icmp slt i32 %i.ks, 1
  br i1 %i.kt, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 3, ptr %1, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.44, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8
  %.not4.i211 = icmp eq ptr %i.kw, null
  br i1 %.not4.i211, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit212, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit212

bb.bk:                                            ; preds = %bb.bh
  %i.kx = getelementptr inbounds nuw i8, ptr %46, i64 56 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8
  %.not275.a = icmp eq i32 %i.ky, 0
  br i1 %.not275.a, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %47, ptr noundef nonnull @.str.45) #11
  %i.kz = load ptr, ptr %47, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.lb = load i32, ptr %i.la, align 8
  %i.lc = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8copyFromENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %46, ptr %i.kz, i32 %i.lb, ptr noundef nonnull align 4 dereferenceable(4) %1) #11 ; 0 uses
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.ld = load ptr, ptr %46, align 8
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = icmp eq i8 %i.le, 95
  br i1 %i.lf, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.lg = call noundef ptr @_ZN6icu_7810CharString15getAppendBufferEiiRiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %46, i32 noundef 3, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  %i.lh = load ptr, ptr %46, align 8              ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 3
  %i.lj = load i32, ptr %i.kx, align 8
  %i.lk = sext i32 %i.lj to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.li, ptr align 1 %i.lh, i64 %i.lk, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lh, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN6icu_7819CollationRuleParser12parseSettingER10UErrorCode.und, i64 3, i1 false)
  %i.ll = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %46, ptr noundef %i.lg, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #11
  %i.lm = load ptr, ptr %45, align 8
  call void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %48, ptr noundef %i.lm, i64 9, ptr nonnull @.str.46, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  %i.ln = load i32, ptr %1, align 4
  %i.lo = icmp slt i32 %i.ln, 1
  br i1 %i.lo, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i32 3, ptr %1, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.44, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8
  %.not4.i213 = icmp eq ptr %i.lr, null
  br i1 %.not4.i213, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214

bb.br:                                            ; preds = %bb.bo
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lt = load ptr, ptr %i.ls, align 8            ; 3 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  store i32 3, ptr %1, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.47, ptr %i.lv, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lx = load ptr, ptr %i.lw, align 8
  %.not4.i215 = icmp eq ptr %i.lx, null
  br i1 %.not4.i215, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %49, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i16 2, ptr %i.ly, align 8
  %i.lz = load ptr, ptr %46, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %48, i64 56
  %i.mb = load i32, ptr %i.ma, align 8
  %.not276 = icmp eq i32 %i.mb, 0
  %i.mc = load ptr, ptr %48, align 8
  %spec.select = select i1 %.not276, ptr @.str.48, ptr %i.mc
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.me = load ptr, ptr %i.lt, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef %i.lz, ptr noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  %i.mh = load i32, ptr %1, align 4
  %i.mi = icmp slt i32 %i.mh, 1
  br i1 %i.mi, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mj = load ptr, ptr %i.md, align 8
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr @.str.49, ptr %i.md, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %bb.cc

bb.by:                                            ; preds = %bb.bu
  %i.ml = load ptr, ptr %i.q, align 8
  %i.mm = load i32, ptr %i.f, align 8
  call void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.mn = load i32, ptr %1, align 4
  %i.mo = icmp slt i32 %i.mn, 1
  br i1 %i.mo, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8            ; 2 uses
  %.not146 = icmp eq ptr %i.mq, null
  br i1 %.not146, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %i.mm, ptr %i.mr, align 4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %bb.by
  store ptr %i.ml, ptr %i.q, align 8
  store i32 %i.aj, ptr %i.f, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bx
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #11
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214: ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.cc
  %i.ms = getelementptr inbounds nuw i8, ptr %48, i64 12
  %i.mt = load i8, ptr %i.ms, align 4
  %.not.i.i.i217.a = icmp eq i8 %i.mt, 0
  br i1 %.not.i.i.i217.a, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214
  %i.mu = load ptr, ptr %48, align 8
  call void @uprv_free_78(ptr noundef %i.mu) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit214, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #11
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit212

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit212: ; preds = %bb.bj, %bb.bi, %_ZN6icu_7810CharStringD2Ev.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %46, i64 12
  %i.mw = load i8, ptr %i.mv, align 4
  %.not.i.i.i218 = icmp eq i8 %i.mw, 0
  br i1 %.not.i.i.i218, label %_ZN6icu_7810CharStringD2Ev.exit219, label %bb.ce

bb.ce:                                            ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit212
  %i.mx = load ptr, ptr %46, align 8
  call void @uprv_free_78(ptr noundef %i.mx) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit219

_ZN6icu_7810CharStringD2Ev.exit219:               ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit212, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #11
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit208

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit208: ; preds = %bb.bg, %bb.bf, %_ZN6icu_7810CharStringD2Ev.exit219
  %i.my = getelementptr inbounds nuw i8, ptr %45, i64 12
  %i.mz = load i8, ptr %i.my, align 4
  %.not.i.i.i220 = icmp eq i8 %i.mz, 0
  br i1 %.not.i.i.i220, label %_ZN6icu_7810CharStringD2Ev.exit221, label %bb.cf

bb.cf:                                            ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit208
  %i.na = load ptr, ptr %45, align 8
  call void @uprv_free_78(ptr noundef %i.na) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit221

_ZN6icu_7810CharStringD2Ev.exit221:               ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit208, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bc, %_ZN6icu_7810CharStringD2Ev.exit221
  %i.nb = load i8, ptr %i.kb, align 4
  %.not.i.i.i222 = icmp eq i8 %i.nb, 0
  br i1 %.not.i.i.i222, label %_ZN6icu_7810CharStringD2Ev.exit223, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nc = load ptr, ptr %44, align 8
  call void @uprv_free_78(ptr noundef %i.nc) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit223

_ZN6icu_7810CharStringD2Ev.exit223:               ; preds = %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #11
  br label %bb.ci

.critedge156:                                     ; preds = %bb.ax, %bb.w, %bb.x, %bb.au, %bb.ar, %bb.ao, %bb.am, %bb.ai, %bb.ad, %bb.bb
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit226.thread

bb.ci:                                            ; preds = %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit206, %bb.av, %bb.as, %bb.ap, %.thread265, %.thread260, %.thread255, %.thread253, %_ZN6icu_7810CharStringD2Ev.exit223
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit234

bb.cj:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #11
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %50) #11
  %i.nd = call noundef i32 @_ZN6icu_7819CollationRuleParser15parseUnicodeSetEiRNS_10UnicodeSetER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(200) %50, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ne = load i32, ptr %1, align 4
  %i.nf = icmp slt i32 %i.ne, 1
  br i1 %i.nf, label %bb.ck, label %.critedge180

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #11
  store ptr @.str.50, ptr %52, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %51, i8 noundef signext 1, ptr noundef nonnull align 8 %52, i32 noundef -1) #11
  %i.ng = load i16, ptr %i.e, align 8             ; 3 uses
  %i.nh = and i16 %i.ng, 1
  %.not.i227 = icmp eq i16 %i.nh, 0
  br i1 %.not.i227, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ni = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.nj = load i16, ptr %i.ni, align 8
  %i.nk = trunc i16 %i.nj to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit232

bb.cm:                                            ; preds = %bb.ck
end_hunk_1
begin_hunk_2_@_ZN6icu_7819CollationRuleParser15parseReorderingERKNS_13UnicodeStringER10UErrorCode:bb.a
_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i
  %.pre.i33 = load i32, ptr %i.t, align 8
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i, %bb.m
  %i.bg = phi i32 [ %.pre.i33, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i ], [ %i.bb, %bb.m ]
  %i.bh = load ptr, ptr %i.v, align 8
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bi
  store i32 %i.au, ptr %i.bj, align 4
  %i.bk = load i32, ptr %i.t, align 8
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.t, align 8
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i
  %i.bm = load i32, ptr %2, align 4
  %i.bn = icmp slt i32 %i.bm, 1
  br i1 %i.bn, label %bb.f, label %.critedge, !llvm.loop !21

bb.n:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.v, align 8
  %i.bt = load i32, ptr %i.t, align 8
  call void @_ZN6icu_7817CollationSettings13setReorderingERKNS_13CollationDataEPKiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852) %i.bp, ptr noundef nonnull align 8 dereferenceable(140) %i.br, ptr noundef %i.bs, i32 noundef %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %bb.l, %bb.k, %bb.j, %bb.n
  %i.bu = load i8, ptr %i.r, align 4
  %.not.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bv = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.bv) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %.critedge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %_ZN6icu_7810CharStringD2Ev.exit
  call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.p, %bb.a
  ret void
}

declare void @_ZN6icu_7817CollationSettings11setStrengthEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN6icu_7817CollationSettings20setAlternateHandlingE18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN6icu_7817CollationSettings14setMaxVariableEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #5

declare void @_ZN6icu_7817CollationSettings12setCaseFirstE18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -1, 18) i32 @_ZN6icu_7819CollationRuleParser13getOnOffValueERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr @.str.55, ptr %2, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef -1) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8
  %i.f = trunc i16 %i.e to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i16 %i.b, 0
  %i.h = ashr i16 %i.b, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = and i16 %i.n, 1
  %.not9.i = icmp eq i16 %i.u, 0
  %i.v = icmp eq i32 %i.l, %i.t
  %or.cond.i = and i1 %.not9.i, %i.v
  br i1 %or.cond.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.w = and i16 %i.n, 2
  %.not.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i.i, ptr %i.z, ptr %i.x
  %i.ab = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aa, i32 noundef %i.l) #11
  %i.ac = icmp ne i8 %i.ab, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.b, %bb.d
  %.0.i = phi i1 [ %i.f, %bb.b ], [ %i.ac, %bb.d ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #11
  %i.ad = load ptr, ptr %2, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ad) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br i1 %.0.i, label %bb.i, label %bb.e

.critedge:                                        ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #11
  %i.ae = load ptr, ptr %2, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ae) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr @.str.35, ptr %4, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext 1, ptr noundef nonnull align 8 %4, i32 noundef -1) #11
  %i.af = load i16, ptr %i.a, align 8             ; 3 uses
  %i.ag = and i16 %i.af, 1
  %.not.i2 = icmp eq i16 %i.ag, 0
  br i1 %.not.i2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i16, ptr %i.ah, align 8
  %.fr = freeze i16 %i.ai
  %i.aj = trunc i16 %.fr to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp slt i16 %i.af, 0
  %i.al = ashr i16 %i.af, 5
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = select i1 %i.ak, i32 %i.ao, i32 %i.am   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i16, ptr %i.aq, align 8            ; 4 uses
  %i.as = icmp slt i16 %i.ar, 0
  %i.at = ashr i16 %i.ar, 5
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = select i1 %i.as, i32 %i.aw, i32 %i.au
  %i.ay = and i16 %i.ar, 1
  %.not9.i4 = icmp eq i16 %i.ay, 0
  %i.az = icmp eq i32 %i.ap, %i.ax
  %or.cond.i5 = and i1 %.not9.i4, %i.az
  br i1 %or.cond.i5, label %bb.h, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7

bb.h:                                             ; preds = %bb.g
  %i.ba = and i16 %i.ar, 2
  %.not.i.i.i6 = icmp eq i16 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = select i1 %.not.i.i.i6, ptr %i.bd, ptr %i.bb
  %i.bf = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.be, i32 noundef %i.ap) #11
  %i.bg = icmp ne i8 %i.bf, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7

_ZNK6icu_7813UnicodeStringeqERKS0_.exit7:         ; preds = %bb.f, %bb.g, %bb.h
  %.0.i3 = phi i1 [ %i.aj, %bb.f ], [ %i.bg, %bb.h ], [ false, %bb.g ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #11
  %i.bh = load ptr, ptr %4, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bh) #11, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %spec.select = select i1 %.0.i3, i32 16, i32 -1
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %.0 = phi i32 [ 17, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ %spec.select, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit7 ]
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_Z25ulocimp_forLanguageTag_78PKciPiR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_Z22ulocimp_getBaseName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8copyFromENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #5

declare noundef ptr @_ZN6icu_7810CharString15getAppendBufferEiiRiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7819CollationRuleParser15parseUnicodeSetEiRNS_10UnicodeSetER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %.fr55 = freeze i16 %i.d                        ; 3 uses
  %i.e = icmp slt i16 %.fr55, 0
  %i.f = lshr i16 %.fr55, 5
  %i.g = zext nneg i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g       ; 7 uses
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = and i16 %.fr55, 2
  %.not.i.i.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = sext i32 %1 to i64                       ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us ], [ %i.o, %.lr.ph ] ; 3 uses
  %.02651.us = phi i32 [ %.2.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us ], [ 0, %.lr.ph ] ; 4 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 3 uses
  %i.p = trunc nsw i64 %indvars.iv62 to i32
  %i.q = icmp ugt i32 %i.j, %i.p
  br i1 %i.q, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us

_ZNK6icu_7813UnicodeString6charAtEi.exit.us:      ; preds = %.lr.ph.split.us
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv62
  %i.t = load i16, ptr %i.s, align 2
  switch i16 %i.t, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us [
    i16 91, label %bb.c
    i16 93, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us
  %i.u = add nsw i32 %.02651.us, -1               ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.split.us, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us
  %i.w = add nsw i32 %.02651.us, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, %bb.c, %bb.b, %.lr.ph.split.us
  %.2.us = phi i32 [ %i.u, %bb.b ], [ %i.w, %bb.c ], [ %.02651.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit.us ], [ %.02651.us, %.lr.ph.split.us ]
  %i.x = trunc nsw i64 %indvars.iv.next63 to i32
  %i.y = icmp eq i32 %i.j, %i.x
  br i1 %i.y, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us, %bb.a
  %.025.lcssa = phi i32 [ %1, %bb.a ], [ %i.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us ], [ %i.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ] ; 3 uses
  %i.z = load i32, ptr %3, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.d:                                             ; preds = %._crit_edge
  store i32 3, ptr %3, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.56, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not4.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %i.o, %.lr.ph ] ; 3 uses
  %.02651 = phi i32 [ %.2, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 0, %.lr.ph ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ae = trunc nsw i64 %indvars.iv to i32
  %i.af = icmp ugt i32 %i.j, %i.ae
  br i1 %i.af, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %.lr.ph.split
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2
  switch i16 %i.ah, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 91, label %bb.f
    i16 93, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ai = add nsw i32 %.02651, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.aj = add nsw i32 %.02651, -1                 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.split.us, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %.lr.ph.split, %bb.g, %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.2 = phi i32 [ %i.aj, %bb.g ], [ %i.ai, %bb.f ], [ %.02651, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.02651, %.lr.ph.split ]
  %i.al = trunc nsw i64 %indvars.iv.next to i32
  %i.am = icmp eq i32 %i.j, %i.al
  br i1 %i.am, label %._crit_edge, label %.lr.ph.split

.split.us:                                        ; preds = %bb.g, %bb.b
  %.us-phi.in = phi i64 [ %indvars.iv.next63, %bb.b ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.us-phi = trunc i64 %.us-phi.in to i32         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.an = sub nsw i32 %.us-phi, %1
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef %1, i32 noundef %i.an) #11
  %i.ao = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ap = load i32, ptr %3, align 4
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.split.us
  store i32 3, ptr %3, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.57, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  %.not4.i34 = icmp eq ptr %i.at, null
  br i1 %.not4.i34, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.j:                                             ; preds = %.split.us
  %i.au = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i16, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp slt i16 %i.aw, 0
  %i.ay = ashr i16 %i.aw, 5
  %i.az = sext i16 %i.ay to i32                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = select i1 %i.ax, i32 %i.bb, i32 %i.az   ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, %.us-phi
  br i1 %i.bd, label %.lr.ph.preheader.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %sext = shl i64 %.us-phi.in, 32
  %i.be = ashr exact i64 %sext, 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.be, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.bf = phi i32 [ %i.bc, %.lr.ph.preheader.i ], [ %i.cb, %bb.l ]
  %i.bg = phi i16 [ %i.aw, %.lr.ph.preheader.i ], [ %i.bv, %bb.l ]
  %i.bh = phi ptr [ %i.au, %.lr.ph.preheader.i ], [ %.pre.pre, %bb.l ] ; 2 uses
  %.04.i = phi i32 [ %.us-phi, %.lr.ph.preheader.i ], [ %i.bt, %bb.l ]
  %i.bi = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bj = icmp ugt i32 %i.bf, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bk = and i16 %i.bg, 2
  %.not.i.i.i.i = icmp eq i16 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = select i1 %.not.i.i.i.i, ptr %i.bn, ptr %i.bl
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.k, %.lr.ph.i
  %.0.i.i.i = phi i32 [ %i.br, %bb.k ], [ 65535, %.lr.ph.i ]
  %i.bs = call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i.i) #11
  %.not.i = icmp eq i8 %i.bs, 0
  %.pre.pre = load ptr, ptr %i.a, align 8         ; 7 uses
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit.loopexit_crit_edge, label %bb.l

_ZNK6icu_7813UnicodeString6charAtEi.exit.i._ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit.loopexit_crit_edge: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 8
  %.pre65.pre = load i16, ptr %.phi.trans.insert.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert66.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
end_hunk_2
