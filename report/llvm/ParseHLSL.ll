Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseHLSL?download=true
inline.NumInlined: 1004
inline.NumDeleted: 549
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.clang::DeclGroupRef" = type { ptr }
%"class.clang::DiagnosticBuilder" = type <{ %"class.clang::StreamingDiagnostic", ptr, %"class.clang::SourceLocation", i32, %"class.std::__cxx11::basic_string", i8, i8, [6 x i8] }>
%"class.clang::StreamingDiagnostic" = type { ptr, ptr }
%"class.clang::SourceLocation" = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.39 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.39 = type { i64, [8 x i8] }
%"class.clang::BalancedDelimiterTracker" = type { %"class.clang::GreaterThanIsOperatorScope.base", ptr, i16, i16, i16, { i64, i64 }, %"class.clang::SourceLocation", %"class.clang::SourceLocation" }
%"class.clang::GreaterThanIsOperatorScope.base" = type <{ ptr, i8 }>
%"struct.clang::Sema::ProcessDeclAttributeOptions" = type { i8, i8 }
%"class.clang::ParsedAttributes" = type { %"class.clang::ParsedAttributesView", %"class.clang::AttributePool" }
%"class.clang::ParsedAttributesView" = type { %"class.clang::SourceRange", %"class.llvm::SmallVector.40" }
%"class.clang::SourceRange" = type { %"class.clang::SourceLocation", %"class.clang::SourceLocation" }
%"class.llvm::SmallVector.40" = type { %"class.llvm::SmallVectorImpl.41", %"struct.llvm::SmallVectorStorage.44" }
%"class.llvm::SmallVectorImpl.41" = type { %"class.llvm::SmallVectorTemplateBase.42" }
%"class.llvm::SmallVectorTemplateBase.42" = type { %"class.llvm::SmallVectorTemplateCommon.43" }
%"class.llvm::SmallVectorTemplateCommon.43" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.44" = type { [16 x i8] }
%"class.clang::AttributePool" = type { ptr, %"class.llvm::SmallVector.40" }
%"class.clang::FixItHint" = type <{ %"class.clang::CharSourceRange", %"class.clang::CharSourceRange", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.clang::CharSourceRange" = type <{ %"class.clang::SourceRange", i8, [3 x i8] }>
%"struct.clang::Parser::ParsedSemantic" = type <{ %"class.llvm::StringRef", i32, i8, [3 x i8] }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.696" }
%"class.llvm::SmallVector.696" = type { %"class.llvm::SmallVectorImpl.697", %"struct.llvm::SmallVectorStorage.701" }
%"class.llvm::SmallVectorImpl.697" = type { %"class.llvm::SmallVectorTemplateBase.698" }
%"class.llvm::SmallVectorTemplateBase.698" = type { %"class.llvm::SmallVectorTemplateCommon.699" }
%"class.llvm::SmallVectorTemplateCommon.699" = type { %"class.llvm::SmallVectorBase.700" }
%"class.llvm::SmallVectorBase.700" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.701" = type { [256 x i8] }
%"class.clang::Token" = type <{ i32, i32, ptr, i16, i16, [4 x i8] }>
%"class.llvm::SmallVector.872" = type { %"class.llvm::SmallVectorImpl.873", %"struct.llvm::SmallVectorStorage.876" }
%"class.llvm::SmallVectorImpl.873" = type { %"class.llvm::SmallVectorTemplateBase.874" }
%"class.llvm::SmallVectorTemplateBase.874" = type { %"class.llvm::SmallVectorTemplateCommon.875" }
%"class.llvm::SmallVectorTemplateCommon.875" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.876" = type { [96 x i8] }
%"class.llvm::APInt" = type <{ %union.anon.1238, i32, [4 x i8] }>
%union.anon.1238 = type { i64 }

$_ZN5clang17DiagnosticBuilderD2Ev = comdat any

$_ZN5clang24BalancedDelimiterTracker12consumeCloseEv = comdat any

$_ZN5clang6Parser14UnconsumeTokenERNS_5TokenE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_12PointerUnionIJPN5clang4ExprEPNS2_13IdentifierLocEEEELb1EE9push_backES7_ = comdat any

$_ZN5clang17DiagnosticStorageD2Ev = comdat any

$_ZN5clang6Parser12ConsumeBraceEv = comdat any

$_ZN5clang20DiagStorageAllocator8AllocateEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE4growEm = comdat any

$_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_ = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm15SmallVectorImplIN5clang5TokenEE15insert_one_implIRKS2_EEPS2_S7_OT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_ = comdat any

$_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE = comdat any

$_ZN5clang9FixItHint17CreateReplacementENS_15CharSourceRangeEN4llvm9StringRefE = comdat any

$_ZN5clang13AttributePool6createEPNS_14IdentifierInfoENS_11SourceRangeENS_18AttributeScopeInfoEPN4llvm12PointerUnionIJPNS_4ExprEPNS_13IdentifierLocEEEEjNS_19AttributeCommonInfo4FormENS_14SourceLocationE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPN5clang10ParsedAttrELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_12PointerUnionIJPN5clang4ExprEPNS2_13IdentifierLocEEEELb1EE15growAndPushBackES7_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang6Parser15ParseHLSLBufferERNS_14SourceLocationERNS_16ParsedAttributesE(ptr noundef nonnull align 8 dereferenceable(2960) initializes((40, 44)) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::DeclGroupRef", align 8 ; 6 uses
  %4 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %5 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %7 = alloca %"class.clang::BalancedDelimiterTracker", align 8 ; 18 uses
  %8 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %9 = alloca %"struct.clang::Sema::ProcessDeclAttributeOptions", align 1 ; 5 uses
  %10 = alloca %"class.clang::ParsedAttributes", align 8 ; 16 uses
  %11 = alloca %"class.clang::ParsedAttributes", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i16 %i.c, 363                    ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store i32 %i.e, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95, !nonnull !96, !align !97
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.h, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #13
  %.sroa.01.0.copyload.i = load i32, ptr %i.f, align 8, !tbaa !16
  %i.i = load i16, ptr %i.b, align 8, !tbaa !14
  %i.j = icmp eq i16 %i.i, 5
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef 14) #13
  %i.k = load ptr, ptr %6, align 8, !tbaa !101    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.m) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !101
  br label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.o = phi ptr [ %i.n, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.o, align 8, !tbaa !114
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  store i8 4, ptr %i.s, align 1, !tbaa !115
  %i.t = load ptr, ptr %6, align 8, !tbaa !101    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.t, align 8, !tbaa !114   ; 2 uses
  %i.w = add i8 %i.v, 1
  store i8 %i.w, ptr %i.t, align 8, !tbaa !114
  %i.x = zext i8 %i.v to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x
  store i64 5, ptr %i.y, align 8, !tbaa !116
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !15
  store i32 %i.ab, ptr %i.f, align 8, !tbaa !16
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !95, !nonnull !96, !align !97
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ac, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #13
  %.sroa.01.0.copyload.i30 = load i32, ptr %i.f, align 8, !tbaa !16
  %i.ad = load i16, ptr %i.b, align 8, !tbaa !14
  %i.ae = icmp eq i16 %i.ad, 63
  br i1 %i.ae, label %bb.d, label %_ZN5clang6Parser25MaybeParseHLSLAnnotationsERNS_16ParsedAttributesEPNS_14SourceLocationE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5clang6Parser20ParseHLSLAnnotationsERNS_16ParsedAttributesEPNS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef null, i1 noundef zeroext false)
  br label %_ZN5clang6Parser25MaybeParseHLSLAnnotationsERNS_16ParsedAttributesEPNS_14SourceLocationE.exit

_ZN5clang6Parser25MaybeParseHLSLAnnotationsERNS_16ParsedAttributesEPNS_14SourceLocationE.exit: ; preds = %bb.c, %bb.d
  tail call void @_ZN5clang6Parser10EnterScopeEj(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 3 uses
  store ptr %i.af, ptr %7, align 8, !tbaa !1034
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !118, !range !119, !noundef !96
  store i8 %i.ah, ptr %i.ag, align 8, !tbaa !1035
  store i8 1, ptr %i.af, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %0, ptr %i.ai, align 8, !tbaa !1036
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 24, ptr %i.aj, align 8, !tbaa !1037
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 64, ptr %i.ak, align 4, !tbaa !1038
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  store i32 0, ptr %i.al, align 8, !tbaa !123
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 3 uses
  store i32 0, ptr %i.am, align 4, !tbaa !123
  %.repack6.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 25, ptr %i.ao, align 2, !tbaa !124
  store i64 ptrtoint (ptr @_ZN5clang6Parser12ConsumeBraceEv to i64), ptr %i.an, align 8, !tbaa !125
  store i64 0, ptr %.repack6.i, align 8, !tbaa !125
  %i.ap = load i16, ptr %i.b, align 8, !tbaa !14
  %i.aq = icmp eq i16 %i.ap, 24
  br i1 %i.aq, label %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread

_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i: ; preds = %_ZN5clang6Parser25MaybeParseHLSLAnnotationsERNS_16ParsedAttributesEPNS_14SourceLocationE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !126 ; 2 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !95, !nonnull !96, !align !97 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1039, !nonnull !96, !align !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = zext i16 %i.as to i64
  %i.ba = icmp samesign ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN5clang6Parser12ConsumeBraceEv.exit, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

_ZN5clang6Parser12ConsumeBraceEv.exit:            ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.bb = add i16 %i.as, 1
  store i16 %i.bb, ptr %i.ar, align 4, !tbaa !354
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !15
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !16
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.at, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #13
  %.sroa.01.0.copyload.i84 = load i32, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  store i32 %.sroa.01.0.copyload.i84, ptr %i.al, align 8, !tbaa !16
  br label %bb.e

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit: ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.bd = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker16diagnoseOverflowEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #13
  br i1 %i.bd, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit._crit_edge

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit._crit_edge: ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %.sroa.0.0.copyload.i.pre = load i32, ptr %i.al, align 8, !tbaa !16
  br label %bb.e

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread: ; preds = %_ZN5clang6Parser25MaybeParseHLSLAnnotationsERNS_16ParsedAttributesEPNS_14SourceLocationE.exit, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef 14) #13
  %i.be = load ptr, ptr %8, align 8, !tbaa !101   ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i32, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i33, label %bb.u

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i33: ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !102
  %i.bh = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bg) ; 2 uses
  store ptr %i.bh, ptr %8, align 8, !tbaa !101
  br label %bb.u

bb.e:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit._crit_edge, %_ZN5clang6Parser12ConsumeBraceEv.exit
  %.sroa.0.0.copyload.i = phi i32 [ %.sroa.0.0.copyload.i.pre, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit._crit_edge ], [ %.sroa.01.0.copyload.i84, %_ZN5clang6Parser12ConsumeBraceEv.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !355, !nonnull !96, !align !97 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 752
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1040
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 680
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1041
  %i.bo = call noundef ptr @_ZN5clang8SemaHLSL16ActOnStartBufferEPNS_5ScopeEbNS_14SourceLocationEPNS_14IdentifierInfoES3_S3_(ptr noundef nonnull align 8 dereferenceable(273) %i.bl, ptr noundef %i.bn, i1 noundef zeroext %i.d, i32 %.sroa.01.0.copyload.i, ptr noundef %i.aa, i32 %.sroa.01.0.copyload.i30, i32 %.sroa.0.0.copyload.i) #13 ; 4 uses
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !355, !nonnull !96, !align !97 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 680
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1041
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store i8 1, ptr %9, align 1, !tbaa !1043
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 1
  store i8 0, ptr %i.bs, align 1, !tbaa !1044
  call void @_ZN5clang4Sema24ProcessDeclAttributeListEPNS_5ScopeEPNS_4DeclERKNS_20ParsedAttributesViewERKNS0_27ProcessDeclAttributeOptionsE(ptr noundef nonnull align 8 dereferenceable(18640) %i.bp, ptr noundef %i.br, ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(2) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %12 = insertelement <2 x ptr> poison, ptr %0, i64 0 ; 2 uses
  %13 = insertelement <2 x ptr> %12, ptr %10, i64 1
  %14 = getelementptr inbounds nuw i8, <2 x ptr> %13, <2 x i64> <i64 488, i64 64>
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %15 = insertelement <2 x ptr> %12, ptr %11, i64 1
  %16 = getelementptr inbounds nuw i8, <2 x ptr> %15, <2 x i64> <i64 488, i64 64>
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 56
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %19 = zext i1 %i.d to i64                       ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.j

.critedge29:                                      ; preds = %_ZL29validateDeclsInsideHLSLBufferN5clang9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationEbRNS_6ParserE.exit.thread55, %_ZL29validateDeclsInsideHLSLBufferN5clang9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationEbRNS_6ParserE.exit
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !994, !nonnull !96, !align !97
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.ci) #13
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !995 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ck
  br i1 %i.cp, label %_ZN5clang13AttributePoolD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge29
  call void @free(ptr noundef %i.co) #13
  br label %_ZN5clang13AttributePoolD2Ev.exit.i

_ZN5clang13AttributePoolD2Ev.exit.i:              ; preds = %bb.f, %.critedge29
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !995 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cr, label %_ZN5clang16ParsedAttributesD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i
  call void @free(ptr noundef %i.cq) #13
  br label %_ZN5clang16ParsedAttributesD2Ev.exit

_ZN5clang16ParsedAttributesD2Ev.exit:             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !994, !nonnull !96, !align !97
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.by) #13
  %i.ct = load ptr, ptr %i.bz, align 8, !tbaa !995 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ca
  br i1 %i.cu, label %_ZN5clang13AttributePoolD2Ev.exit.i35, label %bb.h

bb.h:                                             ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit
  call void @free(ptr noundef %i.ct) #13
  br label %_ZN5clang13AttributePoolD2Ev.exit.i35

_ZN5clang13AttributePoolD2Ev.exit.i35:            ; preds = %bb.h, %_ZN5clang16ParsedAttributesD2Ev.exit
  %i.cv = load ptr, ptr %i.bu, align 8, !tbaa !995 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bv
  br i1 %i.cw, label %_ZN5clang16ParsedAttributesD2Ev.exit36, label %bb.i

bb.i:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i35
  call void @free(ptr noundef %i.cv) #13
  br label %_ZN5clang16ParsedAttributesD2Ev.exit36

_ZN5clang16ParsedAttributesD2Ev.exit36:           ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i35, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit36, %bb.e
  %i.cx = load i16, ptr %i.b, align 8, !tbaa !14
  switch i16 %i.cx, label %bb.k [
    i16 25, label %_ZN5clang6Parser10ParseScope4ExitEv.exit47
    i16 1, label %_ZN5clang6Parser10ParseScope4ExitEv.exit47
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 0, ptr %10, align 8, !tbaa !123
  store i32 0, ptr %i.bt, align 4, !tbaa !123
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !995
  store i32 0, ptr %i.bw, align 8, !tbaa !996
  store i32 2, ptr %i.bx, align 4, !tbaa !997
  store <2 x ptr> %14, ptr %i.by, align 8, !tbaa !998
  store i32 0, ptr %i.cb, align 8, !tbaa !996
  store i32 2, ptr %i.cc, align 4, !tbaa !997
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store i32 0, ptr %11, align 8, !tbaa !123
  store i32 0, ptr %i.cd, align 4, !tbaa !123
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !995
  store i32 0, ptr %i.cg, align 8, !tbaa !996
  store i32 2, ptr %i.ch, align 4, !tbaa !997
  store <2 x ptr> %16, ptr %i.ci, align 8, !tbaa !998
  store i32 0, ptr %i.cl, align 8, !tbaa !996
  store i32 2, ptr %17, align 4, !tbaa !997
  %i.cy = call ptr @_ZN5clang6Parser24ParseExternalDeclarationERNS_16ParsedAttributesES2_PNS_15ParsingDeclSpecE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef null) #13 ; 3 uses
  %.not22.i = icmp eq ptr %i.cy, null
  br i1 %.not22.i, label %_ZN5clang6Parser10ParseScope4ExitEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.cy, ptr %3, align 8
  %i.cz = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.da = and i64 %i.cz, 1
  %i.db = icmp eq i64 %i.da, 0                    ; 2 uses
  %i.dc = and i64 %i.cz, -2
  %i.dd = inttoptr i64 %i.dc to ptr               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %.0.i.i = select i1 %i.db, ptr %3, ptr %i.de    ; 2 uses
  br i1 %i.db, label %_ZN5clang12DeclGroupRef3endEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = load i32, ptr %i.dd, align 8, !tbaa !1046
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  br label %_ZN5clang12DeclGroupRef3endEv.exit.i

_ZN5clang12DeclGroupRef3endEv.exit.i:             ; preds = %bb.l, %bb.m
  %.0.i11.i = phi ptr [ %i.dh, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %.not23.i = icmp eq ptr %.0.i.i, %.0.i11.i
  br i1 %.not23.i, label %_ZL29validateDeclsInsideHLSLBufferN5clang9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationEbRNS_6ParserE.exit.thread55, label %.lr.ph.i

_ZL29validateDeclsInsideHLSLBufferN5clang9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationEbRNS_6ParserE.exit.thread55: ; preds = %_ZN5clang12DeclGroupRef3endEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.critedge29

.lr.ph.i:                                         ; preds = %_ZN5clang12DeclGroupRef3endEv.exit.i, %bb.p
  %.0925.i = phi i1 [ %.1.i, %bb.p ], [ true, %_ZN5clang12DeclGroupRef3endEv.exit.i ] ; 18 uses
  %.01024.i = phi ptr [ %i.eq, %bb.p ], [ %.0.i.i, %_ZN5clang12DeclGroupRef3endEv.exit.i ] ; 2 uses
  %i.di = load ptr, ptr %.01024.i, align 8, !tbaa !1047 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = and i32 %i.dk, 127
  switch i32 %i.dl, label %bb.o [
    i32 91, label %bb.p
    i32 62, label %bb.p
    i32 61, label %bb.p
    i32 60, label %bb.p
    i32 59, label %bb.p
    i32 47, label %bb.p
    i32 46, label %bb.p
    i32 45, label %bb.p
    i32 44, label %bb.p
    i32 43, label %bb.p
    i32 42, label %bb.p
    i32 41, label %bb.p
    i32 40, label %bb.p
    i32 39, label %bb.p
    i32 38, label %bb.p
    i32 37, label %bb.p
    i32 36, label %bb.p
    i32 35, label %bb.p
    i32 78, label %bb.n
    i32 26, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.dm, align 8, !tbaa !16
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %.sroa.0.0.copyload.i.i, i32 noundef 1717) #13
  %i.dn = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.n
  %i.do = load ptr, ptr %18, align 8, !tbaa !102
  %i.dp = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.do) ; 2 uses
  store ptr %i.dp, ptr %4, align 8, !tbaa !101
  br label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit.i

_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, %bb.n
  %i.dq = phi ptr [ %i.dp, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.dn, %bb.n ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dq, align 8, !tbaa !114
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  store i8 2, ptr %i.du, align 1, !tbaa !115
  %i.dv = load ptr, ptr %4, align 8, !tbaa !101   ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dv, align 8, !tbaa !114 ; 2 uses
  %i.dy = add i8 %i.dx, 1
  store i8 %i.dy, ptr %i.dv, align 8, !tbaa !114
  %i.dz = zext i8 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dz
  store i64 %19, ptr %i.ea, align 8, !tbaa !116
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.0.0.copyload.i13.i = load i32, ptr %i.eb, align 8, !tbaa !16
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %.sroa.0.0.copyload.i13.i, i32 noundef 1717) #13
  %i.ec = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %.not.i.i.i14.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i14.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i15.i, label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit16.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i15.i: ; preds = %bb.o
  %i.ed = load ptr, ptr %20, align 8, !tbaa !102
  %i.ee = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ed) ; 2 uses
  store ptr %i.ee, ptr %5, align 8, !tbaa !101
  br label %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit16.i

_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit16.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i15.i, %bb.o
  %i.ef = phi ptr [ %i.ee, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i15.i ], [ %i.ec, %bb.o ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = load i8, ptr %i.ef, align 8, !tbaa !114
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei
  store i8 2, ptr %i.ej, align 1, !tbaa !115
  %i.ek = load ptr, ptr %5, align 8, !tbaa !101   ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load i8, ptr %i.ek, align 8, !tbaa !114 ; 2 uses
  %i.en = add i8 %i.em, 1
  store i8 %i.en, ptr %i.ek, align 8, !tbaa !114
  %i.eo = zext i8 %i.em to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eo
  store i64 %19, ptr %i.ep, align 8, !tbaa !116
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.p

bb.p:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit16.i, %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.1.i = phi i1 [ false, %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit16.i ], [ false, %_ZNK5clang17DiagnosticBuilderlsIbEERKS0_RKT_.exit.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ], [ %.0925.i, %.lr.ph.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.01024.i, i64 8 ; 2 uses
  %.not.i37 = icmp eq ptr %i.eq, %.0.i11.i
  br i1 %.not.i37, label %_ZL29validateDeclsInsideHLSLBufferN5clang9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationEbRNS_6ParserE.exit, label %.lr.ph.i, !llvm.loop !1032

_ZL29validateDeclsInsideHLSLBufferN5clang9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationEbRNS_6ParserE.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %.1.i, label %.critedge29, label %_ZN5clang6Parser10ParseScope4ExitEv.exit

_ZN5clang6Parser10ParseScope4ExitEv.exit:         ; preds = %bb.k, %_ZL29validateDeclsInsideHLSLBufferN5clang9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationEbRNS_6ParserE.exit
  call void @_ZN5clang24BalancedDelimiterTracker9skipToEndEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #13
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.am, align 4, !tbaa !16
  store i32 %.sroa.0.0.copyload.i39, ptr %1, align 4, !tbaa !16
  call void @_ZN5clang6Parser9ExitScopeEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #13
  %i.er = load ptr, ptr %i.bi, align 8, !tbaa !355, !nonnull !96, !align !97
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 752
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1040
  %.sroa.02.0.copyload = load i32, ptr %1, align 4, !tbaa !16
  call void @_ZN5clang8SemaHLSL17ActOnFinishBufferEPNS_4DeclENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(273) %i.et, ptr noundef %i.bo, i32 %.sroa.02.0.copyload) #13
  %i.eu = load ptr, ptr %i.ci, align 8, !tbaa !994, !nonnull !96, !align !97
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %i.ci) #13
  %i.ev = load ptr, ptr %i.cj, align 8, !tbaa !995 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ck
  br i1 %i.ew, label %_ZN5clang13AttributePoolD2Ev.exit.i41, label %bb.q

bb.q:                                             ; preds = %_ZN5clang6Parser10ParseScope4ExitEv.exit
  call void @free(ptr noundef %i.ev) #13
  br label %_ZN5clang13AttributePoolD2Ev.exit.i41

_ZN5clang13AttributePoolD2Ev.exit.i41:            ; preds = %bb.q, %_ZN5clang6Parser10ParseScope4ExitEv.exit
  %i.ex = load ptr, ptr %i.ce, align 8, !tbaa !995 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.cf
  br i1 %i.ey, label %_ZN5clang16ParsedAttributesD2Ev.exit42, label %bb.r

bb.r:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i41
  call void @free(ptr noundef %i.ex) #13
  br label %_ZN5clang16ParsedAttributesD2Ev.exit42

_ZN5clang16ParsedAttributesD2Ev.exit42:           ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i41, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ez = load ptr, ptr %i.by, align 8, !tbaa !994, !nonnull !96, !align !97
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.ez, ptr noundef nonnull align 8 dereferenceable(40) %i.by) #13
  %i.fa = load ptr, ptr %i.bz, align 8, !tbaa !995 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ca
  br i1 %i.fb, label %_ZN5clang13AttributePoolD2Ev.exit.i43, label %bb.s

bb.s:                                             ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit42
  call void @free(ptr noundef %i.fa) #13
  br label %_ZN5clang13AttributePoolD2Ev.exit.i43

_ZN5clang13AttributePoolD2Ev.exit.i43:            ; preds = %bb.s, %_ZN5clang16ParsedAttributesD2Ev.exit42
  %i.fc = load ptr, ptr %i.bu, align 8, !tbaa !995 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bv
  br i1 %i.fd, label %_ZN5clang16ParsedAttributesD2Ev.exit44, label %bb.t

bb.t:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i43
  call void @free(ptr noundef %i.fc) #13
  br label %_ZN5clang16ParsedAttributesD2Ev.exit44

_ZN5clang16ParsedAttributesD2Ev.exit44:           ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i43, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %.thread, !llvm.loop !1033

_ZN5clang6Parser10ParseScope4ExitEv.exit47:       ; preds = %bb.j, %bb.j
  %i.fe = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %7) ; 0 uses
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.am, align 4, !tbaa !16
  store i32 %.sroa.0.0.copyload.i45, ptr %1, align 4, !tbaa !16
  call void @_ZN5clang6Parser9ExitScopeEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #13
  %i.ff = load ptr, ptr %i.bi, align 8, !tbaa !355, !nonnull !96, !align !97
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 752
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1040
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !16
  call void @_ZN5clang8SemaHLSL17ActOnFinishBufferEPNS_4DeclENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(273) %i.fh, ptr noundef %i.bo, i32 %.sroa.0.0.copyload) #13
  br label %.thread

.thread:                                          ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit44, %_ZN5clang6Parser10ParseScope4ExitEv.exit47
  %.3.ph = phi ptr [ %i.bo, %_ZN5clang6Parser10ParseScope4ExitEv.exit47 ], [ null, %_ZN5clang16ParsedAttributesD2Ev.exit44 ]
  %i.fi = load i8, ptr %i.ag, align 8, !tbaa !1035, !range !119, !noundef !96
  %i.fj = load ptr, ptr %7, align 8, !tbaa !1048, !nonnull !96
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit

bb.u:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i33
  %i.fk = phi ptr [ %i.bh, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i33 ], [ %i.be, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fm = load i8, ptr %i.fk, align 8, !tbaa !114
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn
  store i8 4, ptr %i.fo, align 1, !tbaa !115
  %i.fp = load ptr, ptr %8, align 8, !tbaa !101   ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i8, ptr %i.fp, align 8, !tbaa !114 ; 2 uses
  %i.fs = add i8 %i.fr, 1
  store i8 %i.fs, ptr %i.fp, align 8, !tbaa !114
  %i.ft = zext i8 %i.fr to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ft
  store i64 24, ptr %i.fu, align 8, !tbaa !116
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fv = load i8, ptr %i.ag, align 8, !tbaa !1035, !range !119, !noundef !96
  %i.fw = load ptr, ptr %7, align 8, !tbaa !1048, !nonnull !96
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN5clang6Parser9ExitScopeEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #13
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit

_ZN5clang6Parser10ParseScopeD2Ev.exit:            ; preds = %bb.u, %.thread, %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit
  %.4 = phi ptr [ null, %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit ], [ %.3.ph, %.thread ], [ null, %bb.u ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind writable sret(%"class.clang::DiagnosticBuilder") align 8, ptr noundef nonnull align 8 dereferenceable(2960), ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1050, !range !119, !noundef !96
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1051
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1052, !range !119, !noundef !96
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = tail call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine14EmitDiagnosticERKNS_17DiagnosticBuilderEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.e, ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %i.h) #13 ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !1051
  store i8 0, ptr %i.a, align 8, !tbaa !1050
  store i8 0, ptr %i.f, align 1, !tbaa !1052
  br label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

_ZN5clang17DiagnosticBuilder4EmitEv.exit:         ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1000 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !115
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !101    ; 6 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp uge ptr %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14848 ; 2 uses
  %i.u = icmp ule ptr %i.p, %i.t
  %or.cond.i.i.i.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 14976 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1002 ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !1002
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y
  store ptr %i.p, ptr %i.z, align 8, !tbaa !1003
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.p) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 928) #14
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.e, %bb.f
  ret void
}

declare noundef ptr @_ZN5clang8SemaHLSL16ActOnStartBufferEPNS_5ScopeEbNS_14SourceLocationEPNS_14IdentifierInfoES3_S3_(ptr noundef nonnull align 8 dereferenceable(273), ptr noundef, i1 noundef zeroext, i32, ptr noundef, i32, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN5clang4Sema24ProcessDeclAttributeListEPNS_5ScopeEPNS_4DeclERKNS_20ParsedAttributesViewERKNS0_27ProcessDeclAttributeOptionsE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1 dereferenceable(2)) local_unnamed_addr #2

declare ptr @_ZN5clang6Parser24ParseExternalDeclarationERNS_16ParsedAttributesES2_PNS_15ParsingDeclSpecE(ptr noundef nonnull align 8 dereferenceable(2960), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang24BalancedDelimiterTracker9skipToEndEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZN5clang8SemaHLSL17ActOnFinishBufferEPNS_4DeclENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(273), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %2 = alloca %"class.clang::FixItHint", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1057, !nonnull !96, !align !97 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i16, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = icmp eq i16 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.unpack11 = load i64, ptr %i.h, align 8, !tbaa !125 ; 3 uses
  %.elt12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.unpack13 = load i64, ptr %.elt12, align 8, !tbaa !125
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %.unpack13 ; 2 uses
  %i.j = and i64 %.unpack11, 1
  %.not14 = icmp eq i64 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !1005
  %i.l = getelementptr i8, ptr %i.k, i64 %.unpack11
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load ptr, ptr %i.m, align 8, !nosanitize !96
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %.unpack11 to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %i.q = tail call i32 %i.p(ptr noundef nonnull align 8 dereferenceable(2960) %i.i) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.q, ptr %i.r, align 4, !tbaa !16
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq i16 %i.f, 64
  br i1 %i.s, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95, !nonnull !96, !align !97 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2960
end_hunk_0
