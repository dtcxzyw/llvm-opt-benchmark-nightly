Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AliasSetTracker?download=true
inline.NumInlined: 1828
inline.NumDeleted: 1071
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::cl::opt" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage", %"class.llvm::cl::parser", %"class.std::function" }
%"class.llvm::cl::Option" = type { ptr, i16, i16, i16, i16, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::SmallVector", %"class.llvm::SmallPtrSet" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [1 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::cl::opt_storage" = type { i32, [4 x i8], %"struct.llvm::cl::OptionValue" }
%"struct.llvm::cl::OptionValue" = type { %"struct.llvm::cl::OptionValueBase.base", [3 x i8] }
%"struct.llvm::cl::OptionValueBase.base" = type { %"class.llvm::cl::OptionValueCopy.base" }
%"class.llvm::cl::OptionValueCopy.base" = type <{ %"struct.llvm::cl::GenericOptionValue", i32, i8 }>
%"struct.llvm::cl::GenericOptionValue" = type { ptr }
%"class.llvm::cl::parser" = type { %"class.llvm::cl::basic_parser" }
%"class.llvm::cl::basic_parser" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.llvm::cl::basic_parser_impl" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.llvm::AnalysisSetKey" = type { [8 x i8] }
%"struct.llvm::AnalysisKey" = type { [8 x i8] }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<llvm::MemoryLocation>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::MemoryLocation>::_Storage" = type { %"class.llvm::MemoryLocation" }
%"class.llvm::MemoryLocation" = type { ptr, %"class.llvm::LocationSize", %"struct.llvm::AAMDNodes" }
%"class.llvm::LocationSize" = type { i64 }
%"struct.llvm::AAMDNodes" = type { ptr, ptr, ptr, ptr, ptr }
%"class.llvm::SmallVector.22" = type { %"class.llvm::SmallVectorImpl.23", %"struct.llvm::SmallVectorStorage.26" }
%"class.llvm::SmallVectorImpl.23" = type { %"class.llvm::SmallVectorTemplateBase.24" }
%"class.llvm::SmallVectorTemplateBase.24" = type { %"class.llvm::SmallVectorTemplateCommon.25" }
%"class.llvm::SmallVectorTemplateCommon.25" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.26" = type { [64 x i8] }
%"class.llvm::SmallSetVector" = type { %"class.llvm::SetVector" }
%"class.llvm::SetVector" = type { %"class.llvm::DenseSet", %"class.llvm::SmallVector.22" }
%"class.llvm::DenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::DenseMap.27" }
%"class.llvm::DenseMap.27" = type { ptr, ptr, i32, i32 }
%"class.llvm::AssertingVH.29" = type { ptr }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet.63", %"class.llvm::SmallPtrSet.66" }
%"class.llvm::SmallPtrSet.63" = type { %"class.llvm::SmallPtrSetImpl.base.65", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.65" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSet.66" = type { %"class.llvm::SmallPtrSetImpl.base.68", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.68" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::BatchAAResults" = type { ptr, %"class.llvm::AAQueryInfo", %"class.llvm::SimpleCaptureAnalysis" }
%"class.llvm::AAQueryInfo" = type <{ ptr, %"class.llvm::SmallDenseMap", ptr, i32, i32, %"class.llvm::SmallVector.5", i8, i8, [6 x i8] }>
%"class.llvm::SmallDenseMap" = type { i32, %union.anon }
%union.anon = type { %"struct.llvm::SmallDenseMap<std::pair<llvm::AACacheLoc, llvm::AACacheLoc>, llvm::AAQueryInfo::CacheEntry, 8>::LargeRep", [304 x i8] }
%"struct.llvm::SmallDenseMap<std::pair<llvm::AACacheLoc, llvm::AACacheLoc>, llvm::AAQueryInfo::CacheEntry, 8>::LargeRep" = type { ptr, ptr, i32 }
%"class.llvm::SmallVector.5" = type { %"class.llvm::SmallVectorImpl.6", %"struct.llvm::SmallVectorStorage.9" }
%"class.llvm::SmallVectorImpl.6" = type { %"class.llvm::SmallVectorTemplateBase.7" }
%"class.llvm::SmallVectorTemplateBase.7" = type { %"class.llvm::SmallVectorTemplateCommon.8" }
%"class.llvm::SmallVectorTemplateCommon.8" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.9" = type { [128 x i8] }
%"class.llvm::SimpleCaptureAnalysis" = type { %"struct.llvm::CaptureAnalysis", %"class.llvm::SmallDenseMap.10" }
%"struct.llvm::CaptureAnalysis" = type { ptr }
%"class.llvm::SmallDenseMap.10" = type { i32, %union.anon.12 }
%union.anon.12 = type { %"struct.llvm::SmallDenseMap<const llvm::Value *, llvm::CaptureResult, 8>::LargeRep", [112 x i8] }
%"struct.llvm::SmallDenseMap<const llvm::Value *, llvm::CaptureResult, 8>::LargeRep" = type { ptr, ptr, i32 }
%"class.llvm::AliasSetTracker" = type { ptr, %"class.llvm::iplist", %"class.llvm::DenseMap", i32, ptr }
%"class.llvm::iplist" = type { %"class.llvm::iplist_impl" }
%"class.llvm::iplist_impl" = type { %"class.llvm::simple_ilist" }
%"class.llvm::simple_ilist" = type { %"class.llvm::ilist_sentinel" }
%"class.llvm::ilist_sentinel" = type { %"class.llvm::ilist_node_impl" }
%"class.llvm::ilist_node_impl" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::ilist_node_base" = type { %"class.llvm::ilist_detail::node_base_prevnext" }
%"class.llvm::ilist_detail::node_base_prevnext" = type { ptr, ptr }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }

$_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev = comdat any

$_ZN4llvm9SetVectorIPKNS_5ValueENS_11SmallVectorIS3_Lj8EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj8EE6insertERKS3_ = comdat any

$_ZN4llvm15AliasSetTracker20collapseForwardingInERPNS_8AliasSetE = comdat any

$_ZN4llvm8dyn_castINS_18AnyMemTransferInstENS_11InstructionEEEDcPT0_ = comdat any

$_ZN4llvm15AliasSetTrackerD2Ev = comdat any

$_ZN4llvm8CallBase7arg_endEv = comdat any

$_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm15SmallVectorImplINS_14MemoryLocationEE4swapERS2_ = comdat any

$_ZN4llvm15SmallVectorImplINS_14MemoryLocationEE6insertIPS1_vEES4_S4_T_S5_ = comdat any

$_ZNSt6vectorIN4llvm11AssertingVHINS0_11InstructionEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_14MemoryLocationELb1EE15growAndPushBackERKS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_5ValueELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm15SmallVectorImplIPKNS_5ValueEEaSEOS4_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHIKNS_5ValueEEEPNS_8AliasSetENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHIKNS_5ValueEEEPNS_8AliasSetENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSC_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHIKNS_5ValueEEEPNS_8AliasSetENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHIKNS_5ValueEEEPNS_8AliasSetENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHIKNS_5ValueEEEPNS_8AliasSetENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ = comdat any

$_ZSt9__find_ifIPN4llvm14MemoryLocationEN9__gnu_cxx5__ops16_Iter_equals_valIKS1_EEET_S8_S8_T0_St26random_access_iterator_tag = comdat any

$_ZTVN4llvm2cl11OptionValueIjEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL19SaturationThreshold = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"alias-set-saturation-threshold\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"The maximum total number of memory locations alias sets may contain before degradation\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [12 x i8] c"  AliasSet[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"must\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"may\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" alias, \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"No access \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Ref       \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Mod       \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Mod/Ref   \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c" forwarding to \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Memory locations: \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c", unknown after)\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c", unknown before-or-after)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c" Unknown instructions: \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Alias Set Tracker: \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c" (Saturated)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c" alias sets for \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c" pointer values.\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Alias sets for function '\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"':\0A\00", align 1
@_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm21SimpleCaptureAnalysisE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@_ZTVN4llvm2cl11OptionValueIjEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIjEE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.28 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN4llvm9AAManager3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_AliasSetTracker.cpp, ptr null }]

@_ZN4llvm20AliasSetsPrinterPassC1ERNS_11raw_ostreamE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm20AliasSetsPrinterPassC2ERNS_11raw_ostreamE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #19, !inline_history !148 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !19, !range !20, !noundef !21
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.i) #19
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #19
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8AliasSet10mergeSetInERS0_RNS_15AliasSetTrackerERNS_14BatchAAResultsE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(672) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.b, 805306368
  %i.f = or i32 %i.e, %i.d                        ; 2 uses
  store i32 %i.f, ptr %i.c, align 8
  %i.g = load i32, ptr %i.a, align 8
  %i.h = or i32 %i.g, %i.d
  %i.i = and i32 %i.h, 1073741824                 ; 2 uses
  %i.j = and i32 %i.f, -1073741825
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %i.c, align 8
  %i.l = icmp eq i32 %i.i, 0
  br i1 %i.l, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.m, align 8, !tbaa !24  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load i32, ptr %i.n, align 8, !tbaa !25
  %i.o = zext i32 %.val17 to i64                  ; 3 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %i.o ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = lshr i64 %i.o, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.052.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.g ] ; 2 uses
  %.02951.i.i.i.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %bb.g ] ; 6 uses
  %.val41.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !24
  %.val41.val43.i.i.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !25
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm8AliasSet10mergeSetInERS3_RNS2_15AliasSetTrackerERNS2_14BatchAAResultsEE3$_0EclIPNS2_14MemoryLocationEEEbT_"(ptr %.val41.val.i.i.i.i.i.i, i32 %.val41.val43.i.i.i.i.i.i, ptr nonnull %3, ptr noundef %.02951.i.i.i.i.i.i)
  br i1 %i.u, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.02951.i.i.i.i.i.i, i64 56 ; 2 uses
  %.val39.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !24
  %.val39.val44.i.i.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !25
  %i.w = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm8AliasSet10mergeSetInERS3_RNS2_15AliasSetTrackerERNS2_14BatchAAResultsEE3$_0EclIPNS2_14MemoryLocationEEEbT_"(ptr %.val39.val.i.i.i.i.i.i, i32 %.val39.val44.i.i.i.i.i.i, ptr nonnull %3, ptr noundef nonnull %i.v)
  br i1 %i.w, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.02951.i.i.i.i.i.i, i64 112 ; 2 uses
  %.val37.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !24
  %.val37.val45.i.i.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !25
  %i.y = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm8AliasSet10mergeSetInERS3_RNS2_15AliasSetTrackerERNS2_14BatchAAResultsEE3$_0EclIPNS2_14MemoryLocationEEEbT_"(ptr %.val37.val.i.i.i.i.i.i, i32 %.val37.val45.i.i.i.i.i.i, ptr nonnull %3, ptr noundef nonnull %i.x)
  br i1 %i.y, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.02951.i.i.i.i.i.i, i64 168 ; 2 uses
  %.val35.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !24
  %.val35.val46.i.i.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !25
  %i.aa = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm8AliasSet10mergeSetInERS3_RNS2_15AliasSetTrackerERNS2_14BatchAAResultsEE3$_0EclIPNS2_14MemoryLocationEEEbT_"(ptr %.val35.val.i.i.i.i.i.i, i32 %.val35.val46.i.i.i.i.i.i, ptr nonnull %3, ptr noundef nonnull %i.z)
  br i1 %i.aa, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.02951.i.i.i.i.i.i, i64 224 ; 3 uses
  %i.ac = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.ad = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.c, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !151

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.g
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.ab to i64
  %.pre53.i.i.i.i.i.i = sub i64 %i.q, %.pre.i.i.i.i.i.i
  %i.ae = sdiv exact i64 %.pre53.i.i.i.i.i.i, 56
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi54.i.i.i.i.i.i = phi i64 [ %i.ae, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.o, %bb.b ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.ab, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi54.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val33.val.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val33.val47.i.i.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ah = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm8AliasSet10mergeSetInERS3_RNS2_15AliasSetTrackerERNS2_14BatchAAResultsEE3$_0EclIPNS2_14MemoryLocationEEEbT_"(ptr %.val33.val.i.i.i.i.i.i, i32 %.val33.val47.i.i.i.i.i.i, ptr nonnull %3, ptr noundef %.029.lcssa.i.i.i.i.i.i)
  br i1 %i.ah, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val31.val.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val31.val48.i.i.i.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !25
  %i.al = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm8AliasSet10mergeSetInERS3_RNS2_15AliasSetTrackerERNS2_14BatchAAResultsEE3$_0EclIPNS2_14MemoryLocationEEEbT_"(ptr %.val31.val.i.i.i.i.i.i, i32 %.val31.val48.i.i.i.i.i.i, ptr nonnull %3, ptr noundef %.1.i.i.i.i.i.i)
  br i1 %i.al, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 56
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.am, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.val49.i.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !25
  %i.ap = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm8AliasSet10mergeSetInERS3_RNS2_15AliasSetTrackerERNS2_14BatchAAResultsEE3$_0EclIPNS2_14MemoryLocationEEEbT_"(ptr %.val.val.i.i.i.i.i.i, i32 %.val.val49.i.i.i.i.i.i, ptr nonnull %3, ptr noundef %.2.i.i.i.i.i.i)
  br i1 %i.ap, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.j, %bb.l
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i.i, %bb.l ], [ %i.x, %bb.e ], [ %i.v, %bb.d ], [ %.02951.i.i.i.i.i.i, %bb.c ], [ %i.z, %bb.f ]
  %.not = icmp eq ptr %i.p, %.028.i.i.i.i.i.i
  br i1 %.not, label %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit.thread", label %bb.m

"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit"
  %i.aq = load i32, ptr %i.c, align 8
  %i.ar = or i32 %i.aq, 1073741824
  store i32 %i.ar, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit", %"_ZN4llvm6any_ofIRNS_11SmallVectorINS_14MemoryLocationELj0EEEZNS_8AliasSet10mergeSetInERS5_RNS_15AliasSetTrackerERNS_14BatchAAResultsEE3$_0EEbOT_T0_.exit.thread", %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %.not.i18 = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %.not.i18, label %bb.n, label %bb.o
end_hunk_0
begin_hunk_1_@_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE:bb.a
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.l
  %i.n = call noundef ptr @_ZSt9__find_ifIPN4llvm14MemoryLocationEN9__gnu_cxx5__ops16_Iter_equals_valIKS1_EEET_S8_S8_T0_St26random_access_iterator_tag(ptr noundef %i.i, ptr noundef %i.m, ptr nonnull align 8 dereferenceable(56) %1)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.p = load i32, ptr %i.j, align 8, !tbaa !25
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.q
  %.not26 = icmp eq ptr %i.n, %i.r
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !121
  br label %bb.k

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %.not23 = icmp eq ptr %i.u, null
  br i1 %.not23, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.w = call noundef ptr @_ZN4llvm15AliasSetTracker31mergeAliasSetsForMemoryLocationERKNS_14MemoryLocationEPNS_8AliasSetERb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  %.not24 = icmp eq ptr %i.w, null
  br i1 %.not24, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i8, ptr %i.a, align 1, !tbaa !114, !range !20
  %i.x = trunc nuw i8 %.pre to i1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.ac, align 8
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ad, i8 0, i64 36, i1 false)
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !59  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.af, align 8, !tbaa !58
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !58
  store ptr %i.z, ptr %i.y, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.d
  %i.ah = phi i1 [ false, %bb.d ], [ true, %bb.f ], [ %i.x, %._crit_edge ]
  %.1 = phi ptr [ %i.u, %bb.d ], [ %i.z, %bb.f ], [ %i.w, %._crit_edge ] ; 4 uses
  call void @_ZN4llvm8AliasSet17addMemoryLocationERNS_15AliasSetTrackerERKNS_14MemoryLocationEb(ptr noundef nonnull align 8 dereferenceable(68) %.1, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %i.ah)
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !121
  %.not25 = icmp eq ptr %i.ai, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15AliasSetTracker20collapseForwardingInERPNS_8AliasSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 64 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = add i32 %i.ak, 1
  %i.am = and i32 %i.al, 134217727
  %i.an = and i32 %i.ak, -134217728
  %i.ao = or disjoint i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.aj, align 8
  store ptr %.1, ptr %i.e, align 8, !tbaa !121
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.020 = phi ptr [ %i.s, %bb.c ], [ %.1, %bb.j ]
  ret ptr %.020
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15AliasSetTracker20collapseForwardingInERPNS_8AliasSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15AliasSetTracker20collapseForwardingInERPNS_8AliasSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %1, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = add i32 %i.h, 1
  %i.j = and i32 %i.i, 134217727
  %i.k = and i32 %i.h, -134217728
  %i.l = or disjoint i32 %i.j, %i.k
  store i32 %i.l, ptr %i.g, align 8
  %i.m = load ptr, ptr %1, align 8, !tbaa !121    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = add i32 %i.o, 134217727
  %i.q = and i32 %i.p, 134217727                  ; 2 uses
  %i.r = and i32 %i.o, -134217728
  %i.s = or disjoint i32 %i.q, %i.r
  store i32 %i.s, ptr %i.n, align 8
  %i.t = icmp eq i32 %i.q, 0
  br i1 %i.t, label %bb.c, label %_ZN4llvm8AliasSet7dropRefERNS_15AliasSetTrackerE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15AliasSetTracker14removeAliasSetEPNS_8AliasSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(68) %i.m), !inline_history !0
  br label %_ZN4llvm8AliasSet7dropRefERNS_15AliasSetTrackerE.exit

_ZN4llvm8AliasSet7dropRefERNS_15AliasSetTrackerE.exit: ; preds = %bb.b, %bb.c
  store ptr %i.f, ptr %1, align 8, !tbaa !121
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8AliasSet7dropRefERNS_15AliasSetTrackerE.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker3addERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.g = icmp ugt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull byval(%"class.llvm::MemoryLocation") align 8 %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = shl i32 %2, 28
  %i.e = and i32 %i.d, 805306368
  %i.f = or i32 %i.c, %i.e
  store i32 %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.l = icmp ugt i32 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.m, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker3addEPNS_8LoadInstE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %3 = alloca %"class.llvm::MemoryLocation", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !128
  %i.c = and i16 %i.b, 896
  %4 = icmp samesign ugt i16 %i.c, 256
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15AliasSetTracker10addUnknownEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm14MemoryLocation3getEPKNS_8LoadInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %3, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.d = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = or i32 %i.f, 268435456
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.m = icmp ugt i32 %i.k, %i.l
  br i1 %i.m, label %bb.e, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.e:                                             ; preds = %bb.d
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker10addUnknownEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !88
  %i.b = icmp eq i8 %i.a, 88
  br i1 %i.b, label %bb.b, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %1, i64 -32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.d, align 8, !tbaa !88
  %i.f = icmp eq i8 %i.e, 14
  br i1 %i.f, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 8192
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  switch i32 %i.k, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread [
    i32 6, label %bb.h
    i32 11, label %bb.h
    i32 16, label %bb.h
    i32 164, label %bb.h
    i32 348, label %bb.h
    i32 312, label %bb.h
  ]

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, %bb.c, %bb.a, %bb.b, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm11Instruction17mayReadFromMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #23
  br i1 %i.l, label %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread, label %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit

_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #23
  br i1 %i.m, label %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread, label %bb.h

_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.thread, %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not1517.i = icmp eq ptr %i.o, %i.p
  br i1 %.not1517.i, label %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread, %bb.g
  %.019.i = phi ptr [ %.2.i, %bb.g ], [ null, %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread ] ; 5 uses
  %.sroa.013.018.i = phi ptr [ %i.r, %bb.g ], [ %i.o, %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.018.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.018.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !21, !align !76
  %i.v = tail call noundef zeroext i8 @_ZNK4llvm8AliasSet18aliasesUnknownInstEPKNS_11InstructionERNS_14BatchAAResultsE(ptr noundef nonnull align 8 dereferenceable(68) %.sroa.013.018.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(672) %i.u)
  %.not16.i = icmp eq i8 %i.v, 0
  br i1 %.not16.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not11.i = icmp eq ptr %.019.i, null
  br i1 %.not11.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !21, !align !76
  tail call void @_ZN4llvm8AliasSet10mergeSetInERS0_RNS_15AliasSetTrackerERNS_14BatchAAResultsE(ptr noundef nonnull align 8 dereferenceable(68) %.019.i, ptr noundef nonnull align 8 dereferenceable(68) %.sroa.013.018.i, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(672) %i.w)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %.2.i = phi ptr [ %.019.i, %.lr.ph.i ], [ %.019.i, %bb.d ], [ %.019.i, %bb.f ], [ %.sroa.013.018.i, %bb.e ] ; 3 uses
  %.not15.i = icmp eq ptr %i.r, %i.p
  br i1 %.not15.i, label %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit, label %.lr.ph.i

_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit: ; preds = %bb.g
  %.not13.not = icmp eq ptr %.2.i, null
  br i1 %.not13.not, label %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit.thread, label %.sink.split

_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit.thread: ; preds = %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread, %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit
  %i.x = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.aa, align 8
  store ptr %i.z, ptr %i.y, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.p, ptr %i.ad, align 8, !tbaa !58
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !58
  store ptr %i.x, ptr %i.p, align 8, !tbaa !59
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit, %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit.thread
  %.2.i.lcssa.sink = phi ptr [ %i.x, %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit.thread ], [ %.2.i, %_ZN4llvm15AliasSetTracker26findAliasSetForUnknownInstEPNS_11InstructionE.exit ]
  tail call void @_ZN4llvm8AliasSet14addUnknownInstEPNS_11InstructionERNS_14BatchAAResultsE(ptr noundef nonnull align 8 dereferenceable(68) %.2.i.lcssa.sink, ptr noundef nonnull %1, ptr nonnull align 8 poison)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit
  ret void
}

declare void @_ZN4llvm14MemoryLocation3getEPKNS_8LoadInstE(ptr dead_on_unwind writable sret(%"class.llvm::MemoryLocation") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker3addEPNS_9StoreInstE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %3 = alloca %"class.llvm::MemoryLocation", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !128
  %i.c = and i16 %i.b, 896
  %4 = icmp samesign ugt i16 %i.c, 256
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15AliasSetTracker10addUnknownEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm14MemoryLocation3getEPKNS_9StoreInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %3, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.d = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = or i32 %i.f, 536870912
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.m = icmp ugt i32 %i.k, %i.l
  br i1 %i.m, label %bb.e, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.e:                                             ; preds = %bb.d
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit, %bb.b
  ret void
}

declare void @_ZN4llvm14MemoryLocation3getEPKNS_9StoreInstE(ptr dead_on_unwind writable sret(%"class.llvm::MemoryLocation") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker3addEPNS_9VAArgInstE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %3 = alloca %"class.llvm::MemoryLocation", align 8 ; 2 uses
  call void @_ZN4llvm14MemoryLocation3getEPKNS_9VAArgInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %3, ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.a = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = or i32 %i.c, 805306368
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm14MemoryLocation3getEPKNS_9VAArgInstE(ptr dead_on_unwind writable sret(%"class.llvm::MemoryLocation") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker3addEPNS_13AnyMemSetInstE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %3 = alloca %"class.llvm::MemoryLocation", align 8 ; 2 uses
  call void @_ZN4llvm14MemoryLocation10getForDestEPKNS_15AnyMemIntrinsicE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %3, ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.a = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = or i32 %i.c, 536870912
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm14MemoryLocation10getForDestEPKNS_15AnyMemIntrinsicE(ptr dead_on_unwind writable sret(%"class.llvm::MemoryLocation") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker3addEPNS_18AnyMemTransferInstE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %3 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %4 = alloca %"class.llvm::MemoryLocation", align 8 ; 2 uses
  %5 = alloca %"class.llvm::MemoryLocation", align 8 ; 2 uses
  call void @_ZN4llvm14MemoryLocation10getForDestEPKNS_15AnyMemIntrinsicE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %4, ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  %i.a = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = or i32 %i.c, 536870912
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN4llvm14MemoryLocation12getForSourceEPKNS_18AnyMemTransferInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %5, ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  %i.l = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = or i32 %i.n, 268435456
  store i32 %i.o, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !60
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %bb.d, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit5

bb.d:                                             ; preds = %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !57
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.t = icmp ugt i32 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit5

bb.e:                                             ; preds = %bb.d
  %i.u = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit5

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit5: ; preds = %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm14MemoryLocation12getForSourceEPKNS_18AnyMemTransferInstE(ptr dead_on_unwind writable sret(%"class.llvm::MemoryLocation") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AliasSetTracker3addEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %3 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %4 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %5 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %6 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %7 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %8 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %9 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %10 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %11 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !88
  switch i8 %i.a, label %bb.w [
    i8 63, label %bb.b
    i8 64, label %bb.h
    i8 92, label %bb.n
    i8 88, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !128
  %i.d = and i16 %i.c, 896
  %12 = icmp samesign ugt i16 %i.d, 256
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15AliasSetTracker10addUnknownEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm14MemoryLocation3getEPKNS_8LoadInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %10, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  %i.e = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %9)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 268435456
  store i32 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !128
  %i.r = and i16 %i.q, 896
  %13 = icmp samesign ugt i16 %i.r, 256
  br i1 %13, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm15AliasSetTracker10addUnknownEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @_ZN4llvm14MemoryLocation3getEPKNS_9StoreInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %8, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  %i.s = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %7)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = or i32 %i.u, 536870912
  store i32 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %.not.i.i49 = icmp eq ptr %i.x, null
  br i1 %.not.i.i49, label %bb.k, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i50

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !57
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.ab = icmp ugt i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.l, label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i50

bb.l:                                             ; preds = %bb.k
  %i.ac = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i50

_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i50: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm15AliasSetTracker17addMemoryLocationENS_14MemoryLocationENS_8AliasSet13AccessLatticeE.exit.i50, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN4llvm14MemoryLocation3getEPKNS_9VAArgInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %6, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %i.ad = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = or i32 %i.af, 805306368
  store i32 %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  %.not.i.i52 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i52, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !57
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.am = icmp ugt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

bb.r:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !88
  %i.ar = icmp eq i8 %i.aq, 14
  br i1 %i.ar, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, label %bb.w

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, 8192
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_ZN4llvm14CastIsPossibleINS_13AnyMemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i

_ZN4llvm14CastIsPossibleINS_13AnyMemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !97
  %.off.i.i.i.i.i.i.i.i.i = add i32 %i.aw, -260
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_13AnyMemSetInstENS_11InstructionEEEDcPT0_.exit, label %bb.w

_ZN4llvm8dyn_castINS_13AnyMemSetInstENS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13AnyMemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4llvm14MemoryLocation10getForDestEPKNS_15AnyMemIntrinsicE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %4, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  %i.ax = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker14getAliasSetForERKNS_14MemoryLocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = or i32 %i.az, 536870912
  store i32 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !60
  %.not.i.i55 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i55, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN4llvm8dyn_castINS_13AnyMemSetInstENS_11InstructionEEEDcPT0_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !57
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SaturationThreshold, i64 120), align 8, !tbaa !127
  %i.bg = icmp ugt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm15AliasSetTracker17mergeAllAliasSetsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %_ZN4llvm8dyn_castINS_13AnyMemSetInstENS_11InstructionEEEDcPT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

bb.w:                                             ; preds = %bb.a, %bb.r, %_ZN4llvm14CastIsPossibleINS_13AnyMemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, %bb.s
  %i.bi = tail call noundef ptr @_ZN4llvm8dyn_castINS_18AnyMemTransferInstENS_11InstructionEEEDcPT0_(ptr noundef nonnull %1) ; 2 uses
  %.not46.not = icmp eq ptr %i.bi, null
  br i1 %.not46.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN4llvm15AliasSetTracker3addEPNS_18AnyMemTransferInstE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.bi)
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.bj = load i8, ptr %1, align 8, !tbaa !88
  switch i8 %i.bj, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit: ; preds = %bb.y, %bb.y, %bb.y
  %i.bk = tail call noundef zeroext i1 @_ZNK4llvm8CallBase21onlyAccessesArgMemoryEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #19
  br i1 %i.bk, label %bb.z, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread

bb.z:                                             ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !21, !align !76 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !75, !nonnull !21, !align !76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = tail call i32 @_ZN4llvm9AAResults16getMemoryEffectsEPKNS_8CallBaseERNS_11AAQueryInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(506) %i.bn) #19 ; 3 uses
  %i.bp = trunc i32 %i.bo to i8                   ; 4 uses
  %i.bq = lshr i8 %i.bp, 2
  %i.br = lshr i8 %i.bp, 4
  %i.bs = lshr i8 %i.bp, 6
  %i.bt = lshr i32 %i.bo, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = lshr i32 %i.bo, 10
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = or i8 %i.br, %i.bq
  %i.by = or i8 %i.bx, %i.bu
  %i.bz = or i8 %i.by, %i.bw
  %i.ca = or i8 %i.bz, %i.bp
  %i.cb = and i8 %i.ca, 3
  %i.cc = or i8 %i.cb, %i.bs                      ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !87
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.cg = load i8, ptr %1, align 8, !tbaa !88
  %.not.i.i.i = icmp eq i8 %i.cg, 88
  br i1 %.not.i.i.i, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !88
  %i.ck = icmp eq i8 %i.cj, 14
  br i1 %i.ck, label %_ZN4llvm12PatternMatch5matchINS_8CallBaseENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchEEEEEEbPT_RKT0_.exit, label %.critedge

_ZN4llvm12PatternMatch5matchINS_8CallBaseENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchEEEEEEbPT_RKT0_.exit: ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !97
  %i.cn = icmp eq i32 %i.cm, 215
  %i.co = and i8 %i.cc, 1
  %spec.select = select i1 %i.cn, i8 %i.co, i8 %i.cc
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm12PatternMatch5matchINS_8CallBaseENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchEEEEEEbPT_RKT0_.exit, %bb.ac, %bb.aa, %bb.ab, %bb.z
  %.0 = phi i8 [ %i.cc, %bb.ac ], [ %spec.select, %_ZN4llvm12PatternMatch5matchINS_8CallBaseENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchEEEEEEbPT_RKT0_.exit ], [ %i.cc, %bb.z ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.aa ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = and i32 %i.cq, 268435455
  %i.cs = zext nneg i32 %i.cr to i64
end_hunk_1
