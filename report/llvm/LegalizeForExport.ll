Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeForExport?download=true
inline.NumInlined: 743
inline.NumDeleted: 543
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
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon.62 = type { ptr }
%"class.std::unique_ptr.63" = type { %"struct.std::__uniq_ptr_data.64" }
%"struct.std::__uniq_ptr_data.64" = type { %"class.std::__uniq_ptr_impl.65" }
%"class.std::__uniq_ptr_impl.65" = type { %"class.std::tuple.66" }
%"class.std::tuple.66" = type { %"struct.std::_Tuple_impl.67" }
%"struct.std::_Tuple_impl.67" = type { %"struct.std::_Head_base.70" }
%"struct.std::_Head_base.70" = type { ptr }
%"class.llvm::SmallDenseMap" = type { i32, %union.anon }
%union.anon = type { %"struct.llvm::SmallDenseMap<mlir::Block *, llvm::SmallVector<int, 4>>::LargeRep", [144 x i8] }
%"struct.llvm::SmallDenseMap<mlir::Block *, llvm::SmallVector<int, 4>>::LargeRep" = type { ptr, ptr, i32 }
%"class.mlir::OpBuilder" = type { %"class.mlir::Builder", ptr, ptr, %"class.llvm::ilist_iterator.117" }
%"class.mlir::Builder" = type { ptr }
%"class.llvm::ilist_iterator.117" = type { ptr }
%"class.mlir::TypeRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.138" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.138" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.139" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.139" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.140" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.140" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.141" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.141" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.142" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.142" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.143" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.143" = type { %"struct.llvm::detail::PunnedPointer.144" }
%"struct.llvm::detail::PunnedPointer.144" = type { [8 x i8] }
%"class.llvm::ArrayRef.145" = type { ptr, i64 }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base.159" }
%"class.llvm::detail::indexed_accessor_range_base.159" = type { %"class.llvm::PointerUnion.160", i64 }
%"class.llvm::PointerUnion.160" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.161" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.161" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.162" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.162" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.163" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.163" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.164" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.164" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.165" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.165" = type { %"struct.llvm::detail::PunnedPointer.144" }

$_ZN4mlir4PassD2Ev = comdat any

$_ZN4mlir4Pass10initializeEPNS_11MLIRContextE = comdat any

$_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE = comdat any

$_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4LLVM11LLVMDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4LLVM11LLVMDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_4LLVM11LLVMDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE = comdat any

$_ZN4llvm13SmallDenseMapIPN4mlir5BlockENS_11SmallVectorIiLj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir5BlockENS_11SmallVectorIiLj4EEELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir5BlockENS_11SmallVectorIiLj4EEELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_121LegalizeForExportPassE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN4mlir4PassD2Ev, ptr @_ZN12_GLOBAL__N_121LegalizeForExportPassD0Ev, ptr @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE7getNameEv, ptr @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE20getDependentDialectsERNS_15DialectRegistryE, ptr @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE11getArgumentEv, ptr @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE14getDescriptionEv, ptr @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE, ptr @_ZN12_GLOBAL__N_121LegalizeForExportPass14runOnOperationEv, ptr @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE, ptr @_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE, ptr @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE, ptr @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE9clonePassEv, ptr @_ZN4mlir4Pass6anchorEv] }, align 8
@_ZZN4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE13resolveTypeIDEvE2id = internal global %"class.mlir::SelfOwningTypeID" zeroinitializer, align 8
@_ZTVN4mlir4PassE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"LLVMLegalizeForExportPass\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM11LLVMDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"llvm\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"llvm-legalize-for-export\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Legalize LLVM dialect to be convertible to LLVM IR\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.10 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM31createLLVMLegalizeForExportPassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #15, !noalias !11 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !noalias !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !14, !noalias !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false), !noalias !11
  store ptr %i.f, ptr %i.e, align 16, !tbaa !17, !noalias !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.g, align 4, !tbaa !19, !noalias !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.i, ptr %i.h, align 16, !tbaa !17, !noalias !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.j, align 4, !tbaa !19, !noalias !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, i8 0, i64 64, i1 false), !noalias !11
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_121LegalizeForExportPassE, i64 16), ptr %i.a, align 16, !tbaa !20, !noalias !11
  store ptr %i.a, ptr %0, align 8, !tbaa !22, !alias.scope !8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM24ensureDistinctSuccessorsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon, align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = ptrtoint ptr %1 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_4LLVM24ensureDistinctSuccessorsES3_E3$_0EEvlS3_", i64 %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
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
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #17
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #16
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #16
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #17
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !39, !range !42, !noundef !43
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !39
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !42
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.ao) #16
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121LegalizeForExportPassD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.1, i64 25 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4LLVM11LLVMDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !46
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4LLVM11LLVMDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !49
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4LLVM11LLVMDialectEvE2idE, ptr nonnull @.str.2, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_4LLVM11LLVMDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #16, !inline_history !50 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_4LLVM11LLVMDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_4LLVM11LLVMDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.3, i64 24 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir4LLVM4impl29LLVMLegalizeForExportPassBaseIN12_GLOBAL__N_121LegalizeForExportPassEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.4, i64 50 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121LegalizeForExportPass14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon, align 1                ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.d = ptrtoint ptr %1 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_4LLVM24ensureDistinctSuccessorsES3_E3$_0EEvlS3_", i64 %i.d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.0.copyload.i.i.i.i1 = load i64, ptr %i.a, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i1, -8
  %i.f = inttoptr i64 %i.e to ptr
  call void @_ZN4mlir4LLVM32legalizeDIExpressionsRecursivelyEPNS_9OperationE(ptr noundef %i.f) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
