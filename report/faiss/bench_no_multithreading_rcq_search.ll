Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/bench_no_multithreading_rcq_search?download=true
inline.NumInlined: 227
inline.NumDeleted: 178
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.google::FlagRegisterer" = type { i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.22" }
%"struct.std::_Head_base.22" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.faiss::ResidualCoarseQuantizer" = type <{ %"struct.faiss::AdditiveCoarseQuantizer", %"struct.faiss::ResidualQuantizer", float, [4 x i8] }>
%"struct.faiss::AdditiveCoarseQuantizer" = type { %"struct.faiss::Index.base", ptr, %"class.std::vector.41" }
%"struct.faiss::Index.base" = type <{ ptr, i32, [4 x i8], i64, i8, i8, [2 x i8], i32, float }>
%"class.std::vector.41" = type { %"struct.std::_Vector_base.42" }
%"struct.std::_Vector_base.42" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.faiss::ResidualQuantizer" = type { %"struct.faiss::AdditiveQuantizer.base", i32, i32, i32, i32, i32, %"struct.faiss::ProgressiveDimClusteringParameters", ptr }
%"struct.faiss::AdditiveQuantizer.base" = type <{ %"struct.faiss::Quantizer", i64, %"class.std::vector.46", %"class.std::vector.41", %"class.std::vector.46", i64, i64, i64, i8, i8, i8, [5 x i8], %"class.std::vector.41", %"struct.faiss::IndexFlat1D", %"class.std::vector.41", %"class.std::vector.41", i64, i32, float, float }>
%"struct.faiss::Quantizer" = type { ptr, i64, i64 }
%"class.std::vector.46" = type { %"struct.std::_Vector_base.47" }
%"struct.std::_Vector_base.47" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.faiss::IndexFlat1D" = type { %"struct.faiss::IndexFlatL2", i8, %"class.std::vector.31" }
%"struct.faiss::IndexFlatL2" = type { %"struct.faiss::IndexFlat", %"class.std::vector.41" }
%"struct.faiss::IndexFlat" = type { %"struct.faiss::IndexFlatCodes" }
%"struct.faiss::IndexFlatCodes" = type { %"struct.faiss::Index.base", i64, %"struct.faiss::MaybeOwnedVector" }
%"struct.faiss::MaybeOwnedVector" = type { i8, %"class.std::vector.51", ptr, i64, %"class.std::shared_ptr", ptr, i64 }
%"class.std::vector.51" = type { %"struct.std::_Vector_base.52" }
%"struct.std::_Vector_base.52" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector.31" = type { %"struct.std::_Vector_base.32" }
%"struct.std::_Vector_base.32" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.faiss::ProgressiveDimClusteringParameters" = type <{ %"struct.faiss::ClusteringParameters", i32, i8, [3 x i8] }>
%"struct.faiss::ClusteringParameters" = type { i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i64, i8, i8, i8, i16, double }
%"struct.faiss::SearchParametersResidualCoarseQuantizer" = type <{ %"struct.faiss::SearchParameters", float, [4 x i8] }>
%"struct.faiss::SearchParameters" = type { ptr, ptr }

$_ZN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_ED0Ev = comdat any

$_ZN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_E3RunES4_ = comdat any

$_ZN5faiss16SearchParametersD2Ev = comdat any

$_ZN5faiss23ResidualCoarseQuantizerD2Ev = comdat any

$_ZN5faiss39SearchParametersResidualCoarseQuantizerD0Ev = comdat any

$_ZTVN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE = comdat any

$_ZTIN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE = comdat any

$_ZTSN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE = comdat any

$_ZTVN5faiss39SearchParametersResidualCoarseQuantizerE = comdat any

$_ZTIN5faiss39SearchParametersResidualCoarseQuantizerE = comdat any

$_ZTSN5faiss39SearchParametersResidualCoarseQuantizerE = comdat any

$_ZTIN5faiss16SearchParametersE = comdat any

$_ZTSN5faiss16SearchParametersE = comdat any

@_ZN3fLU16FLAGS_iterationsE = dso_local global i32 20, align 4
@_ZN3fLUL12o_iterationsE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"/opt-bench/work/faiss/faiss/perf_tests/bench_no_multithreading_rcq_search.cpp\00", align 1
@_ZN3fLUL18FLAGS_noiterationsE = internal global i32 20, align 4
@_ZN3fLU12FLAGS_nprobeE = dso_local global i32 1, align 4
@_ZN3fLUL8o_nprobeE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"nprobe\00", align 1
@_ZN3fLUL14FLAGS_nonprobeE = internal global i32 1, align 4
@_ZN3fLU16FLAGS_batch_sizeE = dso_local global i32 1, align 4
@_ZN3fLUL12o_batch_sizeE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"batch_size\00", align 1
@_ZN3fLUL18FLAGS_nobatch_sizeE = internal global i32 1, align 4
@_ZN3fLD17FLAGS_beam_factorE = dso_local global double 4.000000e+00, align 8
@_ZN3fLDL13o_beam_factorE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"beam_factor\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"beam factor\00", align 1
@_ZN3fLDL19FLAGS_nobeam_factorE = internal global double 4.000000e+00, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@_ZTVN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE, ptr @_ZN9benchmark9BenchmarkD2Ev, ptr @_ZN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_ED0Ev, ptr @_ZN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_E3RunES4_] }, comdat, align 8
@_ZTIN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE, ptr @_ZTIN9benchmark9BenchmarkE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE = linkonce_odr dso_local constant [180 x i8] c"N9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE\00", comdat, align 1
@_ZTIN9benchmark9BenchmarkE = external constant ptr
@.str.13 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN5faiss39SearchParametersResidualCoarseQuantizerE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5faiss39SearchParametersResidualCoarseQuantizerE, ptr @_ZN5faiss16SearchParametersD2Ev, ptr @_ZN5faiss39SearchParametersResidualCoarseQuantizerD0Ev] }, comdat, align 8
@_ZTIN5faiss39SearchParametersResidualCoarseQuantizerE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5faiss39SearchParametersResidualCoarseQuantizerE, ptr @_ZTIN5faiss16SearchParametersE }, comdat, align 8
@_ZTSN5faiss39SearchParametersResidualCoarseQuantizerE = linkonce_odr dso_local constant [50 x i8] c"N5faiss39SearchParametersResidualCoarseQuantizerE\00", comdat, align 1
@_ZTIN5faiss16SearchParametersE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5faiss16SearchParametersE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5faiss16SearchParametersE = linkonce_odr dso_local constant [27 x i8] c"N5faiss16SearchParametersE\00", comdat, align 1
@_ZTVN5faiss23ResidualCoarseQuantizerE = external constant { [32 x ptr] }, align 8
@_ZTVN5faiss23AdditiveCoarseQuantizerE = external constant { [32 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_bench_no_multithreading_rcq_search.cpp, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

declare void @_ZN6google14FlagRegistererC1IjEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZN6google14FlagRegistererC1IdEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !26
  store ptr %1, ptr %i.b, align 8, !tbaa !29
  call void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull @_ZN9benchmark16PrintDefaultHelpEv)
  call void @_ZN6google25AllowCommandLineReparsingEv()
  %i.c = call noundef i32 @_ZN6google21ParseCommandLineFlagsEPiPPPcb(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext true) ; 0 uses
  %i.d = load i32, ptr @_ZN3fLU16FLAGS_iterationsE, align 4, !tbaa !26
  %i.e = load i32, ptr @_ZN3fLU12FLAGS_nprobeE, align 4, !tbaa !26
  %i.f = load double, ptr @_ZN3fLD17FLAGS_beam_factorE, align 8, !tbaa !31
  %i.g = fptrunc double %i.f to float
  %i.h = load i32, ptr @_ZN3fLU16FLAGS_batch_sizeE, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.k, align 2, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.l = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #13
          to label %.noexc6 unwind label %bb.g, !noalias !35 ; 7 uses

.noexc6:                                          ; preds = %bb.a
  invoke void @_ZN9benchmark9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(328) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i unwind label %bb.b, !noalias !35

bb.b:                                             ; preds = %.noexc6
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 328) #14, !noalias !35
  br label %.body

_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i: ; preds = %.noexc6
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE, i64 16), ptr %i.l, align 8, !tbaa !16, !noalias !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  store ptr @_ZL12bench_searchRN9benchmark5StateEiif, ptr %i.n, align 8, !tbaa !36, !noalias !35
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 312
  %4 = freeze i32 %i.h
  %5 = zext i32 %4 to i64
  %6 = freeze i32 %i.e
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %5
  store i64 %9, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !35
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  store float %i.g, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !18, !noalias !35
  store ptr %i.l, ptr %2, align 8, !tbaa !39
  %i.o = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS_9BenchmarkESt14default_deleteIS2_EE(ptr noundef nonnull align 8 %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !40     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i: ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(304) %i.p) #12, !inline_history !25
  br label %bb.e

bb.d:                                             ; preds = %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !40     ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i4.i.i, label %.body, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(304) %i.u) #12, !inline_history !25
  br label %.body

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.y = sext i32 %i.d to i64
  %i.z = invoke noundef ptr @_ZN9benchmark9Benchmark10IterationsEl(ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 noundef %i.y)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.i
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !34
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ae = call noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() ; 0 uses
  call void @_ZN9benchmark8ShutdownEv()
  ret i32 0

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d, %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.m, %bb.b ], [ %i.t, %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i ], [ %i.t, %bb.d ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.i
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.body
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark16PrintDefaultHelpEv() #0

declare void @_ZN6google25AllowCommandLineReparsingEv() local_unnamed_addr #0

declare noundef i32 @_ZN6google21ParseCommandLineFlagsEPiPPPcb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @_ZL12bench_searchRN9benchmark5StateEiif(ptr noundef nonnull align 64 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, float noundef %3) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.faiss::ResidualCoarseQuantizer", align 8 ; 14 uses
  %5 = alloca %"class.std::vector.46", align 8    ; 12 uses
  %6 = alloca %"struct.faiss::SearchParametersResidualCoarseQuantizer", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(134217728) ptr @_Znwm(i64 noundef 134217728) #13 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(134217728) %i.a, i8 0, i64 134217728, i1 false)
  invoke void @_ZN5faiss10float_randEPfml(ptr noundef nonnull %i.a, i64 noundef 33554432, i64 noundef 12345)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13
          to label %bb.e unwind label %bb.c       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !44     ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i4.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #14
  br label %.body

bb.e:                                             ; preds = %bb.b
  store ptr %i.b, ptr %5, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !45
  store i64 16, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !46
  invoke void @_ZN5faiss23ResidualCoarseQuantizerC1EiRKSt6vectorImSaImEENS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(580) %4, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %5, align 8, !tbaa !44     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.r, align 8, !tbaa !50
  invoke void @_ZN5faiss23AdditiveCoarseQuantizer5trainElPKf(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 noundef 65536, ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.s = shl nsw i32 %1, 9
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = icmp slt i32 %1, 0
  br i1 %i.u, label %bb.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
          to label %.noexc51 unwind label %bb.x

.noexc51:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.v = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #13
          to label %.noexc52 unwind label %bb.x   ; 4 uses

.noexc52:                                         ; preds = %bb.j
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !18
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.v, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.y, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !18
  %i.z = ptrtoint ptr %i.x to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53:             ; preds = %.noexc52, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.099.0 = phi ptr [ %i.w, %.noexc52 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.z, %.noexc52 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  invoke void @_ZN5faiss10float_randEPfml(ptr noundef %.sroa.099.0, i64 noundef %i.t, i64 noundef 12345)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53
  %i.aa = mul nsw i32 %2, %1                      ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 5 uses
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.l, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54

end_hunk_0
