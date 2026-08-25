Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TypeSystem?download=true
begin_hunk_0
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.16" }
%"struct.std::_Head_base.16" = type { ptr }
%"class.std::optional.21" = type { %"struct.std::_Optional_base.22" }
%"struct.std::_Optional_base.22" = type { %"struct.std::_Optional_payload.24" }
%"struct.std::_Optional_payload.24" = type { %"struct.std::_Optional_payload.base.28", [7 x i8] }
%"struct.std::_Optional_payload.base.28" = type { %"struct.std::_Optional_payload_base.base.27" }
%"struct.std::_Optional_payload_base.base.27" = type <{ %"union.std::_Optional_payload_base<llvm::json::Value>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::json::Value>::_Storage" = type { %"class.llvm::json::Value" }
%"class.llvm::json::Value" = type { i16, [6 x i8], %"struct.llvm::AlignedCharArrayUnion" }
%"struct.llvm::AlignedCharArrayUnion" = type { [32 x i8] }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::DenseMap.31" }
%"class.llvm::DenseMap.31" = type { ptr, ptr, i32, i32 }
%"class.llvm::Expected" = type <{ %union.anon.36, i8, [7 x i8] }>
%union.anon.36 = type { %"class.std::shared_ptr" }
%"class.std::optional.45" = type { %"struct.std::_Optional_base.46" }
%"struct.std::_Optional_base.46" = type { %"struct.std::_Optional_payload.48" }
%"struct.std::_Optional_payload.48" = type { %"struct.std::_Optional_payload_base.base.50", [7 x i8] }
%"struct.std::_Optional_payload_base.base.50" = type <{ %"union.std::_Optional_payload_base<llvm::function_ref<std::shared_ptr<lldb_private::TypeSystem> ()>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::function_ref<std::shared_ptr<lldb_private::TypeSystem> ()>>::_Storage" = type { %"class.llvm::function_ref" }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.20 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.20 = type { i64, [8 x i8] }
%"class.llvm::Error" = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i64 }
%class.anon = type { i32, ptr }
%class.anon.54 = type { i32, ptr }
%"struct.lldb_private::LanguageSet" = type { %"class.llvm::SmallBitVector" }
%"class.llvm::SmallBitVector" = type { i64 }
%"class.llvm::detail::IEEEFloat" = type <{ ptr, %"union.llvm::detail::IEEEFloat::Significand", i32, i8, [3 x i8] }>
%"union.llvm::detail::IEEEFloat::Significand" = type { i64 }

$_ZN4llvm8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS4_EEED2Ev = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS5_EEEEtS5_S7_SA_E5clearEv = comdat any

$_ZN12lldb_private10TypeSystem8FinalizeEv = comdat any

$_ZN12lldb_private10TypeSystem14GetDWARFParserEv = comdat any

$_ZN12lldb_private10TypeSystem12GetPDBParserEv = comdat any

$_ZN12lldb_private10TypeSystem18GetNativePDBParserEv = comdat any

$_ZN12lldb_private10TypeSystem20DeclGetConstantValueEPv = comdat any

$_ZN12lldb_private10TypeSystem17IsEnumerationTypeEPvRb = comdat any

$_ZN12lldb_private10TypeSystem23HasPointerAuthQualifierEPv = comdat any

$_ZN12lldb_private10TypeSystem21IsForcefullyCompletedEPv = comdat any

$_ZN12lldb_private10TypeSystem17ForEachEnumeratorEPvRKSt8functionIFbRKNS_12CompilerTypeENS_11ConstStringERKN4llvm6APSIntEEE = comdat any

$_ZN12lldb_private10TypeSystem22GetStaticFieldWithNameEPvN4llvm9StringRefE = comdat any

$_ZN12lldb_private10TypeSystem27GetDirectNestedTypeWithNameEPvN4llvm9StringRefE = comdat any

$_ZN12lldb_private10TypeSystem30CreateGenericFunctionPrototypeEv = comdat any

$_ZN12lldb_private10TypeSystem31ShouldTreatScalarValueAsAddressEPv = comdat any

$_ZN12lldb_private10TypeSystem17GetUserExpressionEN4llvm9StringRefES2_NS_14SourceLanguageENS_10Expression10ResultTypeERKNS_25EvaluateExpressionOptionsEPNS_11ValueObjectE = comdat any

$_ZN12lldb_private10TypeSystem17GetFunctionCallerERKNS_12CompilerTypeERKNS_7AddressERKNS_9ValueListEPKc = comdat any

$_ZN12lldb_private10TypeSystem28GetPersistentExpressionStateEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS5_EEEEtS5_S7_SA_E8copyFromERKSB_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12lldb_private10TypeSystemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12lldb_private10TypeSystemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12lldb_private10TypeSystemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12lldb_private10TypeSystemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS5_EEEEtS5_S7_SA_E16shrink_and_clearEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12lldb_private10TypeSystemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS5_EEEEtS5_S7_SA_E24lookupOrInsertIntoBucketItJEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS5_EEEEtS5_S7_SA_E15LookupBucketForItEEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS5_EEEEtS5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapItSt10shared_ptrIN12lldb_private10TypeSystemEENS_12DenseMapInfoItvEENS_6detail12DenseMapPairItS5_EEEEtS5_S7_SA_E8moveFromERSB_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12lldb_private10TypeSystemE = unnamed_addr constant { [140 x ptr] } { [140 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private10TypeSystemD1Ev, ptr @_ZN12lldb_private10TypeSystemD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem8FinalizeEv, ptr @_ZN12lldb_private10TypeSystem14GetDWARFParserEv, ptr @_ZN12lldb_private10TypeSystem12GetPDBParserEv, ptr @_ZN12lldb_private10TypeSystem18GetNativePDBParserEv, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem18DeclGetMangledNameEPv, ptr @_ZN12lldb_private10TypeSystem18DeclGetDeclContextEPv, ptr @_ZN12lldb_private10TypeSystem25DeclGetFunctionReturnTypeEPv, ptr @_ZN12lldb_private10TypeSystem27DeclGetFunctionNumArgumentsEPv, ptr @_ZN12lldb_private10TypeSystem27DeclGetFunctionArgumentTypeEPvm, ptr @_ZN12lldb_private10TypeSystem22DeclGetCompilerContextEPv, ptr @_ZN12lldb_private10TypeSystem20DeclGetConstantValueEPv, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem25DeclContextFindDeclByNameEPvNS_11ConstStringEb, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem29GetCompilerDeclContextForTypeERKNS_12CompilerTypeE, ptr @_ZN12lldb_private10TypeSystem29DeclContextGetCompilerContextEPv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem15IsAnonymousTypeEPv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem17IsEnumerationTypeEPvRb, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem23HasPointerAuthQualifierEPv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem21IsForcefullyCompletedEPv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem18GetMangledTypeNameEPv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem12GetArrayTypeEPvm, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem22GetLValueReferenceTypeEPv, ptr @_ZN12lldb_private10TypeSystem22GetRValueReferenceTypeEPv, ptr @_ZN12lldb_private10TypeSystem13GetAtomicTypeEPv, ptr @_ZN12lldb_private10TypeSystem16AddConstModifierEPv, ptr @_ZN12lldb_private10TypeSystem19AddVolatileModifierEPv, ptr @_ZN12lldb_private10TypeSystem19AddRestrictModifierEPv, ptr @_ZN12lldb_private10TypeSystem18AddPtrAuthModifierEPvj, ptr @_ZN12lldb_private10TypeSystem13CreateTypedefEPvPKcRKNS_19CompilerDeclContextEj, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem20GetBuiltinTypeByNameENS_11ConstStringE, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem17ForEachEnumeratorEPvRKSt8functionIFbRKNS_12CompilerTypeENS_11ConstStringERKN4llvm6APSIntEEE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem22GetStaticFieldWithNameEPvN4llvm9StringRefE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem27GetDirectNestedTypeWithNameEPvN4llvm9StringRefE, ptr @_ZN12lldb_private10TypeSystem14IsTemplateTypeEPv, ptr @_ZN12lldb_private10TypeSystem23GetNumTemplateArgumentsEPvb, ptr @_ZN12lldb_private10TypeSystem23GetTemplateArgumentKindEPvmb, ptr @_ZN12lldb_private10TypeSystem23GetTypeTemplateArgumentEPvmb, ptr @_ZN12lldb_private10TypeSystem27GetIntegralTemplateArgumentEPvmb, ptr @_ZN12lldb_private10TypeSystem23IsPromotableIntegerTypeEPv, ptr @_ZN12lldb_private10TypeSystem22GetPromotedIntegerTypeEPv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem30CreateGenericFunctionPrototypeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private10TypeSystem31ShouldTreatScalarValueAsAddressEPv, ptr @_ZN12lldb_private10TypeSystem17GetUserExpressionEN4llvm9StringRefES2_NS_14SourceLanguageENS_10Expression10ResultTypeERKNS_25EvaluateExpressionOptionsEPNS_11ValueObjectE, ptr @_ZN12lldb_private10TypeSystem17GetFunctionCallerERKNS_12CompilerTypeERKNS_7AddressERKNS_9ValueListEPKc, ptr @_ZN12lldb_private10TypeSystem21CreateUtilityFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_, ptr @_ZN12lldb_private10TypeSystem28GetPersistentExpressionStateEv, ptr @_ZN12lldb_private10TypeSystem20GetTypeForFormattersEPv, ptr @_ZN12lldb_private10TypeSystem21ShouldPrintAsOneLinerEPvPNS_11ValueObjectE, ptr @_ZN12lldb_private10TypeSystem37IsMeaninglessWithoutDynamicResolutionEPv, ptr @_ZN12lldb_private10TypeSystem16ReportStatisticsEv] }, align 8
@.str = private unnamed_addr constant [64 x i8] c"Unable to get TypeSystem because TypeSystemMap is being cleared\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TypeSystem for language \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" doesn't exist\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to find type system for language \00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN4llvm11APFloatBase13semIEEEsingleE = external global %"struct.llvm::fltSemantics", align 4

@_ZN12lldb_private11LanguageSetC1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private11LanguageSetC2Ev
@_ZN12lldb_private10TypeSystemD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private10TypeSystemD2Ev
@_ZN12lldb_private13TypeSystemMapC1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private13TypeSystemMapC2Ev
@_ZN12lldb_private13TypeSystemMapD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private13TypeSystemMapD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private11LanguageSetC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i64 -3170534137668829183, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN12lldb_private11LanguageSet19GetSingularLanguageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZNK4llvm14SmallBitVector5countEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i = shl nuw nsw i64 %i.g, 3             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.f, 0
  br i1 %.not10.i.i, label %_ZNK4llvm14SmallBitVector10find_firstEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.i = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.k, 4611686018427387900      ; 3 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi13 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.n = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !15
  %wide.load14 = load <2 x i64>, ptr %i.o, align 8, !tbaa !15
  %i.p = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.q = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load14)
  %i.r = trunc nuw nsw <2 x i64> %i.p to <2 x i32>
  %i.s = trunc nuw nsw <2 x i64> %i.q to <2 x i32>
  %i.t = add <2 x i32> %vec.phi, %i.r             ; 2 uses
  %i.u = add <2 x i32> %vec.phi13, %i.s           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.u, %i.t
  %i.w = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZNK4llvm14SmallBitVector5countEv.exit.thread2, label %.lr.ph.i.i.preheader17

.lr.ph.i.i.preheader17:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  %.0911.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader17, %.lr.ph.i.i
  %.012.i.i = phi i32 [ %i.aa, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader17 ]
  %.0911.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader17 ] ; 2 uses
  %i.x = load i64, ptr %.0911.i.i, align 8, !tbaa !15
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = add i32 %.012.i.i, %i.z                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.i.i, label %_ZNK4llvm14SmallBitVector5countEv.exit.thread2, label %.lr.ph.i.i, !llvm.loop !19

_ZNK4llvm14SmallBitVector5countEv.exit:           ; preds = %bb.a
  %i.ac = lshr i64 %i.a, 1
  %i.ad = lshr i64 %i.a, 58
  %i.ae = shl nsw i64 -1, %i.ad
  %i.af = xor i64 %i.ae, -1
  %i.ag = and i64 %i.ac, %i.af                    ; 2 uses
  %i.ah = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ag)
  %i.ai = icmp eq i64 %i.ah, 1                    ; 2 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ag, i1 true)
  %spec.select = select i1 %i.ai, i64 %i.aj, i64 0
  %spec.select10 = select i1 %i.ai, i64 4294967296, i64 0
  br label %_ZNK4llvm14SmallBitVector10find_firstEv.exit

_ZNK4llvm14SmallBitVector5countEv.exit.thread2:   ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i32 [ %i.w, %middle.block ], [ %i.aa, %.lr.ph.i.i ]
  %i.ak = icmp eq i32 %.lcssa, 1
  br i1 %i.ak, label %.thread, label %_ZNK4llvm14SmallBitVector10find_firstEv.exit

.thread:                                          ; preds = %_ZNK4llvm14SmallBitVector5countEv.exit.thread2
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNK4llvm14SmallBitVector10find_firstEv.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.ao = add i32 %i.am, -1                       ; 2 uses
  %i.ap = lshr i32 %i.ao, 6                       ; 3 uses
  %i.aq = and i32 %i.ao, 63
  %i.ar = xor i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 -1, %i.as                      ; 2 uses
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = add nuw nsw i32 %i.ap, 1
  %wide.trip.count.i.i.i = zext nneg i32 %i.av to i64
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !15
  %i.ax = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.ay = select i1 %i.ax, i64 %i.at, i64 -1
  %.231.peel.i.i.i = and i64 %i.aw, %i.ay         ; 2 uses
  %.not37.peel.i.i.i = icmp eq i64 %.231.peel.i.i.i, 0
  br i1 %.not37.peel.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.ax, label %_ZNK4llvm14SmallBitVector10find_firstEv.exit, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.d, %bb.f
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.f ], [ 1, %bb.d ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.i.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !15
  %i.bb = icmp eq i64 %indvars.iv.i.i.i, %i.au
  %i.bc = select i1 %i.bb, i64 %i.at, i64 -1
  %.231.i.i.i = and i64 %i.bc, %i.ba              ; 2 uses
  %.not37.i.i.i = icmp eq i64 %.231.i.i.i, 0
  br i1 %.not37.i.i.i, label %bb.f, label %.loopexit48.i.i.i

.loopexit48.i.i.i:                                ; preds = %.peel.next.i.i.i
  %i.bd = shl i64 %indvars.iv.i.i.i, 6
  %i.be = and i64 %i.bd, 4294967232
  br label %bb.e

bb.e:                                             ; preds = %.loopexit48.i.i.i, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.be, %.loopexit48.i.i.i ], [ 0, %bb.c ]
  %.231.lcssa.i.i.i = phi i64 [ %.231.i.i.i, %.loopexit48.i.i.i ], [ %.231.peel.i.i.i, %bb.c ]
  %i.bf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.231.lcssa.i.i.i, i1 true)
  %i.bg = or disjoint i64 %i.bf, %.pre-phi.i.i.i
  br label %_ZNK4llvm14SmallBitVector10find_firstEv.exit

bb.f:                                             ; preds = %.peel.next.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK4llvm14SmallBitVector10find_firstEv.exit, label %.peel.next.i.i.i, !llvm.loop !27

_ZNK4llvm14SmallBitVector10find_firstEv.exit:     ; preds = %bb.f, %_ZNK4llvm14SmallBitVector5countEv.exit, %bb.b, %_ZNK4llvm14SmallBitVector5countEv.exit.thread2, %bb.e, %bb.d, %.thread
  %.sroa.0.0.a = phi i64 [ 0, %_ZNK4llvm14SmallBitVector5countEv.exit.thread2 ], [ %spec.select, %_ZNK4llvm14SmallBitVector5countEv.exit ], [ 0, %bb.b ], [ 4294967295, %.thread ], [ %i.bg, %bb.e ], [ 4294967295, %bb.d ], [ 4294967295, %bb.f ]
  %.sroa.2.0 = phi i64 [ 0, %_ZNK4llvm14SmallBitVector5countEv.exit.thread2 ], [ %spec.select10, %_ZNK4llvm14SmallBitVector5countEv.exit ], [ 0, %bb.b ], [ 4294967296, %.thread ], [ 4294967296, %bb.e ], [ 4294967296, %bb.d ], [ 4294967296, %bb.f ]
  %.sroa.0.0.insert.insert = or i64 %.sroa.2.0, %.sroa.0.0.a
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 5 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = lshr i64 %i.a, 58
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = zext nneg i32 %1 to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = or i64 %i.c, %i.h
  %i.j = and i64 %i.i, %i.f
  %i.k = shl nuw i64 %i.j, 1
  %i.l = and i64 %i.a, -288230376151711743
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %0, align 8, !tbaa !8
  br label %_ZN4llvm14SmallBitVector3setEj.exit

bb.c:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.a to ptr
  %i.o = and i32 %1, 63
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i32 %1, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  %i.w = or i64 %i.v, %i.q
  store i64 %i.w, ptr %i.u, align 8, !tbaa !15
  br label %_ZN4llvm14SmallBitVector3setEj.exit

_ZN4llvm14SmallBitVector3setEj.exit:              ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @_ZNK12lldb_private11LanguageSet4SizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = lshr i64 %i.a, 58
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i64 %i.c, %i.f
  %i.h = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.g)
  br label %_ZNK4llvm14SmallBitVector5countEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i.i = shl nuw nsw i64 %i.m, 3             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i.i, label %_ZNK4llvm14SmallBitVector5countEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.o = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %i.j, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi1 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !15
  %wide.load2 = load <2 x i64>, ptr %i.u, align 8, !tbaa !15
  %i.v = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.w = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load2)
  %i.x = trunc nuw nsw <2 x i64> %i.v to <2 x i32>
  %i.y = trunc nuw nsw <2 x i64> %i.w to <2 x i32>
  %i.z = add <2 x i32> %vec.phi, %i.x             ; 2 uses
  %i.aa = add <2 x i32> %vec.phi1, %i.y           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.aa, %i.z
  %i.ac = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZNK4llvm9BitVector5countEv.exit.loopexit.i, label %.lr.ph.i.i.preheader3

.lr.ph.i.i.preheader3:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader3, %.lr.ph.i.i
  %.012.i.i = phi i32 [ %i.ag, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader3 ]
  %.0911.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader3 ] ; 2 uses
  %i.ad = load i64, ptr %.0911.i.i, align 8, !tbaa !15
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ad)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = add i32 %.012.i.i, %i.af                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.n
  br i1 %.not.i.i, label %_ZNK4llvm9BitVector5countEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !31

_ZNK4llvm9BitVector5countEv.exit.loopexit.i:      ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i32 [ %i.ac, %middle.block ], [ %i.ag, %.lr.ph.i.i ]
  %i.ai = zext i32 %.lcssa to i64
  br label %_ZNK4llvm14SmallBitVector5countEv.exit

_ZNK4llvm14SmallBitVector5countEv.exit:           ; preds = %bb.b, %bb.c, %_ZNK4llvm9BitVector5countEv.exit.loopexit.i
  %.0.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.c ], [ %i.ai, %_ZNK4llvm9BitVector5countEv.exit.loopexit.i ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private11LanguageSet5EmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = lshr i64 %i.a, 58
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i64 %i.c, %i.f
  %i.h = icmp eq i64 %i.g, 0
  br label %_ZNK4llvm14SmallBitVector4noneEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !14   ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %.idx2.i.i.i.i = shl nuw nsw i64 %i.m, 3        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx2.i.i.i.i ; 2 uses
  %i.o = lshr i64 %i.m, 2                         ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.c
  %i.p = and i64 %.idx2.i.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.j, i64 %i.p
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.g ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.q = load i64, ptr %.02946.i.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %.not32.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not32.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK4llvm9BitVector4noneEv.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15
  %.not33.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not33.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZNK4llvm9BitVector4noneEv.exit.i.loopexit.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15
  %.not34.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not34.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNK4llvm9BitVector4noneEv.exit.i.loopexit.split.loop.exit13

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %.not35.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not35.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK4llvm9BitVector4noneEv.exit.i.loopexit.split.loop.exit15

bb.g:                                             ; preds = %bb.f
end_hunk_0
