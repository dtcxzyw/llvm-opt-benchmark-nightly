inline.NumInlined: 292
inline.NumDeleted: 91
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"class.icu_78::ParsePosition" = type { %"class.icu_78::UObject", i32, i32 }
%"class.icu_78::RuleHalf" = type { [8 x i8], %"class.icu_78::UnicodeString", i32, i32, i32, i32, i32, i8, i8, i32, ptr }

$_ZN6icu_7813UnicodeString8truncateEi = comdat any

$_ZN6icu_788RuleHalf11syntaxErrorE10UErrorCodeRKNS_13UnicodeStringEiRS1_ = comdat any

$_ZN6icu_7822TransliteratorIDParser8SingleIDD2Ev = comdat any

$_ZN6icu_7813UnicodeString6insertEiRKS0_ = comdat any

$_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode = comdat any

$_ZTIN6icu_787UMemoryE = comdat any

$_ZTSN6icu_787UMemoryE = comdat any

@_ZTVN6icu_789ParseDataE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6icu_789ParseDataE, ptr @_ZN6icu_789ParseDataD2Ev, ptr @_ZN6icu_789ParseDataD0Ev, ptr @_ZNK6icu_789ParseData6lookupERKNS_13UnicodeStringE, ptr @_ZNK6icu_789ParseData13lookupMatcherEi, ptr @_ZNK6icu_789ParseData14parseReferenceERKNS_13UnicodeStringERNS_13ParsePositionEi] }, align 8
@_ZL11ILLEGAL_TOP = internal constant [2 x i16] [i16 41, i16 0], align 2
@_ZL11HALF_ENDERS = internal constant [8 x i16] [i16 61, i16 62, i16 60, i16 8594, i16 8592, i16 8596, i16 59, i16 0], align 16
@_ZL11ILLEGAL_SEG = internal constant [5 x i16] [i16 123, i16 125, i16 124, i16 64, i16 0], align 2
@_ZL12ILLEGAL_FUNC = internal constant [11 x i16] [i16 94, i16 40, i16 46, i16 42, i16 43, i16 63, i16 123, i16 125, i16 124, i16 64, i16 0], align 16
@_ZL8ID_TOKEN = internal constant [2 x i16] [i16 58, i16 58], align 2
@_ZN6icu_78L10PRAGMA_USEE = internal constant [5 x i16] [i16 117, i16 115, i16 101, i16 32, i16 0], align 2
@_ZN6icu_78L21PRAGMA_VARIABLE_RANGEE = internal constant [22 x i16] [i16 126, i16 118, i16 97, i16 114, i16 105, i16 97, i16 98, i16 108, i16 101, i16 32, i16 114, i16 97, i16 110, i16 103, i16 101, i16 32, i16 35, i16 32, i16 35, i16 126, i16 59, i16 0], align 16
@_ZN6icu_78L21PRAGMA_MAXIMUM_BACKUPE = internal constant [20 x i16] [i16 126, i16 109, i16 97, i16 120, i16 105, i16 109, i16 117, i16 109, i16 32, i16 98, i16 97, i16 99, i16 107, i16 117, i16 112, i16 32, i16 35, i16 126, i16 59, i16 0], align 16
@_ZN6icu_78L16PRAGMA_NFD_RULESE = internal constant [13 x i16] [i16 126, i16 110, i16 102, i16 100, i16 32, i16 114, i16 117, i16 108, i16 101, i16 115, i16 126, i16 59, i16 0], align 16
@_ZN6icu_78L16PRAGMA_NFC_RULESE = internal constant [13 x i16] [i16 126, i16 110, i16 102, i16 99, i16 32, i16 114, i16 117, i16 108, i16 101, i16 115, i16 126, i16 59, i16 0], align 16
@_ZL10gOPERATORS = internal constant [7 x i16] [i16 61, i16 62, i16 60, i16 8594, i16 8592, i16 8596, i16 0], align 2
@_ZL7DOT_SET = internal constant [21 x i16] [i16 91, i16 94, i16 91, i16 58, i16 90, i16 112, i16 58, i16 93, i16 91, i16 58, i16 90, i16 108, i16 58, i16 93, i16 92, i16 114, i16 92, i16 110, i16 36, i16 93, i16 0], align 16
@_ZTIN6icu_789ParseDataE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6icu_789ParseDataE, i32 0, i32 2, ptr @_ZTIN6icu_787UMemoryE, i64 2, ptr @_ZTIN6icu_7811SymbolTableE, i64 2 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_789ParseDataE = dso_local constant [20 x i8] c"N6icu_789ParseDataE\00", align 1
@_ZTIN6icu_787UMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6icu_787UMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_787UMemoryE = linkonce_odr dso_local constant [18 x i8] c"N6icu_787UMemoryE\00", comdat, align 1
@_ZTIN6icu_7811SymbolTableE = external constant ptr
@_ZTVN6icu_7813UnicodeStringE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN6icu_7813ParsePositionE = external unnamed_addr constant { [5 x ptr] }, align 8

@_ZN6icu_789ParseDataC1EPKNS_23TransliterationRuleDataEPKNS_7UVectorEPKNS_9HashtableE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6icu_789ParseDataC2EPKNS_23TransliterationRuleDataEPKNS_7UVectorEPKNS_9HashtableE
@_ZN6icu_789ParseDataD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_789ParseDataD2Ev
@_ZN6icu_788RuleHalfC1ERNS_20TransliteratorParserE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_788RuleHalfC2ERNS_20TransliteratorParserE
@_ZN6icu_788RuleHalfD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_788RuleHalfD2Ev
@_ZN6icu_7820TransliteratorParserC1ER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7820TransliteratorParserC2ER10UErrorCode
@_ZN6icu_7820TransliteratorParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7820TransliteratorParserD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_789ParseDataC2EPKNS_23TransliterationRuleDataEPKNS_7UVectorEPKNS_9HashtableE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_789ParseDataE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7811SymbolTableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_789ParseDataD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6icu_7811SymbolTableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_789ParseDataD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6icu_7811SymbolTableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_789ParseData6lookupERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr @uhash_get_78(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_789ParseData13lookupMatcherEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1162
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = sub nsw i32 %1, %i.e                     ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp slt i32 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef %i.f) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_789ParseData14parseReferenceERKNS_13UnicodeStringERNS_13ParsePositionEi(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, i32 noundef %4) unnamed_addr #2 align 2 {
.peel.begin:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = sext i32 %i.b to i64                     ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %4) ; 4 uses
  %wide.trip.count = sext i32 %smax to i64        ; 2 uses
  %exitcond.peel.not.not = icmp slt i32 %i.b, %4
  br i1 %exitcond.peel.not.not, label %bb.a, label %.thread

bb.a:                                             ; preds = %.peel.begin
  %i.i = load i16, ptr %i.d, align 8              ; 3 uses
  %i.j = icmp slt i16 %i.i, 0
  %i.k = ashr i16 %i.i, 5
  %i.l = sext i16 %i.k to i32
  %i.m = load i32, ptr %i.e, align 4
  %i.n = select i1 %i.j, i32 %i.m, i32 %i.l
  %i.o = icmp ult i32 %i.b, %i.n
  br i1 %i.o, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.peel

bb.b:                                             ; preds = %bb.a
  %i.p = and i16 %i.i, 2
  %.not.i.i.i.peel = icmp eq i16 %i.p, 0
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = select i1 %.not.i.i.i.peel, ptr %i.q, ptr %i.f
  %i.s = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.h
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.peel

_ZNK6icu_7813UnicodeString6charAtEi.exit.peel:    ; preds = %bb.a, %bb.b
  %.0.i.i.peel = phi i32 [ %i.u, %bb.b ], [ 65535, %bb.a ] ; 2 uses
  %i.v = tail call signext i8 @u_isIDStart_78(i32 noundef %.0.i.i.peel) #13
  %.not.peel = icmp eq i8 %i.v, 0
  br i1 %.not.peel, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.peel
  %i.w = tail call signext i8 @u_isIDPart_78(i32 noundef %.0.i.i.peel) #13
  %.not22.peel = icmp eq i8 %i.w, 0
  br i1 %.not22.peel, label %.thread.thread, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %indvars.iv30 = add nsw i64 %i.h, 1             ; 2 uses
  %exitcond.not31 = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond.not31, label %.thread, label %.lr.ph

.peel.next:                                       ; preds = %bb.e
  %indvars.iv = add nsw i64 %indvars.iv32, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %.peel.next.preheader, %.peel.next
  %indvars.iv32 = phi i64 [ %indvars.iv, %.peel.next ], [ %indvars.iv30, %.peel.next.preheader ] ; 3 uses
  %i.x = trunc i64 %indvars.iv32 to i32           ; 2 uses
  %i.y = load i16, ptr %i.d, align 8              ; 3 uses
  %i.z = icmp slt i16 %i.y, 0
  %i.aa = ashr i16 %i.y, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.e, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab
  %i.ae = icmp ugt i32 %i.ad, %i.x
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.af = and i16 %i.y, 2
  %.not.i.i.i = icmp eq i16 %i.af, 0
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = select i1 %.not.i.i.i, ptr %i.ag, ptr %i.f
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %indvars.iv32
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.i.i = phi i32 [ %i.ak, %bb.d ], [ 65535, %.lr.ph ]
  %i.al = tail call signext i8 @u_isIDPart_78(i32 noundef %.0.i.i) #13
  %.not22 = icmp eq i8 %i.al, 0
  br i1 %.not22, label %..thread.loopexit_crit_edge34, label %.peel.next, !llvm.loop !5

..thread.loopexit_crit_edge34:                    ; preds = %bb.e
  br label %.thread, !llvm.loop !5

.thread:                                          ; preds = %.peel.next, %.peel.next.preheader, %..thread.loopexit_crit_edge34, %.peel.begin
  %.019.lcssa = phi i32 [ %smax, %.peel.begin ], [ %i.x, %..thread.loopexit_crit_edge34 ], [ %smax, %.peel.next.preheader ], [ %smax, %.peel.next ] ; 3 uses
  %i.am = icmp eq i32 %.019.lcssa, %i.b
  br i1 %i.am, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  store i32 %.019.lcssa, ptr %i.a, align 8
  %i.an = load ptr, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.b, i32 noundef %.019.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %0) #13
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.c, %_ZNK6icu_7813UnicodeString6charAtEi.exit.peel, %bb.f, %.thread
  ret void
}

declare signext i8 @u_isIDStart_78(i32 noundef) local_unnamed_addr #4

declare signext i8 @u_isIDPart_78(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_789ParseData9isMatcherEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1162
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = sub nsw i32 %1, %i.e                     ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp slt i32 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef %i.f) #13 ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #13
  %i.r = icmp ne ptr %i.q, null
  %i.s = zext i1 %i.r to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i8 [ %i.s, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_789ParseData10isReplacerEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1162
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = sub nsw i32 %1, %i.e                     ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp slt i32 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef %i.f) #13 ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #13
  %i.r = icmp ne ptr %i.q, null
  %i.s = zext i1 %i.r to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i8 [ %i.s, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_788RuleHalfC2ERNS_20TransliteratorParserE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((8, 18), (72, 94), (96, 100), (104, 112)) %0, ptr noundef nonnull align 8 dereferenceable(498) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 -1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.g, i8 0, i64 10, i1 false)
  store i32 1, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788RuleHalfD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_788RuleHalf5parseERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8              ; 4 uses
  %i.d = trunc i16 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #13
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i16 %i.c, 0
  %i.f = ashr i16 %i.c, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i16 %i.c, 30
  store i16 %i.k, ptr %i.b, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr @_ZL11ILLEGAL_TOP, ptr %6, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 1, ptr noundef nonnull %6, i32 noundef -1) #13
  %i.l = call noundef i32 @_ZN6icu_788RuleHalf12parseSectionERKNS_13UnicodeStringEiiRS1_S3_aR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %i.m = load ptr, ptr %6, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.m) #13, !srcloc !7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp eq i32 %i.r, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !8, !align !9 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 108
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 %2, ptr %i.x, align 8
  store i32 0, ptr %i.w, align 4
  %i.y = add nsw i32 %2, -15
  %i.z = call i32 @uprv_max_78(i32 noundef %i.y, i32 noundef 0) #13 ; 2 uses
  %i.aa = sub nsw i32 %2, %i.z                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 116 ; 3 uses
  call void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull %i.ab, i32 noundef 0) #13
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ab) #13, !srcloc !10
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ac
  store i16 0, ptr %i.ad, align 2
  %i.ae = add nsw i32 %2, 15
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
