Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopCoalescing?download=true
inline.NumInlined: 517
inline.NumDeleted: 420
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
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon.107 = type { i8 }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.200" }
%"class.mlir::detail::StorageUserBase.200" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.std::unique_ptr.26" = type { %"struct.std::__uniq_ptr_data.27" }
%"struct.std::__uniq_ptr_data.27" = type { %"class.std::__uniq_ptr_impl.28" }
%"class.std::__uniq_ptr_impl.28" = type { %"class.std::tuple.29" }
%"class.std::tuple.29" = type { %"struct.std::_Tuple_impl.30" }
%"struct.std::_Tuple_impl.30" = type { %"struct.std::_Head_base.33" }
%"struct.std::_Head_base.33" = type { ptr }
%class.anon.62 = type { ptr }
%"class.std::unique_ptr.63" = type { %"struct.std::__uniq_ptr_data.64" }
%"struct.std::__uniq_ptr_data.64" = type { %"class.std::__uniq_ptr_impl.65" }
%"class.std::__uniq_ptr_impl.65" = type { %"class.std::tuple.66" }
%"class.std::tuple.66" = type { %"struct.std::_Tuple_impl.67" }
%"struct.std::_Tuple_impl.67" = type { %"struct.std::_Head_base.70" }
%"struct.std::_Head_base.70" = type { ptr }
%class.anon.83 = type { ptr }

$_ZN4mlir4PassD2Ev = comdat any

$_ZN4mlir4Pass10initializeEPNS_11MLIRContextE = comdat any

$_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE = comdat any

$_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6affine13AffineDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6affine13AffineDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_6affine13AffineDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_ = comdat any

$_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5arith12ArithDialectEEEPT_vEUlvE_EES6_l = comdat any

$_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_118LoopCoalescingPassE = internal unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr @_ZN4mlir4PassD2Ev, ptr @_ZN12_GLOBAL__N_118LoopCoalescingPassD0Ev, ptr @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE7getNameEv, ptr @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE20getDependentDialectsERNS_15DialectRegistryE, ptr @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE11getArgumentEv, ptr @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE14getDescriptionEv, ptr @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE, ptr @_ZN12_GLOBAL__N_118LoopCoalescingPass14runOnOperationEv, ptr @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE, ptr @_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE, ptr @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE, ptr @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE9clonePassEv, ptr @_ZN4mlir4Pass6anchorEv] }, align 8
@_ZZN4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE13resolveTypeIDEvE2id = internal global %"class.mlir::SelfOwningTypeID" zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"func.func\00", align 1
@_ZTVN4mlir4PassE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"LoopCoalescing\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6affine13AffineDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"affine\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5arith12ArithDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"arith\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"affine-loop-coalescing\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"Coalesce nested loops with independent bounds into a single loop\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6affine24createLoopCoalescingPassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN12_GLOBAL__N_118LoopCoalescingPassESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #10, !noalias !8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.b, i8 0, i64 240, i1 false), !noalias !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !11, !noalias !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.5, ptr %i.d, align 16, !noalias !8
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 9, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !8
  store i8 1, ptr %i.b, align 16, !noalias !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false), !noalias !8
  store ptr %i.g, ptr %i.f, align 16, !tbaa !14, !noalias !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.h, align 4, !tbaa !16, !noalias !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.j, ptr %i.i, align 16, !tbaa !14, !noalias !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.k, align 4, !tbaa !16, !noalias !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !noalias !8
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_118LoopCoalescingPassE, i64 16), ptr %i.a, align 16, !tbaa !17, !noalias !8
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #12
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #12
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #12
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #11
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !36, !range !39, !noundef !40
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !36
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !39
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.ao) #12
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118LoopCoalescingPassD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.7, i64 14 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6affine13AffineDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !43
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6affine13AffineDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !46
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_6affine13AffineDialectEvE2idE, ptr nonnull @.str.8, i64 6, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_6affine13AffineDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #12, !inline_history !47 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_6affine13AffineDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_6affine13AffineDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.f, align 8, !tbaa !43
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.e, align 8, !tbaa !46
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_5arith12ArithDialectEvE2idE, ptr nonnull @.str.9, i64 5, ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i2, label %_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir15DialectRegistry6insertINS_6affine13AffineDialectEEEvv.exit
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #12, !inline_history !48 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit: ; preds = %_ZN4mlir15DialectRegistry6insertINS_6affine13AffineDialectEEEvv.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.10, i64 22 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir6affine4impl18LoopCoalescingBaseIN12_GLOBAL__N_118LoopCoalescingPassEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.11, i64 64 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118LoopCoalescingPass14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.107, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.d = ptrtoint ptr %1 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr nonnull @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_118LoopCoalescingPass14runOnOperationEvEUlS3_E_EEvlS3_, i64 %i.d, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
end_hunk_0
