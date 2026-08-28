Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationruleparser?download=true
inline.NumInlined: 359
inline.NumDeleted: 66
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

$_ZN6icu_7810CharStringD2Ev = comdat any

$__clang_call_terminate = comdat any

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
@_ZTVN6icu_7819CollationRuleParser4SinkE = local_unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN6icu_7819CollationRuleParser4SinkE, ptr @_ZN6icu_7819CollationRuleParser4SinkD1Ev, ptr @_ZN6icu_7819CollationRuleParser4SinkD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6icu_7819CollationRuleParser4Sink20suppressContractionsERKNS_10UnicodeSetERPKcR10UErrorCode, ptr @_ZN6icu_7819CollationRuleParser4Sink8optimizeERKNS_10UnicodeSetERPKcR10UErrorCode] }, align 8
@_ZTIN6icu_7819CollationRuleParser4SinkE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7819CollationRuleParser4SinkE, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7819CollationRuleParser4SinkE = constant [36 x i8] c"N6icu_7819CollationRuleParser4SinkE\00", align 1
@_ZTIN6icu_787UObjectE = external constant ptr
@_ZTVN6icu_7819CollationRuleParser8ImporterE = local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6icu_7819CollationRuleParser8ImporterE, ptr @_ZN6icu_7819CollationRuleParser8ImporterD1Ev, ptr @_ZN6icu_7819CollationRuleParser8ImporterD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN6icu_7819CollationRuleParser8ImporterE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7819CollationRuleParser8ImporterE, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTSN6icu_7819CollationRuleParser8ImporterE = constant [40 x i8] c"N6icu_7819CollationRuleParser8ImporterE\00", align 1
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

@_ZN6icu_7819CollationRuleParser4SinkD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CollationRuleParser4SinkD2Ev
@_ZN6icu_7819CollationRuleParser8ImporterD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CollationRuleParser8ImporterD2Ev
@_ZN6icu_7819CollationRuleParserC1EPKNS_13CollationDataER10UErrorCode = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6icu_7819CollationRuleParserC2EPKNS_13CollationDataER10UErrorCode
@_ZN6icu_7819CollationRuleParserD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7819CollationRuleParserD2Ev

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7819CollationRuleParser4SinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7819CollationRuleParser4SinkD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6icu_7819CollationRuleParser4Sink20suppressContractionsERKNS_10UnicodeSetERPKcR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6icu_7819CollationRuleParser4Sink8optimizeERKNS_10UnicodeSetERPKcR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7819CollationRuleParser8ImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7819CollationRuleParser8ImporterD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7819CollationRuleParserC2EPKNS_13CollationDataER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(76) initializes((0, 76)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_7811Normalizer214getNFDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %2)
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef ptr @_ZN6icu_7811Normalizer214getNFCInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %2)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.f, i8 0, i64 44, i1 false)
  ret void
}

declare noundef ptr @_ZN6icu_7811Normalizer214getNFDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef ptr @_ZN6icu_7811Normalizer214getNFCInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6icu_7819CollationRuleParserD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(76) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringERNS_17CollationSettingsEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(852) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !21
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.d, align 8, !tbaa !24
  %.not6 = icmp eq ptr %3, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %3, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 0, ptr %i.f, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i16 0, ptr %i.g, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !30
  tail call void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !21
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  store i32 0, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !32   ; 3 uses
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
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %.not.i.i.i, ptr %i.y, ptr %i.w
end_hunk_0
begin_hunk_1_@_ZN6icu_7819CollationRuleParser12parseSettingER10UErrorCode:bb.a
          to label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit346 unwind label %bb.fp

bb.fm:                                            ; preds = %bb.fe
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fn:                                            ; preds = %bb.ff
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %40) #14
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.pn220 = phi { ptr, i32 } [ %i.mj, %bb.fn ], [ %i.mi, %bb.fm ]
  %i.mk = load ptr, ptr %41, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.mk) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  br label %bb.ia

bb.fp:                                            ; preds = %bb.fl, %bb.fh
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit346: ; preds = %bb.fi, %bb.fk, %bb.fj, %bb.fl
  store i32 %i.ak, ptr %i.f, align 8, !tbaa !31
  br label %bb.hz

bb.fq:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #14
  store ptr @.str.43, ptr %43, align 8, !tbaa !38
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %42, i8 noundef signext 1, ptr noundef nonnull align 8 %43, i32 noundef -1)
          to label %bb.fr unwind label %bb.fv

bb.fr:                                            ; preds = %bb.fq
  %i.mm = invoke noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %42)
          to label %bb.fs unwind label %bb.fw

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %42) #14
  %i.mn = load ptr, ptr %43, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.mn) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  br i1 %i.mm, label %bb.ft, label %.critedge287

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #14
  %i.mo = getelementptr inbounds nuw i8, ptr %44, i64 13 ; 2 uses
  store ptr %i.mo, ptr %44, align 8, !tbaa !50
  %i.mp = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 40, ptr %i.mp, align 8, !tbaa !52
  %i.mq = getelementptr inbounds nuw i8, ptr %44, i64 12
  store i8 0, ptr %i.mq, align 4, !tbaa !53
  %i.mr = getelementptr inbounds nuw i8, ptr %44, i64 56 ; 2 uses
  store i32 0, ptr %i.mr, align 8, !tbaa !54
  store i8 0, ptr %i.mo, align 1, !tbaa !32
  %i.ms = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %44, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.fu unwind label %bb.fy     ; 0 uses

bb.fu:                                            ; preds = %bb.ft
  %i.mt = load i32, ptr %1, align 4, !tbaa !21
  %i.mu = icmp eq i32 %i.mt, 7
  br i1 %i.mu, label %bb.hx, label %bb.fz

bb.fv:                                            ; preds = %bb.fq
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fr
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %42) #14
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.pn222 = phi { ptr, i32 } [ %i.mw, %bb.fw ], [ %i.mv, %bb.fv ]
  %i.mx = load ptr, ptr %43, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.mx) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  br label %bb.ia

bb.fy:                                            ; preds = %bb.ft
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.fz:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #14
  %i.mz = load ptr, ptr %44, align 8, !tbaa !50
  invoke void @_Z25ulocimp_forLanguageTag_78PKciPiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %45, ptr noundef %i.mz, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.ga unwind label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  %i.na = load i32, ptr %1, align 4, !tbaa !21
  %i.nb = icmp slt i32 %i.na, 1
  br i1 %i.nb, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.nc = load i32, ptr %i.a, align 4, !tbaa !56
  %i.nd = load i32, ptr %i.mr, align 8, !tbaa !54
  %.not225 = icmp eq i32 %i.nc, %i.nd
  br i1 %.not225, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  store i32 3, ptr %1, align 4, !tbaa !21
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.44, ptr %i.ne, align 8, !tbaa !30
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !24
  %.not4.i347 = icmp eq ptr %i.ng, null
  br i1 %.not4.i347, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit349, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit349 unwind label %bb.gf

bb.ge:                                            ; preds = %bb.fz
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.gf:                                            ; preds = %bb.gd
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.gg:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #14
  %i.nj = load ptr, ptr %45, align 8, !tbaa !50
  %i.nk = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !54
  %i.nm = sext i32 %i.nl to i64
  invoke void @_Z22ulocimp_getBaseName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %46, i64 %i.nm, ptr %i.nj, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.gh unwind label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.nn = load i32, ptr %1, align 4, !tbaa !21
  %i.no = icmp slt i32 %i.nn, 1
  br i1 %i.no, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  store i32 3, ptr %1, align 4, !tbaa !21
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.44, ptr %i.np, align 8, !tbaa !30
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !24
  %.not4.i352 = icmp eq ptr %i.nr, null
  br i1 %.not4.i352, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit354, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit354 unwind label %bb.gl

bb.gk:                                            ; preds = %bb.gg
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.gl:                                            ; preds = %bb.gj, %bb.go, %bb.gn
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.gm:                                            ; preds = %bb.gh
  %i.nu = getelementptr inbounds nuw i8, ptr %46, i64 56 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !54
  %.not417.a = icmp eq i32 %i.nv, 0
  br i1 %.not417.a, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %47, ptr noundef nonnull @.str.45)
          to label %bb.go unwind label %bb.gl

bb.go:                                            ; preds = %bb.gn
  %i.nw = load ptr, ptr %47, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8copyFromENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %46, ptr %i.nw, i32 %i.ny, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.gw unwind label %bb.gl     ; 0 uses

bb.gp:                                            ; preds = %bb.gm
  %i.oa = load ptr, ptr %46, align 8, !tbaa !50
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !32
  %i.oc = icmp eq i8 %i.ob, 95
  br i1 %i.oc, label %bb.gq, label %bb.gw

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.od = invoke noundef ptr @_ZN6icu_7810CharString15getAppendBufferEiiRiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %46, i32 noundef 3, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.gr unwind label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.oe = load ptr, ptr %46, align 8, !tbaa !50   ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 3
  %i.og = load i32, ptr %i.nu, align 8, !tbaa !54
  %i.oh = sext i32 %i.og to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.oe, i64 %i.oh, i1 false)
  store i24 6581877, ptr %i.oe, align 1
  %i.oi = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %46, ptr noundef %i.od, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.gs unwind label %bb.gu     ; 0 uses

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.gw

bb.gt:                                            ; preds = %bb.gq
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gr
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.pn228 = phi { ptr, i32 } [ %i.ok, %bb.gu ], [ %i.oj, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.ht

bb.gw:                                            ; preds = %bb.go, %bb.gs, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #14
  %i.ol = load ptr, ptr %45, align 8, !tbaa !50
  invoke void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %48, ptr noundef %i.ol, i64 9, ptr nonnull @.str.46, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.gx unwind label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  %i.om = load i32, ptr %1, align 4, !tbaa !21
  %i.on = icmp slt i32 %i.om, 1
  br i1 %i.on, label %bb.hb, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  store i32 3, ptr %1, align 4, !tbaa !21
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.44, ptr %i.oo, align 8, !tbaa !30
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !24
  %.not4.i355 = icmp eq ptr %i.oq, null
  br i1 %.not4.i355, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit357, label %.invoke

bb.gz:                                            ; preds = %bb.gw
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.ha:                                            ; preds = %.invoke
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hb:                                            ; preds = %bb.gx
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !57 ; 3 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i32 3, ptr %1, align 4, !tbaa !21
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.47, ptr %i.ow, align 8, !tbaa !30
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !24
  %.not4.i358 = icmp eq ptr %i.oy, null
  br i1 %.not4.i358, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit357, label %.invoke

.invoke:                                          ; preds = %bb.gy, %bb.hc
  invoke void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit357 unwind label %bb.ha

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %49, align 8, !tbaa !36
  %i.oz = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i16 2, ptr %i.oz, align 8, !tbaa !32
  %i.pa = load ptr, ptr %46, align 8, !tbaa !50
  %i.pb = getelementptr inbounds nuw i8, ptr %48, i64 56
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !54
  %.not418 = icmp eq i32 %i.pc, 0
  %i.pd = load ptr, ptr %48, align 8
  %spec.select = select i1 %.not418, ptr @.str.48, ptr %i.pd
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.pf = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  invoke void %i.ph(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef %i.pa, ptr noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.pe, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.he unwind label %bb.hh

bb.he:                                            ; preds = %bb.hd
  %i.pi = load i32, ptr %1, align 4, !tbaa !21
  %i.pj = icmp slt i32 %i.pi, 1
  br i1 %i.pj, label %bb.hj, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.pk = load ptr, ptr %i.pe, align 8, !tbaa !30
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  store ptr @.str.49, ptr %i.pe, align 8, !tbaa !30
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hi, %bb.hd
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.hi:                                            ; preds = %bb.hg, %bb.hf
  invoke void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %bb.hp unwind label %bb.hh

bb.hj:                                            ; preds = %bb.he
  %i.pn = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.po = load i32, ptr %i.f, align 8, !tbaa !31
  invoke void @_ZN6icu_7819CollationRuleParser5parseERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.hk unwind label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  %i.pp = load i32, ptr %1, align 4, !tbaa !21
  %i.pq = icmp slt i32 %i.pp, 1
  br i1 %i.pq, label %bb.ho, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !24 ; 2 uses
  %.not234 = icmp eq ptr %i.ps, null
  br i1 %.not234, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store i32 %i.po, ptr %i.pt, align 4, !tbaa !27
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hj
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.ho:                                            ; preds = %bb.hl, %bb.hm, %bb.hk
  store ptr %i.pn, ptr %i.r, align 8, !tbaa !11
  store i32 %i.ak, ptr %i.f, align 8, !tbaa !31
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hi, %bb.ho
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #14
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit357

bb.hq:                                            ; preds = %bb.hn, %bb.hh
  %.pn235 = phi { ptr, i32 } [ %i.pm, %bb.hh ], [ %i.pu, %bb.hn ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #14
  br label %bb.hr

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit357: ; preds = %.invoke, %bb.hc, %bb.gy, %bb.hp
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %48) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #14
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit354

bb.hr:                                            ; preds = %bb.hq, %bb.ha
  %.pn238 = phi { ptr, i32 } [ %i.os, %bb.ha ], [ %.pn235, %bb.hq ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %48) #14
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.gz
  %.pn238.pn = phi { ptr, i32 } [ %.pn238, %bb.hr ], [ %i.or, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #14
  br label %bb.ht

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit354: ; preds = %bb.gi, %bb.gj, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit357
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %46) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #14
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit349

bb.ht:                                            ; preds = %bb.hs, %bb.gv, %bb.gl
  %.pn241 = phi { ptr, i32 } [ %i.nt, %bb.gl ], [ %.pn238.pn, %bb.hs ], [ %.pn228, %bb.gv ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %46) #14
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.gk
  %.pn241.pn = phi { ptr, i32 } [ %.pn241, %bb.ht ], [ %i.ns, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #14
  br label %bb.hv

_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit349: ; preds = %bb.gc, %bb.gd, %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit354
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %45) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.hx

bb.hv:                                            ; preds = %bb.hu, %bb.gf
  %.pn244 = phi { ptr, i32 } [ %i.ni, %bb.gf ], [ %.pn241.pn, %bb.hu ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %45) #14
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.ge
  %.pn244.pn = phi { ptr, i32 } [ %.pn244, %bb.hv ], [ %i.nh, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
end_hunk_1
begin_hunk_2_@_ZN6icu_7819CollationRuleParser15parseReorderingERKNS_13UnicodeStringER10UErrorCode:bb.a

declare void @_ZN6icu_7817CollationSettings11setStrengthEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZN6icu_7817CollationSettings20setAlternateHandlingE18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZN6icu_7817CollationSettings14setMaxVariableEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #6

declare void @_ZN6icu_7817CollationSettings12setCaseFirstE18UColAttributeValueiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(852), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 18) i32 @_ZN6icu_7819CollationRuleParser13getOnOffValueERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr @.str.55, ptr %2, align 8, !tbaa !38
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef -1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !32
  %i.f = trunc i16 %i.e to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp slt i16 %i.b, 0
  %i.h = ashr i16 %i.b, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !32   ; 4 uses
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
  br i1 %or.cond.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.w = and i16 %i.n, 2
  %.not.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i.i, ptr %i.z, ptr %i.x
  %i.ab = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aa, i32 noundef %i.l)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  %i.ac = icmp ne i8 %i.ab, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %.noexc, %bb.c
  %.0.i = phi i1 [ %i.f, %bb.c ], [ %i.ac, %.noexc ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #14
  %i.ad = load ptr, ptr %2, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ad) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %.0.i, label %bb.q, label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ae, %bb.f ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ag) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.r

.critedge:                                        ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #14
  %i.ah = load ptr, ptr %2, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ah) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr @.str.35, ptr %4, align 8, !tbaa !38
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext 1, ptr noundef nonnull align 8 %4, i32 noundef -1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ai = load i16, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.aj = and i16 %i.ai, 1
  %.not.i12 = icmp eq i16 %i.aj, 0
  br i1 %.not.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !32
  %.fr = freeze i16 %i.al
  %i.am = trunc i16 %.fr to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit18

bb.l:                                             ; preds = %bb.j
  %i.an = icmp slt i16 %i.ai, 0
  %i.ao = ashr i16 %i.ai, 5
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = select i1 %i.an, i32 %i.ar, i32 %i.ap   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load i16, ptr %i.at, align 8, !tbaa !32 ; 4 uses
  %i.av = icmp slt i16 %i.au, 0
  %i.aw = ashr i16 %i.au, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = select i1 %i.av, i32 %i.az, i32 %i.ax
  %i.bb = and i16 %i.au, 1
  %.not9.i14 = icmp eq i16 %i.bb, 0
  %i.bc = icmp eq i32 %i.as, %i.ba
  %or.cond.i15 = and i1 %.not9.i14, %i.bc
  br i1 %or.cond.i15, label %bb.m, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit18

bb.m:                                             ; preds = %bb.l
  %i.bd = and i16 %i.au, 2
  %.not.i.i.i16 = icmp eq i16 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = select i1 %.not.i.i.i16, ptr %i.bg, ptr %i.be
  %i.bi = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.bh, i32 noundef %i.as)
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %bb.m
  %i.bj = icmp ne i8 %i.bi, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit18

_ZNK6icu_7813UnicodeStringeqERKS0_.exit18:        ; preds = %.noexc17, %bb.l, %bb.k
  %.0.i13 = phi i1 [ %i.am, %bb.k ], [ %i.bj, %.noexc17 ], [ false, %bb.l ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  %i.bk = load ptr, ptr %4, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bk) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %spec.select = select i1 %.0.i13, i32 16, i32 -1
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn9 = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bl, %bb.n ]
  %i.bn = load ptr, ptr %4, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bn) #14, !srcloc !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.r

bb.q:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit18, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %.07 = phi i32 [ 17, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ %spec.select, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit18 ]
  ret i32 %.07

bb.r:                                             ; preds = %bb.p, %bb.h
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.p ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %.pn9.pn
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_Z25ulocimp_forLanguageTag_78PKciPiR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_Z22ulocimp_getBaseName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8copyFromENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN6icu_7810CharString15getAppendBufferEiiRiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !53
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !50
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7819CollationRuleParser15parseUnicodeSetEiRNS_10UnicodeSetER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !32
  %.fr57 = freeze i16 %i.d                        ; 3 uses
  %i.e = icmp slt i16 %.fr57, 0
  %i.f = lshr i16 %.fr57, 5
  %i.g = zext nneg i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g       ; 7 uses
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = and i16 %.fr57, 2
  %.not.i.i.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = sext i32 %1 to i64                       ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us ], [ %i.o, %.lr.ph ] ; 3 uses
  %.02754.us = phi i32 [ %.2.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us ], [ 0, %.lr.ph ] ; 4 uses
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.p = trunc nsw i64 %indvars.iv64 to i32
  %i.q = icmp ugt i32 %i.j, %i.p
  br i1 %i.q, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us

_ZNK6icu_7813UnicodeString6charAtEi.exit.us:      ; preds = %.lr.ph.split.us
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv64
  %i.t = load i16, ptr %i.s, align 2, !tbaa !28
  switch i16 %i.t, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us [
    i16 91, label %bb.c
    i16 93, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us
  %i.u = add nsw i32 %.02754.us, -1               ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.split.us, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us
  %i.w = add nsw i32 %.02754.us, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, %bb.c, %bb.b, %.lr.ph.split.us
  %.2.us = phi i32 [ %i.u, %bb.b ], [ %i.w, %bb.c ], [ %.02754.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit.us ], [ %.02754.us, %.lr.ph.split.us ]
  %i.x = trunc nsw i64 %indvars.iv.next65 to i32
  %i.y = icmp eq i32 %i.j, %i.x
  br i1 %i.y, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us, %bb.a
  %.029.lcssa = phi i32 [ %1, %bb.a ], [ %i.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.us ], [ %i.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ] ; 3 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !21
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.d:                                             ; preds = %._crit_edge
  store i32 3, ptr %3, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.56, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  %.not4.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %i.o, %.lr.ph ] ; 3 uses
  %.02754 = phi i32 [ %.2, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 0, %.lr.ph ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ae = trunc nsw i64 %indvars.iv to i32
  %i.af = icmp ugt i32 %i.j, %i.ae
  br i1 %i.af, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %.lr.ph.split
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !28
  switch i16 %i.ah, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 91, label %bb.f
    i16 93, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ai = add nsw i32 %.02754, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.aj = add nsw i32 %.02754, -1                 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.split.us, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %.lr.ph.split, %bb.g, %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.2 = phi i32 [ %i.aj, %bb.g ], [ %i.ai, %bb.f ], [ %.02754, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.02754, %.lr.ph.split ]
  %i.al = trunc nsw i64 %indvars.iv.next to i32
  %i.am = icmp eq i32 %i.j, %i.al
  br i1 %i.am, label %._crit_edge, label %.lr.ph.split

.split.us:                                        ; preds = %bb.g, %bb.b
  %.us-phi.in = phi i64 [ %indvars.iv.next65, %bb.b ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.us-phi = trunc i64 %.us-phi.in to i32         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.an = sub nsw i32 %.us-phi, %1
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef %1, i32 noundef %i.an)
  %i.ao = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.split.us
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ap = load i32, ptr %3, align 4, !tbaa !21
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %3, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.57, ptr %i.ar, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24
  %.not4.i36 = icmp eq ptr %i.at, null
  br i1 %.not4.i36, label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_7819CollationRuleParser15setErrorContextEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  br label %_ZN6icu_7819CollationRuleParser13setParseErrorEPKcR10UErrorCode.exit

bb.k:                                             ; preds = %.split.us
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %i.au

bb.l:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !32 ; 4 uses
  %i.ay = icmp slt i16 %i.ax, 0
  %i.az = ashr i16 %i.ax, 5
  %i.ba = sext i16 %i.az to i32                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = select i1 %i.ay, i32 %i.bc, i32 %i.ba   ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %.us-phi
  br i1 %i.be, label %.lr.ph.preheader.i, label %_ZNK6icu_7819CollationRuleParser14skipWhiteSpaceEi.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %sext = shl i64 %.us-phi.in, 32
  %i.bf = ashr exact i64 %sext, 32
  br label %.lr.ph.i
end_hunk_2
