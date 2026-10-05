Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CPPGen?download=true
inline.NumInlined: 979
inline.NumDeleted: 659
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::TypeID" = type { ptr }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<llvm::StringRef>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::StringRef>::_Storage" = type { %"class.llvm::StringRef" }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple", %"struct.std::array" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef.189", i8 }>
%"class.llvm::ArrayRef.189" = type { ptr, i64 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::array" = type { [1 x %"class.llvm::function_ref.190"] }
%"class.llvm::function_ref.190" = type { ptr, i64 }
%"class.mlir::OpPrintingFlags" = type <{ %"class.std::optional.191", %"class.std::optional.199", i64, i16, [6 x i8] }>
%"class.std::optional.191" = type { %"struct.std::_Optional_base.192" }
%"struct.std::_Optional_base.192" = type { %"struct.std::_Optional_payload.194" }
%"struct.std::_Optional_payload.194" = type { %"struct.std::_Optional_payload_base.base.196", [7 x i8] }
%"struct.std::_Optional_payload_base.base.196" = type <{ %"union.std::_Optional_payload_base<long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<long>::_Storage" = type { i64 }
%"class.std::optional.199" = type { %"struct.std::_Optional_base.200" }
%"struct.std::_Optional_base.200" = type { %"struct.std::_Optional_payload.202" }
%"struct.std::_Optional_payload.202" = type { %"struct.std::_Optional_payload_base.base.204", [7 x i8] }
%"struct.std::_Optional_payload_base.base.204" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"class.llvm::StringSet" = type { %"class.llvm::StringMap.base", [4 x i8] }
%"class.llvm::StringMap.base" = type { %"class.llvm::StringMapImpl.base" }
%"class.llvm::StringMapImpl.base" = type <{ ptr, i32, i32, i32 }>
%class.anon.207 = type { ptr, ptr, ptr }
%class.anon.208 = type { ptr }
%class.anon = type { ptr }
%"class.llvm::SetVector" = type { %"class.llvm::StringSet", %"class.llvm::SmallVector" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [32 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::iterator_range" = type { %"class.mlir::detail::op_iterator", %"class.mlir::detail::op_iterator" }
%"class.mlir::detail::op_iterator" = type { %"class.llvm::mapped_iterator" }
%"class.llvm::mapped_iterator" = type { %"class.llvm::iterator_adaptor_base", %"class.llvm::callable_detail::Callable" }
%"class.llvm::iterator_adaptor_base" = type { %"class.mlir::detail::op_filter_iterator" }
%"class.mlir::detail::op_filter_iterator" = type { %"class.llvm::filter_iterator_impl" }
%"class.llvm::filter_iterator_impl" = type { %"class.llvm::filter_iterator_base" }
%"class.llvm::filter_iterator_base" = type { %"class.llvm::iterator_adaptor_base.16", %"class.mlir::Region::OpIterator", ptr }
%"class.llvm::iterator_adaptor_base.16" = type { %"class.mlir::Region::OpIterator" }
%"class.mlir::Region::OpIterator" = type { ptr, %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator.19" }
%"class.llvm::ilist_iterator" = type { ptr }
%"class.llvm::ilist_iterator.19" = type { ptr }
%"class.llvm::callable_detail::Callable" = type { ptr }
%"class.mlir::pdl::PatternOp" = type { %"class.mlir::Op.22" }
%"class.mlir::Op.22" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.(anonymous namespace)::CodeGen" = type { ptr }
%"class.mlir::pdl::ApplyNativeRewriteOp" = type { %"class.mlir::Op.106" }
%"class.mlir::Op.106" = type { %"class.mlir::OpState" }
%"class.mlir::pdl::ApplyNativeConstraintOp" = type { %"class.mlir::Op.78" }
%"class.mlir::Op.78" = type { %"class.mlir::OpState" }
%"class.mlir::pdll::ast::Type" = type { ptr }
%"class.mlir::pdll::ast::OperationType" = type { %"class.mlir::pdll::ast::Type::TypeBase.166" }
%"class.mlir::pdll::ast::Type::TypeBase.166" = type { %"class.mlir::pdll::ast::Type" }

$_ZN4llvm9SetVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11SmallVectorIS6_Lj1EEENS_9StringSetINS_15MallocAllocatorEEELj0EE6insertERKS6_ = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE = comdat any

$_ZN4mlir6Region6getOpsINS_3pdl9PatternOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv = comdat any

$_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6filterERNS_9OperationE = comdat any

$_ZN4mlir6detail11op_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE9push_backERKS6_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast15UserRewriteDeclEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast15UserRewriteDeclEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [13 x i8] c"namespace {\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"GeneratedPDLLPattern\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"} // end namespace\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [154 x i8] c"template <typename... ConfigsT>\0A[[maybe_unused]] static void populateGeneratedPDLLPatterns(::mlir::RewritePatternSet &patterns, ConfigsT &&...configs) {\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  patterns.add<\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c">(patterns.getContext(), configs...);\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3pdl23ApplyNativeConstraintOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3pdl20ApplyNativeRewriteOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.7 = private unnamed_addr constant [86 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdll::ast::UserConstraintDecl]\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"::llvm::LogicalResult\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"std::tuple<\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"PDLFn(::mlir::PatternRewriter &rewriter\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c") {\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" \09\0A\0B\0C\0D\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"\0A}\0A\0A\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail20AttributeTypeStorageEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.23 = private unnamed_addr constant [18 x i8] c"::mlir::Attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail20OperationTypeStorageEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.24 = private unnamed_addr constant [20 x i8] c"::mlir::Operation *\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail15TypeTypeStorageEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.25 = private unnamed_addr constant [13 x i8] c"::mlir::Type\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail16ValueTypeStorageEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"::mlir::Value\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"::mlir::TypeRange\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"::mlir::ValueRange\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast15UserRewriteDeclEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast15UserRewriteDeclEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.30 = private unnamed_addr constant [83 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdll::ast::UserRewriteDecl]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3pdl9PatternOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.32 = private unnamed_addr constant [212 x i8] c"\0Astruct {0} : ::mlir::PDLPatternModule {{\0A  template <typename... ConfigsT>\0A  {0}(::mlir::MLIRContext *context, ConfigsT &&...configs)\0A    : ::mlir::PDLPatternModule(::mlir::parseSourceString<::mlir::ModuleOp>(\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"R\22mlir(\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"\0A    )mlir\22, context), std::forward<ConfigsT>(configs)...) {\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"  }\0A};\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Rewrite\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"    register\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Function(\22\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"PDLFn);\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4pdll16codegenPDLLToCPPERKNS0_3ast6ModuleENS_8ModuleOpERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.std::optional", align 8     ; 6 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %7 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %8 = alloca %"class.llvm::StringSet", align 8   ; 9 uses
  %9 = alloca %class.anon.207, align 8            ; 6 uses
  %10 = alloca %class.anon.208, align 8           ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.llvm::StringSet", align 8  ; 12 uses
  %12 = alloca %class.anon, align 8               ; 4 uses
  %13 = alloca %"class.llvm::SetVector", align 8  ; 17 uses
  %14 = alloca %"class.llvm::StringSet", align 8  ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.llvm::iterator_range", align 8 ; 5 uses
  %17 = alloca %"class.mlir::detail::op_iterator", align 8 ; 9 uses
  %18 = alloca %"class.mlir::pdl::PatternOp", align 8 ; 5 uses
  %19 = alloca %"class.std::optional", align 8    ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.(anonymous namespace)::CodeGen", align 8 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  store ptr %2, ptr %24, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %13, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.d, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 8 uses
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  store i32 1, ptr %i.h, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.i, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.j, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr %11, ptr %12, align 8, !tbaa !107
  %i.k = ptrtoint ptr %12 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_0EEvlS3_", i64 %i.k, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %.not36.i.i = icmp eq i32 %i.m, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.phi.trans.insert.i.i.i.i19.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i", %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %i.v = icmp eq i32 %i.u, 0
  %.pre13.i.i.i = load ptr, ptr %11, align 8, !tbaa !27 ; 4 uses
  br i1 %i.v, label %_ZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEE.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.y, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.pre13.i.i.i, i64 %.idx.i.i.i
  %.not11.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i, label %_ZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.d
  %.012.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %.pre13.i.i.i, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.012.i.i.i, align 8, !tbaa !30 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not10.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ac = add i64 %i.ab, 9
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %i.ac, i64 noundef 8) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not.i.i.i, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.d
  %.pre.i.i.i = load ptr, ptr %11, align 8, !tbaa !27
  br label %_ZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEE.exit.i

bb.e:                                             ; preds = %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i", %.lr.ph.i.i
  %.037.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.oa, %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i" ] ; 2 uses
  %i.ae = load ptr, ptr %.037.i.i, align 8, !tbaa !112 ; 15 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.af = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPKN4mlir4pdll3ast4DeclEvEES8_E9castValueINS5_18UserConstraintDeclERKS8_EEDcOT0_.exit.i.i.i, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.ah = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id) #11
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPKN4mlir4pdll3ast4DeclEvEES8_E9castValueINS5_18UserConstraintDeclERKS8_EEDcOT0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 49), i64 35) #11
  store ptr %i.ai, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id) #11
  br label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPKN4mlir4pdll3ast4DeclEvEES8_E9castValueINS5_18UserConstraintDeclERKS8_EEDcOT0_.exit.i.i.i

_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPKN4mlir4pdll3ast4DeclEvEES8_E9castValueINS5_18UserConstraintDeclERKS8_EEDcOT0_.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id, align 8, !tbaa !34
  %.not.i9.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %.not.i9.i.i, label %bb.h, label %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_18UserConstraintDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i"

bb.h:                                             ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPKN4mlir4pdll3ast4DeclEvEES8_E9castValueINS5_18UserConstraintDeclERKS8_EEDcOT0_.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.aj = trunc nuw i8 %.sroa.4.0.copyload.i.i.i.i to i1
  br i1 %i.aj, label %bb.i, label %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i"

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.am = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i) #11
  %i.an = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %11, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i, i32 noundef %i.am) #11 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i", label %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i.i.i.i

_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i.i.i.i: ; preds = %bb.i
  %i.ap = sext i32 %i.an to i64
  %.pre.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i19.i.i, align 8, !tbaa !28
  %.pre4.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i to i64
  %.not.i.i.i.i = icmp eq i64 %i.ap, %.pre4.i.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i", label %"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_15UserRewriteDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.sink.split.i.i"

"_ZN4llvm10TypeSwitchIPKN4mlir4pdll3ast4DeclEvE4CaseINS3_18UserConstraintDeclERZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS3_6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_1EERS7_OT0_.exit.i.i": ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPKN4mlir4pdll3ast4DeclEvEES8_E9castValueINS5_18UserConstraintDeclERKS8_EEDcOT0_.exit.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i10.i.i = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast15UserRewriteDeclEvE13resolveTypeIDEvE2id acquire, align 8
end_hunk_0
begin_hunk_1_@_ZN4mlir4pdll16codegenPDLLToCPPERKNS0_3ast6ModuleENS_8ModuleOpERN4llvm11raw_ostreamE:bb.a
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 24
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !53
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 32 ; 3 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !54 ; 2 uses
  %i.zz = ptrtoint ptr %i.zw to i64
  %i.aaa = ptrtoint ptr %i.zy to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = icmp ult i64 %i.aab, 15
  br i1 %i.aac, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph87.i
  %i.aad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.zu, ptr noundef nonnull @.str.4, i64 noundef 15) #11
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit61.i

bb.ej:                                            ; preds = %.lr.ph87.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.zy, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  %i.aae = load ptr, ptr %i.zx, align 8, !tbaa !54
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 15
  store ptr %i.aaf, ptr %i.zx, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit61.i

_ZN4llvm11raw_ostreamlsEPKc.exit61.i:             ; preds = %bb.ej, %bb.ei
  %.0.i.i60.i = phi ptr [ %i.aad, %bb.ei ], [ %i.zu, %bb.ej ]
  %i.aag = load ptr, ptr %.01286.i, align 8, !tbaa !61
  %i.aah = getelementptr inbounds nuw i8, ptr %.01286.i, i64 8
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !62
  %i.aaj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i60.i, ptr noundef %i.aag, i64 noundef %i.aai) #11 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !53
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 32 ; 3 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !54 ; 2 uses
  %i.aao = ptrtoint ptr %i.aal to i64
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  %i.aar = icmp ult i64 %i.aaq, 38
  br i1 %i.aar, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit61.i
  %i.aas = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aaj, ptr noundef nonnull @.str.5, i64 noundef 38) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit64.i

bb.el:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit61.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.aan, ptr noundef nonnull align 1 dereferenceable(38) @.str.5, i64 38, i1 false)
  %i.aat = load ptr, ptr %i.aam, align 8, !tbaa !54
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 38
  store ptr %i.aau, ptr %i.aam, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit64.i

_ZN4llvm11raw_ostreamlsEPKc.exit64.i:             ; preds = %bb.el, %bb.ek
  %i.aav = getelementptr inbounds nuw i8, ptr %.01286.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.aav, %i.rq
  br i1 %.not.i, label %._crit_edge88.i, label %.lr.ph87.i

_ZN12_GLOBAL__N_17CodeGen8generateERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpE.exit: ; preds = %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit.i.i, %bb.ef, %.loopexit.loopexit.i.i58.i
  %i.aaw = phi ptr [ %.pre.i2.i.i, %.loopexit.loopexit.i.i58.i ], [ %.pre13.i.i52.i, %bb.ef ], [ %.pre13.i.i52.i, %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit.i.i ]
  call void @free(ptr noundef %i.aaw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4mlir3pdl9PatternOp10getSymNameEv(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9SetVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11SmallVectorIS6_Lj1EEENS_9StringSetINS_15MallocAllocatorEEELj0EE6insertERKS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !62   ; 7 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.a, i64 %i.c) #11
  %i.e = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %i.a, i64 %i.c, i32 noundef %i.d) #11 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.i, null            ; 2 uses
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.c, 9
  %i.k = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.j, i64 noundef 8) #11 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 0, ptr %i.m, align 1, !tbaa !45
  store i64 %i.c, ptr %i.k, align 8, !tbaa !33
  store ptr %i.k, ptr %i.h, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !26
  %i.q = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.e) #11 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit: ; preds = %bb.a, %bb.d
  ret i1 %.not.i.i.i
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #11, !inline_history !150
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #11 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !151 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !151 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !151  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #11
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #11, !inline_history !150
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEE3$_0EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::pdl::ApplyNativeRewriteOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::pdl::ApplyNativeConstraintOp", align 8 ; 4 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !153 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3pdl23ApplyNativeConstraintOpEvE2idE
  %.not1.i.i = icmp eq ptr %1, null
  %.not.i.i = or i1 %.not1.i.i, %i.e
  br i1 %.not.i.i, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  %i.f = call { ptr, i64 } @_ZN4mlir3pdl23ApplyNativeConstraintOp7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 7 uses
  %i.i = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.g, i64 %i.h) #11
  %i.j = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %.val, ptr %i.g, i64 %i.h, i32 noundef %i.i) #11 ; 2 uses
  %i.k = load ptr, ptr %.val, align 8, !tbaa !27
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.thread.i"

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.h, 9
  %i.p = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.o, i64 noundef 8) #11 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.g, i64 %i.h, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !45
  store i64 %i.h, ptr %i.p, align 8, !tbaa !33
  store ptr %i.p, ptr %i.m, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !26
  %i.v = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %.val, i32 noundef %i.j) #11 ; 0 uses
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.thread.i"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.thread.i": ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationE.exit"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.i": ; preds = %bb.a
  %.not.i = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3pdl20ApplyNativeRewriteOpEvE2idE
  br i1 %.not.i, label %bb.e, label %"_ZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationE.exit"

bb.e:                                             ; preds = %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  %i.w = call { ptr, i64 } @_ZN4mlir3pdl20ApplyNativeRewriteOp7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 3 uses
  %i.y = extractvalue { ptr, i64 } %i.w, 1        ; 7 uses
  %i.z = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.x, i64 %i.y) #11
  %i.aa = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %.val, ptr %i.x, i64 %i.y, i32 noundef %i.z) #11 ; 2 uses
  %i.ab = load ptr, ptr %.val, align 8, !tbaa !27
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i5.i, label %bb.f, label %"_ZZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationEENKUlT_E_clINS1_3pdl20ApplyNativeRewriteOpEEEDaSG_.exit.i.i"

bb.f:                                             ; preds = %bb.e
  %i.af = add i64 %i.y, 9
  %i.ag = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #11 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i6.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i7.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i7.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i7.i: ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !45
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !33
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !26
  %i.am = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %.val, i32 noundef %i.aa) #11 ; 0 uses
  br label %"_ZZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationEENKUlT_E_clINS1_3pdl20ApplyNativeRewriteOpEEEDaSG_.exit.i.i"

"_ZZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationEENKUlT_E_clINS1_3pdl20ApplyNativeRewriteOpEEEDaSG_.exit.i.i": ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i7.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationE.exit"

"_ZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationE.exit": ; preds = %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.thread.i", %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3pdl23ApplyNativeConstraintOpERZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKNS1_4pdll3ast6ModuleENS1_8ModuleOpERNS_9StringSetINS_15MallocAllocatorEEEENK3$_0clES3_EUlT_E_EERS4_OT0_.exit.i", %"_ZZZN12_GLOBAL__N_17CodeGen29generateConstraintAndRewritesERKN4mlir4pdll3ast6ModuleENS1_8ModuleOpERN4llvm9StringSetINS8_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationEENKUlT_E_clINS1_3pdl20ApplyNativeRewriteOpEEEDaSG_.exit.i.i"
  ret void
}

declare { ptr, i64 } @_ZN4mlir3pdl23ApplyNativeConstraintOp7getNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4mlir3pdl20ApplyNativeRewriteOp7getNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEPN4mlir4pdll3ast12VariableDeclE(ptr nofree noundef readonly captures(address) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::pdll::ast::Type", align 8 ; 4 uses
  %2 = alloca %"class.mlir::pdll::ast::Type", align 8 ; 4 uses
  %3 = alloca %"class.mlir::pdll::ast::OperationType", align 8 ; 4 uses
  %4 = alloca %"class.mlir::pdll::ast::Type", align 8 ; 4 uses
  %5 = alloca %"class.mlir::pdll::ast::Type", align 8 ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.idx = mul nuw nsw i64 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir4pdll3ast18UserConstraintDeclEKNS3_14ConstraintDeclEEEDcPT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.01915, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01915 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.01915, align 8, !tbaa !162 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.h = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN4llvm8dyn_castIN4mlir4pdll3ast18UserConstraintDeclEKNS3_14ConstraintDeclEEEDcPT0_.exit, !prof !35

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id) #11
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castIN4mlir4pdll3ast18UserConstraintDeclEKNS3_14ConstraintDeclEEEDcPT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 49), i64 35) #11
  store ptr %i.k, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id) #11
  br label %_ZN4llvm8dyn_castIN4mlir4pdll3ast18UserConstraintDeclEKNS3_14ConstraintDeclEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir4pdll3ast18UserConstraintDeclEKNS3_14ConstraintDeclEEEDcPT0_.exit: ; preds = %.lr.ph, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4pdll3ast18UserConstraintDeclEvE13resolveTypeIDEvE2id, align 8, !tbaa !34
  %.not13 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %.not13, label %bb.e, label %bb.b

bb.e:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir4pdll3ast18UserConstraintDeclEKNS3_14ConstraintDeclEEEDcPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZNK4mlir4pdll3ast18UserConstraintDecl18getNativeInputTypeEj(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i32 noundef 0) #11
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !69, !range !70, !noundef !48
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %.sroa.018.0.copyload = load ptr, ptr %6, align 8, !tbaa !43
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.o = insertvalue { ptr, i64 } poison, ptr %.sroa.018.0.copyload, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %.sroa.4.0.copyload, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEPN4mlir4pdll3ast12VariableDeclE(ptr noundef %i.r)
  br label %bb.i

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.t, align 8, !tbaa !163 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.u = call ptr @_ZNK4mlir4pdll3ast4Type9getTypeIDEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %i.v = icmp ne ptr %i.u, @_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail20AttributeTypeStorageEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not1.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null ; 5 uses
  %.not.i.i.i = select i1 %i.v, i1 true, i1 %.not1.i.i.i
  br i1 %.not.i.i.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_0EERS8_OT_.exit.i", label %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_0EERS8_OT_.exit.i": ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.w = call ptr @_ZNK4mlir4pdll3ast4Type9getTypeIDEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %i.x = icmp ne ptr %i.w, @_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail20OperationTypeStorageEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i2.i = select i1 %i.x, i1 true, i1 %.not1.i.i.i
  br i1 %.not.i.i2.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_1EERS8_OT_.exit.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_0EERS8_OT_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.y = call noundef ptr @_ZNK4mlir4pdll3ast13OperationType15getODSOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11 ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.not.i.i.i.i, label %"_ZZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeEENK3$_1clENS3_13OperationTypeE.exit.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
  br label %"_ZZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeEENK3$_1clENS3_13OperationTypeE.exit.i.i.i"

"_ZZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeEENK3$_1clENS3_13OperationTypeE.exit.i.i.i": ; preds = %bb.h, %bb.g
  %.sroa.3.1.i.i.i.i = phi i64 [ %i.ac, %bb.h ], [ 19, %bb.g ]
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ @.str.24, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_1EERS8_OT_.exit.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_0EERS8_OT_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.ad = call ptr @_ZNK4mlir4pdll3ast4Type9getTypeIDEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %i.ae = icmp ne ptr %i.ad, @_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail15TypeTypeStorageEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i.i5.i = select i1 %i.ae, i1 true, i1 %.not1.i.i.i
  br i1 %.not.i.i5.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_2EERS8_OT_.exit.i", label %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_2EERS8_OT_.exit.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_1EERS8_OT_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.0.0.copyload.i, ptr %1, align 8
  %i.af = call ptr @_ZNK4mlir4pdll3ast4Type9getTypeIDEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %i.ag = icmp ne ptr %i.af, @_ZN4mlir6detail14TypeIDResolverINS_4pdll3ast6detail16ValueTypeStorageEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not.i.i9.i = select i1 %i.ag, i1 true, i1 %.not1.i.i.i
  br i1 %.not.i.i9.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_3EERS8_OT_.exit.i", label %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_3EERS8_OT_.exit.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_2EERS8_OT_.exit.i"
  %i.ah = call noundef zeroext i1 @_ZN4mlir4pdll3ast13TypeRangeType7classofENS1_4TypeE(ptr %.sroa.0.0.copyload.i) #11
  %not..i = xor i1 %i.ah, true
  %i.ai = select i1 %not..i, i1 true, i1 %.not1.i.i.i
  br i1 %i.ai, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_4EERS8_OT_.exit.i", label %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_4EERS8_OT_.exit.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_3EERS8_OT_.exit.i"
  %i.aj = call noundef zeroext i1 @_ZN4mlir4pdll3ast14ValueRangeType7classofENS1_4TypeE(ptr %.sroa.0.0.copyload.i) #11 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  br label %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit

_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit: ; preds = %._crit_edge, %"_ZZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeEENK3$_1clENS3_13OperationTypeE.exit.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_1EERS8_OT_.exit.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_2EERS8_OT_.exit.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_3EERS8_OT_.exit.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_4EERS8_OT_.exit.i"
  %.sroa.9.5.i = phi ptr [ @.str.27, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_3EERS8_OT_.exit.i" ], [ @.str.28, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_4EERS8_OT_.exit.i" ], [ @.str.26, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_2EERS8_OT_.exit.i" ], [ @.str.25, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_1EERS8_OT_.exit.i" ], [ @.str.23, %._crit_edge ], [ %.sroa.0.1.i.i.i.i, %"_ZZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeEENK3$_1clENS3_13OperationTypeE.exit.i.i.i" ]
  %.sroa.16.5.i = phi i64 [ 17, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_3EERS8_OT_.exit.i" ], [ 18, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_4EERS8_OT_.exit.i" ], [ 13, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_2EERS8_OT_.exit.i" ], [ 12, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4pdll3ast4TypeENS_9StringRefEEES6_E4CaseIZN12_GLOBAL__N_17CodeGen17getNativeTypeNameES6_E3$_1EERS8_OT_.exit.i" ], [ 17, %._crit_edge ], [ %.sroa.3.1.i.i.i.i, %"_ZZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeEENK3$_1clENS3_13OperationTypeE.exit.i.i.i" ]
  %i.ak = insertvalue { ptr, i64 } poison, ptr %.sroa.9.5.i, 0
  %i.al = insertvalue { ptr, i64 } %i.ak, i64 %.sroa.16.5.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.thread, %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit
  %.fca.1.insert.merged = phi { ptr, i64 } [ %i.al, %_ZN12_GLOBAL__N_17CodeGen17getNativeTypeNameEN4mlir4pdll3ast4TypeE.exit ], [ %i.p, %.thread ], [ %i.s, %bb.f ]
  ret { ptr, i64 } %.fca.1.insert.merged
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNK4mlir4pdll3ast18UserConstraintDecl18getNativeInputTypeEj(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) local_unnamed_addr #2

declare ptr @_ZNK4mlir4pdll3ast4Type9getTypeIDEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir4pdll3ast13OperationType15getODSOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir4pdll3ast13TypeRangeType7classofENS1_4TypeE(ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir4pdll3ast14ValueRangeType7classofENS1_4TypeE(ptr) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6Region6getOpsINS_3pdl9PatternOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.05 = alloca %"class.llvm::filter_iterator_base", align 8 ; 2 uses
  %2 = alloca %"class.mlir::Region::OpIterator", align 8 ; 6 uses
  %3 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  %4 = alloca %"class.mlir::Region::OpIterator", align 8 ; 2 uses
  %5 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext true) #11
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext false) #11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.b, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !68
  %.not1.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not1.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.g) #11
  %i.j = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.i) #11, !inline_history !164
  br i1 %i.j, label %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #11 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.o, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !68
  %.not1.i.i.i.i1 = icmp eq ptr %i.r, %i.s
  br i1 %.not1.i.i.i.i1, label %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.r, %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit ]
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #11
  %i.w = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #11, !inline_history !164
  br i1 %i.w, label %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #11 ; 0 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !68
  %.not.i.i.i.i3 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i3, label %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2, !llvm.loop !0

_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4: ; preds = %.lr.ph.i.i.i.i2, %bb.c, %_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEEC2ES5_S5_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4mlir6detail11op_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN4mlir6detail11op_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18op_filter_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6filterERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3pdl9PatternOpEvE2idE
  ret i1 %i.d
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail11op_iteratorINS_3pdl9PatternOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %.not.i.i.not = icmp ult i32 %i.c, %i.g
  %.pre3 = load ptr, ptr %0, align 8, !tbaa !16   ; 4 uses
  br i1 %.not.i.i.not, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.pre3, i64 %i.d
  %i.i = icmp uge ptr %1, %.pre3
  %i.j = icmp ult ptr %1, %i.h
  %spec.select.i.i.i.i = and i1 %i.i, %i.j
  br i1 %spec.select.i.i.i.i, label %bb.c, label %.critedge.i.i, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.pre3 to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  %i.n = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit

.critedge.i.i:                                    ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i
  %i.p = phi ptr [ %.pre3, %bb.a ], [ %i.n, %bb.c ], [ %.pre, %.critedge.i.i ]
  %.016.i.i = phi ptr [ %1, %bb.a ], [ %i.o, %bb.c ], [ %1, %.critedge.i.i ] ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !17
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.r ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !59
  %i.u = load ptr, ptr %.016.i.i, align 8, !tbaa !61 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.w, ptr %i.a, align 8, !tbaa !44
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #11 ; 2 uses
  store ptr %i.y, ptr %i.s, align 8, !tbaa !61
  %i.z = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.z, ptr %i.t, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit
  %i.aa = phi ptr [ %i.y, %bb.d ], [ %i.t, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERKS6_m.exit ] ; 2 uses
  switch i64 %i.w, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !45
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !62
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !17
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #11 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !59
  %i.j = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.j, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !61
  %i.q = load i64, ptr %i.k, align 8, !tbaa !45
  store i64 %i.q, ptr %i.i, align 8, !tbaa !45
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !62
  store ptr %i.k, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !61
  store i64 0, ptr %i.r, align 8, !tbaa !62
  store i8 0, ptr %i.k, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !165

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !16  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.w = zext i32 %.pre3.i to i64
  %.idx2.i = shl nuw nsw i64 %i.w, 5
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.x, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.y
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.ae = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i ] ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !44
  %i.ag = icmp eq ptr %i.ae, %i.b
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.ae) #11
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.ah = trunc i64 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation5printERN4llvm11raw_ostreamERKNS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #2

declare void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags15enableDebugInfoEbb(ptr noundef nonnull align 8 dereferenceable(42), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167, !nonnull !48, !align !49 ; 2 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.e = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #11
  %i.f = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.e, i64 -1, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i, i64 %.0.i.i) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %.sroa.speculated.i.i.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i) #11 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %.sroa.0.0.copyload.i.i, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated.i.i.i
  store ptr %i.q, ptr %i.i, align 8, !tbaa !54
  br label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit

_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_17CodeGen8generateENS1_3pdl9PatternOpENS_9StringRefERNS_9StringSetINS_15MallocAllocatorEEEE3$_0EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::pdl::ApplyNativeConstraintOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::pdl::ApplyNativeRewriteOp", align 8 ; 4 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3pdl23ApplyNativeConstraintOpEvE2idE
  %spec.select.i.i.i = select i1 %i.e, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i, ptr %2, align 8
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call { ptr, i64 } @_ZN4mlir3pdl23ApplyNativeConstraintOp7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  call fastcc void @"_ZZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEEENK3$_1clES5_S5_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr %i.g, i64 %i.h, ptr nonnull @.str.36, i64 10)
  br label %"_ZZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.i = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3pdl20ApplyNativeRewriteOpEvE2idE
  %spec.select.i.i6.i = select i1 %i.i, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i6.i, ptr %3, align 8
  %.not3.i = icmp eq ptr %spec.select.i.i6.i, null
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call { ptr, i64 } @_ZN4mlir3pdl20ApplyNativeRewriteOp7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  call fastcc void @"_ZZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEEENK3$_1clES5_S5_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr %i.k, i64 %i.l, ptr nonnull @.str.37, i64 7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %"_ZZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationE.exit"

"_ZZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEEENK3$_0clEPNS1_9OperationE.exit": ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_17CodeGen8generateEN4mlir3pdl9PatternOpEN4llvm9StringRefERNS4_9StringSetINS4_15MallocAllocatorEEEENK3$_1clES5_S5_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = load ptr, ptr %0, align 8, !tbaa !168, !nonnull !48, !align !49 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #11
  %i.e = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr %1, i64 %2, i32 noundef %i.d) #11 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.critedge, label %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit

_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit: ; preds = %bb.a
  %i.g = sext i32 %i.e to i64
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !28
  %.pre4.i.i = zext i32 %.pre.i.i to i64
  %.not39 = icmp eq i64 %i.g, %.pre4.i.i
  br i1 %.not39, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169, !nonnull !48, !align !49 ; 4 uses
  %i.j = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #11
  %i.k = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr %1, i64 %2, i32 noundef %i.j) #11 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %2, 9
  %i.q = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.p, i64 noundef 8) #11 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %2, 0             ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store i8 0, ptr %i.s, align 1, !tbaa !45
  store i64 %2, ptr %i.q, align 8, !tbaa !33
  store ptr %i.q, ptr %i.n, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !26
  %i.w = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i32 noundef %i.k) #11 ; 0 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !48, !align !49 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 12
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull @.str.38, i64 noundef 12) #11 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ab, ptr noundef nonnull align 1 dereferenceable(12) @.str.38, i64 12, i1 false)
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %i.aj = phi ptr [ %.pre, %bb.f ], [ %i.ai, %bb.g ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.x, %bb.g ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ugt i64 %4, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %3, i64 noundef %4) #11 ; 2 uses
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %3, i64 %4, i1 false)
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %4 ; 2 uses
  store ptr %i.at, ptr %i.am, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.h, %bb.i, %bb.j
  %i.au = phi ptr [ %.pre41, %bb.h ], [ %i.at, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %.0.i = phi ptr [ %i.ar, %bb.h ], [ %.0.i.i, %bb.j ], [ %.0.i.i, %bb.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 10
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.39, i64 noundef 10) #11 ; 2 uses
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.au, ptr noundef nonnull align 1 dereferenceable(10) @.str.39, i64 10, i1 false)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 10 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.k, %bb.l
  %i.bf = phi ptr [ %.pre43, %bb.k ], [ %i.be, %bb.l ] ; 3 uses
  %.0.i.i19 = phi ptr [ %i.bb, %bb.k ], [ %.0.i, %bb.l ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i19, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i19, i64 32 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ugt i64 %2, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.bn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i19, ptr noundef %1, i64 noundef %2) #11 ; 2 uses
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.pre45 = load ptr, ptr %.phi.trans.insert44, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit23

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit23, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %1, i64 %2, i1 false)
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %2 ; 2 uses
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit23

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit23:    ; preds = %bb.m, %bb.n, %bb.o
  %i.bq = phi ptr [ %.pre45, %bb.m ], [ %i.bp, %bb.o ], [ %i.bf, %bb.n ] ; 2 uses
  %.0.i22 = phi ptr [ %i.bn, %bb.m ], [ %.0.i.i19, %bb.o ], [ %.0.i.i19, %bb.n ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 3
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit23
  %i.bx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i22, ptr noundef nonnull @.str.40, i64 noundef 3) #11 ; 2 uses
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.pre47 = load ptr, ptr %.phi.trans.insert46, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit23
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i22, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bq, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 3 ; 2 uses
end_hunk_1
