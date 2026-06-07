inline.NumInlined: 268
inline.NumDeleted: 59
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.icu_78::number::impl::DecimalFormatProperties" = type <{ %"class.icu_78::number::impl::NullableValue", %"class.icu_78::number::impl::NullableValue.2", %"class.icu_78::number::impl::CurrencyPluralInfoWrapper", %"class.icu_78::number::impl::NullableValue.3", i8, i8, i8, i8, i8, [3 x i8], i32, i32, i8, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", %"class.icu_78::number::impl::NullableValue.4", %"class.icu_78::UnicodeString", i8, i8, [2 x i8], %"class.icu_78::number::impl::NullableValue.5", i8, i8, [2 x i8], i32, [4 x i8], %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", double, %"class.icu_78::number::impl::NullableValue.6", i32, i8, [3 x i8] }>
%"class.icu_78::number::impl::NullableValue" = type { i8, i32 }
%"class.icu_78::number::impl::NullableValue.2" = type { i8, [7 x i8], %"class.icu_78::CurrencyUnit" }
%"class.icu_78::CurrencyUnit" = type { %"class.icu_78::MeasureUnit.base", [4 x i16], [4 x i8] }
%"class.icu_78::MeasureUnit.base" = type <{ %"class.icu_78::UObject", ptr, i16, i8 }>
%"class.icu_78::UObject" = type { ptr }
%"class.icu_78::number::impl::CurrencyPluralInfoWrapper" = type { %"class.icu_78::LocalPointer" }
%"class.icu_78::LocalPointer" = type { %"class.icu_78::LocalPointerBase" }
%"class.icu_78::LocalPointerBase" = type { ptr }
%"class.icu_78::number::impl::NullableValue.3" = type { i8, i32 }
%"class.icu_78::number::impl::NullableValue.4" = type { i8, i32 }
%"class.icu_78::number::impl::NullableValue.5" = type { i8, i32 }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::number::impl::NullableValue.6" = type { i8, i32 }
%"struct.icu_78::number::impl::ParsedPatternInfo" = type <{ %"class.icu_78::number::impl::AffixPatternProvider", %"class.icu_78::UnicodeString", %"struct.icu_78::number::impl::ParsedSubpatternInfo", %"struct.icu_78::number::impl::ParsedSubpatternInfo", %"struct.icu_78::number::impl::ParsedPatternInfo::ParserState", ptr, i8, [7 x i8] }>
%"class.icu_78::number::impl::AffixPatternProvider" = type { ptr }
%"struct.icu_78::number::impl::ParsedSubpatternInfo" = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, %"class.icu_78::number::impl::DecimalQuantity", i8, i32, i8, i8, i8, i8, i8, i8, %"struct.icu_78::number::impl::Endpoints", %"struct.icu_78::number::impl::Endpoints", %"struct.icu_78::number::impl::Endpoints" }
%"class.icu_78::number::impl::DecimalQuantity" = type <{ %"class.icu_78::IFixedDecimal", i8, [3 x i8], i32, i32, i8, i8, [2 x i8], double, i32, i32, i32, i32, %union.anon, i8, i8, [6 x i8] }>
%"class.icu_78::IFixedDecimal" = type { ptr }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32 }
%"struct.icu_78::number::impl::Endpoints" = type { i32, i32 }
%"struct.icu_78::number::impl::ParsedPatternInfo::ParserState" = type <{ ptr, i32, [4 x i8] }>
%"class.icu_78::number::impl::AutoAffixPatternProvider" = type { %"class.icu_78::number::impl::PropertiesAffixPatternProvider", %"class.icu_78::number::impl::CurrencyPluralInfoAffixProvider" }
%"class.icu_78::number::impl::PropertiesAffixPatternProvider" = type <{ %"class.icu_78::number::impl::AffixPatternProvider", %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", %"class.icu_78::UnicodeString", i8, i8, i8, [5 x i8] }>
%"class.icu_78::number::impl::CurrencyPluralInfoAffixProvider" = type <{ %"class.icu_78::number::impl::AffixPatternProvider", [8 x %"class.icu_78::number::impl::PropertiesAffixPatternProvider"], i8, [7 x i8] }>

$_ZN6icu_786number4impl17ParsedPatternInfoD2Ev = comdat any

$_ZN6icu_786number4impl17ParsedPatternInfoD0Ev = comdat any

$_ZN6icu_786number4impl31CurrencyPluralInfoAffixProviderD2Ev = comdat any

$_ZTIN6icu_787UMemoryE = comdat any

$_ZTSN6icu_787UMemoryE = comdat any

@.str.12 = private unnamed_addr constant [2 x i16] [i16 39, i16 0], align 2
@_ZN6icu_786number4implL22kFallbackPaddingStringE = internal constant [2 x i16] [i16 32, i16 0], align 2
@.str.13 = private unnamed_addr constant [3 x i16] [i16 39, i16 39, i16 0], align 2
@.str.14 = private unnamed_addr constant [2 x i16] [i16 37, i16 0], align 2
@.str.15 = private unnamed_addr constant [2 x i16] [i16 8240, i16 0], align 2
@.str.16 = private unnamed_addr constant [2 x i16] [i16 46, i16 0], align 2
@.str.17 = private unnamed_addr constant [2 x i16] [i16 44, i16 0], align 2
@.str.18 = private unnamed_addr constant [2 x i16] [i16 45, i16 0], align 2
@.str.19 = private unnamed_addr constant [2 x i16] [i16 43, i16 0], align 2
@.str.20 = private unnamed_addr constant [2 x i16] [i16 59, i16 0], align 2
@.str.21 = private unnamed_addr constant [2 x i16] [i16 64, i16 0], align 2
@.str.22 = private unnamed_addr constant [2 x i16] [i16 69, i16 0], align 2
@.str.23 = private unnamed_addr constant [2 x i16] [i16 42, i16 0], align 2
@.str.24 = private unnamed_addr constant [2 x i16] [i16 35, i16 0], align 2
@.str.25 = private unnamed_addr constant [3 x i16] [i16 126, i16 43, i16 0], align 2
@.str.26 = private unnamed_addr constant [3 x i16] [i16 126, i16 45, i16 0], align 2
@.str.27 = private unnamed_addr constant [2 x i16] [i16 126, i16 0], align 2
@_ZTVN6icu_786number4impl17ParsedPatternInfoE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN6icu_786number4impl17ParsedPatternInfoE, ptr @_ZN6icu_786number4impl17ParsedPatternInfoD2Ev, ptr @_ZN6icu_786number4impl17ParsedPatternInfoD0Ev, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo6charAtEii, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo6lengthEi, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo9getStringEi, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo15hasCurrencySignEv, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo19positiveHasPlusSignEv, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo21hasNegativeSubpatternEv, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo20negativeHasMinusSignEv, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo18containsSymbolTypeENS1_16AffixPatternTypeER10UErrorCode, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo7hasBodyEv, ptr @_ZNK6icu_786number4impl17ParsedPatternInfo17currencyAsDecimalEv] }, align 8
@_ZTIN6icu_786number4impl17ParsedPatternInfoE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6icu_786number4impl17ParsedPatternInfoE, i32 0, i32 2, ptr @_ZTIN6icu_786number4impl20AffixPatternProviderE, i64 2, ptr @_ZTIN6icu_787UMemoryE, i64 2 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_786number4impl17ParsedPatternInfoE = dso_local constant [41 x i8] c"N6icu_786number4impl17ParsedPatternInfoE\00", align 1
@_ZTIN6icu_786number4impl20AffixPatternProviderE = external constant ptr
@_ZTIN6icu_787UMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6icu_787UMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_787UMemoryE = linkonce_odr dso_local constant [18 x i8] c"N6icu_787UMemoryE\00", comdat, align 1
@_ZTVN6icu_7813UnicodeStringE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE = external unnamed_addr constant { [14 x ptr] }, align 8
@_ZTVN6icu_786number4impl31CurrencyPluralInfoAffixProviderE = external unnamed_addr constant { [14 x ptr] }, align 8
@switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 0, i32 0], align 4
@switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.1 = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 1, i32 1], align 4
@switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.2 = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 0, i32 1], align 4
@switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.3 = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 0, i32 0], align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl13PatternParser18parseToPatternInfoERKNS_13UnicodeStringERNS1_17ParsedPatternInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(433) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_786number4impl17ParsedPatternInfo14consumePatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(433) %1, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl17ParsedPatternInfo14consumePatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  tail call void @_ZN6icu_786number4impl17ParsedPatternInfo17consumeSubpatternER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.g = load i32, ptr %2, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = icmp eq i32 %i.k, %i.t
  br i1 %i.u, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit

_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit: ; preds = %bb.c
  %i.v = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i32 noundef %i.k) #10
  %i.w = icmp eq i32 %i.v, 59
  br i1 %i.w, label %bb.d, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread

bb.d:                                             ; preds = %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit
  %i.x = load i32, ptr %i.j, align 8              ; 3 uses
  %i.y = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i16, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = select i1 %i.ab, i32 %i.af, i32 %i.ad
  %i.ah = icmp eq i32 %i.x, %i.ag
  br i1 %i.ah, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4nextEv.exit, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.i

_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.i: ; preds = %bb.d
  %i.ai = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i32 noundef %i.x) #10
  %i.aj = icmp ult i32 %i.ai, 65536
  %spec.select.i = select i1 %i.aj, i32 1, i32 2
  %.pre.i = load i32, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.i, align 8
  br label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4nextEv.exit

_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4nextEv.exit: ; preds = %bb.d, %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.i
  %i.ak = phi ptr [ %i.y, %bb.d ], [ %.pre, %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.i ] ; 3 uses
  %i.al = phi i32 [ %i.x, %bb.d ], [ %.pre.i, %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.i ]
  %i.am = phi i32 [ 2, %bb.d ], [ %spec.select.i, %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.i ]
  %i.an = add nsw i32 %i.am, %i.al                ; 3 uses
  store i32 %i.an, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i16, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp slt i16 %i.ap, 0
  %i.ar = ashr i16 %i.ap, 5
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = select i1 %i.aq, i32 %i.au, i32 %i.as
  %i.aw = icmp eq i32 %i.an, %i.av
  br i1 %i.aw, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit13

_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit13: ; preds = %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4nextEv.exit
  %i.ax = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i32 noundef %i.an) #10
  %.not9 = icmp eq i32 %i.ax, -1
  br i1 %.not9, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.az, ptr %i.f, align 8
  tail call void @_ZN6icu_786number4impl17ParsedPatternInfo17consumeSubpatternER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ba = load i32, ptr %2, align 4
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15.thread

_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread: ; preds = %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4nextEv.exit, %bb.c, %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit13, %bb.e, %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit
  %i.bc = load i32, ptr %i.j, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i16, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp slt i16 %i.bf, 0
  %i.bh = ashr i16 %i.bf, 5
  %i.bi = sext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = select i1 %i.bg, i32 %i.bk, i32 %i.bi
  %i.bm = icmp eq i32 %i.bc, %i.bl
  br i1 %i.bm, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15.thread, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15

_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15: ; preds = %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread
  %i.bn = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i32 noundef %i.bc) #10
  %.not11 = icmp eq i32 %i.bn, -1
  br i1 %.not11, label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15
  store i32 65555, ptr %2, align 4
  br label %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15.thread

_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15.thread: ; preds = %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit.thread, %bb.e, %bb.b, %bb.a, %bb.f, %_ZN6icu_786number4impl17ParsedPatternInfo11ParserState4peekEv.exit15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl13PatternParser17parseToPropertiesERKNS_13UnicodeStringENS1_14IgnoreRoundingER10UErrorCode(ptr dead_on_unwind noalias nonnull writable sret(%"struct.icu_78::number::impl::DecimalFormatProperties") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_786number4impl23DecimalFormatPropertiesC1Ev(ptr noundef nonnull align 8 dereferenceable(757) %0) #10
  tail call void @_ZN6icu_786number4impl13PatternParser29parseToExistingPropertiesImplERKNS_13UnicodeStringERNS1_23DecimalFormatPropertiesENS1_14IgnoreRoundingER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(757) %0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

declare void @_ZN6icu_786number4impl23DecimalFormatPropertiesC1Ev(ptr noundef nonnull align 8 dereferenceable(757)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl13PatternParser29parseToExistingPropertiesImplERKNS_13UnicodeStringERNS1_23DecimalFormatPropertiesENS1_14IgnoreRoundingER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(757) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.icu_78::number::impl::ParsedPatternInfo", align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_786number4impl23DecimalFormatProperties5clearEv(ptr noundef nonnull align 8 dereferenceable(757) %1) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl17ParsedPatternInfoE, i64 16), ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 281474976645120, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 124
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, i8 0, i64 33, i1 false)
  call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.q) #10
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.s, i8 0, i64 10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i64 281474976645120, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 284
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 288
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 292
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.v, i8 0, i64 33, i1 false)
  call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 368
  store i8 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 372
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ab, i8 0, i64 10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6icu_786number4impl18PatternStringUtils26patternInfoToStringBuilderERKNS1_20AffixPatternProviderEbNS1_15PatternSignTypeEbNS_14StandardPlural4FormEbbRNS_13UnicodeStringE:bb.a
  %i.bb = load i16, ptr %.062, align 2            ; 2 uses
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread70.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.bb, ptr %i.b, align 2
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i16, ptr %i.al, align 2
  br label %bb.k

bb.k:                                             ; preds = %.thread70.us, %bb.j, %.lr.ph.split.us.peel.next
  %.1.us = phi i16 [ %i.ax, %.lr.ph.split.us.peel.next ], [ %i.bd, %bb.j ], [ %i.bb, %.thread70.us ] ; 2 uses
  %i.be = icmp eq i16 %.1.us, 37
  %or.cond6.us = select i1 %5, i1 %i.be, i1 false
  %spec.store.select.us = select i1 %or.cond6.us, i16 8240, i16 %.1.us ; 2 uses
  %i.bf = icmp eq i16 %spec.store.select.us, 164
  %or.cond9.us = select i1 %6, i1 %i.bf, i1 false
  br i1 %or.cond9.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %spec.store.select.us, ptr %i.a, align 2
  %i.bg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bh = add nuw nsw i32 %.05976.us, 1           ; 2 uses
  %exitcond96.not = icmp eq i32 %i.bh, %i.af
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph.split.us.peel.next, !llvm.loop !27

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %5, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.q
  %.05976.us79 = phi i32 [ %i.bu, %bb.q ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef zeroext i16 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.2, i32 noundef %.05976.us79) #10 ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 45
  br i1 %i.bm, label %.thread70.us80, label %bb.o

.thread70.us80:                                   ; preds = %.lr.ph.split.split.us
  %i.bn = call i32 @u_strlen_78(ptr noundef nonnull %.062) #10
  %i.bo = icmp eq i32 %i.bn, 1
  %i.bp = load i16, ptr %.062, align 2            ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread70.us80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.bp, ptr %i.b, align 2
  %i.bq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.br = load i16, ptr %i.al, align 2
  br label %bb.o

bb.o:                                             ; preds = %.thread70.us80, %bb.n, %.lr.ph.split.split.us
  %.1.us81 = phi i16 [ %i.bl, %.lr.ph.split.split.us ], [ %i.br, %bb.n ], [ %i.bp, %.thread70.us80 ] ; 2 uses
  %i.bs = icmp eq i16 %.1.us81, 164
  %or.cond9.us83 = select i1 %6, i1 %i.bs, i1 false
  br i1 %or.cond9.us83, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.1.us81, ptr %i.a, align 2
  %i.bt = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bu = add nuw nsw i32 %.05976.us79, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !29

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %6, label %.lr.ph.split.split.split, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.s
  %.05976.us84 = phi i32 [ %i.ch, %bb.s ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.bv = load ptr, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef zeroext i16 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.2, i32 noundef %.05976.us84) #10 ; 2 uses
  %i.bz = icmp eq i16 %i.by, 45
  br i1 %i.bz, label %.thread70.us85, label %bb.s

.thread70.us85:                                   ; preds = %.lr.ph.split.split.split.us
  %i.ca = call i32 @u_strlen_78(ptr noundef nonnull %.062) #10
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = load i16, ptr %.062, align 2            ; 2 uses
  br i1 %i.cb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread70.us85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.cc, ptr %i.b, align 2
  %i.cd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = load i16, ptr %i.al, align 2
  br label %bb.s

bb.s:                                             ; preds = %.thread70.us85, %bb.r, %.lr.ph.split.split.split.us
  %.1.us86 = phi i16 [ %i.by, %.lr.ph.split.split.split.us ], [ %i.ce, %bb.r ], [ %i.cc, %.thread70.us85 ] ; 2 uses
  %i.cf = icmp eq i16 %.1.us86, 37
  %spec.select89 = select i1 %i.cf, i16 8240, i16 %.1.us86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %spec.select89, ptr %i.a, align 2
  %i.cg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = add nuw nsw i32 %.05976.us84, 1         ; 2 uses
  %exitcond94.not = icmp eq i32 %i.ch, %i.af
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.q, %bb.s, %bb.w, %bb.m, %bb.i, %.thread69
  ret void

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.w
  %.05976 = phi i32 [ %i.cv, %bb.w ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef zeroext i16 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.2, i32 noundef %.05976) #10 ; 2 uses
  %i.cm = icmp eq i16 %i.cl, 45
  br i1 %i.cm, label %.thread70, label %bb.u

.thread70:                                        ; preds = %.lr.ph.split.split.split
  %i.cn = call i32 @u_strlen_78(ptr noundef nonnull %.062) #10
  %i.co = icmp eq i32 %i.cn, 1
  %i.cp = load i16, ptr %.062, align 2            ; 2 uses
  br i1 %i.co, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.cp, ptr %i.b, align 2
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cr = load i16, ptr %i.al, align 2
  br label %bb.u

bb.u:                                             ; preds = %.thread70, %bb.t, %.lr.ph.split.split.split
  %.1 = phi i16 [ %i.cl, %.lr.ph.split.split.split ], [ %i.cr, %bb.t ], [ %i.cp, %.thread70 ] ; 2 uses
  %i.cs = icmp eq i16 %.1, 37
  %spec.select90 = select i1 %i.cs, i16 8240, i16 %.1 ; 2 uses
  %i.ct = icmp eq i16 %spec.select90, 164
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %spec.select90, ptr %i.a, align 2
  %i.cu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cv = add nuw nsw i32 %.05976, 1              ; 2 uses
  %exitcond95.not = icmp eq i32 %i.cv, %i.af
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !29
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %.sink.split, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp ult i32 %1, 4
  br i1 %i.b, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp ult i32 %1, 4
  br i1 %i.c, label %.sink.split, label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.d = icmp ult i32 %1, 4
  br i1 %i.d, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @abort() #11
  unreachable

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.3.sink = phi ptr [ @switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.2, %bb.d ], [ @switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.1, %bb.c ], [ @switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE, %bb.b ], [ @switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.3, %bb.e ]
  %i.e = zext nneg i32 %1 to i64
  %switch.gep13 = getelementptr inbounds nuw [4 x i8], ptr %switch.table._ZN6icu_786number4impl18PatternStringUtils18resolveSignDisplayE18UNumberSignDisplayNS1_6SignumE.3.sink, i64 %i.e
  %switch.load14 = load i32, ptr %switch.gep13, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.load14, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_786number4impl17ParsedPatternInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(433) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl17ParsedPatternInfoE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.a) #10, !inline_history !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.b) #10, !inline_history !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.c) #10, !inline_history !7
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(433) %0) #10, !inline_history !7
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_786number4impl30PropertiesAffixPatternProvider5setToERKNS1_23DecimalFormatPropertiesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(267), ptr noundef nonnull align 8 dereferenceable(757), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN6icu_786number4impl31CurrencyPluralInfoAffixProvider5setToERKNS_18CurrencyPluralInfoERKNS1_23DecimalFormatPropertiesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2185), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(757), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_786number4impl31CurrencyPluralInfoAffixProviderD2Ev(ptr noundef nonnull align 8 dereferenceable(2185) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl31CurrencyPluralInfoAffixProviderE, i64 16), ptr %0, align 8
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2112
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2048
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1984
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1920
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.d) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1) #10
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1.1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1840
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1712
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1648
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.h) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1.1) #10
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1.2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1568
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1504
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.j) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1440
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1376
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.l) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1.2) #10
  %.ptr1.3 = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1.3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1296
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.m) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1232
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1168
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.o) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1104
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.p) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1.3) #10
  %.ptr1.4 = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1.4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.q) #10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 960
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 896
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.s) #10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.t) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1.4) #10
  %.ptr1.5 = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1.5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.u) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.x) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1.5) #10
  %.ptr1.6 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1.6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1.6) #10
  %.ptr1.7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %.ptr1.7, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ac) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ad) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ae) #10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.af) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(267) %.ptr1.7) #10
  tail call void @_ZN6icu_786number4impl20AffixPatternProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #10
  ret void
}

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString14findAndReplaceEiiRKS0_iiS2_ii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiSt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{}
!6 = !{i64 8}
!7 = !{ptr @_ZN6icu_786number4impl17ParsedPatternInfoD2Ev}
!8 = !{i8 0, i8 2}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{i64 2151340007}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !28}
!28 = !{!"llvm.loop.peeled.count", i32 1}
!29 = distinct !{!29, !10}
end_hunk_1
