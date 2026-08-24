Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/bench_no_multithreading_rcq_search?download=true
inline.NumInlined: 227
inline.NumDeleted: 178
begin_hunk_0
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
._crit_edge.i.i:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !10
  store ptr %1, ptr %i.b, align 8, !tbaa !11
  call void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull @_ZN9benchmark16PrintDefaultHelpEv)
  call void @_ZN6google25AllowCommandLineReparsingEv()
  %i.c = call noundef i32 @_ZN6google21ParseCommandLineFlagsEPiPPPcb(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext true) ; 0 uses
  %i.d = load i32, ptr @_ZN3fLU16FLAGS_iterationsE, align 4, !tbaa !10
  %i.e = load i32, ptr @_ZN3fLU12FLAGS_nprobeE, align 4, !tbaa !10
  %i.f = load double, ptr @_ZN3fLD17FLAGS_beam_factorE, align 8, !tbaa !15
  %i.g = fptrunc double %i.f to float
  %i.h = load i32, ptr @_ZN3fLU16FLAGS_batch_sizeE, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.k, align 2, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.l = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #13
          to label %.noexc6 unwind label %bb.f    ; 8 uses

.noexc6:                                          ; preds = %._crit_edge.i.i
  invoke void @_ZN9benchmark9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(328) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i unwind label %bb.a, !noalias !24

bb.a:                                             ; preds = %.noexc6
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 328) #14, !noalias !24
  br label %.body

_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i: ; preds = %.noexc6
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE, i64 16), ptr %i.l, align 8, !tbaa !27, !noalias !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  store ptr @_ZL12bench_searchRN9benchmark5StateEiif, ptr %i.n, align 8, !tbaa !29, !noalias !24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 312
  store i32 %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !10, !noalias !24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 316
  store i32 %i.e, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !10, !noalias !24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  store float %i.g, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !30, !noalias !24
  store ptr %i.l, ptr %2, align 8, !tbaa !32
  %i.o = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS_9BenchmarkESt14default_deleteIS2_EE(ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !35     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(304) %i.p) #12, !inline_history !36
  br label %bb.d

bb.c:                                             ; preds = %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !35     ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i4.i.i, label %.body, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i: ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(304) %i.u) #12, !inline_history !36
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.y = sext i32 %i.d to i64
  %i.z = invoke noundef ptr @_ZN9benchmark9Benchmark10IterationsEl(ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 noundef %i.y)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.i
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ae = call noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() ; 0 uses
  call void @_ZN9benchmark8ShutdownEv()
  ret i32 0

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.a, %bb.c, %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.m, %bb.a ], [ %i.t, %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i ], [ %i.t, %bb.c ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.i
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.body
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !23
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
  %5 = alloca %"class.std::vector.46", align 8    ; 9 uses
  %6 = alloca %"struct.faiss::SearchParametersResidualCoarseQuantizer", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(134217728) ptr @_Znwm(i64 noundef 134217728) #13 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(134217728) %i.a, i8 0, i64 134217728, i1 false)
  invoke void @_ZN5faiss10float_randEPfml(ptr noundef nonnull %i.a, i64 noundef 33554432, i64 noundef 12345)
          to label %bb.b unwind label %7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.b = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13
          to label %bb.c unwind label %bb.s       ; 4 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %5, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !41
  store i64 16, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !42
  invoke void @_ZN5faiss23ResidualCoarseQuantizerC1EiRKSt6vectorImSaImEENS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(580) %4, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %5, align 8, !tbaa !38     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.j) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !43
  invoke void @_ZN5faiss23AdditiveCoarseQuantizer5trainElPKf(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 noundef 65536, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.l = shl nsw i32 %1, 9
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp slt i32 %1, 0
  br i1 %i.n, label %bb.g, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
          to label %.noexc51 unwind label %bb.w

.noexc51:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #13
          to label %.noexc52 unwind label %bb.w   ; 4 uses

.noexc52:                                         ; preds = %bb.h
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !30
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.o, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  %i.s = ptrtoint ptr %i.q to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53:             ; preds = %.noexc52, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.098.0 = phi ptr [ %i.p, %.noexc52 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.s, %.noexc52 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  invoke void @_ZN5faiss10float_randEPfml(ptr noundef %.sroa.098.0, i64 noundef %i.m, i64 noundef 12345)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53
  %i.t = mul nsw i32 %2, %1                       ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 5 uses
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %bb.j, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
          to label %.noexc59 unwind label %bb.y

.noexc59:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54: ; preds = %bb.i
  %.not.i.i.i.i55 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i55, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54
  %i.w = shl nuw nsw i64 %i.u, 2
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #13
          to label %.noexc60 unwind label %bb.y   ; 6 uses

.noexc60:                                         ; preds = %bb.k
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u ; 3 uses
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !30
  %i.z = add nsw i64 %i.u, -1                     ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0                     ; 2 uses
  br i1 %i.aa, label %bb.l, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc60
  %i.ab = getelementptr i8, ptr %i.x, i64 4
  %.idx.i.i.i.i.i.i.i56 = shl nuw nsw i64 %i.z, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i.i.i56, i1 false), !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.noexc60, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ac = shl nuw nsw i64 %i.u, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #13
          to label %.noexc66 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit76.thread ; 5 uses

.noexc66:                                         ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.u ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !47
  br i1 %i.aa, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc66
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.idx.i.i.i.i.i.i.i63 = shl nuw nsw i64 %i.z, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i63, i1 false), !tbaa !47
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc66, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54
  %.sroa.1095.0126 = phi ptr [ %i.y, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc66 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54 ] ; 2 uses
  %.sroa.091.0122 = phi ptr [ %i.x, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.x, %.noexc66 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54 ] ; 6 uses
  %.sroa.086.0 = phi ptr [ %i.ad, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ad, %.noexc66 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54 ] ; 7 uses
  %.sroa.10.0 = phi ptr [ %i.ae, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ae, %.noexc66 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i54 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5faiss39SearchParametersResidualCoarseQuantizerE, i64 16), ptr %6, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %3, ptr %i.ah, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !53
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !73
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %bb.m
  %i.am = phi i64 [ %i.al, %bb.m ], [ 0, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.z

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.n
  %.not.i.not136 = icmp eq i64 %i.am, 0
  br i1 %.not.i.not136, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !74

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.an = zext nneg i32 %1 to i64
  %i.ao = sext i32 %2 to i64
  br label %bb.aa

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.z

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.not.i.i.i67 = icmp eq ptr %.sroa.086.0, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  %i.ap = ptrtoint ptr %.sroa.10.0 to i64
  %i.aq = ptrtoint ptr %.sroa.086.0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.086.0, i64 noundef %i.ar) #14
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.o
  %.not.i.i.i68 = icmp eq ptr %.sroa.091.0122, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.as = ptrtoint ptr %.sroa.1095.0126 to i64
  %i.at = ptrtoint ptr %.sroa.091.0122 to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0122, i64 noundef %i.au) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.p
  %.not.i.i.i69 = icmp eq ptr %.sroa.098.0, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIfSaIfEED2Ev.exit70, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.av = ptrtoint ptr %.sroa.098.0 to i64
  %i.aw = sub i64 %.sroa.11.0, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0, i64 noundef %i.aw) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit70

_ZNSt6vectorIfSaIfEED2Ev.exit70:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss23ResidualCoarseQuantizerE, i64 16), ptr %4, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZN5faiss17AdditiveQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.ax) #12
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss23AdditiveCoarseQuantizerE, i64 16), ptr %4, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit72, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit72

_ZNSt6vectorIfSaIfEED2Ev.exit72:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit70, %bb.r
  call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(580) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 134217728) #14
  ret void

7:                                                ; preds = %bb.a
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit82

bb.s:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit74

bb.t:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !38    ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorImSaImEED2Ev.exit74, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit74

_ZNSt6vectorImSaImEED2Ev.exit74:                  ; preds = %bb.u, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.bg, %bb.t ], [ %i.bg, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ag

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit80

bb.w:                                             ; preds = %bb.h, %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit80

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit53
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit78

bb.y:                                             ; preds = %bb.k, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit78

_ZNSt6vectorIlSaIlEED2Ev.exit76.thread:           ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %.lr.ph, %_ZN9benchmark5State3endEv.exit
  %.sroa.083.0137 = phi i64 [ %i.am, %.lr.ph ], [ %i.bs, %_ZN9benchmark5State3endEv.exit ]
  invoke void @_ZNK5faiss23ResidualCoarseQuantizer6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(580) %4, i64 noundef %i.an, ptr noundef %.sroa.098.0, i64 noundef %i.ao, ptr noundef %.sroa.091.0122, ptr noundef %.sroa.086.0, ptr noundef nonnull %6)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.ab

_ZN9benchmark5State3endEv.exit:                   ; preds = %bb.aa
  %i.bs = add nsw i64 %.sroa.083.0137, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.bs, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %bb.aa, !prof !79

bb.ab:                                            ; preds = %bb.aa
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.pn33.pn = phi { ptr, i32 } [ %i.br, %bb.z ], [ %i.bt, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.not.i.i.i75 = icmp eq ptr %.sroa.086.0, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIlSaIlEED2Ev.exit76, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = ptrtoint ptr %.sroa.10.0 to i64
  %i.bv = ptrtoint ptr %.sroa.086.0 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.086.0, i64 noundef %i.bw) #14
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit76

_ZNSt6vectorIlSaIlEED2Ev.exit76:                  ; preds = %bb.ad, %bb.ac
  %.not.i.i.i77 = icmp eq ptr %.sroa.091.0122, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIfSaIfEED2Ev.exit78, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit76.thread, %_ZNSt6vectorIlSaIlEED2Ev.exit76
  %.pn33.pn.pn134 = phi { ptr, i32 } [ %i.bq, %_ZNSt6vectorIlSaIlEED2Ev.exit76.thread ], [ %.pn33.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit76 ]
  %.sroa.091.0120133 = phi ptr [ %i.x, %_ZNSt6vectorIlSaIlEED2Ev.exit76.thread ], [ %.sroa.091.0122, %_ZNSt6vectorIlSaIlEED2Ev.exit76 ] ; 2 uses
  %.sroa.1095.0124132 = phi ptr [ %i.y, %_ZNSt6vectorIlSaIlEED2Ev.exit76.thread ], [ %.sroa.1095.0126, %_ZNSt6vectorIlSaIlEED2Ev.exit76 ]
  %i.bx = ptrtoint ptr %.sroa.1095.0124132 to i64
  %i.by = ptrtoint ptr %.sroa.091.0120133 to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0120133, i64 noundef %i.bz) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit78

_ZNSt6vectorIfSaIfEED2Ev.exit78:                  ; preds = %bb.y, %_ZNSt6vectorIlSaIlEED2Ev.exit76, %bb.ae, %bb.x
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.x ], [ %i.bp, %bb.y ], [ %.pn33.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit76 ], [ %.pn33.pn.pn134, %bb.ae ] ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %.sroa.098.0, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIfSaIfEED2Ev.exit80, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit78
  %i.ca = ptrtoint ptr %.sroa.098.0 to i64
  %i.cb = sub i64 %.sroa.11.0, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0, i64 noundef %i.cb) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit80

_ZNSt6vectorIfSaIfEED2Ev.exit80:                  ; preds = %bb.w, %_ZNSt6vectorIfSaIfEED2Ev.exit78, %bb.af, %bb.v
  %.pn33.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.bn, %bb.w ], [ %.pn33.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit78 ], [ %.pn33.pn.pn.pn.pn, %bb.af ]
  call void @_ZN5faiss23ResidualCoarseQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(580) dereferenceable(580) %4) #12
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit80, %_ZNSt6vectorImSaImEED2Ev.exit74
  %.pn33.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit80 ], [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit82

_ZNSt6vectorIfSaIfEED2Ev.exit82:                  ; preds = %bb.ag, %7
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn.pn, %bb.ag ], [ %8, %7 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 134217728) #14
  resume { ptr, i32 } %.pn33.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN9benchmark9Benchmark10IterationsEl(ptr noundef nonnull align 8 dereferenceable(304), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark8ShutdownEv() local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS_9BenchmarkESt14default_deleteIS2_EE(ptr noundef align 8) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN9benchmark9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @_ZN9benchmark9BenchmarkD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_ED0Ev(ptr noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN9benchmark9BenchmarkD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 328) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEiifEJRiS7_RfEEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_E3RunES4_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80, !nonnull !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = load float, ptr %i.g, align 8, !tbaa !85
  tail call void %i.b(ptr noundef nonnull align 64 dereferenceable(184) %1, i32 noundef %i.d, i32 noundef %i.f, float noundef %i.h), !inline_history !86
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

declare void @_ZN5faiss10float_randEPfml(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZN5faiss23ResidualCoarseQuantizerC1EiRKSt6vectorImSaImEENS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(580), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

declare void @_ZN5faiss23AdditiveCoarseQuantizer5trainElPKf(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK5faiss23ResidualCoarseQuantizer6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(580), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss16SearchParametersD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss23ResidualCoarseQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(580) dereferenceable(580) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss23ResidualCoarseQuantizerE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN5faiss17AdditiveQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.a) #12
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss23AdditiveCoarseQuantizerE, i64 16), ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss23AdditiveCoarseQuantizerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #14
  br label %_ZN5faiss23AdditiveCoarseQuantizerD2Ev.exit

_ZN5faiss23AdditiveCoarseQuantizerD2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(72) %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss39SearchParametersResidualCoarseQuantizerD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #14
  ret void
}

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5faiss17AdditiveQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(412) dereferenceable(412)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bench_no_multithreading_rcq_search.cpp() #10 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  tail call void @_ZN6google14FlagRegistererC1IjEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLUL12o_iterationsE, ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN3fLU16FLAGS_iterationsE, ptr noundef nonnull @_ZN3fLUL18FLAGS_noiterationsE)
  tail call void @_ZN6google14FlagRegistererC1IjEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLUL8o_nprobeE, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN3fLU12FLAGS_nprobeE, ptr noundef nonnull @_ZN3fLUL14FLAGS_nonprobeE)
  tail call void @_ZN6google14FlagRegistererC1IjEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLUL12o_batch_sizeE, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN3fLU16FLAGS_batch_sizeE, ptr noundef nonnull @_ZN3fLUL18FLAGS_nobatch_sizeE)
  tail call void @_ZN6google14FlagRegistererC1IdEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLDL13o_beam_factorE, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN3fLD17FLAGS_beam_factorE, ptr noundef nonnull @_ZN3fLDL19FLAGS_nobeam_factorE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p2 omnipotent char", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !22, i64 8, !8, i64 16}
!22 = !{!"long", !8, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_: argument 0"}
!26 = distinct !{!26, !"_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEiifEJRiS8_RfEEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSJ_SP_EENSt8__detail9_MakeUniqISK_E15__single_objectESO_"}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !9, i64 0}
!29 = !{!14, !14, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !8, i64 0}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EPN9benchmark9BenchmarkELb0EE", !34, i64 0}
!34 = !{!"p1 _ZTSN9benchmark9BenchmarkE", !14, i64 0}
!35 = !{!34, !34, i64 0}
!36 = distinct !{null, null, null, null}
!37 = !{!21, !19, i64 0}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 long", !14, i64 0}
!41 = !{!39, !40, i64 16}
!42 = !{!39, !40, i64 8}
!43 = !{!44, !45, i64 24}
!44 = !{!"_ZTSN5faiss5IndexE", !7, i64 8, !22, i64 16, !45, i64 24, !45, i64 25, !46, i64 28, !31, i64 32}
!45 = !{!"bool", !8, i64 0}
!46 = !{!"_ZTSN5faiss10MetricTypeE", !8, i64 0}
!47 = !{!22, !22, i64 0}
!48 = !{!49, !50, i64 8}
!49 = !{!"_ZTSN5faiss16SearchParametersE", !50, i64 8}
!50 = !{!"p1 _ZTSN5faiss10IDSelectorE", !14, i64 0}
!51 = !{!52, !31, i64 16}
!52 = !{!"_ZTSN5faiss39SearchParametersResidualCoarseQuantizerE", !49, i64 0, !31, i64 16}
end_hunk_0
