inline.NumInlined: 1041
inline.NumDeleted: 583
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.facebook::hermes::sampling_profiler::Profile" = type { %"class.std::vector", %"class.std::unique_ptr" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<facebook::hermes::sampling_profiler::ProfileSample, std::allocator<facebook::hermes::sampling_profiler::ProfileSample>>::_Vector_impl" }
%"struct.std::_Vector_base<facebook::hermes::sampling_profiler::ProfileSample, std::allocator<facebook::hermes::sampling_profiler::ProfileSample>>::_Vector_impl" = type { %"struct.std::_Vector_base<facebook::hermes::sampling_profiler::ProfileSample, std::allocator<facebook::hermes::sampling_profiler::ProfileSample>>::_Vector_impl_data" }
%"struct.std::_Vector_base<facebook::hermes::sampling_profiler::ProfileSample, std::allocator<facebook::hermes::sampling_profiler::ProfileSample>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.std::pair.339" = type { %"class.llvh::ArrayRef.341", ptr }
%"class.llvh::ArrayRef.341" = type { ptr, i64 }
%"struct.std::pair.36" = type <{ ptr, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.81 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.81 = type { i64, [8 x i8] }
%"class.hermes::OptValue" = type <{ %"struct.hermes::hbc::DebugSourceLocation", i8, [3 x i8] }>
%"struct.hermes::hbc::DebugSourceLocation" = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.std::optional.278" = type { %"struct.std::_Optional_base.279" }
%"struct.std::_Optional_base.279" = type { %"struct.std::_Optional_payload.281" }
%"struct.std::_Optional_payload.281" = type { %"struct.std::_Optional_payload.base.285", [7 x i8] }
%"struct.std::_Optional_payload.base.285" = type { %"struct.std::_Optional_payload_base.base.284" }
%"struct.std::_Optional_payload_base.base.284" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.llvh::StringRef" = type { ptr, i64 }
%"class.std::vector.51" = type { %"struct.std::_Vector_base.52" }
%"struct.std::_Vector_base.52" = type { %"struct.std::_Vector_base<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>, std::allocator<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>, std::allocator<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>, std::allocator<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>, std::allocator<std::variant<facebook::hermes::sampling_profiler::ProfileSampleCallStackSuspendFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackNativeFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackHostFunctionFrame, facebook::hermes::sampling_profiler::ProfileSampleCallStackJSFunctionFrame>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::vm::(anonymous namespace)::ProfileGenerator" = type { ptr, ptr, %"class.llvh::DenseMap", %"class.llvh::DenseMap.2", %"class.llvh::DenseMap.5", %"class.std::unique_ptr" }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.2" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.5" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.std::pair.103" = type <{ %"class.llvh::DenseMapIterator", i8, [7 x i8] }>
%"class.llvh::DenseMapIterator" = type { ptr, ptr }

$_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E11try_emplaceIJRS5_EEESt4pairINS_16DenseMapIteratorImS5_S7_SA_Lb0EEEbERKmDpOT_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZN4llvh8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS4_EEE4growEj = comdat any

$_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej = comdat any

$_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_ = comdat any

$_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPKSB_ = comdat any

$_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E20InsertIntoBucketImplIS2_EEPSB_RKS2_RKT_SF_ = comdat any

$_ZN4llvh8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S5_EEE4growEj = comdat any

$_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE4growEj = comdat any

$_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE17_M_realloc_insertIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::hermes::sampling_profiler::Profile") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 {
_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.339", align 8    ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::pair.36", align 8     ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.hermes::OptValue", align 16 ; 12 uses
  %7 = alloca %"class.std::optional.278", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %10 = alloca %"class.llvh::StringRef", align 8  ; 8 uses
  %.sroa.855.i.i = alloca [7 x i8], align 1       ; 4 uses
  %.sroa.12.i.i = alloca [7 x i8], align 1        ; 7 uses
  %.sroa.6.sroa.6.i.i = alloca [7 x i8], align 1  ; 8 uses
  %11 = alloca %"class.std::vector", align 16     ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::vector.51", align 8   ; 11 uses
  %.sroa.15.i = alloca [7 x i8], align 1          ; 5 uses
  %13 = alloca %"class.hermes::vm::(anonymous namespace)::ProfileGenerator", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  store ptr %1, ptr %13, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.n = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #13, !noalias !15 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 8, ptr %i.o, align 8, !tbaa !18, !noalias !15
  %i.p = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13, !noalias !15 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !25, !noalias !15
  %.06.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.q = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #13, !noalias !15 ; 6 uses
  store ptr %i.q, ptr %.06.i.i.ptr.i.i.i.i, align 8, !tbaa !26, !noalias !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.s, align 8, !tbaa !27, !noalias !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.q, ptr %i.t, align 8, !tbaa !28, !noalias !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 512 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !29, !noalias !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.x, align 8, !tbaa !27, !noalias !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.q, ptr %i.y, align 8, !tbaa !28, !noalias !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.u, ptr %i.z, align 8, !tbaa !29, !noalias !15
  store ptr %i.q, ptr %i.r, align 8, !tbaa !30, !noalias !15
  store ptr %i.q, ptr %i.w, align 8, !tbaa !31, !noalias !15
  store ptr %i.n, ptr %i.m, align 8, !tbaa !32, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12, !noalias !12
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34, !noalias !12 ; 3 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !37, !noalias !12 ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = sdiv exact i64 %i.af, 40
  %i.ah = icmp ugt i64 %i.ag, 230584300921369395
  br i1 %i.ah, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14, !noalias !12
  unreachable

bb.b:                                             ; preds = %_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  %i.ai = ptrtoint ptr %i.n to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.not224.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not224.i, label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit, label %.lr.ph154.i

.lr.ph154.i:                                      ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #13, !noalias !12 ; 3 uses
  store ptr %i.al, ptr %11, align 16, !tbaa !38, !noalias !12
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !41, !noalias !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  store ptr %i.am, ptr %i.aj, align 16, !tbaa !42, !noalias !12
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %.phi.trans.insert69.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.sroa.537.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.642.0..sroa_idx45.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.747.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.855.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 52 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.c

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i: ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i
  %i.bg = load <2 x ptr>, ptr %11, align 16, !tbaa !43, !noalias !12
  %.pre173.i = load ptr, ptr %i.aj, align 16, !tbaa !42, !noalias !12
  %.pre = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !12
  %.pre29 = load ptr, ptr %i.l, align 8, !tbaa !44
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit

bb.c:                                             ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i, %.lr.ph154.i
  %.sroa.13.0149.i = phi ptr [ %i.ac, %.lr.ph154.i ], [ %i.ck, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12, !noalias !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.13.0149.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bh, align 8, !tbaa !47, !noalias !12
  %i.bi = sdiv i64 %.sroa.0.0.copyload.i, 1000
  store i64 %i.bi, ptr %i.h, align 8, !tbaa !47, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12, !noalias !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.13.0149.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.13.0149.i, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48, !noalias !12 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !51, !noalias !12 ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 24                ; 3 uses
  %i.br = icmp ugt i64 %i.bq, 128102389400760775
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14, !noalias !12
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not225.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not225.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.bs = mul nuw nsw i64 %i.bq, 72
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #13, !noalias !12 ; 3 uses
  store ptr %i.bt, ptr %12, align 8, !tbaa !52, !noalias !12
  store ptr %i.bt, ptr %i.ao, align 8, !tbaa !55, !noalias !12
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.bt, i64 %i.bq
  store ptr %i.bu, ptr %i.an, align 8, !tbaa !56, !noalias !12
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i, %bb.e
  %.sroa.855.1.lcssa.i = phi ptr [ null, %bb.e ], [ %i.qu, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !41, !noalias !12 ; 8 uses
  %i.bw = load ptr, ptr %i.aj, align 16, !tbaa !42, !noalias !12
  %.not.i30.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i30.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i: ; preds = %._crit_edge.i
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !47, !noalias !12
  %i.by = load i64, ptr %.sroa.13.0149.i, align 8, !tbaa !47, !noalias !12
  %i.bz = load ptr, ptr %12, align 8, !tbaa !52, !noalias !12
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !56, !noalias !12
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !57, !noalias !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.by, ptr %i.cb, align 8, !tbaa !62, !noalias !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !52, !noalias !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %.sroa.855.1.lcssa.i, ptr %i.cd, align 8, !tbaa !55, !noalias !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.ca, ptr %i.ce, align 8, !tbaa !56, !noalias !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr %i.cf, ptr %i.bf, align 8, !tbaa !41, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i: ; preds = %._crit_edge.i
  call void @_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE17_M_realloc_insertIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.13.0149.i, ptr noundef nonnull align 8 dereferenceable(24) %12), !noalias !12
  %.pre170.i = load ptr, ptr %12, align 8, !tbaa !52, !noalias !12 ; 3 uses
  %.not.i.i.i32.i = icmp eq ptr %.pre170.i, null
  br i1 %.not.i.i.i32.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !56, !noalias !12
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %.pre170.i to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.pre170.i, i64 noundef %i.cj) #15, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12, !noalias !12
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.13.0149.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ck, %i.ab
  br i1 %.not.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i, label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i
  %.sroa.091.0128.i = phi ptr [ %i.qv, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %i.bm, %.lr.ph.i.preheader ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.091.0128.i, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !63, !noalias !66
  switch i32 %i.cm, label %bb.bk [
    i32 3, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 0, label %bb.j
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %i.cn = load i32, ptr %.sroa.091.0128.i, align 8, !tbaa !69, !noalias !66
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.co = call fastcc { i64, ptr } @_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator21getNativeFunctionNameERKNS0_16SamplingProfiler10StackFrameE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.091.0128.i), !noalias !66 ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.co, 1
  %.sroa.053.sroa.0.0.extract.trunc78.i = trunc i64 %i.cp to i32
  %.sroa.053.sroa.8.0.extract.shift84.i = lshr i64 %i.cp, 32
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.cr = call fastcc { i64, ptr } @_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator21getNativeFunctionNameERKNS0_16SamplingProfiler10StackFrameE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.091.0128.i), !noalias !66 ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1
  %.sroa.053.sroa.0.0.extract.trunc77.i = trunc i64 %i.cs to i32
  %.sroa.053.sroa.8.0.extract.shift82.i = lshr i64 %i.cs, 32
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.cu = load ptr, ptr %.sroa.091.0128.i, align 8, !tbaa !69, !noalias !66 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.855.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12, !noalias !70
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.091.0128.i, i64 8 ; 3 uses
  store ptr %i.cu, ptr %4, align 8, !tbaa !73, !noalias !70
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !3, !noalias !70 ; 4 uses
  store i32 %i.cw, ptr %i.ap, align 8, !tbaa !76, !noalias !70
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !77, !noalias !70 ; 3 uses
  %i.cy = load i32, ptr %i.aq, align 8, !tbaa !80, !noalias !70 ; 3 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = lshr i32 %i.db, 4
  %i.dd = lshr i32 %i.db, 9
  %i.de = xor i32 %i.dc, %i.dd
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 32
  %i.dh = mul i32 %i.cw, 37
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = shl nuw i64 %i.di, 32
  %i.dk = xor i64 %i.dj, -1
  %i.dl = or disjoint i64 %i.dg, %i.di
  %i.dm = add i64 %i.dl, %i.dk                    ; 2 uses
  %i.dn = lshr i64 %i.dm, 22
  %i.do = xor i64 %i.dn, %i.dm                    ; 2 uses
  %i.dp = shl i64 %i.do, 13
  %i.dq = xor i64 %i.dp, -1
  %i.dr = add i64 %i.do, %i.dq                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 8
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = mul i64 %i.dt, 9                        ; 2 uses
  %i.dv = lshr i64 %i.du, 15
  %i.dw = xor i64 %i.dv, %i.du                    ; 2 uses
  %i.dx = shl i64 %i.dw, 27
  %i.dy = xor i64 %i.dx, -1
  %i.dz = add i64 %i.dw, %i.dy                    ; 2 uses
  %i.ea = lshr i64 %i.dz, 31
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add i32 %i.cy, -1                       ; 2 uses
  %i.ee = and i32 %i.ed, %i.ec                    ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [96 x i8], ptr %i.cx, i64 %i.ef ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !73, !noalias !70 ; 2 uses
  %i.ei = icmp eq ptr %i.cu, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !noalias !70 ; 2 uses
  %i.el = icmp eq i32 %i.cw, %i.ek
  %i.em = select i1 %i.ei, i1 %i.el, i1 false
  br i1 %i.em, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i, label %.lr.ph.i39.i, !prof !81

.lr.ph.i39.i:                                     ; preds = %bb.k, %bb.l
  %i.en = phi i32 [ %i.fa, %bb.l ], [ %i.ek, %bb.k ]
  %i.eo = phi ptr [ %i.ex, %bb.l ], [ %i.eh, %bb.k ]
  %.02952.i40.i = phi i32 [ %i.es, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %.03151.i41.i = phi i32 [ %i.eu, %bb.l ], [ %i.ee, %bb.k ]
  %i.ep = icmp eq ptr %i.eo, inttoptr (i64 -8 to ptr)
  %i.eq = icmp eq i32 %i.en, -1
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %i.er, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i, label %bb.l, !prof !82

bb.l:                                             ; preds = %.lr.ph.i39.i
  %i.es = add i32 %.02952.i40.i, 1
  %i.et = add i32 %.03151.i41.i, %.02952.i40.i
  %i.eu = and i32 %i.et, %i.ed                    ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [96 x i8], ptr %i.cx, i64 %i.ev ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !73, !noalias !70 ; 2 uses
  %i.ey = icmp eq ptr %i.cu, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !noalias !70 ; 2 uses
  %i.fb = icmp eq i32 %i.cw, %i.fa
  %i.fc = select i1 %i.ey, i1 %i.fb, i1 false
  br i1 %i.fc, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i, label %.lr.ph.i39.i, !prof !83, !llvm.loop !84

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i: ; preds = %bb.l, %bb.k
  %.sink.i45.i = phi ptr [ %i.eg, %bb.k ], [ %i.ew, %bb.l ] ; 10 uses
  %i.fd = zext i32 %i.cy to i64
  %i.fe = getelementptr inbounds nuw [96 x i8], ptr %i.cx, i64 %i.fd
  %.not66.i.i.not.i = icmp eq ptr %.sink.i45.i, %i.fe
  br i1 %.not66.i.i.not.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i
  %.sroa.537.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 28
  %.sroa.537.0.copyload39.i.i = load i32, ptr %.sroa.537.0..sroa_idx38.i.i, align 4, !noalias !66
  %.sroa.642.0..sroa_idx43.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 32
  %.sroa.642.0.copyload44.i.i = load i32, ptr %.sroa.642.0..sroa_idx43.i.i, align 8, !noalias !66
  %.sroa.750.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 48
  %.sroa.750.0.copyload52.i.i = load i8, ptr %.sroa.750.0..sroa_idx51.i.i, align 8, !noalias !66
  %.sroa.858.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 56
  %.sroa.858.0.copyload60.i.i = load i64, ptr %.sroa.858.0..sroa_idx59.i.i, align 8, !noalias !66
  %.sroa.10.0..sroa_idx61.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 64
  %.sroa.10.0.copyload62.i.i = load ptr, ptr %.sroa.10.0..sroa_idx61.i.i, align 8, !noalias !66
  %.sroa.11.0..sroa_idx63.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 72
  %.sroa.11.0.copyload64.i.i = load i8, ptr %.sroa.11.0..sroa_idx63.i.i, align 8, !noalias !66
  %.sroa.12.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx65.i.i, i64 7, i1 false), !noalias !66
  %.sroa.1266.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 80
  %.sroa.1266.0.copyload68.i.i = load i64, ptr %.sroa.1266.0..sroa_idx67.i.i, align 8, !noalias !66
  %.sroa.14.0..sroa_idx69.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 88
  %.sroa.14.0.copyload70.i.i = load ptr, ptr %.sroa.14.0..sroa_idx69.i.i, align 8, !noalias !66
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i: ; preds = %.lr.ph.i39.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i, %bb.j
  %i.ff = load ptr, ptr %.sroa.091.0128.i, align 8, !tbaa !86, !noalias !70
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 80
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !88, !noalias !70 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12, !noalias !70
  %i.fi = load i32, ptr %i.cv, align 8, !tbaa !93, !noalias !70
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 296
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !97, !noalias !140
  %i.fl = zext i32 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fl ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 15
  %i.fo = load i8, ptr %i.fn, align 1, !noalias !140
  %i.fp = and i8 %i.fo, 32
  %.not.i.i.i.i33.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i33.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i, label %bb.n, !prof !82

bb.n:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 288
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !141, !noalias !140
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.ft = load i32, ptr %i.fs, align 1, !noalias !140
  %i.fu = shl i32 %i.ft, 16
  %i.fv = load i64, ptr %i.fm, align 1, !noalias !140
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = and i32 %i.fw, 33554431
  %i.fy = or i32 %i.fx, %i.fu
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i: ; preds = %bb.n, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.gb, %bb.n ], [ %i.fm, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i ] ; 3 uses
  %i.gc = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  %i.gd = trunc i64 %i.gc to i1
  br i1 %i.gd, label %bb.o, label %bb.p, !prof !142

bb.o:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 11
  %i.gf = load i32, ptr %i.ge, align 1, !tbaa !143, !noalias !140
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i

bb.p:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i
  %i.gg = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 1, !noalias !140
  %i.gh = lshr i64 %i.gg, 47
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i

_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.gf, %bb.o ], [ %i.gi, %bb.p ]
  %i.gj = load ptr, ptr %i.fh, align 8, !tbaa !145, !noalias !140
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !140
  %i.gm = call i64 %i.gl(ptr noundef nonnull align 8 dereferenceable(280) %i.fh, i32 noundef %.0.i.i.i.i.i) #12, !noalias !140, !inline_history !147 ; 2 uses
  %.sroa.42.0.extract.shift.i.i.i.i.i = lshr i64 %i.gm, 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.gn, align 8, !tbaa !148, !noalias !140 ; 2 uses
  %i.go = and i64 %i.gm, 4294967295
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.go ; 2 uses
  %i.gq = and i64 %.sroa.42.0.extract.shift.i.i.i.i.i, 2147483647 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %.not.i2.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, null
  store ptr %i.ar, ptr %5, align 8, !tbaa !152, !alias.scope !153, !noalias !70
  br i1 %.not.i2.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i
  store i64 0, ptr %i.as, align 8, !tbaa !154, !alias.scope !153, !noalias !70
  store i8 0, ptr %i.ar, align 8, !tbaa !69, !alias.scope !153, !noalias !70
  br label %_ZN6hermes2vm12_GLOBAL__N_117getJSFunctionNameB5cxx11EPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i

bb.r:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12, !noalias !155
  store i64 %i.gq, ptr %i.g, align 8, !tbaa !47, !noalias !155
  %i.gr = icmp samesign ugt i64 %i.gq, 15
  br i1 %i.gr, label %bb.s, label %._crit_edge.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.gs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #12, !noalias !70 ; 2 uses
  store ptr %i.gs, ptr %5, align 8, !tbaa !156, !alias.scope !153, !noalias !70
  %i.gt = load i64, ptr %i.g, align 8, !tbaa !47, !noalias !155
  store i64 %i.gt, ptr %i.ar, align 8, !tbaa !69, !alias.scope !153, !noalias !70
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.s, %bb.r
  %i.gu = phi ptr [ %i.gs, %bb.s ], [ %i.ar, %bb.r ] ; 2 uses
  switch i64 %i.gq, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i.i
  ]
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  %i.jk = load <2 x i64>, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !69, !noalias !70
  store <2 x i64> %i.jk, ptr %i.ay, align 8, !tbaa !69, !noalias !70
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.jl = load i64, ptr %i.aw, align 8, !tbaa !69, !noalias !70
  store ptr %i.jc, ptr %7, align 8, !tbaa !156, !noalias !70
  %i.jm = load <2 x i64>, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !69, !noalias !70
  store <2 x i64> %i.jm, ptr %i.ay, align 8, !tbaa !69, !noalias !70
  %.not.i.i19.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i19.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i
  store ptr %i.ja, ptr %8, align 8, !tbaa !156, !noalias !70
  store i64 %i.jl, ptr %i.ax, align 8, !tbaa !69, !noalias !70
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i, %.thread.i.i.i.i.i
  store ptr %i.ax, ptr %8, align 8, !tbaa !156, !noalias !70
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i

bb.am:                                            ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i.i.i
  store ptr %i.aw, ptr %7, align 8, !tbaa !152, !noalias !70
  %i.jn = load ptr, ptr %8, align 8, !tbaa !156, !noalias !70 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.ax
  br i1 %i.jo, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.jp = load i64, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !154, !noalias !70 ; 3 uses
  %i.jq = icmp ult i64 %i.jp, 16
  call void @llvm.assume(i1 %i.jq)
  %i.jr = add nuw nsw i64 %i.jp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.jr, i1 false), !noalias !70
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am
  store ptr %i.jn, ptr %7, align 8, !tbaa !156, !noalias !70
  %i.js = load i64, ptr %i.ax, align 8, !tbaa !69, !noalias !70
  store i64 %i.js, ptr %i.aw, align 8, !tbaa !69, !noalias !70
  %.pre70.i.i.i = load i64, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !154, !noalias !70
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.an
  %i.jt = phi i64 [ %.pre70.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.jp, %bb.an ]
  store i64 %i.jt, ptr %i.ay, align 8, !tbaa !154, !noalias !70
  store i8 1, ptr %i.au, align 8, !tbaa !179, !noalias !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i: ; preds = %bb.al, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i
  %i.ju = phi ptr [ %i.ja, %bb.ak ], [ %i.ax, %bb.al ], [ %.pre.i.i20.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i ]
  store i64 0, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !154, !noalias !70
  store i8 0, ptr %i.ju, align 1, !tbaa !69, !noalias !70
  %.pre71.i.i.i = load ptr, ptr %8, align 8, !tbaa !156, !noalias !70 ; 2 uses
  %i.jv = icmp eq ptr %.pre71.i.i.i, %i.ax
  br i1 %i.jv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i
  %i.jw = load i64, ptr %i.ax, align 8, !tbaa !69, !noalias !70
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %.pre71.i.i.i, i64 noundef %i.jx) #15, !noalias !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !70
  %.pre72.i.i.i = load i8, ptr %i.au, align 8, !tbaa !179, !range !181, !noalias !70
  %i.jy = trunc nuw i8 %.pre72.i.i.i to i1
  br i1 %i.jy, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i, label %.thread.i.i.i

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12, !noalias !70
  %i.jz = load ptr, ptr %7, align 8, !tbaa !156, !noalias !70
  store ptr %i.jz, ptr %9, align 8, !tbaa !185, !noalias !70
  %i.ka = load i64, ptr %i.ay, align 8, !tbaa !154, !noalias !70
  store i64 %i.ka, ptr %i.az, align 8, !tbaa !187, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12, !noalias !70
  %i.kb = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !70
  %i.kc = load ptr, ptr %i.e, align 8, !tbaa !188, !noalias !70 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12, !noalias !70
  %i.kd = load ptr, ptr %i.l, align 8, !tbaa !44, !noalias !70
  %i.ke = load i32, ptr %i.ba, align 8, !tbaa !189, !noalias !70
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [32 x i8], ptr %i.kd, i64 %i.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12, !noalias !70
  %.not67.i.i.i = icmp ne ptr %i.kc, %i.kg
  %.not.not68.i.i.i = select i1 %i.kb, i1 %.not67.i.i.i, i1 false
  br i1 %.not.not68.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %.sroa.053.0.copyload54.i.i.i = load i64, ptr %i.kh, align 8, !tbaa !47, !noalias !70
  %.sroa.555.0..sroa_idx56.i.i.i = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %.sroa.555.0.copyload57.i.i.i = load ptr, ptr %.sroa.555.0..sroa_idx56.i.i.i, align 8, !tbaa !148, !noalias !70
  br label %.thread.i.i.i

bb.ap:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i
  %i.ki = load ptr, ptr %i.m, align 8, !tbaa !32, !noalias !70 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48 ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !31, !noalias !70 ; 7 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !157, !noalias !70
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -32
  %.not.i.i28.i.i.i = icmp eq ptr %i.kk, %i.kn
  br i1 %.not.i.i28.i.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 3 uses
  store ptr %i.ko, ptr %i.kk, align 8, !tbaa !152, !noalias !70
  %i.kp = load ptr, ptr %7, align 8, !tbaa !156, !noalias !70 ; 2 uses
  %i.kq = load i64, ptr %i.ay, align 8, !tbaa !154, !noalias !70 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12, !noalias !70
  store i64 %i.kq, ptr %i.d, align 8, !tbaa !47, !noalias !70
  %i.kr = icmp ugt i64 %i.kq, 15
  br i1 %i.kr, label %bb.ar, label %._crit_edge.i.i.i.i29.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ks = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #12, !noalias !70 ; 2 uses
  store ptr %i.ks, ptr %i.kk, align 8, !tbaa !156, !noalias !70
  %i.kt = load i64, ptr %i.d, align 8, !tbaa !47, !noalias !70
  store i64 %i.kt, ptr %i.ko, align 8, !tbaa !69, !noalias !70
  br label %._crit_edge.i.i.i.i29.i.i.i

._crit_edge.i.i.i.i29.i.i.i:                      ; preds = %bb.ar, %bb.aq
  %i.ku = phi ptr [ %i.ks, %bb.ar ], [ %i.ko, %bb.aq ] ; 2 uses
  switch i64 %i.kq, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i29.i.i.i
  %i.kv = load i8, ptr %i.kp, align 1, !tbaa !69, !noalias !70
  store i8 %i.kv, ptr %i.ku, align 1, !tbaa !69, !noalias !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i

bb.at:                                            ; preds = %._crit_edge.i.i.i.i29.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr align 1 %i.kp, i64 %i.kq, i1 false), !noalias !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i: ; preds = %bb.at, %bb.as, %._crit_edge.i.i.i.i29.i.i.i
  %i.kw = load i64, ptr %i.d, align 8, !tbaa !47, !noalias !70 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !154, !noalias !70
  %i.ky = load ptr, ptr %i.kk, align 8, !tbaa !156, !noalias !70
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kw
  store i8 0, ptr %i.kz, align 1, !tbaa !69, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12, !noalias !70
  %i.la = load ptr, ptr %i.kj, align 8, !tbaa !31, !noalias !70
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  store ptr %i.lb, ptr %i.kj, align 8, !tbaa !31, !noalias !70
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i

bb.au:                                            ; preds = %bb.ap
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ki, ptr noundef nonnull align 8 dereferenceable(32) %7), !noalias !70
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i: ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i
  %i.lc = load ptr, ptr %i.m, align 8, !tbaa !32, !noalias !70 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !158, !noalias !190 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 56
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !28, !noalias !190
  %i.lh = icmp eq ptr %i.le, %i.lg
  br i1 %i.lh, label %bb.av, label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i

bb.av:                                            ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 72
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !27, !noalias !190
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !26, !noalias !70
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 512
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i: ; preds = %bb.av, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i
  %i.ln = phi ptr [ %i.lm, %bb.av ], [ %i.le, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i ] ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 -32
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !156, !noalias !70 ; 3 uses
  %i.lq = getelementptr inbounds i8, ptr %i.ln, i64 -24
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !154, !noalias !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12, !noalias !70
  store ptr %i.lp, ptr %10, align 8, !tbaa !185, !noalias !70
  store i64 %i.lr, ptr %i.bb, align 8, !tbaa !187, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !193
  %i.ls = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !193
  %i.lt = load ptr, ptr %i.c, align 8, !tbaa !188, !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !193
  br i1 %i.ls, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i
  %i.lu = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E20InsertIntoBucketImplIS2_EEPSB_RKS2_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.lt), !noalias !193 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !196, !noalias !193
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 %i.lr, ptr %i.lv, align 8, !tbaa !47, !noalias !193
  %.sroa.6.0..sroa_idx46.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store ptr %i.lp, ptr %.sroa.6.0..sroa_idx46.i.i.i, align 8, !tbaa !148, !noalias !193
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i: ; preds = %bb.aw, %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12, !noalias !70
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i
  %.sroa.658.1.i.i.i = phi i8 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ 1, %bb.ao ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.555.1.i.i.i = phi ptr [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ %i.lp, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ %.sroa.555.0.copyload57.i.i.i, %bb.ao ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.053.1.i.i.i = phi i64 [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ %i.lr, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ %.sroa.053.0.copyload54.i.i.i, %bb.ao ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.036.i.i.sroa.0.0.copyload = load <3 x i32>, ptr %6, align 16, !noalias !66
  %.sroa.537.0.copyload41.i.i = load i32, ptr %.sroa.537.0..sroa_idx40.i.i, align 4, !tbaa !3, !noalias !66 ; 2 uses
  %.sroa.642.0.copyload46.i.i = load i32, ptr %.sroa.642.0..sroa_idx45.i.i, align 16, !tbaa !3, !noalias !66 ; 2 uses
  %.sroa.747.i.i.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.747.0..sroa_idx49.i.i, align 4, !noalias !66
  %.sroa.750.0.copyload54.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !197, !noalias !66 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.855.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.855.0..sroa_idx57.i.i, i64 3, i1 false), !tbaa.struct !184, !noalias !66
  %i.lw = load ptr, ptr %i.k, align 8, !tbaa !77, !noalias !198 ; 2 uses
  %i.lx = load i32, ptr %i.aq, align 8, !tbaa !80, !noalias !198 ; 7 uses
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.thread.i.i.i
  %i.lz = load ptr, ptr %4, align 8, !tbaa !73, !noalias !198 ; 3 uses
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = trunc i64 %i.ma to i32                  ; 2 uses
  %i.mc = lshr i32 %i.mb, 4
  %i.md = lshr i32 %i.mb, 9
  %i.me = xor i32 %i.mc, %i.md
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw nsw i64 %i.mf, 32
  %i.mh = load i32, ptr %i.ap, align 8, !tbaa !3, !noalias !198 ; 3 uses
  %i.mi = mul i32 %i.mh, 37
  %i.mj = zext i32 %i.mi to i64                   ; 2 uses
  %i.mk = shl nuw i64 %i.mj, 32
  %i.ml = xor i64 %i.mk, -1
  %i.mm = add i64 %i.ml, %i.mj
  %i.mn = add i64 %i.mm, %i.mg                    ; 2 uses
  %i.mo = lshr i64 %i.mn, 22
  %i.mp = xor i64 %i.mo, %i.mn                    ; 2 uses
  %i.mq = shl i64 %i.mp, 13
  %i.mr = xor i64 %i.mq, -1
  %i.ms = add i64 %i.mp, %i.mr                    ; 2 uses
  %i.mt = lshr i64 %i.ms, 8
  %i.mu = xor i64 %i.mt, %i.ms
  %i.mv = mul i64 %i.mu, 9                        ; 2 uses
  %i.mw = lshr i64 %i.mv, 15
  %i.mx = xor i64 %i.mw, %i.mv                    ; 2 uses
  %i.my = shl i64 %i.mx, 27
  %i.mz = xor i64 %i.my, -1
  %i.na = add i64 %i.mx, %i.mz                    ; 2 uses
  %i.nb = lshr i64 %i.na, 31
  %i.nc = xor i64 %i.nb, %i.na
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = add i32 %i.lx, -1                       ; 2 uses
  %i.nf = and i32 %i.ne, %i.nd                    ; 2 uses
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [96 x i8], ptr %i.lw, i64 %i.ng ; 3 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !73, !noalias !198 ; 2 uses
  %i.nj = icmp eq ptr %i.lz, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nl = load i32, ptr %i.nk, align 8, !noalias !198 ; 2 uses
  %i.nm = icmp eq i32 %i.mh, %i.nl
  %i.nn = select i1 %i.nj, i1 %i.nm, i1 false
  br i1 %i.nn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i, label %.lr.ph.i.i, !prof !81

.lr.ph.i.i:                                       ; preds = %bb.ax, %bb.az
  %i.no = phi i32 [ %i.oh, %bb.az ], [ %i.nl, %bb.ax ] ; 2 uses
  %i.np = phi ptr [ %i.oe, %bb.az ], [ %i.ni, %bb.ax ] ; 2 uses
  %i.nq = phi ptr [ %i.od, %bb.az ], [ %i.nh, %bb.ax ] ; 2 uses
  %.02952.i.i = phi i32 [ %i.nz, %bb.az ], [ 1, %bb.ax ] ; 2 uses
  %.03151.i.i = phi i32 [ %i.ob, %bb.az ], [ %i.nf, %bb.ax ]
  %.03450.i.i = phi ptr [ %spec.select.i.i, %bb.az ], [ null, %bb.ax ] ; 4 uses
  %i.nr = icmp eq ptr %i.np, inttoptr (i64 -8 to ptr)
  %i.ns = icmp eq i32 %i.no, -1
  %i.nt = select i1 %i.nr, i1 %i.ns, i1 false
  br i1 %i.nt, label %bb.ay, label %bb.az, !prof !82

bb.ay:                                            ; preds = %.lr.ph.i.i
  %.not.i38.i = icmp eq ptr %.03450.i.i, null
  %i.nu = select i1 %.not.i38.i, ptr %i.nq, ptr %.03450.i.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.nv = icmp eq ptr %i.np, inttoptr (i64 -16 to ptr)
  %i.nw = icmp eq i32 %i.no, -2
  %i.nx = select i1 %i.nv, i1 %i.nw, i1 false
  %i.ny = icmp eq ptr %.03450.i.i, null
  %or.cond.not.i.i = select i1 %i.nx, i1 %i.ny, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.nq, ptr %.03450.i.i
  %i.nz = add i32 %.02952.i.i, 1
  %i.oa = add i32 %.03151.i.i, %.02952.i.i
  %i.ob = and i32 %i.oa, %i.ne                    ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [96 x i8], ptr %i.lw, i64 %i.oc ; 3 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !73, !noalias !198 ; 2 uses
  %i.of = icmp eq ptr %i.lz, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oh = load i32, ptr %i.og, align 8, !noalias !198 ; 2 uses
  %i.oi = icmp eq i32 %i.mh, %i.oh
  %i.oj = select i1 %i.of, i1 %i.oi, i1 false
  br i1 %i.oj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i, label %.lr.ph.i.i, !prof !83, !llvm.loop !84

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i: ; preds = %bb.ay, %.thread.i.i.i
  %.sink.i.i = phi ptr [ %i.nu, %bb.ay ], [ null, %.thread.i.i.i ]
  %i.ok = load i32, ptr %i.bd, align 8, !tbaa !201, !noalias !198 ; 2 uses
  %i.ol = shl i32 %i.ok, 2
  %i.om = add i32 %i.ol, 4
  %i.on = mul i32 %i.lx, 3
  %.not.i37.i = icmp ult i32 %i.om, %i.on
  br i1 %.not.i37.i, label %bb.bb, label %bb.ba, !prof !82

bb.ba:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i
  %i.oo = shl i32 %i.lx, 1
  call void @_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i32 noundef %i.oo), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !198
  %i.op = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !198 ; 0 uses
  %i.oq = load ptr, ptr %i.b, align 8, !tbaa !202, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !198
  br label %bb.bd

bb.bb:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i
  %i.or = load i32, ptr %i.be, align 4, !tbaa !203, !noalias !198
  %.neg.i.i = xor i32 %i.ok, -1
  %.neg12.i.i = add i32 %i.lx, %.neg.i.i
  %i.os = sub i32 %.neg12.i.i, %i.or
  %i.ot = lshr i32 %i.lx, 3
  %.not9.i.i = icmp ugt i32 %i.os, %i.ot
  br i1 %.not9.i.i, label %bb.bd, label %bb.bc, !prof !82

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i32 noundef %i.lx), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !198
  %i.ou = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !198 ; 0 uses
  %i.ov = load ptr, ptr %i.a, align 8, !tbaa !202, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !198
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0.i.i = phi ptr [ %.sink.i.i, %bb.bb ], [ %i.ov, %bb.bc ], [ %i.oq, %bb.ba ] ; 15 uses
  %i.ow = load i32, ptr %i.bd, align 8, !tbaa !201, !noalias !198
  %i.ox = add i32 %i.ow, 1
  store i32 %i.ox, ptr %i.bd, align 8, !tbaa !201, !noalias !198
  %i.oy = load ptr, ptr %.0.i.i, align 8, !tbaa !73, !noalias !198
  %i.oz = icmp eq ptr %i.oy, inttoptr (i64 -8 to ptr)
  %i.pa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 8, !noalias !198
  %i.pc = icmp eq i32 %i.pb, -1
  %i.pd = select i1 %i.oz, i1 %i.pc, i1 false
  br i1 %i.pd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pe = load i32, ptr %i.be, align 4, !tbaa !203, !noalias !198
  %i.pf = add i32 %i.pe, -1
  store i32 %i.pf, ptr %i.be, align 4, !tbaa !203, !noalias !198
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i: ; preds = %bb.be, %bb.bd
  %i.pg = load ptr, ptr %4, align 8, !tbaa !73, !noalias !198
  store ptr %i.pg, ptr %.0.i.i, align 8, !tbaa !73, !noalias !198
  %i.ph = load i32, ptr %i.ap, align 8, !tbaa !76, !noalias !198
  store i32 %i.ph, ptr %i.pa, align 8, !tbaa !76, !noalias !198
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store <3 x i32> %.sroa.036.i.i.sroa.0.0.copyload, ptr %i.pi, align 8, !noalias !204
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  store i32 %.sroa.537.0.copyload41.i.i, ptr %.sroa.537.0..sroa_idx.i.i, align 4, !noalias !204
  %.sroa.642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i32 %.sroa.642.0.copyload46.i.i, ptr %.sroa.642.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.747.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  store <3 x i32> %.sroa.747.i.i.sroa.0.0.copyload, ptr %.sroa.747.0..sroa_idx.i.i, align 4, !noalias !204
  %.sroa.750.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store i8 %.sroa.750.0.copyload54.i.i, ptr %.sroa.750.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.855.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.855.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.855.i.i, i64 7, i1 false), !noalias !204
  %.sroa.858.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  store i64 %.sroa.053.1.i.i.i, ptr %.sroa.858.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store ptr %.sroa.555.1.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  store i8 %.sroa.658.1.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !204
  %.sroa.1266.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store i64 %i.ii, ptr %.sroa.1266.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  store ptr %i.ig, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !204
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i: ; preds = %bb.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i, %bb.ax
  %i.pj = load i8, ptr %i.au, align 8, !tbaa !179, !range !181, !noalias !70, !noundef !184
  %i.pk = trunc nuw i8 %i.pj to i1
  store i8 0, ptr %i.au, align 8, !tbaa !179, !noalias !70
  br i1 %i.pk, label %bb.bf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.bf:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i
  %i.pl = load ptr, ptr %7, align 8, !tbaa !156, !noalias !70 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.aw
  br i1 %i.pm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf
  %i.pn = load i64, ptr %i.aw, align 8, !tbaa !69, !noalias !70
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.po) #15, !noalias !70
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12, !noalias !70
  %i.pp = load ptr, ptr %5, align 8, !tbaa !156, !noalias !70 ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.ar
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.pr = load i64, ptr %i.ar, align 8, !tbaa !69, !noalias !70
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #15, !noalias !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12, !noalias !70
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, %bb.m
  %.sroa.537.0.i.i = phi i32 [ %.sroa.537.0.copyload39.i.i, %bb.m ], [ %.sroa.537.0.copyload41.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.642.0.i.i = phi i32 [ %.sroa.642.0.copyload44.i.i, %bb.m ], [ %.sroa.642.0.copyload46.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ] ; 2 uses
  %.sroa.750.0.i.i = phi i8 [ %.sroa.750.0.copyload52.i.i, %bb.m ], [ %.sroa.750.0.copyload54.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.858.0.i.i = phi i64 [ %.sroa.858.0.copyload60.i.i, %bb.m ], [ %.sroa.053.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.0.copyload62.i.i, %bb.m ], [ %.sroa.555.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.11.0.i.i = phi i8 [ %.sroa.11.0.copyload64.i.i, %bb.m ], [ %.sroa.658.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.1266.0.i.i = phi i64 [ %.sroa.1266.0.copyload68.i.i, %bb.m ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ] ; 2 uses
  %.sroa.14.0.i.i = phi ptr [ %.sroa.14.0.copyload70.i.i, %bb.m ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.537.0.fr.i.i = freeze i32 %.sroa.537.0.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !70
  %i.pt = getelementptr inbounds nuw i8, ptr %i.cu, i64 136
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !205, !noalias !66
  %i.pv = trunc nuw i8 %.sroa.750.0.i.i to i1
  br i1 %i.pv, label %bb.bg, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !66
  br label %bb.bj

bb.bg:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i
  %.not.not.i.i = icmp eq i32 %.sroa.537.0.fr.i.i, 0 ; 2 uses
  %.not17.i.i = icmp eq i32 %.sroa.642.0.i.i, 0
  br i1 %.not17.i.i, label %bb.bh, label %.split.i.i

.split.i.i:                                       ; preds = %bb.bg
  %i.pw = zext i32 %.sroa.642.0.i.i to i64
  %i.px = or disjoint i64 %i.pw, 4294967296       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !66
  br i1 %.not.not.i.i, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !66
  br i1 %.not.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.split.i.i
  %.sroa.431.1108.i.i = phi i64 [ %i.px, %.split.i.i ], [ 0, %bb.bh ]
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %.split.i.i, %.thread.i.i
  %.sroa.431.1105.i.i = phi i64 [ %.sroa.431.1108.i.i, %bb.bi ], [ 0, %bb.bh ], [ 0, %.thread.i.i ], [ %i.px, %.split.i.i ]
  %i.py = phi i64 [ 4294967296, %bb.bi ], [ 0, %bb.bh ], [ 0, %.thread.i.i ], [ 0, %.split.i.i ]
  %.sroa.033.0.insert.ext.i.i = zext i32 %.sroa.537.0.fr.i.i to i64
  %.sroa.033.0.insert.insert.i.i = or disjoint i64 %i.py, %.sroa.033.0.insert.ext.i.i
  %.sroa.053.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.1266.0.i.i to i32
  %.sroa.053.sroa.8.0.extract.shift.i = lshr i64 %.sroa.1266.0.i.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, i64 7, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.855.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.bk:                                            ; preds = %.lr.ph.i
  unreachable

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i: ; preds = %bb.bj, %bb.i, %bb.h, %bb.g
  %.sroa.053.sroa.8.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.053.sroa.8.0.extract.shift84.i, %bb.h ], [ %.sroa.053.sroa.8.0.extract.shift82.i, %bb.i ], [ %.sroa.053.sroa.8.0.extract.shift.i, %bb.bj ] ; 2 uses
  %.sroa.053.sroa.0.0.i = phi i32 [ %i.cn, %bb.g ], [ %.sroa.053.sroa.0.0.extract.trunc78.i, %bb.h ], [ %.sroa.053.sroa.0.0.extract.trunc77.i, %bb.i ], [ %.sroa.053.sroa.0.0.extract.trunc.i, %bb.bj ] ; 2 uses
  %.sroa.18.0.i = phi i8 [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.bj ] ; 2 uses
  %.sroa.17.2.i = phi i64 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.431.1105.i.i, %bb.bj ] ; 2 uses
  %.sroa.16.2.i = phi i64 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.033.0.insert.insert.i.i, %bb.bj ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.11.0.i.i, %bb.bj ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.10.0.i.i, %bb.bj ] ; 2 uses
  %.sroa.1262.2.i = phi i64 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.858.0.i.i, %bb.bj ] ; 2 uses
  %.sroa.11.2.i = phi i32 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.pu, %bb.bj ] ; 2 uses
  %.sroa.855.2.i = phi ptr [ undef, %bb.g ], [ %i.cq, %bb.h ], [ %i.ct, %bb.i ], [ %.sroa.14.0.i.i, %bb.bj ] ; 2 uses
  %i.pz = load ptr, ptr %i.ao, align 8, !tbaa !55, !noalias !12 ; 14 uses
  %i.qa = load ptr, ptr %i.an, align 8, !tbaa !56, !noalias !12
  %.not.i.i.i = icmp eq ptr %i.pz, %i.qa
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i
  %.sroa.053.sroa.8.0.insert.shift.i = shl nuw i64 %.sroa.053.sroa.8.0.i, 32
  %.sroa.053.sroa.0.0.insert.ext.i = zext i32 %.sroa.053.sroa.0.0.i to i64
  %.sroa.053.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.053.sroa.8.0.insert.shift.i, %.sroa.053.sroa.0.0.insert.ext.i
  store i64 %.sroa.053.sroa.0.0.insert.insert.i, ptr %i.pz, align 8, !noalias !12
  %.sroa.855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  store ptr %.sroa.855.2.i, ptr %.sroa.855.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  store i32 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.1262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  store i64 %.sroa.1262.2.i, ptr %.sroa.1262.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  store ptr %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  store i8 %.sroa.14.2.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, i64 7, i1 false), !noalias !12
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 48
  store i64 %.sroa.16.2.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 56
  store i64 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 64
  store i8 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !12
  %i.qb = load ptr, ptr %i.ao, align 8, !tbaa !55, !noalias !12
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 72 ; 2 uses
  store ptr %i.qc, ptr %i.ao, align 8, !tbaa !55, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i

bb.bm:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i
  %i.qd = load ptr, ptr %12, align 8, !tbaa !52, !noalias !12 ; 5 uses
  %i.qe = ptrtoint ptr %i.pz to i64
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = sub i64 %i.qe, %i.qf                    ; 4 uses
  %i.qh = icmp eq i64 %i.qg, 9223372036854775800
  br i1 %i.qh, label %bb.bn, label %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14, !noalias !12
  unreachable

_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bm
  %i.qi = sdiv exact i64 %i.qg, 72                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qi, i64 1)
  %i.qj = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.qi ; 2 uses
  %i.qk = icmp ult i64 %i.qj, %i.qi
  %i.ql = call i64 @llvm.umin.i64(i64 %i.qj, i64 128102389400760775)
  %i.qm = select i1 %i.qk, i64 128102389400760775, i64 %i.ql ; 3 uses
  %.not.i.i.i.i36.i = icmp ne i64 %i.qm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i36.i)
  %i.qn = mul nuw nsw i64 %i.qm, 72
  %i.qo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qn) #13, !noalias !12 ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qg ; 10 uses
  %.sroa.053.sroa.8.0.insert.shift87.i = shl nuw i64 %.sroa.053.sroa.8.0.i, 32
  %.sroa.053.sroa.0.0.insert.ext79.i = zext i32 %.sroa.053.sroa.0.0.i to i64
  %.sroa.053.sroa.0.0.insert.insert81.i = or disjoint i64 %.sroa.053.sroa.8.0.insert.shift87.i, %.sroa.053.sroa.0.0.insert.ext79.i
  store i64 %.sroa.053.sroa.0.0.insert.insert81.i, ptr %i.qp, align 8, !noalias !12
  %.sroa.855.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store ptr %.sroa.855.2.i, ptr %.sroa.855.0..sroa_idx56.i, align 8, !noalias !12
  %.sroa.11.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store i32 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx58.i, align 8, !noalias !12
  %.sroa.1262.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store i64 %.sroa.1262.2.i, ptr %.sroa.1262.0..sroa_idx63.i, align 8, !noalias !12
  %.sroa.13.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  store ptr %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx65.i, align 8, !noalias !12
  %.sroa.14.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  store i8 %.sroa.14.2.i, ptr %.sroa.14.0..sroa_idx67.i, align 8, !noalias !12
  %.sroa.15.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx69.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, i64 7, i1 false), !noalias !12
  %.sroa.16.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 48
  store i64 %.sroa.16.2.i, ptr %.sroa.16.0..sroa_idx70.i, align 8, !noalias !12
  %.sroa.17.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 56
  store i64 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx72.i, align 8, !noalias !12
  %.sroa.18.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 64
  store i8 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx74.i, align 8, !noalias !12
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.qd, %i.pz
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.qr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qo, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.qq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qd, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i.i.i, i64 72, i1 false), !alias.scope !231, !noalias !12
  %i.qq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qq, %i.pz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !235

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.qo, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.qr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.qd, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.qg) #15, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i: ; preds = %bb.bo, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  store ptr %i.qo, ptr %12, align 8, !tbaa !52, !noalias !12
  store ptr %i.qs, ptr %i.ao, align 8, !tbaa !55, !noalias !12
  %i.qt = getelementptr inbounds nuw [72 x i8], ptr %i.qo, i64 %i.qm
  store ptr %i.qt, ptr %i.an, align 8, !tbaa !56, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i: ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, %bb.bl
  %i.qu = phi ptr [ %i.qc, %bb.bl ], [ %i.qs, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.091.0128.i, i64 24 ; 2 uses
  %.not106.i = icmp eq ptr %i.qv, %i.bl
  br i1 %.not106.i, label %._crit_edge.i, label %.lr.ph.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i
  %i.qw = phi ptr [ %.pre29, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ null, %bb.b ]
  %i.qx = phi i64 [ %.pre, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ %i.ai, %bb.b ]
  %i.qy = phi ptr [ %.pre173.i, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ null, %bb.b ]
  %i.qz = phi <2 x ptr> [ %i.bg, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ splat (ptr null), %bb.b ]
  store ptr null, ptr %i.m, align 8, !tbaa !32, !noalias !12
  store <2 x ptr> %i.qz, ptr %0, align 8, !tbaa !43, !alias.scope !12
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qy, ptr %i.ra, align 8, !tbaa !42, !alias.scope !12
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.qx, ptr %i.rb, align 8, !tbaa !32, !alias.scope !12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12, !noalias !12
  call void @_ZdlPv(ptr noundef %i.qw) #12
  %i.rc = load ptr, ptr %i.k, align 8, !tbaa !77
  call void @_ZdlPv(ptr noundef %i.rc) #12
  %i.rd = load ptr, ptr %i.j, align 8, !tbaa !236
  call void @_ZdlPv(ptr noundef %i.rd) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, ptr } @_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator21getNativeFunctionNameERKNS0_16SamplingProfiler10StackFrameE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.std::pair.103", align 8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !239  ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = mul i32 %i.h, 37
  %i.j = add i32 %i.e, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.i, %i.j              ; 2 uses
  %i.k = zext i32 %.02744.i.i.i to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit, label %.lr.ph.i.i.i, !prof !81

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.u, %bb.c ], [ %i.m, %bb.b ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.c ], [ %.02744.i.i.i, %bb.b ]
  %.02546.i.i.i = phi i32 [ %i.q, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i, label %bb.c, !prof !82

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add i32 %.02546.i.i.i, 1
  %i.r = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.r, %i.j                ; 2 uses
  %i.s = zext i32 %.027.i.i.i to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %i.v = icmp eq i64 %i.g, %i.u
  br i1 %i.v, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit, label %.lr.ph.i.i.i, !prof !83, !llvm.loop !240

_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.w = zext i32 %i.e to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.w
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.x, %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i ], [ %i.l, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.y = zext i32 %i.e to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.y
  %.not = icmp eq ptr %.sink.i.i.ph.pn.i, %i.z
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !241
  br label %bb.l

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ab = load ptr, ptr %0, align 8, !tbaa !242, !nonnull !184, !align !250
  call void @_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !157
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %.not.i.i = icmp eq ptr %i.af, %i.ai
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !152
  %i.ak = load ptr, ptr %3, align 8, !tbaa !156   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !154 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.am, ptr %i.a, align 8, !tbaa !47
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !156
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.aq = phi ptr [ %i.ao, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  switch i64 %i.am, label %bb.i [
end_hunk_1
