Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FunctionImplementation?download=true
inline.NumInlined: 588
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%class.anon = type { ptr, ptr, ptr, ptr }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon.84 }
%union.anon.84 = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::NamedAttribute" = type { %"class.mlir::Attribute", %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [64 x i8] }
%"class.llvm::SmallVector.6" = type { %"class.llvm::SmallVectorImpl.3", %"struct.llvm::SmallVectorStorage.7" }
%"class.llvm::SmallVectorImpl.3" = type { %"class.llvm::SmallVectorTemplateBase.4" }
%"class.llvm::SmallVectorTemplateBase.4" = type { %"class.llvm::SmallVectorTemplateCommon.5" }
%"class.llvm::SmallVectorTemplateCommon.5" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.7" = type { [48 x i8] }
%"class.llvm::SmallVector.8" = type { %"class.llvm::SmallVectorImpl.0", %"struct.llvm::SmallVectorStorage.9" }
%"class.llvm::SmallVectorImpl.0" = type { %"class.llvm::SmallVectorTemplateBase.1" }
%"class.llvm::SmallVectorTemplateBase.1" = type { %"class.llvm::SmallVectorTemplateCommon.2" }
%"class.llvm::SmallVectorTemplateCommon.2" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.9" = type { [48 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.35" }
%"class.std::optional.35" = type { %"struct.std::_Optional_base.36" }
%"struct.std::_Optional_base.36" = type { %"struct.std::_Optional_payload.38" }
%"struct.std::_Optional_payload.38" = type { %"struct.std::_Optional_payload.base.57", [7 x i8] }
%"struct.std::_Optional_payload.base.57" = type { %"struct.std::_Optional_payload_base.base.56" }
%"struct.std::_Optional_payload_base.base.56" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.41", %"class.std::vector", %"class.std::vector.49", %"class.llvm::SmallVector.54" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.41" = type { %"class.llvm::SmallVectorImpl.42", %"struct.llvm::SmallVectorStorage.45" }
%"class.llvm::SmallVectorImpl.42" = type { %"class.llvm::SmallVectorTemplateBase.43" }
%"class.llvm::SmallVectorTemplateBase.43" = type { %"class.llvm::SmallVectorTemplateCommon.44" }
%"class.llvm::SmallVectorTemplateCommon.44" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.45" = type { [96 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.49" = type { %"struct.std::_Vector_base.50" }
%"struct.std::_Vector_base.50" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.54" = type { %"class.llvm::SmallVectorImpl.42" }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.17", %"class.llvm::PointerIntPair" }
%"class.llvm::SmallVector.17" = type { %"class.llvm::SmallVectorImpl.18", %"struct.llvm::SmallVectorStorage.21" }
%"class.llvm::SmallVectorImpl.18" = type { %"class.llvm::SmallVectorTemplateBase.19" }
%"class.llvm::SmallVectorTemplateBase.19" = type { %"class.llvm::SmallVectorTemplateCommon.20" }
%"class.llvm::SmallVectorTemplateCommon.20" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.21" = type { [64 x i8] }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.mlir::DictionaryAttr" = type { %"class.mlir::detail::StorageUserBase.34" }
%"class.mlir::detail::StorageUserBase.34" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.70" = type { %"class.llvm::SmallVectorImpl.71", %"struct.llvm::SmallVectorStorage.74" }
%"class.llvm::SmallVectorImpl.71" = type { %"class.llvm::SmallVectorTemplateBase.72" }
%"class.llvm::SmallVectorTemplateBase.72" = type { %"class.llvm::SmallVectorTemplateCommon.73" }
%"class.llvm::SmallVectorTemplateCommon.73" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.74" = type { [128 x i8] }
%"class.mlir::FunctionOpInterface" = type { %"class.mlir::OpInterface" }
%"class.mlir::OpInterface" = type { %"class.mlir::detail::Interface" }
%"class.mlir::detail::Interface" = type { %"class.mlir::Op", ptr }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::TypeRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.97" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.97" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.98" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.98" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.99" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.99" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.100" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.100" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.101" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.101" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.102" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.102" = type { %"struct.llvm::detail::PunnedPointer.103" }
%"struct.llvm::detail::PunnedPointer.103" = type { [8 x i8] }
%"struct.mlir::OpAsmParser::Argument" = type { %"struct.mlir::OpAsmParser::UnresolvedOperand", %"class.mlir::Type", %"class.mlir::DictionaryAttr", %"class.std::optional" }
%"struct.mlir::OpAsmParser::UnresolvedOperand" = type <{ %"class.llvm::SMLoc", %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.llvm::SMLoc" = type { ptr }
%"class.mlir::Type" = type { ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<mlir::Location>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Location>::_Storage" = type { %"class.mlir::Location" }

$_ZN4mlir18InFlightDiagnosticD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser8ArgumentELb1EE15growAndPushBackERKS3_ = comdat any

$_ZN4mlir9AsmParser15parseSymbolNameERNS_10StringAttrE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to construct function type\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.4 = private unnamed_addr constant [92 x i8] c"' is an inferred attribute and should not be specified in the explicit attribute dictionary\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"expected non-empty function body\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"variadic arguments must be in the end of the argument list\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"expected type instead of SSA identifier\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"expected SSA identifier\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"expected valid '@'-identifier for symbol name\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"sym_name\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"sym_visibility\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) initializes((0, 1)) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %class.anon, align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = zext i1 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !9
  store i8 0, ptr %3, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %3, ptr %6, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %2, ptr %i.e, align 8, !tbaa !16
  %i.f = ptrtoint ptr %6 to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, ptr nonnull @"_ZN4llvm12function_refIFNS_11ParseResultEvEE11callback_fnIZL25parseFunctionArgumentListRN4mlir11OpAsmParserEbRNS_15SmallVectorImplINS6_8ArgumentEEERbE3$_0EES1_l", i64 %i.f, ptr null, i64 0) #9, !inline_history !52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = call i8 @_ZN4mlir19call_interface_impl23parseFunctionResultListERNS_11OpAsmParserERN4llvm15SmallVectorImplINS_4TypeEEERNS4_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.010.0 = phi i8 [ 0, %bb.a ], [ %i.q, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.010.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i8 @_ZN4mlir19call_interface_impl23parseFunctionResultListERNS_11OpAsmParserERN4llvm15SmallVectorImplINS_4TypeEEERNS4_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir23function_interface_impl15parseFunctionOpERNS_11OpAsmParserERNS_14OperationStateEbNS_10StringAttrEN4llvm12function_refIFNS_4TypeERNS_7BuilderENS6_8ArrayRefIS8_EESC_NS0_12VariadicFlagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i1 noundef zeroext %2, ptr %3, ptr nofree readonly captures(none) %4, i64 %5, i64 %6, i64 %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %14 = alloca %class.anon, align 8               ; 7 uses
  %15 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %16 = alloca %"class.mlir::StringAttr", align 8 ; 3 uses
  %17 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  %18 = alloca %"class.llvm::SmallVector.6", align 8 ; 9 uses
  %19 = alloca %"class.llvm::SmallVector.8", align 8 ; 9 uses
  %20 = alloca %"class.mlir::StringAttr", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.llvm::SmallVector.8", align 8 ; 11 uses
  %23 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %25 = alloca %"class.mlir::NamedAttrList", align 8 ; 13 uses
  %26 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %28 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  store ptr %3, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.c, ptr %17, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.f, ptr %18, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 6, ptr %i.h, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #9
  %i.i = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.i, ptr %19, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 6, ptr %i.k, align 4, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.q = call i8 @_ZN4mlir4impl30parseOptionalVisibilityKeywordERNS_11OpAsmParserERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.p) #9 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  store ptr null, ptr %20, align 8, !tbaa !55
  %i.r = call i8 @_ZN4mlir9AsmParser15parseSymbolNameERNS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i = load ptr, ptr %20, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @_ZN4mlir14NamedAttributeC1EN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr nonnull @.str.10, i64 8, ptr %.sroa.01.0.copyload.i) #9
  %i.t = load ptr, ptr %15, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr %i.t, ptr %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.w = load ptr, ptr %0, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = zext i1 %2 to i8
  store i8 %i.aa, ptr %i.a, align 1, !tbaa !9
  store i8 0, ptr %i.b, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  store ptr %i.b, ptr %14, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %0, ptr %i.ab, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %17, ptr %i.ad, align 8, !tbaa !16
  %i.ae = ptrtoint ptr %14 to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 408
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, ptr nonnull @"_ZN4llvm12function_refIFNS_11ParseResultEvEE11callback_fnIZL25parseFunctionArgumentListRN4mlir11OpAsmParserEbRNS_15SmallVectorImplINS6_8ArgumentEEERbE3$_0EES1_l", i64 %i.ae, ptr null, i64 0) #9, !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.c, label %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %0, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call i8 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0) #9, !inline_history !57
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit, label %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread104

_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit: ; preds = %bb.c
  %i.ap = call i8 @_ZN4mlir19call_interface_impl23parseFunctionResultListERNS_11OpAsmParserERN4llvm15SmallVectorImplINS_4TypeEEERNS4_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %18) #9
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread104, label %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread

_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread104: ; preds = %bb.c, %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #9
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.ar, ptr %21, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !61
  store i8 0, ptr %i.ar, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #9
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.at, ptr %22, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  store i32 0, ptr %i.au, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 2 uses
  store i32 6, ptr %i.av, align 4, !tbaa !22
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  %i.ax = icmp ugt i32 %i.aw, 6
  br i1 %i.ax, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit

bb.d:                                             ; preds = %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread104
  %i.ay = zext i32 %i.aw to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %i.at, i64 noundef %i.ay, i64 noundef 8) #9
  %.pre = load i32, ptr %i.d, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit: ; preds = %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread104, %bb.d
  %i.az = phi i32 [ %i.aw, %_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE.exit.thread104 ], [ %.pre, %bb.d ] ; 2 uses
  %i.ba = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.bb = zext i32 %i.az to i64
  %.idx = shl nuw nsw i64 %i.bb, 6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx
  %.not113 = icmp eq i32 %i.az, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit
  %i.bd = load ptr, ptr %22, align 8, !tbaa !20
  %i.be = load i32, ptr %i.au, align 8, !tbaa !21
  %i.bf = zext i32 %i.be to i64
  %i.bg = load ptr, ptr %19, align 8, !tbaa !20
  %i.bh = load i32, ptr %i.j, align 8, !tbaa !21
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load i8, ptr %i.b, align 1, !tbaa !9, !range !28, !noundef !29
  %i.bk = call ptr %4(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr %i.bd, i64 %i.bf, ptr %i.bg, i64 %i.bi, i8 %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %21) #9, !inline_history !54 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.g, label %bb.q

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit
  %.063114 = phi ptr [ %i.bu, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit ], [ %i.ba, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.063114, i64 32
  %.sroa.025.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !63 ; 2 uses
  %i.bn = load i32, ptr %i.au, align 8, !tbaa !21 ; 2 uses
  %i.bo = load i32, ptr %i.av, align 4, !tbaa !22
  %.not.i = icmp ult i32 %i.bn, %i.bo
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !30

bb.e:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr %.sroa.025.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.bp = zext i32 %i.bn to i64
  %i.bq = load ptr, ptr %22, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  store ptr %.sroa.025.0.copyload, ptr %i.br, align 1
  %i.bs = load i32, ptr %i.au, align 8, !tbaa !21
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.au, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit: ; preds = %bb.e, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %.063114, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.bc
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  %i.bv = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i8 1, ptr %i.bv, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.bw, align 1, !tbaa !34
  %i.bx = load ptr, ptr %0, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(34) %24) #9
  %i.ca = load ptr, ptr %23, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  store i32 3, ptr %13, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str, ptr %i.cc, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 33, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !21 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22
  %.not.i.i.i.i.i = icmp ult i32 %i.ce, %i.cg
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA34_KcEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ch = zext i32 %i.ce to i64
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.ck = load i32, ptr %i.cd, align 8, !tbaa !21
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cd, align 8, !tbaa !21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA34_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA34_KcEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %.pr = load ptr, ptr %23, align 8, !tbaa !42
  %30 = load i64, ptr %i.as, align 8, !tbaa !61
  %31 = icmp eq i64 %30, 0
  %32 = select i1 %31, ptr @.str.1, ptr @.str.2   ; 2 uses
  %.not.i.i68 = icmp eq ptr %.pr, null
  br i1 %.not.i.i68, label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA34_KcEEOS0_OT_.exit
  %33 = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cm, align 1, !tbaa !34
  %34 = load i8, ptr %32, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %34, 0
  br i1 %.not.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %32, ptr %12, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit: ; preds = %bb.k, %bb.l
  %storemerge.i.i.i.i = phi i8 [ 3, %bb.l ], [ 1, %bb.k ]
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 %storemerge.i.i.i.i, ptr %i.cn, align 8, !tbaa !33
  %i.co = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %33, ptr noundef nonnull align 8 dereferenceable(34) %12) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.pr107 = load ptr, ptr %23, align 8, !tbaa !42
  %.not.i.i69 = icmp eq ptr %.pr107, null
  br i1 %.not.i.i69, label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 4, ptr %i.cp, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.cq, align 1, !tbaa !34
  store ptr %21, ptr %11, align 8, !tbaa !27
  %i.cr = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %33, ptr noundef nonnull align 8 dereferenceable(34) %11) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit: ; preds = %bb.g, %_ZNO4mlir18InFlightDiagnosticlsIRA34_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, %bb.m
  %i.cs = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %23) #9
  %i.ct = load ptr, ptr %23, align 8, !tbaa !42
  %.not.i70 = icmp eq ptr %i.ct, null
  br i1 %.not.i70, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %23) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %23, i64 200 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !48, !range !28, !noundef !29
  %i.cw = trunc nuw i8 %i.cv to i1
  store i8 0, ptr %i.cu, align 8, !tbaa !48
  br i1 %i.cw, label %bb.p, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cx) #9
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  br label %bb.ag

bb.q:                                             ; preds = %._crit_edge
  %.sroa.023.0.copyload = load ptr, ptr %16, align 8
  %i.cy = call ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr nonnull %i.bk) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.023.0.copyload, ptr %i.cy) #9
  %i.cz = load ptr, ptr %10, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr %i.cz, ptr %i.db) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9
  %i.dc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.dc, ptr %25, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i32 0, ptr %i.dd, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i32 4, ptr %i.de, align 4, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %25, i64 80
  store i64 4, ptr %i.df, align 8
  %i.dg = load ptr, ptr %0, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call ptr %i.di(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %i.dk = load ptr, ptr %0, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 528
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call i8 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %25) #9
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.critedge, label %bb.ae

.critedge:                                        ; preds = %bb.q
  %i.dp = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #9 ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.dp, 0      ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.dp, 1      ; 2 uses
  %i.ds = call ptr @_ZNK4mlir13NamedAttrList3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr nonnull @.str.11, i64 14) #9
  %.not111 = icmp eq ptr %i.ds, null
  br i1 %.not111, label %.critedge.1, label %bb.s

.critedge.1:                                      ; preds = %.critedge
  %i.dt = call ptr @_ZNK4mlir13NamedAttrList3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr nonnull @.str.10, i64 8) #9
  %.not111.1 = icmp eq ptr %i.dt, null
  br i1 %.not111.1, label %.critedge.2, label %bb.s

.critedge.2:                                      ; preds = %.critedge.1
  %i.du = call ptr @_ZNK4mlir13NamedAttrList3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr %i.dq, i64 %i.dr) #9
  %.not111.2 = icmp eq ptr %i.du, null
  br i1 %.not111.2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.2
  %i.dv = load ptr, ptr %25, align 8, !tbaa !20
  %i.dw = load i32, ptr %i.dd, align 8, !tbaa !21 ; 3 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.dy, align 8
  %.idx.i = shl nuw nsw i64 %i.dx, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !21 ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add nuw nsw i64 %i.eb, %i.dx            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !22
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp samesign ugt i64 %i.ec, %i.ef
  br i1 %i.eg, label %bb.z, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i

bb.s:                                             ; preds = %.critedge.2, %.critedge.1, %.critedge
  %.sroa.085.0.copyload.lcssa = phi ptr [ @.str.11, %.critedge ], [ @.str.10, %.critedge.1 ], [ %i.dq, %.critedge.2 ]
  %.sroa.6.0.copyload.lcssa = phi i64 [ 14, %.critedge ], [ 8, %.critedge.1 ], [ %i.dr, %.critedge.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #9
  %i.eh = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.ei, align 1, !tbaa !34
  store ptr @.str.3, ptr %27, align 8, !tbaa !27
  store i8 3, ptr %i.eh, align 8, !tbaa !33
  %i.ej = load ptr, ptr %0, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.dj, ptr noundef nonnull align 8 dereferenceable(34) %27) #9
  %i.em = load ptr, ptr %26, align 8, !tbaa !42
  %.not.i.i71 = icmp eq ptr %i.em, null
  br i1 %.not.i.i71, label %_ZNO4mlir18InFlightDiagnosticlsIRA92_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit: ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %26, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.eo, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ep, align 1, !tbaa !34
  store ptr %.sroa.085.0.copyload.lcssa, ptr %9, align 8, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.6.0.copyload.lcssa, ptr %i.eq, align 8, !tbaa !27
  %i.er = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.en, ptr noundef nonnull align 8 dereferenceable(34) %9) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.pr109 = load ptr, ptr %26, align 8, !tbaa !42
  %.not.i.i72 = icmp eq ptr %.pr109, null
  br i1 %.not.i.i72, label %_ZNO4mlir18InFlightDiagnosticlsIRA92_KcEEOS0_OT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 3, ptr %8, align 8, !tbaa !45
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.4, ptr %i.et, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx.i.i.i.i.i73 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 91, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i73, align 8, !tbaa !47
  %i.eu = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !21 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %26, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !22
  %.not.i.i.i.i.i74 = icmp ult i32 %i.ev, %i.ex
  br i1 %.not.i.i.i.i.i74, label %bb.v, label %bb.u, !prof !30

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendIRA92_KcEERS0_OT_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.ey = zext i32 %i.ev to i64
  %i.ez = load ptr, ptr %i.es, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.fb = load i32, ptr %i.eu, align 8, !tbaa !21
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.eu, align 8, !tbaa !21
  br label %_ZN4mlir10Diagnostic6appendIRA92_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA92_KcEERS0_OT_.exit.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA92_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA92_KcEEOS0_OT_.exit: ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA92_KcEERS0_OT_.exit.i.i
  %i.fd = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %26) #9
  %i.fe = load ptr, ptr %26, align 8, !tbaa !42
  %.not.i75 = icmp eq ptr %i.fe, null
  br i1 %.not.i75, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA92_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %26) #9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNO4mlir18InFlightDiagnosticlsIRA92_KcEEOS0_OT_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %26, i64 200 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !48, !range !28, !noundef !29
  %i.fh = trunc nuw i8 %i.fg to i1
  store i8 0, ptr %i.ff, align 8, !tbaa !48
  br i1 %i.fh, label %bb.y, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %26, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.fi) #9
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76

_ZN4mlir18InFlightDiagnosticD2Ev.exit76:          ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #9
  br label %bb.ae

bb.z:                                             ; preds = %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull %i.fj, i64 noundef %i.ec, i64 noundef 16) #9
  %.pre8.pre.i.i.i = load i32, ptr %i.dz, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i: ; preds = %bb.z, %bb.r
  %.pre8.i.i.i = phi i32 [ %i.ea, %bb.r ], [ %.pre8.pre.i.i.i, %bb.z ] ; 2 uses
  %.not.i.i.i.i77 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i.i77, label %_ZN4mlir13NamedAttrList6appendIRS0_EEvOT_.exit, label %bb.aa

end_hunk_0
