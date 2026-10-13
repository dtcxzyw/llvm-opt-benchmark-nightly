Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InferEffects?download=true
inline.NumInlined: 614
inline.NumDeleted: 479
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::TypeID" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%class.anon = type { i8 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon.106 }
%union.anon.106 = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.mlir::FunctionOpInterface" = type { %"class.mlir::OpInterface" }
%"class.mlir::OpInterface" = type { %"class.mlir::detail::Interface" }
%"class.mlir::detail::Interface" = type { %"class.mlir::Op", ptr }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional.51" }
%"class.std::optional.51" = type { %"struct.std::_Optional_base.52" }
%"struct.std::_Optional_base.52" = type { %"struct.std::_Optional_payload.54" }
%"struct.std::_Optional_payload.54" = type { %"struct.std::_Optional_payload.base.75", [7 x i8] }
%"struct.std::_Optional_payload.base.75" = type { %"struct.std::_Optional_payload_base.base.74" }
%"struct.std::_Optional_payload_base.base.74" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector.57", %"class.std::vector.62", %"class.std::vector.67", %"class.llvm::SmallVector.72" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.llvm::SmallVector.57" = type { %"class.llvm::SmallVectorImpl.58", %"struct.llvm::SmallVectorStorage.61" }
%"class.llvm::SmallVectorImpl.58" = type { %"class.llvm::SmallVectorTemplateBase.59" }
%"class.llvm::SmallVectorTemplateBase.59" = type { %"class.llvm::SmallVectorTemplateCommon.60" }
%"class.llvm::SmallVectorTemplateCommon.60" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.61" = type { [96 x i8] }
%"class.std::vector.62" = type { %"struct.std::_Vector_base.63" }
%"struct.std::_Vector_base.63" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.67" = type { %"struct.std::_Vector_base.68" }
%"struct.std::_Vector_base.68" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.72" = type { %"class.llvm::SmallVectorImpl.58" }
%"class.llvm::SmallDenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::SmallDenseMap" }
%"class.llvm::SmallDenseMap" = type { i32, %union.anon }
%union.anon = type { %"struct.llvm::SmallDenseMap<unsigned int, llvm::detail::DenseSetEmpty, 4, llvm::DenseMapInfo<unsigned int>, llvm::detail::DenseSetPair<unsigned int>>::LargeRep" }
%"struct.llvm::SmallDenseMap<unsigned int, llvm::detail::DenseSetEmpty, 4, llvm::DenseMapInfo<unsigned int>, llvm::detail::DenseSetPair<unsigned int>>::LargeRep" = type { ptr, ptr, i32 }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.93" }
%"class.mlir::detail::StorageUserBase.93" = type { %"class.mlir::Attribute" }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector.126", %"class.llvm::PointerIntPair.131" }
%"class.llvm::SmallVector.126" = type { %"class.llvm::SmallVectorImpl.127", %"struct.llvm::SmallVectorStorage.130" }
%"class.llvm::SmallVectorImpl.127" = type { %"class.llvm::SmallVectorTemplateBase.128" }
%"class.llvm::SmallVectorTemplateBase.128" = type { %"class.llvm::SmallVectorTemplateCommon.129" }
%"class.llvm::SmallVectorTemplateCommon.129" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.130" = type { [64 x i8] }
%"class.llvm::PointerIntPair.131" = type { %"struct.llvm::detail::PunnedPointer.132" }
%"struct.llvm::detail::PunnedPointer.132" = type { [8 x i8] }

$_ZN4mlir4PassD2Ev = comdat any

$_ZN4mlir4Pass10initializeEPNS_11MLIRContextE = comdat any

$_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE = comdat any

$_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE = comdat any

$_ZN4mlir11OpInterfaceINS_9transform20TransformOpInterfaceENS1_6detail35TransformOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE = comdat any

$_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4mlir23function_interface_impl10setArgAttrINS_19FunctionOpInterfaceEEEvT_jNS_10StringAttrENS_9AttributeE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_116InferEffectsPassE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN4mlir4PassD2Ev, ptr @_ZN12_GLOBAL__N_116InferEffectsPassD0Ev, ptr @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE7getNameEv, ptr @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE20getDependentDialectsERNS_15DialectRegistryE, ptr @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE11getArgumentEv, ptr @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE14getDescriptionEv, ptr @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE, ptr @_ZN12_GLOBAL__N_116InferEffectsPass14runOnOperationEv, ptr @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE, ptr @_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE, ptr @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE, ptr @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE9clonePassEv, ptr @_ZN4mlir4Pass6anchorEv] }, align 8
@_ZZN4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE13resolveTypeIDEvE2id = internal global %"class.mlir::SelfOwningTypeID" zeroinitializer, align 8
@_ZTVN4mlir4PassE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"InferEffectsPass\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"transform-infer-effects\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"infer transform side effects for symbols\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"only single-block operations are currently supported\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.5 = private unnamed_addr constant [88 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformOpInterface]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.9 = private unnamed_addr constant [76 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::FunctionOpInterface]\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"transform.consumed\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"transform.readonly\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform22createInferEffectsPassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #13, !noalias !63 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !noalias !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !11, !noalias !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false), !noalias !63
  store ptr %i.f, ptr %i.e, align 16, !tbaa !13, !noalias !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.g, align 4, !tbaa !14, !noalias !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.i, ptr %i.h, align 16, !tbaa !13, !noalias !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.j, align 4, !tbaa !14, !noalias !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, i8 0, i64 64, i1 false), !noalias !63
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_116InferEffectsPassE, i64 16), ptr %i.a, align 16, !tbaa !16, !noalias !63
  store ptr %i.a, ptr %0, align 8, !tbaa !19, !alias.scope !62
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #14
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !72   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #15
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #15
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #15
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #14
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !22, !range !23, !noundef !24
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !22
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !23
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.ao) #15
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_116InferEffectsPassD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.1, i64 16 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.2, i64 23 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir9transform4impl20InferEffectsPassBaseIN12_GLOBAL__N_116InferEffectsPassEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.3, i64 40 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_116InferEffectsPass14runOnOperationEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon, align 1                ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.d = ptrtoint ptr %1 to i64
  %i.e = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr nonnull @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_116InferEffectsPass14runOnOperationEvEUlS4_E_EES2_lS4_, i64 %i.d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i1 = load i64, ptr %i.a, align 8
  %i.g = or i64 %.0.copyload.i.i.i.i1, 4
  store i64 %i.g, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}
end_hunk_0
begin_hunk_1_@_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_116InferEffectsPass14runOnOperationEvEUlS4_E_EES2_lS4_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %.pn.i.i.i.i, 1
  store ptr %i.g, ptr %i.f, align 8
  %.not14.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i, label %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread2.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = and i32 %i.i, 8388607
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.m = lshr i32 %i.i, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.m, 1
  %i.n = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.n
  %i.p = lshr i32 %i.i, 21
  %i.q = and i32 %i.p, 2040
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !101
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread2.i, label %_ZN4mlir6Region11hasOneBlockEv.exit.i.i

_ZN4mlir6Region11hasOneBlockEv.exit.i.i:          ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.ad = icmp eq ptr %i.ac, %i.w
  br i1 %i.ad, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.ae, align 8, !tbaa !105
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !106
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %6) #15
  %i.ag = load ptr, ptr %5, align 8, !tbaa !114
  %.not.i.i5.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i5.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i32 3, ptr %3, align 8, !tbaa !116
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.4, ptr %i.ai, align 8, !tbaa !37
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 52, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h, !prof !118

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4mlir10Diagnostic6appendIRA53_KcEERS0_OT_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = zext i32 %i.ak to i64
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.aj, align 8, !tbaa !29
  br label %_ZN4mlir10Diagnostic6appendIRA53_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA53_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i.i: ; preds = %_ZN4mlir10Diagnostic6appendIRA53_KcEERS0_OT_.exit.i.i.i.i, %bb.f
  %i.as = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #15
  %i.at = load ptr, ptr %5, align 8, !tbaa !114
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !119, !range !23, !noundef !24
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.au, align 8, !tbaa !119
  br i1 %i.aw, label %bb.l, label %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ax) #15
  br label %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.i

bb.m:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store i32 1, ptr %7, align 8
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds i8, ptr %i.aa, i64 -8
  call void @_ZN4mlir9transform25getConsumedBlockArgumentsERNS_5BlockERN4llvm13SmallDenseSetIjLj4ENS3_12DenseMapInfoIjvEEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  %i.ba = call { ptr, i64 } @_ZN4mlir19FunctionOpInterface16getArgumentTypesEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  %i.bb = extractvalue { ptr, i64 } %i.ba, 1
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %.not17.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not17.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i, %bb.m
  %i.bj = load i32, ptr %7, align 8
  %i.bk = and i32 %i.bj, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i.i

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bl = load i32, ptr %i.ay, align 8, !tbaa !39 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bp = zext i32 %i.bl to i64                   ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 31
  %i.br = lshr i64 %i.bq, 5
  %i.bs = add nuw nsw i64 %i.br, %i.bp
  %i.bt = shl nuw nsw i64 %i.bs, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bt, i64 noundef 4) #15
  br label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i.i

_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread2.i

bb.p:                                             ; preds = %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i, %.lr.ph.i.i
  %.015.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dc, %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i ] ; 4 uses
  %i.bu = load i32, ptr %7, align 8, !noalias !120
  %i.bv = and i32 %i.bu, 1
  %.not.i.i.i.i.i7.i.i = icmp eq i32 %i.bv, 0     ; 3 uses
  %i.bw = load ptr, ptr %i.bd, align 8, !noalias !120
  %i.bx = load ptr, ptr %i.be, align 8, !noalias !120
  %i.by = load i32, ptr %i.ay, align 8, !noalias !120
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i, ptr %i.bw, ptr %i.bd
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i, ptr %i.bx, ptr %i.ay ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i, i32 %i.by, i32 4 ; 2 uses
  %i.bz = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = add i32 %.sink.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.cb = mul i32 %.015.i.i, 37
  %.019.i.i.i.i.i = and i32 %i.ca, %i.cb          ; 3 uses
  %i.cc = zext i32 %.019.i.i.i.i.i to i64         ; 2 uses
  %i.cd = lshr i64 %i.cc, 5
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !121
  %i.cg = and i32 %.019.i.i.i.i.i, 31
  %i.ch = lshr i32 %i.cf, %i.cg
  %i.ci = trunc i32 %i.ch to i1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i, !prof !122

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = add nuw i32 %.020.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.cj, %i.ca            ; 3 uses
  %i.ck = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.cl = lshr i64 %i.ck, 5
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !121
  %i.co = and i32 %.0.i.i.i.i.i, 31
  %i.cp = lshr i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i1
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i, !prof !123

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %bb.r
  %i.cr = phi i64 [ %i.ck, %bb.r ], [ %i.cc, %bb.q ]
  %.020.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.r ], [ %.019.i.i.i.i.i, %bb.q ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !121
  %i.cu = icmp eq i32 %.015.i.i, %i.ct
  br i1 %i.cu, label %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i, label %bb.r, !prof !118

_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE8containsERKj.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.r, %bb.q, %bb.p
  %i.cv = phi ptr [ @.str.12, %bb.q ], [ @.str.12, %bb.p ], [ @.str.12, %bb.r ], [ @.str.10, %.lr.ph.i.i.i.i.i ]
  %i.cw = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #15
  %i.cx = call ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef %i.cw) #15
  %i.cy = load ptr, ptr %4, align 8, !tbaa !126
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i8 5, ptr %i.bg, align 8, !tbaa !105
  store i8 1, ptr %i.bh, align 1, !tbaa !106
  store ptr %i.cv, ptr %2, align 8, !tbaa !39
  store i64 18, ptr %i.bi, align 8, !tbaa !39
  %i.db = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.da, ptr noundef nonnull align 8 dereferenceable(34) %2) #15
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8
  call void @_ZN4mlir23function_interface_impl10setArgAttrINS_19FunctionOpInterfaceEEEvT_jNS_10StringAttrENS_9AttributeE(ptr %.sroa.02.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i32 noundef %.015.i.i, ptr %i.db, ptr %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.dc = add nuw i32 %.015.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dc, %i.bc
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.p, !llvm.loop !89

_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread2.i: ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i.i, %bb.e, %_ZN4llvm8dyn_castIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread.i

_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.dd = trunc nuw i8 %i.as to i1
  br i1 %i.dd, label %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread.i, label %_ZZN12_GLOBAL__N_116InferEffectsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread.i: ; preds = %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.i, %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread2.i, %bb.a
  br label %_ZZN12_GLOBAL__N_116InferEffectsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

_ZZN12_GLOBAL__N_116InferEffectsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit: ; preds = %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.i, %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread.i
  %.sroa.01.0.i = phi i32 [ 1, %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.thread.i ], [ 0, %_ZL26inferSideEffectAnnotationsPN4mlir9OperationE.exit.i ]
  ret i32 %.sroa.01.0.i
}

declare void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #6

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

declare void @_ZN4mlir9transform25getConsumedBlockArgumentsERNS_5BlockERN4llvm13SmallDenseSetIjLj4ENS3_12DenseMapInfoIjvEEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_9transform20TransformOpInterfaceENS1_6detail35TransformOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 37) #15
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !11 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !28
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !41

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 37) #15
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !11
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #15, !inline_history !127
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !41

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 37) #15
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !11
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #15, !inline_history !127
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_9transform20TransformOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #9

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
end_hunk_1
