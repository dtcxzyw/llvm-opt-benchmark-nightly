Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeExtractor?download=true
inline.NumInlined: 4759
inline.NumDeleted: 2653
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::ArrayRef.246" = type { ptr, i64 }
%"class.llvm::SmallPtrSet.247" = type { %"class.llvm::SmallPtrSetImpl.base.249", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.249" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<llvm::BasicBlock *, std::pair<llvm::BasicBlock *const, llvm::BasicBlock *>, std::_Select1st<std::pair<llvm::BasicBlock *const, llvm::BasicBlock *>>, std::less<llvm::BasicBlock *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<llvm::BasicBlock *, std::pair<llvm::BasicBlock *const, llvm::BasicBlock *>, std::_Select1st<std::pair<llvm::BasicBlock *const, llvm::BasicBlock *>>, std::less<llvm::BasicBlock *>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.anon.470 = type { ptr, ptr, ptr }
%"class.llvm::ArrayRef.469" = type { ptr, i64 }
%class.anon.290 = type { ptr }
%"class.llvm::WeakVH" = type { %"class.llvm::ValueHandleBase" }
%"class.llvm::ValueHandleBase" = type { %"class.llvm::PointerIntPair", ptr, ptr }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer.292" }
%"struct.llvm::detail::PunnedPointer.292" = type { [8 x i8] }
%"struct.llvm::AssumptionCache::ResultElem" = type <{ %"class.llvm::WeakVH", i32, [4 x i8] }>
%"class.llvm::DenseMap.22" = type { ptr, ptr, i32, i32 }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6removeERKS2_ = comdat any

$_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE = comdat any

$_ZNSt3mapIPN4llvm10BasicBlockES2_St4lessIS2_ESaISt4pairIKS2_S2_EEEixERS6_ = comdat any

$_ZN4llvm13CodeExtractorD2Ev = comdat any

$_ZN4llvm13CodeExtractorD0Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_4UserELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEEaSEOS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm9DIBuilderD2Ev = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6DINodeES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6DINodeES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6DINodeES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6DINodeES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_17DbgVariableRecordELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZNSt8_Rb_treeIPN4llvm10BasicBlockESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSD_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E8moveFromERSE_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_13CodeExtractor18LifetimeMarkerInfoELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE15growAndPushBackES4_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_14BlockFrequencyENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_14BlockFrequencyENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ = comdat any

$_ZNSt8_Rb_treeIPN4llvm10BasicBlockESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_ = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL16AggregateArgsOpt = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"aggregate-extracted-args\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Aggregate arguments to code-extracted functions\00", align 1
@__dso_handle = external hidden global i8
@_ZTVN4llvm13CodeExtractorE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4llvm13CodeExtractorD2Ev, ptr @_ZN4llvm13CodeExtractorD0Ev, ptr @_ZN4llvm13CodeExtractor11allocateVarENS_13IRBuilderBase11InsertPointEPNS_4TypeERKNS_5TwineEPPNS_17AddrSpaceCastInstE, ptr @_ZN4llvm13CodeExtractor13deallocateVarENS_13IRBuilderBase11InsertPointEPNS_5ValueEPNS_4TypeE] }, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".ascast\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"lt.cast\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".ce\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".split\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".ret\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"extracted\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"newFuncRoot\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"gep_\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"loadgep_\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c".exitStub\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"codeRepl\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c".loc\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"structArg\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"targetBlock\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"gep_reload_\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c".reload\00", align 1
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZN4llvm9DbgMarker14EmptyDbgMarkerE = external global %"class.llvm::DbgMarker", align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_CodeExtractor.cpp, ptr null }]

@_ZN4llvm13CodeExtractorC1ENS_8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbPNS_18BlockFrequencyInfoEPNS_21BranchProbabilityInfoEPNS_15AssumptionCacheEbbS3_S4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb = unnamed_addr alias void (ptr, ptr, i64, ptr, i1, ptr, ptr, ptr, i1, i1, ptr, ptr, ptr, i1, i1), ptr @_ZN4llvm13CodeExtractorC2ENS_8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbPNS_18BlockFrequencyInfoEPNS_21BranchProbabilityInfoEPNS_15AssumptionCacheEbbS3_S4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb
@_ZN4llvm26CodeExtractorAnalysisCacheC1ERNS_8FunctionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm26CodeExtractorAnalysisCacheC2ERNS_8FunctionE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !375  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #21, !inline_history !373 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.i) #21
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #21
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13CodeExtractorC2ENS_8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbPNS_18BlockFrequencyInfoEPNS_21BranchProbabilityInfoEPNS_15AssumptionCacheEbbS3_S4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 17), (24, 56)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef %10, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %11, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %12, i1 noundef zeroext %13, i1 noundef zeroext %14) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.llvm::SmallPtrSet.295", align 8 ; 10 uses
  %16 = alloca %"class.llvm::SmallVector.298", align 8 ; 12 uses
  %17 = alloca %"class.llvm::SetVector", align 16 ; 17 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm13CodeExtractorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !62
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AggregateArgsOpt, i64 120), align 8, !range !25
  %spec.select = select i1 %4, i8 1, i8 %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = zext i1 %8 to i8
  store i8 %spec.select, ptr %i.e, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %6, ptr %i.h, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %7, ptr %i.i, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %10, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.01.0.copyload = load ptr, ptr %11, align 8, !tbaa !399
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !68 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 6, ptr %i.n, align 4, !tbaa !70
  %.idx.i = shl nuw nsw i64 %.sroa.22.0.copyload, 3
  %i.o = icmp ugt i64 %.sroa.22.0.copyload, 6
  br i1 %i.o, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull %i.l, i64 noundef %.sroa.22.0.copyload, i64 noundef 8) #21
  %.pre8.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !69
  %i.p = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !29
  br label %bb.b

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.thread.i
  %i.q = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.thread.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.p, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.pre8.i5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 8 %.sroa.01.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !69
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i, %bb.b
  %i.s = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.t = trunc i64 %.sroa.22.0.copyload to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.m, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.f, ptr %i.v, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21, !noalias !400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %17, i8 0, i64 24, i1 false), !noalias !400
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !29, !noalias !400
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 9 uses
  store i32 0, ptr %i.z, align 16, !tbaa !69, !noalias !400
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 36 ; 3 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !70, !noalias !400
  %.idx.i16 = shl nuw nsw i64 %2, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i16 ; 2 uses
  %.not72.i = icmp eq i64 %2, 0
  br i1 %.not72.i, label %._crit_edge.i.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit
  %.not35.i = icmp eq ptr %3, null
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  br i1 %.not35.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.us.i
  %.02973.us.i = phi ptr [ %i.ap, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.us.i ], [ %1, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !400
  %i.ae = load ptr, ptr %.02973.us.i, align 8, !tbaa !72, !noalias !400
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !72, !noalias !400
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !401
  %.fca.1.extract.i.i.i.i.us.i = extractvalue { ptr, i8 } %i.af, 1
  %i.ag = trunc nuw i8 %.fca.1.extract.i.i.i.i.us.i to i1 ; 2 uses
  br i1 %i.ag, label %bb.c, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.us.i

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !72, !noalias !400 ; 2 uses
  %i.ai = load i32, ptr %i.z, align 16, !tbaa !69, !noalias !400 ; 2 uses
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !70, !noalias !400
  %.not.i.i.us.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i.i.us.i, label %bb.e, label %bb.d, !prof !73

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %i.ah), !noalias !400
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.us.i

bb.e:                                             ; preds = %bb.c
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !29, !noalias !400
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  store ptr %i.ah, ptr %i.am, align 1, !noalias !400
  %i.an = load i32, ptr %i.z, align 16, !tbaa !69, !noalias !400
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.z, align 16, !tbaa !69, !noalias !400
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.us.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.us.i: ; preds = %bb.e, %bb.d, %.lr.ph.split.us.i
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !400
  %i.ap = getelementptr inbounds nuw i8, ptr %.02973.us.i, i64 8 ; 2 uses
  %.not.us.i = icmp eq ptr %i.ap, %i.ab
  br i1 %.not.us.i, label %._crit_edge.i.a, label %.lr.ph.split.us.i

._crit_edge.i.a:                                  ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread.i, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.us.i, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit
  %18 = load ptr, ptr %i.x, align 8, !tbaa !29, !noalias !400 ; 2 uses
  %19 = load i32, ptr %i.z, align 16, !tbaa !69, !noalias !400 ; 2 uses
  %20 = zext i32 %19 to i64
  %.idx = shl nuw nsw i64 %20, 3
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %.idx
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 4 uses
  %.not33.i36 = icmp eq i32 %19, 0
  br i1 %.not33.i36, label %.critedge37.i, label %.lr.ph

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread.i
  %.02973.i = phi ptr [ %i.bt, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread.i ], [ %1, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !400
  %i.az = load ptr, ptr %.02973.i, align 8, !tbaa !72, !noalias !400 ; 2 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !72, !noalias !400
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !95, !noalias !400
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  %i.bd = load i32, ptr %i.ac, align 8, !tbaa !69, !noalias !400
  %i.be = icmp ugt i32 %i.bd, %i.bc
  br i1 %i.be, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i: ; preds = %.lr.ph.split.i
  %i.bf = zext i32 %i.bc to i64
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !29, !noalias !400
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !97, !noalias !400
  %.not54.i = icmp eq ptr %i.bi, null
  br i1 %.not54.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !401
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.bj, 1
  %i.bk = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1 ; 2 uses
  br i1 %i.bk, label %bb.g, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !72, !noalias !400 ; 2 uses
  %i.bm = load i32, ptr %i.z, align 16, !tbaa !69, !noalias !400 ; 2 uses
  %i.bn = load i32, ptr %i.aa, align 4, !tbaa !70, !noalias !400
  %.not.i.i.i17 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i.i.i17, label %bb.i, label %bb.h, !prof !73

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %i.bl), !noalias !400
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bo = zext i32 %i.bm to i64
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !29, !noalias !400
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  store ptr %i.bl, ptr %i.bq, align 1, !noalias !400
  %i.br = load i32, ptr %i.z, align 16, !tbaa !69, !noalias !400
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.z, align 16, !tbaa !69, !noalias !400
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread.i: ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i, %.lr.ph.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !400
  %i.bt = getelementptr inbounds nuw i8, ptr %.02973.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, %i.ab
  br i1 %.not.i, label %._crit_edge.i.a, label %.lr.ph.split.i

.lr.ph:                                           ; preds = %._crit_edge.i.a, %_ZNK4llvm10BasicBlock7isEHPadEv.exit.i
  %.0.i37 = phi ptr [ %i.pf, %_ZNK4llvm10BasicBlock7isEHPadEv.exit.i ], [ %18, %._crit_edge.i.a ] ; 2 uses
  %i.bu = load ptr, ptr %.0.i37, align 8, !tbaa !72, !noalias !400 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !400
  %i.bx = and i8 %i.bw, 2
  %.not307.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not307.i.i, label %bb.j, label %_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.thread.i

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !400
  store ptr %i.aq, ptr %15, align 8, !tbaa !27, !noalias !400
  store i32 16, ptr %i.ar, align 8, !tbaa !98, !noalias !400
  store i32 0, ptr %i.as, align 4, !tbaa !99, !noalias !400
  store i8 1, ptr %i.at, align 8, !tbaa !24, !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21, !noalias !400
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !100, !noalias !402 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 48 ; 5 uses
  store ptr %i.au, ptr %16, align 8, !tbaa !29, !noalias !400
  store i32 0, ptr %i.av, align 8, !tbaa !69, !noalias !400
  store i32 16, ptr %i.aw, align 4, !tbaa !70, !noalias !400
  %.not2.i.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not2.i.i.i.i.i, label %.preheader.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.cb = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %i.bz, %bb.j ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !100, !noalias !400 ; 2 uses
  %i.ce = add nuw nsw i64 %.03.i.i.i.i.i, 1       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %i.ca
  br i1 %.not.i.i.i.i.i, label %_ZSt10__distanceIN4llvm16pointer_iteratorINS0_21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEPKS5_EEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !386

_ZSt10__distanceIN4llvm16pointer_iteratorINS0_21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEPKS5_EEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cf = icmp samesign ugt i64 %.03.i.i.i.i.i, 15
  br i1 %i.cf, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i

bb.k:                                             ; preds = %_ZSt10__distanceIN4llvm16pointer_iteratorINS0_21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEPKS5_EEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit.i.i.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr noundef nonnull %i.au, i64 noundef %i.ce, i64 noundef 8) #21, !noalias !400
  %.pre.i.i.i.i = load i32, ptr %i.av, align 8, !tbaa !69, !noalias !400 ; 2 uses
  %.pre23.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i.i.i = load ptr, ptr %16, align 8, !tbaa !29, !noalias !400
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i:         ; preds = %bb.k, %_ZSt10__distanceIN4llvm16pointer_iteratorINS0_21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEPKS5_EEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit.i.i.i.i
  %i.cg = phi ptr [ %.pre.i.i.i, %bb.k ], [ %i.au, %_ZSt10__distanceIN4llvm16pointer_iteratorINS0_21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEPKS5_EEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit.i.i.i.i ]
  %.pre-phi.i.ph.i.i.i = phi i64 [ %.pre23.i.i.i.i, %bb.k ], [ 0, %_ZSt10__distanceIN4llvm16pointer_iteratorINS0_21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEPKS5_EEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit.i.i.i.i ]
  %.ph.i.i.i = phi i32 [ %.pre.i.i.i.i, %bb.k ], [ 0, %_ZSt10__distanceIN4llvm16pointer_iteratorINS0_21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEPKS5_EEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.pre-phi.i.ph.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %.04.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.ci = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24
  store ptr %i.cj, ptr %.04.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !400
  %i.ck = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !100, !noalias !400 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.ca
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPKNS_4UserELj16EEC2INS_16pointer_iteratorINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb1EEEPKSA_EEEERKNS_14iterator_rangeIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !387

_ZN4llvm11SmallVectorIPKNS_4UserELj16EEC2INS_16pointer_iteratorINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb1EEEPKSA_EEEERKNS_14iterator_rangeIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = trunc i64 %i.ce to i32
  %i.co = add i32 %.ph.i.i.i, %i.cn               ; 3 uses
  store i32 %i.co, ptr %i.av, align 8, !tbaa !69, !noalias !400
  %.not.i348.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i348.i.i, label %.preheader.i.i, label %.lr.ph349.i.i

thread-pre-split.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4UserELb1EE9push_backES3_.exit.i.i, %_ZNK4llvm4User8operandsEv.exit.i.i, %bb.o, %_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.i.i
  %.pr.i.i = load i32, ptr %i.av, align 8, !tbaa !69, !noalias !400 ; 2 uses
  %.not.i.i38.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not.i.i38.i, label %.preheader.i.i, label %.lr.ph349.i.i

.preheader.i.i:                                   ; preds = %thread-pre-split.i.i, %_ZN4llvm11SmallVectorIPKNS_4UserELj16EEC2INS_16pointer_iteratorINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb1EEEPKSA_EEEERKNS_14iterator_rangeIT_EE.exit.i.i, %bb.j
  %.sroa.0232.0361.i.i = load ptr, ptr %i.by, align 8, !tbaa !100, !noalias !400 ; 2 uses
  %.not309362.i.i = icmp eq ptr %.sroa.0232.0361.i.i, %i.ca
  br i1 %.not309362.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, label %.lr.ph365.i.i

.lr.ph365.i.i:                                    ; preds = %.preheader.i.i
  %i.cp = load ptr, ptr %17, align 16, !noalias !400 ; 6 uses
  %i.cq = load ptr, ptr %i.ax, align 8, !noalias !400 ; 12 uses
  %i.cr = load i32, ptr %i.ay, align 4, !noalias !400 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0                    ; 6 uses
  %i.ct = add i32 %i.cr, -1                       ; 12 uses
  br label %bb.v

.lr.ph349.i.i:                                    ; preds = %_ZN4llvm11SmallVectorIPKNS_4UserELj16EEC2INS_16pointer_iteratorINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb1EEEPKSA_EEEERKNS_14iterator_rangeIT_EE.exit.i.i, %thread-pre-split.i.i
  %i.cu = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.co, %_ZN4llvm11SmallVectorIPKNS_4UserELj16EEC2INS_16pointer_iteratorINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb1EEEPKSA_EEEERKNS_14iterator_rangeIT_EE.exit.i.i ] ; 2 uses
  %i.cv = load ptr, ptr %16, align 8, !tbaa !29, !noalias !400
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !103, !noalias !400 ; 8 uses
  %i.da = add i32 %i.cu, -1
  store i32 %i.da, ptr %i.av, align 8, !tbaa !69, !noalias !400
  %i.db = load i8, ptr %i.at, align 8, !tbaa !24, !range !25, !noalias !403, !noundef !26
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.l, label %_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.i.i

bb.l:                                             ; preds = %.lr.ph349.i.i
  %i.dd = load ptr, ptr %15, align 8, !tbaa !27, !noalias !403 ; 2 uses
  %i.de = load i32, ptr %i.as, align 4, !tbaa !99, !noalias !403 ; 4 uses
  %i.df = zext i32 %i.de to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.df, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.di, %.critedge.i.i.i.i ], [ %i.dd, %bb.l ] ; 2 uses
  %i.dh = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !104, !noalias !403
  %.not15.i.i.i.i = icmp eq ptr %i.dh, %i.cz
  br i1 %.not15.i.i.i.i, label %thread-pre-split.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.di, %i.dg
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.l
  %i.dj = load i32, ptr %i.ar, align 8, !tbaa !98, !noalias !403
  %i.dk = icmp ult i32 %i.de, %i.dj
  br i1 %i.dk, label %_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.thread.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.i.i

_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.dl = add nuw i32 %i.de, 1
  store i32 %i.dl, ptr %i.as, align 4, !tbaa !99, !noalias !403
  store ptr %i.cz, ptr %i.dg, align 8, !tbaa !104, !noalias !403
  br label %bb.m

_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph349.i.i
  %i.dm = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef %i.cz) #21, !noalias !403
  %i.dn = extractvalue { ptr, i8 } %i.dm, 1
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.m, label %thread-pre-split.i.i, !llvm.loop !390

bb.m:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.i.i, %_ZN4llvm15SmallPtrSetImplIPKNS_4UserEE6insertES3_.exit.thread.i.i
  %i.dp = load i8, ptr %i.cz, align 8, !tbaa !105, !noalias !400 ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 18
  br i1 %i.dq, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp ugt i8 %i.dp, 29
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !106, !noalias !400
  %.not154.i.i = icmp eq ptr %i.dt, %i.bu
  br i1 %.not154.i.i, label %bb.p, label %thread-pre-split.i.i, !llvm.loop !390

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !noalias !400 ; 3 uses
  %i.dw = and i32 %i.dv, 1073741824
  %.not.i.i.i164.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i164.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !107, !noalias !400
  %.pre.i.i165.i.i = and i32 %i.dv, 268435455
  %.pre1.i.i.i.i = zext nneg i32 %.pre.i.i165.i.i to i64
  br label %_ZNK4llvm4User8operandsEv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.dz = and i32 %i.dv, 268435455
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds [32 x i8], ptr %i.cz, i64 %i.eb
  br label %_ZNK4llvm4User8operandsEv.exit.i.i

_ZNK4llvm4User8operandsEv.exit.i.i:               ; preds = %bb.r, %bb.q
  %i.ed = phi ptr [ %i.dy, %bb.q ], [ %i.ec, %bb.r ] ; 2 uses
  %.pre-phi2.i.i.i.i = phi i64 [ %.pre1.i.i.i.i, %bb.q ], [ %i.ea, %bb.r ] ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.pre-phi2.i.i.i.i, 5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx.i.i
  %.not155346.i.i = icmp eq i64 %.pre-phi2.i.i.i.i, 0
  br i1 %.not155346.i.i, label %thread-pre-split.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvm4User8operandsEv.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4UserELb1EE9push_backES3_.exit.i.i
  %.0122347.i.i = phi ptr [ %i.ep, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4UserELb1EE9push_backES3_.exit.i.i ], [ %i.ed, %_ZNK4llvm4User8operandsEv.exit.i.i ] ; 2 uses
  %i.ef = load ptr, ptr %.0122347.i.i, align 8, !tbaa !110, !noalias !400 ; 3 uses
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !105, !noalias !400
  %i.eh = add i8 %i.eg, -23
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.eh, 7
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4UserELb1EE9push_backES3_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ei = load i32, ptr %i.av, align 8, !tbaa !69, !noalias !400 ; 2 uses
  %i.ej = load i32, ptr %i.aw, align 4, !tbaa !70, !noalias !400
  %.not.i166.i.i = icmp ult i32 %i.ei, %i.ej
  br i1 %.not.i166.i.i, label %bb.u, label %bb.t, !prof !73

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4UserELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.ef), !noalias !400
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4UserELb1EE9push_backES3_.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ek = zext i32 %i.ei to i64
end_hunk_0
begin_hunk_1_@_ZN4llvm13CodeExtractorC2ENS_8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbPNS_18BlockFrequencyInfoEPNS_21BranchProbabilityInfoEPNS_15AssumptionCacheEbbS3_S4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.ir = xor i64 %i.iq, %i.ip
  %i.is = trunc i64 %i.ir to i32
  %i.it = and i32 %i.ct, %i.is                    ; 3 uses
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = lshr i64 %i.iu, 5
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !111, !noalias !400
  %i.iy = and i32 %i.it, 31
  %i.iz = lshr i32 %i.ix, %i.iy
  %i.ja = trunc i32 %i.iz to i1
  br i1 %i.ja, label %.lr.ph.i.i.i.i.i.i192.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, !prof !112

.lr.ph.i.i.i.i.i.i192.i.i:                        ; preds = %bb.ai, %bb.aj
  %i.jb = phi i64 [ %i.jh, %bb.aj ], [ %i.iu, %bb.ai ]
  %.019.i.i.i.i.i.i193.i.i = phi i32 [ %i.jg, %bb.aj ], [ %i.it, %bb.ai ]
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !72, !noalias !400
  %i.je = icmp eq ptr %i.in, %i.jd
  br i1 %i.je, label %.critedge158.i.i, label %bb.aj, !prof !73

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i192.i.i
  %i.jf = add nuw i32 %.019.i.i.i.i.i.i193.i.i, 1
  %i.jg = and i32 %i.jf, %i.ct                    ; 3 uses
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %i.ji = lshr i64 %i.jh, 5
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !111, !noalias !400
  %i.jl = and i32 %i.jg, 31
  %i.jm = lshr i32 %i.jk, %i.jl
  %i.jn = trunc i32 %i.jm to i1
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i192.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, !prof !113

.critedge158.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i192.i.i, %.lr.ph360.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0218.0359.i.i, i64 8
  %.sroa.0218.0.i.i = load ptr, ptr %i.jo, align 8, !tbaa !107, !noalias !400 ; 2 uses
  %.not313.i.i = icmp eq ptr %.sroa.0218.0.i.i, null
  br i1 %.not313.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, label %.lr.ph360.i.i

bb.ak:                                            ; preds = %bb.v
  %i.jp = getelementptr inbounds i8, ptr %.sroa.0232.0363.i.i, i64 -8
  %.sroa.0213.0353.i.i = load ptr, ptr %i.jp, align 8, !tbaa !107, !noalias !400 ; 2 uses
  %.not317354.i.i = icmp eq ptr %.sroa.0213.0353.i.i, null
  br i1 %.not317354.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, label %.lr.ph356.i.i

.lr.ph356.i.i:                                    ; preds = %bb.ak, %.critedge160.i.i
  %.sroa.0213.0355.i.i = phi ptr [ %.sroa.0213.0.i.i, %.critedge160.i.i ], [ %.sroa.0213.0353.i.i, %bb.ak ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0213.0355.i.i, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !115, !noalias !400 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 8, !tbaa !105, !noalias !400
  %.not319.i.i = icmp eq i8 %i.js, 39
  br i1 %.not319.i.i, label %bb.al, label %.critedge160.i.i

bb.al:                                            ; preds = %.lr.ph356.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !106, !noalias !400 ; 2 uses
  br i1 %i.cs, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = mul i64 %i.jv, -4658895280553007687     ; 2 uses
  %i.jx = lshr i64 %i.jw, 31
  %i.jy = xor i64 %i.jx, %i.jw
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = and i32 %i.ct, %i.jz                    ; 3 uses
  %i.kb = zext i32 %i.ka to i64                   ; 2 uses
  %i.kc = lshr i64 %i.kb, 5
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !111, !noalias !400
  %i.kf = and i32 %i.ka, 31
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = trunc i32 %i.kg to i1
  br i1 %i.kh, label %.lr.ph.i.i.i.i.i.i202.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, !prof !112

.lr.ph.i.i.i.i.i.i202.i.i:                        ; preds = %bb.am, %bb.an
  %i.ki = phi i64 [ %i.ko, %bb.an ], [ %i.kb, %bb.am ]
  %.019.i.i.i.i.i.i203.i.i = phi i32 [ %i.kn, %bb.an ], [ %i.ka, %bb.am ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !72, !noalias !400
  %i.kl = icmp eq ptr %i.ju, %i.kk
  br i1 %i.kl, label %.critedge160.i.i, label %bb.an, !prof !73

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i202.i.i
  %i.km = add nuw i32 %.019.i.i.i.i.i.i203.i.i, 1
  %i.kn = and i32 %i.km, %i.ct                    ; 3 uses
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = lshr i64 %i.ko, 5
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !111, !noalias !400
  %i.ks = and i32 %i.kn, 31
  %i.kt = lshr i32 %i.kr, %i.ks
  %i.ku = trunc i32 %i.kt to i1
  br i1 %i.ku, label %.lr.ph.i.i.i.i.i.i202.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, !prof !113

.critedge160.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i202.i.i, %.lr.ph356.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0213.0355.i.i, i64 8
  %.sroa.0213.0.i.i = load ptr, ptr %i.kv, align 8, !tbaa !107, !noalias !400 ; 2 uses
  %.not317.i.i = icmp eq ptr %.sroa.0213.0.i.i, null
  br i1 %.not317.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, label %.lr.ph356.i.i

bb.ao:                                            ; preds = %bb.v
  %i.kw = getelementptr inbounds i8, ptr %.sroa.0232.0363.i.i, i64 -22
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !114, !noalias !400
  %i.ky = trunc i16 %i.kx to i1
  br i1 %i.ky, label %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i

_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i: ; preds = %bb.ao
  %i.kz = getelementptr inbounds i8, ptr %.sroa.0232.0363.i.i, i64 -20
  %i.la = load i32, ptr %i.kz, align 4, !noalias !400
  %i.lb = and i32 %i.la, 268435455
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr inbounds [32 x i8], ptr %i.eq, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !110, !noalias !400 ; 3 uses
  %.not150.i.i = icmp eq ptr %i.lg, null
  br i1 %.not150.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i
  br i1 %i.cs, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = mul i64 %i.lh, -4658895280553007687     ; 2 uses
  %i.lj = lshr i64 %i.li, 31
  %i.lk = xor i64 %i.lj, %i.li
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = and i32 %i.ct, %i.ll                    ; 3 uses
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %i.lo = lshr i64 %i.ln, 5
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !111, !noalias !400
  %i.lr = and i32 %i.lm, 31
  %i.ls = lshr i32 %i.lq, %i.lr
  %i.lt = trunc i32 %i.ls to i1
  br i1 %i.lt, label %.lr.ph.i.i.i.i.i.i207.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, !prof !112

.lr.ph.i.i.i.i.i.i207.i.i:                        ; preds = %bb.aq, %bb.ar
  %i.lu = phi i64 [ %i.ma, %bb.ar ], [ %i.ln, %bb.aq ]
  %.019.i.i.i.i.i.i208.i.i = phi i32 [ %i.lz, %bb.ar ], [ %i.lm, %bb.aq ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !72, !noalias !400
  %i.lx = icmp eq ptr %i.lg, %i.lw
  br i1 %i.lx, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, label %bb.ar, !prof !73

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i207.i.i
  %i.ly = add nuw i32 %.019.i.i.i.i.i.i208.i.i, 1
  %i.lz = and i32 %i.ly, %i.ct                    ; 3 uses
  %i.ma = zext i32 %i.lz to i64                   ; 2 uses
  %i.mb = lshr i64 %i.ma, 5
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !111, !noalias !400
  %i.me = and i32 %i.lz, 31
  %i.mf = lshr i32 %i.md, %i.me
  %i.mg = trunc i32 %i.mf to i1
  br i1 %i.mg, label %.lr.ph.i.i.i.i.i.i207.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, !prof !113

bb.as:                                            ; preds = %bb.v
  %i.mh = getelementptr inbounds i8, ptr %.sroa.0232.0363.i.i, i64 -22
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !114, !noalias !400
  %i.mj = and i16 %i.mi, 3
  %i.mk = icmp eq i16 %i.mj, 2
  br i1 %i.mk, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ml = getelementptr inbounds i8, ptr %.sroa.0232.0363.i.i, i64 -56
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !110, !noalias !400 ; 4 uses
  %.not.i.i.i211.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i211.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mn = load i8, ptr %i.mm, align 8, !tbaa !105, !noalias !400
  %i.mo = icmp eq i8 %i.mn, 14
  br i1 %i.mo, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i: ; preds = %bb.au
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !120, !noalias !400
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0232.0363.i.i, i64 56
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !131, !noalias !400
  %i.mt = icmp eq ptr %i.mq, %i.ms
  br i1 %i.mt, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i

_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 36
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !132, !noalias !400
  switch i32 %i.mv, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i [
    i32 402, label %bb.av
    i32 95, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i
  ]

bb.av:                                            ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i
  br i1 %8, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i

_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i: ; preds = %.lr.ph.i.i.i.i.i.i207.i.i, %.critedge160.i.i, %.critedge158.i.i, %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit186.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %bb.av, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i, %bb.au, %bb.at, %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i, %bb.ao, %bb.ak, %bb.ag, %.critedge.i.i, %bb.x, %bb.w, %bb.v
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0232.0363.i.i, i64 8
  %.sroa.0232.0.i.i = load ptr, ptr %i.mw, align 8, !tbaa !100, !noalias !400 ; 2 uses
  %.not309.i.i = icmp eq ptr %.sroa.0232.0.i.i, %i.ca
  br i1 %.not309.i.i, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i, label %bb.v, !llvm.loop !393

_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i: ; preds = %bb.m, %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i, %bb.av, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i, %bb.as, %bb.aq, %bb.ap, %.lr.ph352.preheader.i.i, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.w, %bb.ar, %bb.am, %bb.al, %bb.ai, %bb.ah, %bb.ae, %.lr.ph352.i.i, %bb.aa, %bb.an, %bb.aj, %bb.af, %.preheader.i.i
  %.27.i.i = phi i1 [ false, %.lr.ph352.i.i ], [ false, %bb.af ], [ false, %bb.ar ], [ false, %bb.ai ], [ false, %bb.ae ], [ false, %bb.an ], [ false, %bb.aa ], [ true, %.preheader.i.i ], [ false, %bb.z ], [ false, %bb.aj ], [ false, %bb.am ], [ false, %bb.ah ], [ false, %bb.al ], [ false, %bb.y ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %bb.aq ], [ false, %bb.ap ], [ false, %bb.as ], [ false, %bb.av ], [ false, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i ], [ false, %bb.w ], [ true, %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread259.i.i ], [ false, %.lr.ph352.preheader.i.i ], [ false, %bb.m ]
  %i.mx = load ptr, ptr %16, align 8, !tbaa !29, !noalias !400 ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.au
  br i1 %i.my, label %_ZN4llvm11SmallVectorIPKNS_4UserELj16EED2Ev.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i
  call void @free(ptr noundef %i.mx) #21, !noalias !400
  br label %_ZN4llvm11SmallVectorIPKNS_4UserELj16EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPKNS_4UserELj16EED2Ev.exit.i.i: ; preds = %bb.aw, %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit.thread261.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !400
  %i.mz = load i8, ptr %i.at, align 8, !tbaa !24, !range !25, !noalias !400, !noundef !26
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_4UserELj16EED2Ev.exit.i.i
  %i.nb = load ptr, ptr %15, align 8, !tbaa !27, !noalias !400
  call void @free(ptr noundef %i.nb) #21, !noalias !400
  br label %_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.i

_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.i: ; preds = %bb.ax, %_ZN4llvm11SmallVectorIPKNS_4UserELj16EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !400
  br i1 %.27.i.i, label %bb.ay, label %_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.thread.i

_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.thread.i: ; preds = %_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.i, %.lr.ph
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !400
  store ptr %i.nd, ptr %i.nc, align 8, !tbaa !29, !alias.scope !400
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.ne, align 8, !tbaa !69, !alias.scope !400
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.nf, align 4, !tbaa !70, !alias.scope !400
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i

bb.ay:                                            ; preds = %_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.i
  %i.ng = load ptr, ptr %i.x, align 8, !tbaa !29, !noalias !400
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !72, !noalias !400
  %i.ni = icmp eq ptr %i.bu, %i.nh
  br i1 %i.ni, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.nj = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bu) #21, !noalias !400
  %.fca.0.extract.i.i = extractvalue { ptr, i64 } %i.nj, 0
  %i.nk = getelementptr inbounds i8, ptr %.fca.0.extract.i.i, i64 -24
  %i.nl = load i8, ptr %i.nk, align 8, !tbaa !105, !noalias !400
  switch i8 %i.nl, label %_ZNK4llvm10BasicBlock7isEHPadEv.exit.i [
    i8 41, label %bb.ba
    i8 84, label %bb.ba
    i8 83, label %bb.ba
    i8 98, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !400
  store ptr %i.nn, ptr %i.nm, align 8, !tbaa !29, !alias.scope !400
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.no, align 8, !tbaa !69, !alias.scope !400
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.np, align 4, !tbaa !70, !alias.scope !400
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i

bb.bb:                                            ; preds = %bb.ay
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.041.074.i = load ptr, ptr %i.nq, align 8, !tbaa !107, !noalias !400 ; 2 uses
  %.not5575.i = icmp eq ptr %.sroa.041.074.i, null
  br i1 %.not5575.i, label %_ZNK4llvm10BasicBlock7isEHPadEv.exit.i, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %bb.bb
  %i.nr = load ptr, ptr %17, align 16, !tbaa !133, !noalias !405
  %i.ns = load ptr, ptr %i.ax, align 8, !tbaa !134, !noalias !405 ; 2 uses
  %i.nt = load i32, ptr %i.ay, align 4, !tbaa !135, !noalias !405 ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 0
  %i.nv = add i32 %i.nt, -1                       ; 2 uses
  br i1 %i.nu, label %.loopexit.i, label %.lr.ph78.split.i

.lr.ph78.split.i:                                 ; preds = %.lr.ph78.i, %.critedge.i
  %.sroa.041.076.i = phi ptr [ %.sroa.041.0.i, %.critedge.i ], [ %.sroa.041.074.i, %.lr.ph78.i ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.041.076.i, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !115, !noalias !400
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !106, !noalias !400 ; 2 uses
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = mul i64 %i.oa, -4658895280553007687     ; 2 uses
  %i.oc = lshr i64 %i.ob, 31
  %i.od = xor i64 %i.oc, %i.ob
  %i.oe = trunc i64 %i.od to i32
  %i.of = and i32 %i.nv, %i.oe                    ; 3 uses
  %i.og = zext i32 %i.of to i64                   ; 2 uses
  %i.oh = lshr i64 %i.og, 5
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !111, !noalias !400
  %i.ok = and i32 %i.of, 31
  %i.ol = lshr i32 %i.oj, %i.ok
  %i.om = trunc i32 %i.ol to i1
  br i1 %i.om, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i, !prof !112

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph78.split.i, %bb.bc
  %i.on = phi i64 [ %i.ot, %bb.bc ], [ %i.og, %.lr.ph78.split.i ]
  %.019.i.i.i.i.i.i.i = phi i32 [ %i.os, %bb.bc ], [ %i.of, %.lr.ph78.split.i ]
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.on
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !72, !noalias !400
  %i.oq = icmp eq ptr %i.nz, %i.op
  br i1 %i.oq, label %.critedge.i, label %bb.bc, !prof !73

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.or = add nuw i32 %.019.i.i.i.i.i.i.i, 1
  %i.os = and i32 %i.or, %i.nv                    ; 3 uses
  %i.ot = zext i32 %i.os to i64                   ; 2 uses
  %i.ou = lshr i64 %i.ot, 5
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !111, !noalias !400
  %i.ox = and i32 %i.os, 31
  %i.oy = lshr i32 %i.ow, %i.ox
  %i.oz = trunc i32 %i.oy to i1
  br i1 %i.oz, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i, !prof !113

.loopexit.i:                                      ; preds = %.lr.ph78.i, %.lr.ph78.split.i, %bb.bc
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !400
  store ptr %i.pb, ptr %i.pa, align 8, !tbaa !29, !alias.scope !400
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.pc, align 8, !tbaa !69, !alias.scope !400
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.pd, align 4, !tbaa !70, !alias.scope !400
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i

.critedge.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.041.076.i, i64 8
  %.sroa.041.0.i = load ptr, ptr %i.pe, align 8, !tbaa !107, !noalias !400 ; 2 uses
  %.not55.i = icmp eq ptr %.sroa.041.0.i, null
  br i1 %.not55.i, label %_ZNK4llvm10BasicBlock7isEHPadEv.exit.i, label %.lr.ph78.split.i

_ZNK4llvm10BasicBlock7isEHPadEv.exit.i:           ; preds = %.critedge.i, %bb.bb, %bb.az
  %i.pf = getelementptr inbounds nuw i8, ptr %.0.i37, i64 8 ; 2 uses
  %.not33.i = icmp eq ptr %i.pf, %21
  br i1 %.not33.i, label %.critedge37.i.loopexit, label %.lr.ph

.critedge37.i.loopexit:                           ; preds = %_ZNK4llvm10BasicBlock7isEHPadEv.exit.i
  %.pre56 = load i32, ptr %i.z, align 16, !tbaa !69, !noalias !400
  %i.pg = icmp eq i32 %.pre56, 0
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %.critedge37.i.loopexit, %._crit_edge.i.a
  %.not.i.i.i40.i = phi i1 [ %i.pg, %.critedge37.i.loopexit ], [ true, %._crit_edge.i.a ]
  %i.ph = load <2 x ptr>, ptr %17, align 16, !tbaa !104, !noalias !400
  store ptr null, ptr %17, align 16, !tbaa !136, !noalias !400
  store <2 x ptr> %i.ph, ptr %i.w, align 8, !tbaa !104, !alias.scope !400
  store ptr null, ptr %i.ax, align 8, !tbaa !137, !noalias !400
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.pk = load <2 x i32>, ptr %i.pj, align 16, !tbaa !111, !noalias !400
  store i32 0, ptr %i.pj, align 16, !tbaa !111, !noalias !400
  store <2 x i32> %i.pk, ptr %i.pi, align 8, !tbaa !111, !alias.scope !400
  store i32 0, ptr %i.ay, align 4, !tbaa !111, !noalias !400
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.pm, ptr %i.pl, align 8, !tbaa !29, !alias.scope !400
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.pn, align 8, !tbaa !69, !alias.scope !400
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.po, align 4, !tbaa !70, !alias.scope !400
  br i1 %.not.i.i.i40.i, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.critedge37.i
  %i.pp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 0 uses
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i: ; preds = %bb.bd, %.critedge37.i, %.loopexit.i, %bb.ba, %_ZL25isBlockValidForExtractionRKN4llvm10BasicBlockERKNS_9SetVectorIPS0_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEEbb.exit.thread.i
  %i.pq = load ptr, ptr %i.x, align 8, !tbaa !29, !noalias !400 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.y
  br i1 %i.pr, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj0EED2Ev.exit.i.i, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i
  call void @free(ptr noundef %i.pq) #21
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj0EED2Ev.exit.i.i: ; preds = %bb.be, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEC2EOS9_.exit.i
  %i.ps = load i32, ptr %i.ay, align 4, !tbaa !135, !noalias !400 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %_ZL23buildExtractionBlockSetN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbb.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj0EED2Ev.exit.i.i
  %i.pu = load ptr, ptr %17, align 16, !tbaa !133, !noalias !400
  %i.pv = zext i32 %i.ps to i64                   ; 2 uses
  %i.pw = shl nuw nsw i64 %i.pv, 3
  %i.px = add nuw nsw i64 %i.pv, 31
  %i.py = lshr i64 %i.px, 3
  %i.pz = and i64 %i.py, 1073741820
  %i.qa = add nuw nsw i64 %i.pz, %i.pw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.pu, i64 noundef %i.qa, i64 noundef 8) #21
  br label %_ZL23buildExtractionBlockSetN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbb.exit

_ZL23buildExtractionBlockSetN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbb.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj0EED2Ev.exit.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !400
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.qc, ptr %i.qb, align 8, !tbaa !29
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.qd, align 8, !tbaa !69
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 6, ptr %i.qe, align 4, !tbaa !70
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.qg, ptr %i.qf, align 8, !tbaa !138
  %i.qh = load ptr, ptr %12, align 8, !tbaa !139  ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !140 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.qj, ptr %i.a, align 8, !tbaa !68
  %i.qk = icmp ugt i64 %i.qj, 15
  br i1 %i.qk, label %bb.bg, label %._crit_edge.i.i

bb.bg:                                            ; preds = %_ZL23buildExtractionBlockSetN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbb.exit
  %i.ql = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.qf, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.ql, ptr %i.qf, align 8, !tbaa !139
  %i.qm = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.qm, ptr %i.qg, align 8, !tbaa !141
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bg, %_ZL23buildExtractionBlockSetN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbb.exit
  %i.qn = phi ptr [ %i.ql, %bb.bg ], [ %i.qg, %_ZL23buildExtractionBlockSetN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbb.exit ] ; 2 uses
  switch i64 %i.qj, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.qo = load i8, ptr %i.qh, align 1, !tbaa !141
  store i8 %i.qo, ptr %i.qn, align 1, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.bi:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qn, ptr align 1 %i.qh, i64 %i.qj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.bh, %bb.bi
  %i.qp = zext i1 %13 to i8
  %i.qq = zext i1 %14 to i8
  %i.qr = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.qr, ptr %i.qs, align 8, !tbaa !140
  %i.qt = load ptr, ptr %i.qf, align 8, !tbaa !139
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qr
  store i8 0, ptr %i.qu, align 1, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.qp, ptr %i.qv, align 8, !tbaa !142
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 %i.qq, ptr %i.qw, align 1, !tbaa !143
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qx, i8 0, i64 32, i1 false)
  store ptr %i.qz, ptr %i.qy, align 8, !tbaa !29
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.ra, align 8, !tbaa !69
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 0, ptr %i.rb, align 4, !tbaa !70
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26CodeExtractorAnalysisCacheC2ERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %.sroa.021.029 = load ptr, ptr %i.e, align 8, !tbaa !144 ; 2 uses
  %.not2430 = icmp eq ptr %.sroa.021.029, %i.f
  br i1 %.not2430, label %._crit_edge34, label %.lr.ph33

._crit_edge34:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph33:                                         ; preds = %bb.a, %._crit_edge
  %.sroa.021.031 = phi ptr [ %.sroa.021.0, %._crit_edge ], [ %.sroa.021.029, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.021.031, i64 -24
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.021.031, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.031, i64 24 ; 2 uses
  %.sroa.017.026 = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.not2527 = icmp eq ptr %.sroa.017.026, %i.i
  br i1 %.not2527, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE9push_backES2_.exit, %.lr.ph33
  tail call void @_ZN4llvm26CodeExtractorAnalysisCache26findSideEffectInfoForBlockERNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.021.031, i64 8
  %.sroa.021.0 = load ptr, ptr %i.j, align 8, !tbaa !144 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.021.0, %i.f
  br i1 %.not24, label %._crit_edge34, label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph33, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE9push_backES2_.exit
  %.sroa.017.028 = phi ptr [ %.sroa.017.0, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE9push_backES2_.exit ], [ %.sroa.017.026, %.lr.ph33 ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.017.028, i64 -24 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !105
  %.not = icmp eq i8 %i.l, 62
  br i1 %.not, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE9push_backES2_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !70
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !73

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.k)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr %i.k, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !69
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !69
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_10AllocaInstELb1EE9push_backES2_.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.028, i64 8
  %.sroa.017.0 = load ptr, ptr %i.t, align 8, !tbaa !100 ; 2 uses
  %.not25 = icmp eq ptr %.sroa.017.0, %i.i
  br i1 %.not25, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26CodeExtractorAnalysisCache26findSideEffectInfoForBlockERNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.067.079 = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %.not80 = icmp eq ptr %.sroa.067.079, %i.g
  br i1 %.not80, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread73
  %.sroa.067.081 = phi ptr [ %.sroa.067.079, %.lr.ph ], [ %.sroa.067.0, %.thread73 ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.067.081, i64 -24 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !105   ; 2 uses
  %i.k = add i8 %i.j, -63
  %switch = icmp ult i8 %i.k, 2
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %storemerge.in = getelementptr inbounds i8, ptr %.sroa.067.081, i64 -56
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !110 ; 2 uses
  %i.l = load i8, ptr %storemerge, align 8, !tbaa !105
  %i.m = icmp ult i8 %i.l, 23
  br i1 %i.m, label %.thread73, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.n = call noundef ptr @_ZNK4llvm5Value28stripInBoundsConstantOffsetsEv(ptr noundef nonnull align 8 dereferenceable(24) %storemerge) #21 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !145
  %i.o = load i8, ptr %i.n, align 8, !tbaa !105
  %i.p = icmp eq i8 %i.o, 62
  br i1 %i.p, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %1, ptr %i.c, align 8, !tbaa !72
end_hunk_1
