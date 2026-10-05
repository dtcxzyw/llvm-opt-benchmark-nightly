Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRDLOps?download=true
inline.NumInlined: 1176
inline.NumDeleted: 841
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon.415 }
%union.anon.415 = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.77" }
%"class.mlir::detail::StorageUserBase.77" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::optional.153" = type { %"struct.std::_Optional_base.154" }
%"struct.std::_Optional_base.154" = type { %"struct.std::_Optional_payload.156" }
%"struct.std::_Optional_payload.156" = type { %"struct.std::_Optional_payload_base.base.158", [7 x i8] }
%"struct.std::_Optional_payload_base.base.158" = type <{ %"union.std::_Optional_payload_base<llvm::StringRef>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::StringRef>::_Storage" = type { %"class.llvm::StringRef" }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.169" }
%"class.std::optional.169" = type { %"struct.std::_Optional_base.170" }
%"struct.std::_Optional_base.170" = type { %"struct.std::_Optional_payload.172" }
%"struct.std::_Optional_payload.172" = type { %"struct.std::_Optional_payload.base.191", [7 x i8] }
%"struct.std::_Optional_payload.base.191" = type { %"struct.std::_Optional_payload_base.base.190" }
%"struct.std::_Optional_payload_base.base.190" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.175", %"class.std::vector", %"class.std::vector.183", %"class.llvm::SmallVector.188" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.175" = type { %"class.llvm::SmallVectorImpl.176", %"struct.llvm::SmallVectorStorage.179" }
%"class.llvm::SmallVectorImpl.176" = type { %"class.llvm::SmallVectorTemplateBase.177" }
%"class.llvm::SmallVectorTemplateBase.177" = type { %"class.llvm::SmallVectorTemplateCommon.178" }
%"class.llvm::SmallVectorTemplateCommon.178" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.179" = type { [96 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.183" = type { %"struct.std::_Vector_base.184" }
%"struct.std::_Vector_base.184" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.188" = type { %"class.llvm::SmallVectorImpl.176" }
%"class.llvm::SmallVector.221" = type { %"class.llvm::SmallVectorImpl.222", %"struct.llvm::SmallVectorStorage.225" }
%"class.llvm::SmallVectorImpl.222" = type { %"class.llvm::SmallVectorTemplateBase.223" }
%"class.llvm::SmallVectorTemplateBase.223" = type { %"class.llvm::SmallVectorTemplateCommon.224" }
%"class.llvm::SmallVectorTemplateCommon.224" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.225" = type { [48 x i8] }
%"class.std::unique_ptr.349" = type { %"struct.std::__uniq_ptr_data.350" }
%"struct.std::__uniq_ptr_data.350" = type { %"class.std::__uniq_ptr_impl.351" }
%"class.std::__uniq_ptr_impl.351" = type { %"class.std::tuple.352" }
%"class.std::tuple.352" = type { %"struct.std::_Tuple_impl.353" }
%"struct.std::_Tuple_impl.353" = type { %"struct.std::_Head_base.356" }
%"struct.std::_Head_base.356" = type { ptr }
%"class.std::optional.357" = type { %"struct.std::_Optional_base.358" }
%"struct.std::_Optional_base.358" = type { %"struct.std::_Optional_payload.360" }
%"struct.std::_Optional_payload.360" = type { %"struct.std::_Optional_payload.base.364", [7 x i8] }
%"struct.std::_Optional_payload.base.364" = type { %"struct.std::_Optional_payload_base.base.363" }
%"struct.std::_Optional_payload_base.base.363" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<unsigned int>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<unsigned int>>::_Storage" = type { %"class.llvm::SmallVector.221" }

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm15SmallVectorImplIjEaSEOS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"no registered type with name \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"no registered attribute with name \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c" does not refer to any existing symbol\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4irdl6TypeOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4irdl11AttributeOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN4mlir4irdl12IsConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4mlir4irdl18BaseTypeConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4mlir4irdl18BaseAttrConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4mlir4irdl27DynParametricTypeConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4mlir4irdl27DynParametricAttrConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4mlir4irdl15AnyOfConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4mlir4irdl15AllOfConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4mlir4irdl22AnyAttributeConstraintE = external unnamed_addr constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4irdl4IsOp11getVerifierEN4llvm8ArrayRefINS_5ValueEEERKNS2_8DenseMapINS0_6TypeOpESt10unique_ptrINS_21DynamicTypeDefinitionESt14default_deleteIS9_EENS2_12DenseMapInfoIS7_vEENS2_6detail12DenseMapPairIS7_SC_EEEERKNS6_INS0_11AttributeOpES8_INS_21DynamicAttrDefinitionESA_ISM_EENSD_ISL_vEENSG_ISL_SO_EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef nonnull readnone align 1 captures(none) %4, ptr nofree noundef nonnull readnone align 1 captures(none) %5) local_unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN4mlir4irdl12IsConstraintESt14default_deleteIS2_EED2Ev.exit:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12, !noalias !81 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl12IsConstraintE, i64 16), ptr %i.h, align 8, !tbaa !13, !noalias !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !80, !noalias !81
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4irdl6BaseOp11getVerifierEN4llvm8ArrayRefINS_5ValueEEERKNS2_8DenseMapINS0_6TypeOpESt10unique_ptrINS_21DynamicTypeDefinitionESt14default_deleteIS9_EENS2_12DenseMapInfoIS7_vEENS2_6detail12DenseMapPairIS7_SC_EEEERKNS6_INS0_11AttributeOpES8_INS_21DynamicAttrDefinitionESA_ISM_EENSD_ISL_vEENSG_ISL_SO_EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::optional.153", align 8 ; 6 uses
  %19 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %21 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #13 ; 4 uses
  %i.f = tail call { ptr, i8 } @_ZN4mlir4irdl6BaseOp10getBaseRefEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13 ; 2 uses
  %i.g = extractvalue { ptr, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNRSt8optionalIN4mlir13SymbolRefAttrEE5valueEv.exit, label %.critedge26

_ZNRSt8optionalIN4mlir13SymbolRefAttrEE5valueEv.exit: ; preds = %bb.a
  %i.i = extractvalue { ptr, i8 } %i.f, 0
  %i.j = load ptr, ptr %1, align 8, !tbaa !11
  %i.k = tail call noundef ptr @_ZN4mlir4irdl23lookupSymbolNearDialectEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef %i.j, ptr %i.i) #13 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = icmp ne ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_4irdl6TypeOpEvE2idE
  %.not154 = icmp eq ptr %i.k, null
  %.not = or i1 %.not154, %i.o
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalIN4mlir13SymbolRefAttrEE5valueEv.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !25, !noalias !122 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26, !noalias !122 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27, !noalias !122 ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add i32 %i.t, -1                         ; 2 uses
  %i.w = ptrtoint ptr %i.k to i64
  %i.x = xor i64 %i.w, -49064778989728563         ; 2 uses
  %i.y = lshr i64 %i.x, 30
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 27
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -7723592293110705685     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.v, %i.ag                     ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28, !noalias !123
  %i.am = and i32 %i.ah, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !29

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.ap = phi i64 [ %i.au, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %.01419.i.i.i.i = phi i32 [ %i.at, %bb.d ], [ %i.ah, %bb.c ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !123
  %i.ar = icmp eq ptr %i.k, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.ar, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = add nuw i32 %.01419.i.i.i.i, 1
  %i.at = and i32 %i.as, %i.v                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !28, !noalias !123
  %i.ay = and i32 %i.at, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !31

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.bb = zext i32 %i.t to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.bc = phi i64 [ %i.bb, %.loopexit.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !135 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bi, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 5, ptr %i.bj, align 8, !tbaa !40, !alias.scope !136
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 3, ptr %i.bk, align 1, !tbaa !41, !alias.scope !136
  store ptr %.sroa.0.0.copyload.i, ptr %12, align 8, !tbaa !42, !alias.scope !136
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bl, align 8, !tbaa !42, !alias.scope !136
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str, ptr %i.bm, align 8, !tbaa !42, !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !137 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !138 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.not.i = icmp eq ptr %i.bn, null
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.bq, ptr %13, align 8, !tbaa !140, !alias.scope !139
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !138, !alias.scope !139
  store i8 0, ptr %i.bq, align 8, !tbaa !42, !alias.scope !139
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !139
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !37, !noalias !139
  %i.bs = icmp ugt i64 %i.bp, 15
  br i1 %i.bs, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #13 ; 2 uses
  store ptr %i.bt, ptr %13, align 8, !tbaa !137, !alias.scope !139
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !37, !noalias !139
  store i64 %i.bu, ptr %i.bq, align 8, !tbaa !42, !alias.scope !139
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.bv = phi ptr [ %i.bt, %bb.g ], [ %i.bq, %bb.f ] ; 2 uses
  switch i64 %i.bp, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i8, ptr %i.bn, align 1, !tbaa !42
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.bn, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !37, !noalias !139 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !138, !alias.scope !139
  %i.bz = load ptr, ptr %13, align 8, !tbaa !137, !alias.scope !139
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !139
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  store ptr %12, ptr %11, align 8, !alias.scope !141
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %13, ptr %i.cb, align 8, !alias.scope !141
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cc, align 8, !tbaa !40, !alias.scope !141
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 4, ptr %i.cd, align 1, !tbaa !41, !alias.scope !141
  %i.ce = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(34) %11) #13
  store ptr %i.ce, ptr %10, align 8
  %i.cf = load ptr, ptr %13, align 8, !tbaa !137  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt10unique_ptrIN4mlir4irdl18BaseTypeConstraintESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !42
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #14
  br label %_ZNSt10unique_ptrIN4mlir4irdl18BaseTypeConstraintESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir4irdl18BaseTypeConstraintESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ck = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12, !noalias !142 ; 5 uses
  %i.cl = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #13, !noalias !142 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl18BaseTypeConstraintE, i64 16), ptr %i.ck, align 8, !tbaa !13, !noalias !142
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.bf, ptr %i.co, align 8, !tbaa !143, !noalias !142
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !36, !noalias !142
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !37, !noalias !142
  store ptr %i.ck, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.af

.critedge:                                        ; preds = %_ZNRSt8optionalIN4mlir13SymbolRefAttrEE5valueEv.exit
  %i.cq = load ptr, ptr %5, align 8, !tbaa !45, !noalias !144 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46, !noalias !144 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !47, !noalias !144 ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit.i.i.i31, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.cw = add i32 %i.cu, -1                       ; 2 uses
  %i.cx = ptrtoint ptr %i.k to i64
  %i.cy = xor i64 %i.cx, -49064778989728563       ; 2 uses
  %i.cz = lshr i64 %i.cy, 30
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = mul i64 %i.da, -4658895280553007687     ; 2 uses
  %i.dc = lshr i64 %i.db, 27
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, -7723592293110705685     ; 2 uses
  %i.df = lshr i64 %i.de, 31
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.cw, %i.dh                    ; 3 uses
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir4irdl12ParametricOp11getVerifierEN4llvm8ArrayRefINS_5ValueEEERKNS2_8DenseMapINS0_6TypeOpESt10unique_ptrINS_21DynamicTypeDefinitionESt14default_deleteIS9_EENS2_12DenseMapInfoIS7_vEENS2_6detail12DenseMapPairIS7_SC_EEEERKNS6_INS0_11AttributeOpES8_INS_21DynamicAttrDefinitionESA_ISM_EENSD_ISL_vEENSG_ISL_SO_EEEE:bb.a
bb.a:
  %6 = alloca %"class.llvm::SmallVector.221", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.221", align 8 ; 10 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.221", align 8 ; 11 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.a = tail call i64 @_ZN4mlir4irdl12ParametricOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #13 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir4irdl12ParametricOp7getArgsEv.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZN4mlir4irdl12ParametricOp7getArgsEv.exit

_ZN4mlir4irdl12ParametricOp7getArgsEv.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i.i, %i.a
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.h
  %i.l = sub nsw i64 %i.j, %i.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.m, ptr %10, align 8, !tbaa !67, !alias.scope !179
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.n, align 8, !tbaa !65, !alias.scope !179
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 12, ptr %i.o, align 4, !tbaa !66, !alias.scope !179
  %.not31.i = icmp eq i64 %i.j, %i.h
  br i1 %.not31.i, label %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %_ZN4mlir4irdl12ParametricOp7getArgsEv.exit
  %.idx.i = shl nuw nsw i64 %3, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %.not2628.i = icmp eq i64 %3, 0
  br i1 %.not2628.i, label %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph33.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  %.sroa.419.032.i = phi i64 [ %i.ad, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i ], [ 0, %.lr.ph33.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.419.032.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !74, !noalias !179
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.sroa.010.030.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ac, %.critedge.i ] ; 2 uses
  %.sroa.7.029.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %.critedge.i ] ; 3 uses
  %i.s = load ptr, ptr %.sroa.010.030.i, align 8, !tbaa !76, !noalias !179
  %i.t = icmp eq ptr %i.s, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.t, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !65, !alias.scope !179 ; 2 uses
  %i.v = load i32, ptr %i.o, align 4, !tbaa !66, !alias.scope !179
  %.not.i.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %.sroa.7.029.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %10, align 8, !tbaa !67, !alias.scope !179
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  store i32 %.sroa.7.029.i, ptr %i.y, align 1
  %i.z = load i32, ptr %i.n, align 8, !tbaa !65, !alias.scope !179
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !65, !alias.scope !179
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

.critedge.i:                                      ; preds = %bb.c
  %i.ab = add i32 %.sroa.7.029.i, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.030.i, i64 8 ; 2 uses
  %.not26.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not26.i, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i, label %bb.c

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i: ; preds = %.critedge.i, %bb.f, %bb.e
  %i.ad = add nuw nsw i64 %.sroa.419.032.i, 1     ; 2 uses
  %.not.i = icmp eq i64 %i.ad, %i.l
  br i1 %.not.i, label %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit, label %.lr.ph.i

_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i, %_ZN4mlir4irdl12ParametricOp7getArgsEv.exit, %.lr.ph33.i
  %i.ae = call ptr @_ZN4mlir4irdl12ParametricOp11getBaseTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13 ; 2 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !11
  %i.ag = call noundef ptr @_ZN4mlir4irdl23lookupSymbolNearDialectEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef %i.af, ptr %i.ae) #13 ; 6 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.g, label %bb.p

bb.g:                                             ; preds = %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.ah, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ai, align 1, !tbaa !41
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %12) #13
  %i.aj = load ptr, ptr %11, align 8, !tbaa !60
  %.not.i.i14 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.ae) #13
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !66
  %.not.i.i.i.i.i16 = icmp ult i32 %i.am, %i.ao
  br i1 %.not.i.i.i.i.i16, label %bb.j, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = zext i32 %i.am to i64
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.as = load i32, ptr %i.al, align 8, !tbaa !65
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.al, align 8, !tbaa !65
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr = load ptr, ptr %11, align 8, !tbaa !60
  %.not.i.i17 = icmp eq ptr %.pr, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i32 3, ptr %8, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.3, ptr %i.au, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 38, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !37
  %i.av = load i32, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %i.aw = load i32, ptr %i.an, align 4, !tbaa !66
  %.not.i.i.i.i.i18 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i.i.i.i18, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ba = load i32, ptr %i.al, align 8, !tbaa !65
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.al, align 8, !tbaa !65
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pr47 = load ptr, ptr %11, align 8, !tbaa !60
  %.not.i19 = icmp eq ptr %.pr47, null
  br i1 %.not.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #13
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit.thread: ; preds = %bb.g, %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit, %bb.n, %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !68, !range !51, !noundef !52
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !68
  br i1 %i.be, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bf) #13
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA39_KcEEOS0_OT_.exit.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  store ptr null, ptr %0, align 8, !tbaa !16
  br label %bb.ab

bb.p:                                             ; preds = %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, @_ZN4mlir6detail14TypeIDResolverINS_4irdl6TypeOpEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.bj, ptr %i.ag, ptr null
  br i1 %i.bj, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %4, align 8, !tbaa !25, !noalias !180 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26, !noalias !180 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !27, !noalias !180 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = add i32 %i.bo, -1                       ; 2 uses
  %i.br = ptrtoint ptr %i.ag to i64
  %i.bs = xor i64 %i.br, -49064778989728563       ; 2 uses
  %i.bt = lshr i64 %i.bs, 30
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = mul i64 %i.bu, -4658895280553007687     ; 2 uses
  %i.bw = lshr i64 %i.bv, 27
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, -7723592293110705685     ; 2 uses
  %i.bz = lshr i64 %i.by, 31
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = and i32 %i.bq, %i.cb                    ; 3 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = lshr i64 %i.cd, 5
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28, !noalias !181
  %i.ch = and i32 %i.cc, 31
  %i.ci = lshr i32 %i.cg, %i.ch
  %i.cj = trunc i32 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !29

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %bb.s
  %i.ck = phi i64 [ %i.cp, %bb.s ], [ %i.cd, %bb.r ] ; 2 uses
  %.01419.i.i.i.i = phi i32 [ %i.co, %bb.s ], [ %i.cc, %bb.r ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.ck
  %.sroa.0.0.copyload.i.i.i.i20 = load ptr, ptr %i.cl, align 8, !noalias !181
  %i.cm = icmp eq ptr %spec.select.i.i, %.sroa.0.0.copyload.i.i.i.i20
  br i1 %i.cm, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit, label %bb.s, !prof !30

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cn = add nuw i32 %.01419.i.i.i.i, 1
  %i.co = and i32 %i.cn, %i.bq                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !28, !noalias !181
  %i.ct = and i32 %i.co, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !31

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %bb.q
  %i.cw = zext i32 %i.bo to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.cx = phi i64 [ %i.cw, %.loopexit.i.i.i ], [ %i.ck, %.lr.ph.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.db = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12, !noalias !182 ; 13 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.dc, ptr %7, align 8, !tbaa !67, !noalias !182
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.dd, align 8, !tbaa !65, !noalias !182
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 12, ptr %i.de, align 4, !tbaa !66, !noalias !182
  %i.df = load i32, ptr %i.n, align 8, !tbaa !65, !noalias !182 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i, label %_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i.thread, label %bb.t

_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricTypeConstraintE, i64 16), ptr %i.db, align 8, !tbaa !13, !noalias !182
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.da, ptr %i.dg, align 8, !tbaa !190, !noalias !182
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !67, !noalias !182
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 0, ptr %i.dj, align 8, !tbaa !65, !noalias !182
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  store i32 12, ptr %i.dk, align 4, !tbaa !66, !noalias !182
  br label %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricTypeConstraintESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl6TypeOpESt10unique_ptrINS2_21DynamicTypeDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit
  %i.dl = icmp ugt i32 %i.df, 12
  br i1 %i.dl, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.t
  %i.dm = zext i32 %i.df to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.dc, i64 noundef %i.dm, i64 noundef 4) #13, !noalias !182
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !65, !noalias !182 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !67, !noalias !182
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.t
  %i.dn = phi ptr [ %.pre.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.dc, %bb.t ]
  %i.do = phi i32 [ %.pre.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.df, %bb.t ]
  %i.dp = zext i32 %i.do to i64
  %i.dq = load ptr, ptr %10, align 8, !tbaa !67, !noalias !182
  %gepdiff.i.i.i = shl nuw nsw i64 %i.dp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 4 %i.dq, i64 %gepdiff.i.i.i, i1 false), !noalias !182
  br label %_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i

_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !65, !noalias !182
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricTypeConstraintE, i64 16), ptr %i.db, align 8, !tbaa !13, !noalias !182
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.da, ptr %i.dr, align 8, !tbaa !190, !noalias !182
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !67, !noalias !182
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 0, ptr %i.du, align 8, !tbaa !65, !noalias !182
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  store i32 12, ptr %i.dv, align 4, !tbaa !66, !noalias !182
  %i.dw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(64) %7), !noalias !182 ; 0 uses
  %.pre57 = load ptr, ptr %7, align 8, !tbaa !67, !noalias !182 ; 2 uses
  %i.dx = icmp eq ptr %.pre57, %i.dc
  br i1 %i.dx, label %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricTypeConstraintESt14default_deleteIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i
  call void @free(ptr noundef %.pre57) #13, !noalias !182
  br label %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricTypeConstraintESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir4irdl27DynParametricTypeConstraintESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i.thread, %bb.u, %_ZN4mlir4irdl27DynParametricTypeConstraintC2EPNS_21DynamicTypeDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.db, ptr %0, align 8, !tbaa !16
  br label %bb.ab

.critedge:                                        ; preds = %bb.p
  %i.dy = icmp eq ptr %i.bi, @_ZN4mlir6detail14TypeIDResolverINS_4irdl11AttributeOpEvE2idE ; 3 uses
  %spec.select.i.i23 = select i1 %i.dy, ptr %i.ag, ptr null
  br i1 %i.dy, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.critedge
  %i.dz = load ptr, ptr %5, align 8, !tbaa !45, !noalias !191 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !46, !noalias !191 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !47, !noalias !191 ; 3 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.loopexit.i.i.i25, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = add i32 %i.ed, -1                       ; 2 uses
  %i.eg = ptrtoint ptr %i.ag to i64
  %i.eh = xor i64 %i.eg, -49064778989728563       ; 2 uses
  %i.ei = lshr i64 %i.eh, 30
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = mul i64 %i.ej, -4658895280553007687     ; 2 uses
  %i.el = lshr i64 %i.ek, 27
  %i.em = xor i64 %i.el, %i.ek
  %i.en = mul i64 %i.em, -7723592293110705685     ; 2 uses
  %i.eo = lshr i64 %i.en, 31
  %i.ep = xor i64 %i.eo, %i.en
  %i.eq = trunc i64 %i.ep to i32
  %i.er = and i32 %i.ef, %i.eq                    ; 3 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = lshr i64 %i.es, 5
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !28, !noalias !192
  %i.ew = and i32 %i.er, 31
  %i.ex = lshr i32 %i.ev, %i.ew
  %i.ey = trunc i32 %i.ex to i1
  br i1 %i.ey, label %.lr.ph.i.i.i.i26, label %.loopexit.i.i.i25, !prof !29

.lr.ph.i.i.i.i26:                                 ; preds = %bb.w, %bb.x
  %i.ez = phi i64 [ %i.fe, %bb.x ], [ %i.es, %bb.w ] ; 2 uses
  %.01419.i.i.i.i27 = phi i32 [ %i.fd, %bb.x ], [ %i.er, %bb.w ]
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.ez
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %i.fa, align 8, !noalias !192
  %i.fb = icmp eq ptr %spec.select.i.i23, %.sroa.0.0.copyload.i.i.i.i28
  br i1 %i.fb, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl11AttributeOpESt10unique_ptrINS2_21DynamicAttrDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit, label %bb.x, !prof !30

bb.x:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.fc = add nuw i32 %.01419.i.i.i.i27, 1
  %i.fd = and i32 %i.fc, %i.ef                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = lshr i64 %i.fe, 5
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !28, !noalias !192
  %i.fi = and i32 %i.fd, 31
  %i.fj = lshr i32 %i.fh, %i.fi
  %i.fk = trunc i32 %i.fj to i1
  br i1 %i.fk, label %.lr.ph.i.i.i.i26, label %.loopexit.i.i.i25, !prof !31

.loopexit.i.i.i25:                                ; preds = %bb.x, %bb.w, %bb.v
  %i.fl = zext i32 %i.ed to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl11AttributeOpESt10unique_ptrINS2_21DynamicAttrDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl11AttributeOpESt10unique_ptrINS2_21DynamicAttrDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit: ; preds = %.lr.ph.i.i.i.i26, %.loopexit.i.i.i25
  %i.fm = phi i64 [ %i.fl, %.loopexit.i.i.i25 ], [ %i.ez, %.lr.ph.i.i.i.i26 ]
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.fq = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12, !noalias !193 ; 13 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.fr, ptr %6, align 8, !tbaa !67, !noalias !193
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.fs, align 8, !tbaa !65, !noalias !193
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 12, ptr %i.ft, align 4, !tbaa !66, !noalias !193
  %i.fu = load i32, ptr %i.n, align 8, !tbaa !65, !noalias !193 ; 5 uses
  %.not.i.i.i29 = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.i29, label %_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i.thread, label %bb.y

_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl11AttributeOpESt10unique_ptrINS2_21DynamicAttrDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricAttrConstraintE, i64 16), ptr %i.fq, align 8, !tbaa !13, !noalias !193
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fp, ptr %i.fv, align 8, !tbaa !195, !noalias !193
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !67, !noalias !193
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i32 0, ptr %i.fy, align 8, !tbaa !65, !noalias !193
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  store i32 12, ptr %i.fz, align 4, !tbaa !66, !noalias !193
  br label %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricAttrConstraintESt14default_deleteIS2_EED2Ev.exit

bb.y:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir4irdl11AttributeOpESt10unique_ptrINS2_21DynamicAttrDefinitionESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E2atERKS4_.exit
  %i.ga = icmp ugt i32 %i.fu, 12
  br i1 %i.ga, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i32, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i30

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i32:       ; preds = %bb.y
  %i.gb = zext i32 %i.fu to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.fr, i64 noundef %i.gb, i64 noundef 4) #13, !noalias !193
  %.pre.i.i33 = load i32, ptr %i.n, align 8, !tbaa !65, !noalias !193 ; 2 uses
  %.not.i.i.i.i34 = icmp eq i32 %.pre.i.i33, 0
  br i1 %.not.i.i.i.i34, label %_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i35

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i35: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i32
  %.pre.i36 = load ptr, ptr %6, align 8, !tbaa !67, !noalias !193
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i30

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i30: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i35, %bb.y
  %i.gc = phi ptr [ %.pre.i36, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i35 ], [ %i.fr, %bb.y ]
  %i.gd = phi i32 [ %.pre.i.i33, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i35 ], [ %i.fu, %bb.y ]
  %i.ge = zext i32 %i.gd to i64
  %i.gf = load ptr, ptr %10, align 8, !tbaa !67, !noalias !193
  %gepdiff.i.i.i31 = shl nuw nsw i64 %i.ge, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr align 4 %i.gf, i64 %gepdiff.i.i.i31, i1 false), !noalias !193
  br label %_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i

_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i32, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i30
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !65, !noalias !193
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricAttrConstraintE, i64 16), ptr %i.fq, align 8, !tbaa !13, !noalias !193
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fp, ptr %i.gg, align 8, !tbaa !195, !noalias !193
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !67, !noalias !193
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i32 0, ptr %i.gj, align 8, !tbaa !65, !noalias !193
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  store i32 12, ptr %i.gk, align 4, !tbaa !66, !noalias !193
  %i.gl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.gh, ptr noundef nonnull align 8 dereferenceable(64) %6), !noalias !193 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !67, !noalias !193 ; 2 uses
  %i.gm = icmp eq ptr %.pre, %i.fr
  br i1 %i.gm, label %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricAttrConstraintESt14default_deleteIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i
  call void @free(ptr noundef %.pre) #13, !noalias !193
  br label %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricAttrConstraintESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir4irdl27DynParametricAttrConstraintESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i.thread, %bb.z, %_ZN4mlir4irdl27DynParametricAttrConstraintC2EPNS_21DynamicAttrDefinitionEN4llvm11SmallVectorIjLj12EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.fq, ptr %0, align 8, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge, %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricAttrConstraintESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.assume(i1 %i.dy)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN4mlir4irdl27DynParametricTypeConstraintESt14default_deleteIS2_EED2Ev.exit, %bb.aa, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %i.gn = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.m
  br i1 %i.go, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.gn) #13
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret void
}

declare ptr @_ZN4mlir4irdl12ParametricOp11getBaseTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4irdl7AnyOfOp11getVerifierEN4llvm8ArrayRefINS_5ValueEEERKNS2_8DenseMapINS0_6TypeOpESt10unique_ptrINS_21DynamicTypeDefinitionESt14default_deleteIS9_EENS2_12DenseMapInfoIS7_vEENS2_6detail12DenseMapPairIS7_SC_EEEERKNS6_INS0_11AttributeOpES8_INS_21DynamicAttrDefinitionESA_ISM_EENSD_ISL_vEENSG_ISL_SO_EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.221", align 8 ; 9 uses
  %7 = alloca %"class.llvm::SmallVector.221", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.a = tail call i64 @_ZN4mlir4irdl7AnyOfOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #13 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir4irdl7AnyOfOp7getArgsEv.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZN4mlir4irdl7AnyOfOp7getArgsEv.exit

_ZN4mlir4irdl7AnyOfOp7getArgsEv.exit:             ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i.i, %i.a
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.h
  %i.l = sub nsw i64 %i.j, %i.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !67, !alias.scope !200
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.n, align 8, !tbaa !65, !alias.scope !200
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 12, ptr %i.o, align 4, !tbaa !66, !alias.scope !200
  %.not31.i = icmp eq i64 %i.j, %i.h
  br i1 %.not31.i, label %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %_ZN4mlir4irdl7AnyOfOp7getArgsEv.exit
  %.idx.i = shl nuw nsw i64 %3, 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %.not2628.i = icmp eq i64 %3, 0
  br i1 %.not2628.i, label %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph33.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  %.sroa.419.032.i = phi i64 [ %i.ad, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i ], [ 0, %.lr.ph33.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.419.032.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !74, !noalias !200
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.sroa.010.030.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ac, %.critedge.i ] ; 2 uses
  %.sroa.7.029.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %.critedge.i ] ; 3 uses
  %i.s = load ptr, ptr %.sroa.010.030.i, align 8, !tbaa !76, !noalias !200
  %i.t = icmp eq ptr %i.s, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.t, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !65, !alias.scope !200 ; 2 uses
  %i.v = load i32, ptr %i.o, align 4, !tbaa !66, !alias.scope !200
  %.not.i.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.sroa.7.029.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %7, align 8, !tbaa !67, !alias.scope !200
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  store i32 %.sroa.7.029.i, ptr %i.y, align 1
  %i.z = load i32, ptr %i.n, align 8, !tbaa !65, !alias.scope !200
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !65, !alias.scope !200
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

.critedge.i:                                      ; preds = %bb.c
  %i.ab = add i32 %.sroa.7.029.i, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.030.i, i64 8 ; 2 uses
  %.not26.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not26.i, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i, label %bb.c

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i: ; preds = %.critedge.i, %bb.f, %bb.e
  %i.ad = add nuw nsw i64 %.sroa.419.032.i, 1     ; 2 uses
  %.not.i = icmp eq i64 %i.ad, %i.l
  br i1 %.not.i, label %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit, label %.lr.ph.i

_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i, %_ZN4mlir4irdl7AnyOfOp7getArgsEv.exit, %.lr.ph33.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ae = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12, !noalias !201 ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !67, !noalias !201
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !65, !noalias !201
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 12, ptr %i.ah, align 4, !tbaa !66, !noalias !201
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !65, !noalias !201
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIjLj12EEC2EOS1_.exit.thread.i, label %_ZN4llvm11SmallVectorIjLj12EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIjLj12EEC2EOS1_.exit.thread.i: ; preds = %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl15AnyOfConstraintE, i64 16), ptr %i.ae, align 8, !tbaa !13, !noalias !201
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !67, !noalias !201
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !65, !noalias !201
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 12, ptr %i.am, align 4, !tbaa !66, !noalias !201
  br label %_ZN4mlir4irdl15AnyOfConstraintC2EN4llvm11SmallVectorIjLj12EEE.exit.i

_ZN4llvm11SmallVectorIjLj12EEC2EOS1_.exit.i:      ; preds = %_ZL27getConstraintIndicesForArgsN4mlir12OperandRangeEN4llvm8ArrayRefINS_5ValueEEE.exit
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7), !noalias !201 ; 0 uses
  %.pre.i = load i32, ptr %i.ag, align 8, !tbaa !65, !noalias !201
  %i.ao = icmp eq i32 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl15AnyOfConstraintE, i64 16), ptr %i.ae, align 8, !tbaa !13, !noalias !201
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !67, !noalias !201
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !65, !noalias !201
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 12, ptr %i.as, align 4, !tbaa !66, !noalias !201
  br i1 %i.ao, label %_ZN4mlir4irdl15AnyOfConstraintC2EN4llvm11SmallVectorIjLj12EEE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIjLj12EEC2EOS1_.exit.i
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %6), !noalias !201 ; 0 uses
  br label %_ZN4mlir4irdl15AnyOfConstraintC2EN4llvm11SmallVectorIjLj12EEE.exit.i

_ZN4mlir4irdl15AnyOfConstraintC2EN4llvm11SmallVectorIjLj12EEE.exit.i: ; preds = %bb.g, %_ZN4llvm11SmallVectorIjLj12EEC2EOS1_.exit.i, %_ZN4llvm11SmallVectorIjLj12EEC2EOS1_.exit.thread.i
  %i.au = load ptr, ptr %6, align 8, !tbaa !67, !noalias !201 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.af
  br i1 %i.av, label %_ZNSt10unique_ptrIN4mlir4irdl15AnyOfConstraintESt14default_deleteIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir4irdl15AnyOfConstraintC2EN4llvm11SmallVectorIjLj12EEE.exit.i
  call void @free(ptr noundef %i.au) #13, !noalias !201
  br label %_ZNSt10unique_ptrIN4mlir4irdl15AnyOfConstraintESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir4irdl15AnyOfConstraintESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZN4mlir4irdl15AnyOfConstraintC2EN4llvm11SmallVectorIjLj12EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.ae, ptr %0, align 8, !tbaa !16
  %i.aw = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.m
  br i1 %i.ax, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4mlir4irdl15AnyOfConstraintESt14default_deleteIS2_EED2Ev.exit
  call void @free(ptr noundef %i.aw) #13
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %_ZNSt10unique_ptrIN4mlir4irdl15AnyOfConstraintESt14default_deleteIS2_EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4irdl7AllOfOp11getVerifierEN4llvm8ArrayRefINS_5ValueEEERKNS2_8DenseMapINS0_6TypeOpESt10unique_ptrINS_21DynamicTypeDefinitionESt14default_deleteIS9_EENS2_12DenseMapInfoIS7_vEENS2_6detail12DenseMapPairIS7_SC_EEEERKNS6_INS0_11AttributeOpES8_INS_21DynamicAttrDefinitionESA_ISM_EENSD_ISL_vEENSG_ISL_SO_EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.221", align 8 ; 9 uses
  %7 = alloca %"class.llvm::SmallVector.221", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.a = tail call i64 @_ZN4mlir4irdl7AllOfOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #13 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir4irdl7AllOfOp7getArgsEv.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZN4mlir4irdl7AllOfOp7getArgsEv.exit

_ZN4mlir4irdl7AllOfOp7getArgsEv.exit:             ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i.i, %i.a
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.h
end_hunk_1
