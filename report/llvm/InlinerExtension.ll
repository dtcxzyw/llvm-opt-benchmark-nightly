Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InlinerExtension?download=true
inline.NumInlined: 741
inline.NumDeleted: 570
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::TypeID" = type { ptr }
%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::tuple.189" = type { %"struct.std::_Tuple_impl.190" }
%"struct.std::_Tuple_impl.190" = type { %"struct.std::_Head_base.191" }
%"struct.std::_Head_base.191" = type { ptr }
%"class.std::tuple.192" = type { %"struct.std::_Tuple_impl.193" }
%"struct.std::_Tuple_impl.193" = type { %"struct.std::_Head_base.194" }
%"struct.std::_Head_base.194" = type { ptr }
%"class.std::unique_ptr.165" = type { %"struct.std::__uniq_ptr_data.166" }
%"struct.std::__uniq_ptr_data.166" = type { %"class.std::__uniq_ptr_impl.167" }
%"class.std::__uniq_ptr_impl.167" = type { %"class.std::tuple.168" }
%"class.std::tuple.168" = type { %"struct.std::_Tuple_impl.169" }
%"struct.std::_Tuple_impl.169" = type { %"struct.std::_Head_base.172" }
%"struct.std::_Head_base.172" = type { ptr }
%class.anon.144 = type { ptr }
%"class.std::unique_ptr.11" = type { %"struct.std::__uniq_ptr_data.12" }
%"struct.std::__uniq_ptr_data.12" = type { %"class.std::__uniq_ptr_impl.13" }
%"class.std::__uniq_ptr_impl.13" = type { %"class.std::tuple.14" }
%"class.std::tuple.14" = type { %"struct.std::_Tuple_impl.15" }
%"struct.std::_Tuple_impl.15" = type { %"struct.std::_Head_base.18" }
%"struct.std::_Head_base.18" = type { ptr }
%"class.mlir::func::CallOp" = type { %"class.mlir::Op" }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::func::FuncOp" = type { %"class.mlir::Op.40" }
%"class.mlir::Op.40" = type { %"class.mlir::OpState" }
%"class.mlir::func::ReturnOp" = type { %"class.mlir::Op.74" }
%"class.mlir::Op.74" = type { %"class.mlir::OpState" }
%"class.mlir::OpBuilder" = type { %"class.mlir::Builder", ptr, ptr, %"class.llvm::ilist_iterator.95" }
%"class.mlir::Builder" = type { ptr }
%"class.llvm::ilist_iterator.95" = type { ptr }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.27" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.27" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.28" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.28" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.29" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.29" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.30" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.30" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.std::unique_ptr.145" = type { %"struct.std::__uniq_ptr_data.146" }
%"struct.std::__uniq_ptr_data.146" = type { %"class.std::__uniq_ptr_impl.147" }
%"class.std::__uniq_ptr_impl.147" = type { %"class.std::tuple.148" }
%"class.std::tuple.148" = type { %"struct.std::_Tuple_impl.149" }
%"struct.std::_Tuple_impl.149" = type { %"struct.std::_Head_base.152" }
%"struct.std::_Head_base.152" = type { ptr }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }

$_ZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_E = comdat any

$_ZNK4mlir23DialectInlinerInterface24shouldAnalyzeRecursivelyEPNS_9OperationE = comdat any

$_ZNK4mlir23DialectInlinerInterface25materializeCallConversionERNS_9OpBuilderENS_5ValueENS_4TypeENS_8LocationE = comdat any

$_ZNK4mlir23DialectInlinerInterface14handleArgumentERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE = comdat any

$_ZNK4mlir23DialectInlinerInterface12handleResultERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE = comdat any

$_ZNK4mlir23DialectInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS3_14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE = comdat any

$_ZNK4mlir23DialectInlinerInterface28allowSingleBlockOptimizationEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_2cf18ControlFlowDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_ = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE = comdat any

$_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv = comdat any

$_ZZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_120FuncInlinerInterfaceE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN4mlir16DialectInterfaceD2Ev, ptr @_ZN12_GLOBAL__N_120FuncInlinerInterfaceD0Ev, ptr @_ZNK12_GLOBAL__N_120FuncInlinerInterface15isLegalToInlineEPN4mlir9OperationES3_b, ptr @_ZNK12_GLOBAL__N_120FuncInlinerInterface15isLegalToInlineEPN4mlir6RegionES3_bRNS1_9IRMappingE, ptr @_ZNK12_GLOBAL__N_120FuncInlinerInterface15isLegalToInlineEPN4mlir9OperationEPNS1_6RegionEbRNS1_9IRMappingE, ptr @_ZNK4mlir23DialectInlinerInterface24shouldAnalyzeRecursivelyEPNS_9OperationE, ptr @_ZNK12_GLOBAL__N_120FuncInlinerInterface16handleTerminatorEPN4mlir9OperationEPNS1_5BlockE, ptr @_ZNK12_GLOBAL__N_120FuncInlinerInterface16handleTerminatorEPN4mlir9OperationENS1_10ValueRangeE, ptr @_ZNK4mlir23DialectInlinerInterface25materializeCallConversionERNS_9OpBuilderENS_5ValueENS_4TypeENS_8LocationE, ptr @_ZNK4mlir23DialectInlinerInterface14handleArgumentERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE, ptr @_ZNK4mlir23DialectInlinerInterface12handleResultERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE, ptr @_ZNK4mlir23DialectInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS3_14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE, ptr @_ZNK4mlir23DialectInlinerInterface28allowSingleBlockOptimizationEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE] }, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [80 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectInlinerInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4func6CallOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"cf\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_2cf18ControlFlowDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4func24registerInlinerExtensionERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull @"_ZZN4mlir4func24registerInlinerExtensionERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS0_11FuncDialectE") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.189", align 8    ; 5 uses
  %3 = alloca %"class.std::tuple.192", align 8    ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
  %5 = alloca %"class.std::unique_ptr.165", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14, !noalias !75 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !11, !noalias !75
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.e, align 4, !tbaa !12, !noalias !75
  store ptr @.str.7, ptr %i.c, align 8, !noalias !75
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 4, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !75
  store i32 1, ptr %i.d, align 8, !tbaa !13, !noalias !75
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_4func11FuncDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !15, !noalias !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !24, !noalias !75
  store ptr %i.a, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !76 ; 2 uses
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 1
  %i.i = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  br i1 %i.i, label %bb.b, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %4, ptr %2, align 8, !tbaa !31, !alias.scope !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %5, ptr %3, align 8, !tbaa !33, !alias.scope !80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %.not.i.i.i.i = icmp ult i32 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit, !prof !34

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6: ; preds = %bb.b
  %i.q = zext i32 %i.m to i64
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !35
  store i64 %i.t, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.k, ptr %i.u, align 8, !tbaa !36
  %i.v = add nuw i32 %i.m, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4func11FuncDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4func11FuncDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  %i.x = phi ptr [ %i.a, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread ], [ %.pre.pre, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x) #15, !inline_history !74
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4func11FuncDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_4func11FuncDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4mlir4func24registerInlinerExtensionERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS0_11FuncDialectE"(ptr noundef %0, ptr noundef %1) #2 align 2 {
bb.a:
  %2 = alloca %class.anon.144, align 8            ; 4 uses
  %3 = alloca %"class.std::unique_ptr.11", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14, !noalias !84 ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !84
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt11make_uniqueIN12_GLOBAL__N_120FuncInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id) #15, !noalias !84
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_120FuncInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 29) #15, !noalias !84
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id, align 8, !noalias !84
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id) #15, !noalias !84
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_120FuncInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_120FuncInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23DialectInlinerInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !35, !noalias !84
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !87, !noalias !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !35, !noalias !84
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_120FuncInlinerInterfaceE, i64 16), ptr %i.a, align 8, !tbaa !15, !noalias !84
  store ptr %i.a, ptr %3, align 8, !tbaa !90
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.h = load ptr, ptr %3, align 8, !tbaa !91     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %"_ZZN4mlir4func24registerInlinerExtensionERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS0_11FuncDialectE.exit", label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_120FuncInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #15, !inline_history !83
  br label %"_ZZN4mlir4func24registerInlinerExtensionERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS0_11FuncDialectE.exit"

"_ZZN4mlir4func24registerInlinerExtensionERNS_15DialectRegistryEENK3$_0clEPNS_11MLIRContextEPNS0_11FuncDialectE.exit": ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_120FuncInlinerInterfaceEJPN4mlir7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8, !tbaa !40
  %i.l = ptrtoint ptr %2 to i64
  %i.m = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.4, i64 2, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_2cf18ControlFlowDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_2cf18ControlFlowDialectEEEPT_vEUlvE_EES6_l, i64 %i.l) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120FuncInlinerInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120FuncInlinerInterface15isLegalToInlineEPN4mlir9OperationES3_b(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::func::CallOp", align 8 ; 4 uses
  %5 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4func6CallOpEvE2idE
  %6 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6CallOpEvE2idE
  %spec.select.i.i.i.i = and i1 %6, %i.d
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i2 = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i.i.i3 = and i1 %7, %i.h
  %spec.select.i.i3 = select i1 %spec.select.i.i.i.i3, ptr %2, ptr null ; 2 uses
  store ptr %spec.select.i.i3, ptr %5, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_ZN4mlir4func6CallOp11getNoInlineEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br i1 %i.i, label %bb.d, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %bb.a
  %.not4 = icmp eq ptr %spec.select.i.i3, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %thread-pre-split
  %i.j = call noundef zeroext i1 @_ZN4mlir4func6FuncOp11getNoInlineEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %i.k = xor i1 %i.j, true
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %bb.c, %bb.b
  %i.l = phi i1 [ false, %bb.b ], [ true, %thread-pre-split ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120FuncInlinerInterface15isLegalToInlineEPN4mlir6RegionES3_bRNS1_9IRMappingE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3, ptr nofree nonnull readnone align 1 captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120FuncInlinerInterface15isLegalToInlineEPN4mlir9OperationEPNS1_6RegionEbRNS1_9IRMappingE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3, ptr nofree nonnull readnone align 1 captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir23DialectInlinerInterface24shouldAnalyzeRecursivelyEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120FuncInlinerInterface16handleTerminatorEPN4mlir9OperationEPNS1_5BlockE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::func::ReturnOp", align 8 ; 5 uses
  %4 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE
  %6 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE
  %spec.select.i.i.i.i = and i1 %6, %i.d
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %3, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #15
  store ptr %i.f, ptr %4, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.k = tail call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #15
  store ptr %i.j, ptr %i.h, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.k, ptr %i.l, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8
  %i.m = call i64 @_ZN4mlir4func8ReturnOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #15 ; 3 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir4func8ReturnOp11getOperandsEv.exit, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  br label %_ZN4mlir4func8ReturnOp11getOperandsEv.exit

_ZN4mlir4func8ReturnOp11getOperandsEv.exit:       ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.b ]
  %i.t = and i64 %i.m, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.m, 32
  %i.u = add i64 %.sroa.5.0.extract.shift.i.i, %i.m
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.t
  %i.x = sub nsw i64 %i.v, %i.t
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.w, i64 %i.x) #15
  %i.y = load i64, ptr %5, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = call ptr @_ZN4mlir2cf8BranchOp6createERNS_9OpBuilderENS_8LocationEPNS_5BlockENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %.sroa.0.0.copyload.i, ptr noundef %2, i64 %i.y, i64 %i.aa) #15 ; 0 uses
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4mlir4func8ReturnOp11getOperandsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120FuncInlinerInterface16handleTerminatorEPN4mlir9OperationENS1_10ValueRangeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %5 = alloca %"class.mlir::func::ReturnOp", align 8 ; 5 uses
  store i64 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %1, ptr %5, align 8
  %i.b = call i64 @_ZN4mlir4func8ReturnOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #15 ; 3 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir4func8ReturnOp11getOperandsEv.exit, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %_ZN4mlir4func8ReturnOp11getOperandsEv.exit

_ZN4mlir4func8ReturnOp11getOperandsEv.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = and i64 %i.b, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.b, 32
  %i.j = add i64 %.sroa.5.0.extract.shift.i.i, %i.b
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.i
  %i.m = sub nsw i64 %i.k, %i.i
  %.not21 = icmp eq i64 %i.k, %i.i
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, %_ZN4mlir4func8ReturnOp11getOperandsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

.lr.ph:                                           ; preds = %_ZN4mlir4func8ReturnOp11getOperandsEv.exit, %_ZN4mlir5Value18replaceAllUsesWithES0_.exit
  %.sroa.9.023 = phi i64 [ %i.ac, %_ZN4mlir5Value18replaceAllUsesWithES0_.exit ], [ 0, %_ZN4mlir4func8ReturnOp11getOperandsEv.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.9.023
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !122, !noalias !123 ; 4 uses
  %i.p = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.9.023) #15 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i
  %i.s = phi ptr [ %i.aa, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i ], [ %i.q, %.lr.ph ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !130  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !131  ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !132
  %.not2.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !130
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.x, align 8, !tbaa !122
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.t, align 8, !tbaa !130
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !126 ; 3 uses
  store ptr %i.y, ptr %i.s, align 8, !tbaa !131
  %.not.i.i.i.i.i6 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i6, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.s, ptr %i.z, align 8, !tbaa !130
  br label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i: ; preds = %bb.e, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  store ptr %i.s, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !126
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !126 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i, !llvm.loop !120

_ZN4mlir5Value18replaceAllUsesWithES0_.exit:      ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, %.lr.ph
  %i.ac = add nuw i64 %.sroa.9.023, 1             ; 2 uses
  %.not = icmp eq i64 %i.ac, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4mlir23DialectInlinerInterface25materializeCallConversionERNS_9OpBuilderENS_5ValueENS_4TypeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK4mlir23DialectInlinerInterface14handleArgumentERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK4mlir23DialectInlinerInterface12handleResultERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4mlir23DialectInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS3_14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir23DialectInlinerInterface28allowSingleBlockOptimizationEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN4mlir4func6CallOp11getNoInlineEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4mlir4func6FuncOp11getNoInlineEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir2cf8BranchOp6createERNS_9OpBuilderENS_8LocationEPNS_5BlockENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr noundef, i64, i64) local_unnamed_addr #3

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

end_hunk_0
