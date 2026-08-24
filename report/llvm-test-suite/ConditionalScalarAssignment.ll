Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ConditionalScalarAssignment?download=true
inline.NumInlined: 601
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::uniform_int_distribution" = type { %"struct.std::uniform_int_distribution<>::param_type" }
%"struct.std::uniform_int_distribution<>::param_type" = type { i32, i32 }
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.27" }
%"struct.std::_Head_base.27" = type { ptr }
%"class.std::uniform_int_distribution.38" = type { %"struct.std::uniform_int_distribution<unsigned char>::param_type" }
%"struct.std::uniform_int_distribution<unsigned char>::param_type" = type { i8, i8 }
%"class.std::unique_ptr.28" = type { %"struct.std::__uniq_ptr_data.29" }
%"struct.std::__uniq_ptr_data.29" = type { %"class.std::__uniq_ptr_impl.30" }
%"class.std::__uniq_ptr_impl.30" = type { %"class.std::tuple.31" }
%"class.std::tuple.31" = type { %"struct.std::_Tuple_impl.32" }
%"struct.std::_Tuple_impl.32" = type { %"struct.std::_Head_base.35" }
%"struct.std::_Head_base.35" = type { ptr }
%"class.std::uniform_int_distribution.49" = type { %"struct.std::uniform_int_distribution<long>::param_type" }
%"struct.std::uniform_int_distribution<long>::param_type" = type { i64, i64 }
%"class.std::unique_ptr.39" = type { %"struct.std::__uniq_ptr_data.40" }
%"struct.std::__uniq_ptr_data.40" = type { %"class.std::__uniq_ptr_impl.41" }
%"class.std::__uniq_ptr_impl.41" = type { %"class.std::tuple.42" }
%"class.std::tuple.42" = type { %"struct.std::_Tuple_impl.43" }
%"struct.std::_Tuple_impl.43" = type { %"struct.std::_Head_base.46" }
%"struct.std::_Head_base.46" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE = comdat any

$_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv = comdat any

$_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE = comdat any

$_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE = comdat any

@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [43 x i8] c"BENCHMARK_single_csa_only_autovec_int32_t_\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"BENCHMARK_single_csa_only_novec_int32_t_\00", align 1
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"BENCHMARK_multi_csa_only_autovec_int32_t_\00", align 1
@_ZL27benchmark_uniq_5_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"BENCHMARK_multi_csa_only_novec_int32_t_\00", align 1
@_ZL27benchmark_uniq_6_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"BENCHMARK_csa_with_arith_autovec_int32_t_\00", align 1
@_ZL27benchmark_uniq_7_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [40 x i8] c"BENCHMARK_csa_with_arith_novec_int32_t_\00", align 1
@_ZL27benchmark_uniq_8_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"BENCHMARK_single_csa_only_autovec_uint8_t_\00", align 1
@_ZL27benchmark_uniq_9_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"BENCHMARK_single_csa_only_novec_uint8_t_\00", align 1
@_ZL28benchmark_uniq_10_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [42 x i8] c"BENCHMARK_multi_csa_only_autovec_uint8_t_\00", align 1
@_ZL28benchmark_uniq_11_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.19 = private unnamed_addr constant [40 x i8] c"BENCHMARK_multi_csa_only_novec_uint8_t_\00", align 1
@_ZL28benchmark_uniq_12_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.21 = private unnamed_addr constant [42 x i8] c"BENCHMARK_csa_with_arith_autovec_uint8_t_\00", align 1
@_ZL28benchmark_uniq_13_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [40 x i8] c"BENCHMARK_csa_with_arith_novec_uint8_t_\00", align 1
@_ZL28benchmark_uniq_14_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.25 = private unnamed_addr constant [43 x i8] c"BENCHMARK_single_csa_only_autovec_int64_t_\00", align 1
@_ZL28benchmark_uniq_15_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [41 x i8] c"BENCHMARK_single_csa_only_novec_int64_t_\00", align 1
@_ZL28benchmark_uniq_16_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.29 = private unnamed_addr constant [42 x i8] c"BENCHMARK_multi_csa_only_autovec_int64_t_\00", align 1
@_ZL28benchmark_uniq_17_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [40 x i8] c"BENCHMARK_multi_csa_only_novec_int64_t_\00", align 1
@_ZL28benchmark_uniq_18_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [42 x i8] c"BENCHMARK_csa_with_arith_autovec_int64_t_\00", align 1
@_ZL28benchmark_uniq_19_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.35 = private unnamed_addr constant [40 x i8] c"BENCHMARK_csa_with_arith_novec_int64_t_\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ConditionalScalarAssignment.cpp, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_Z42BENCHMARK_single_csa_only_autovec_int32_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 4 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 100, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.j

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL27run_single_csa_only_autovecIiET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.j

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL27run_single_csa_only_autovecIiET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bb, %_ZL27run_single_csa_only_autovecIiET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ splat (i32 101), %.lr.ph ], [ %i.av, %vector.body ]
  %i.ak = phi <4 x i1> [ zeroinitializer, %.lr.ph ], [ %i.au, %vector.body ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %wide.load.fr = freeze <4 x i32> %wide.load     ; 2 uses
  %i.am = icmp sgt <4 x i32> %wide.load.fr, splat (i32 75) ; 2 uses
  %i.an = bitcast <4 x i1> %i.am to i4
  %.not54 = icmp eq i4 %i.an, 0                   ; 2 uses
  %i.ao = select i1 %.not54, <4 x i1> %i.ak, <4 x i1> %i.am
  %i.ap = select i1 %.not54, <4 x i32> %vec.phi, <4 x i32> %wide.load.fr
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load.fr.1 = freeze <4 x i32> %wide.load.1 ; 2 uses
  %i.as = icmp sgt <4 x i32> %wide.load.fr.1, splat (i32 75) ; 2 uses
  %i.at = bitcast <4 x i1> %i.as to i4
  %.not54.1 = icmp eq i4 %i.at, 0                 ; 2 uses
  %i.au = select i1 %.not54.1, <4 x i1> %i.ao, <4 x i1> %i.as ; 2 uses
  %i.av = select i1 %.not54.1, <4 x i32> %i.ap, <4 x i32> %wide.load.fr.1 ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next.1, 100000
  br i1 %i.aw, label %_ZL27run_single_csa_only_autovecIiET_PS0_S1_S1_S0_.exit, label %vector.body, !llvm.loop !47

_ZL27run_single_csa_only_autovecIiET_PS0_S1_S1_S0_.exit: ; preds = %vector.body
  %i.ax = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.av, <4 x i1> %i.au, i32 101)
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %3, i64 %i.aj) #7, !srcloc !50
  %i.ay = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.ay) #7, !srcloc !50
  %i.az = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.az) #7, !srcloc !50
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.ba) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bb = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bb, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.j:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.j
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bc, %bb.j ]
  %i.bd = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.j ]
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.j
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bc, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  %i.be = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.be) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bf = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bg = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i19 = icmp eq ptr %i.bg, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bh = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %.not.i22 = icmp eq ptr %i.bh, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bi = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %.not.i25 = icmp eq ptr %i.bi, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z40BENCHMARK_single_csa_only_novec_int32_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 4 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 100, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL25run_single_csa_only_novecIiET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL25run_single_csa_only_novecIiET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bg, %_ZL25run_single_csa_only_novecIiET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 6 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.4, %bb.j ] ; 6 uses
  %.071.i = phi i32 [ 101, %.lr.ph ], [ %spec.select.i.4, %bb.j ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = icmp sgt i32 %i.al, 75
  %spec.select.i = select i1 %i.am, i32 %i.al, i32 %.071.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 75
  %spec.select.i.1 = select i1 %i.aq, i32 %i.ap, i32 %spec.select.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 75
  %spec.select.i.2 = select i1 %i.au, i32 %i.at, i32 %spec.select.i.1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 75
  %spec.select.i.3 = select i1 %i.ay, i32 %i.ax, i32 %spec.select.i.2
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 75
  %spec.select.i.4 = select i1 %i.bc, i32 %i.bb, i32 %spec.select.i.3 ; 2 uses
  %indvars.iv.next.i10.4 = add nuw nsw i64 %indvars.iv.i9, 5 ; 2 uses
  %exitcond.not.i11.4 = icmp eq i64 %indvars.iv.next.i10.4, 100000
  br i1 %exitcond.not.i11.4, label %_ZL25run_single_csa_only_novecIiET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !52

_ZL25run_single_csa_only_novecIiET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i32 %spec.select.i.4, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %3, i64 %i.aj) #7, !srcloc !50
  %i.bd = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.bd) #7, !srcloc !50
  %i.be = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.be) #7, !srcloc !50
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.bf) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bg = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bg, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bh, %bb.k ]
  %i.bi = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  %i.bj = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bk = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bl = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bm = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %.not.i22 = icmp eq ptr %i.bm, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bn = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %.not.i25 = icmp eq ptr %i.bn, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z41BENCHMARK_multi_csa_only_autovec_int32_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 4 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 100, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.j

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.j

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.028.044 = phi i64 [ %i.bn, %_ZN9benchmark5State3endEv.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !8
  %i.al = ptrtoint ptr %i.ai to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i32> [ splat (i32 101), %.lr.ph ], [ %i.bd, %vector.body ]
  %i.am = phi <4 x i1> [ zeroinitializer, %.lr.ph ], [ %i.bc, %vector.body ]
  %vec.phi54 = phi <4 x i32> [ splat (i32 101), %.lr.ph ], [ %i.ay, %vector.body ]
  %i.an = phi <4 x i1> [ zeroinitializer, %.lr.ph ], [ %i.ax, %vector.body ]
  %vec.phi55 = phi <4 x i32> [ splat (i32 101), %.lr.ph ], [ %i.at, %vector.body ]
  %i.ao = phi <4 x i1> [ zeroinitializer, %.lr.ph ], [ %i.as, %vector.body ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %wide.load.fr = freeze <4 x i32> %wide.load     ; 2 uses
  %i.aq = icmp sgt <4 x i32> %wide.load.fr, splat (i32 75) ; 2 uses
  %i.ar = bitcast <4 x i1> %i.aq to i4
  %.not58 = icmp eq i4 %i.ar, 0                   ; 2 uses
  %i.as = select i1 %.not58, <4 x i1> %i.ao, <4 x i1> %i.aq ; 2 uses
  %i.at = select i1 %.not58, <4 x i32> %vec.phi55, <4 x i32> %wide.load.fr ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  %wide.load56 = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %wide.load56.fr = freeze <4 x i32> %wide.load56 ; 2 uses
  %i.av = icmp sgt <4 x i32> %wide.load56.fr, splat (i32 75) ; 2 uses
  %i.aw = bitcast <4 x i1> %i.av to i4
  %.not59 = icmp eq i4 %i.aw, 0                   ; 2 uses
  %i.ax = select i1 %.not59, <4 x i1> %i.an, <4 x i1> %i.av ; 2 uses
  %i.ay = select i1 %.not59, <4 x i32> %vec.phi54, <4 x i32> %wide.load56.fr ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index
  %wide.load57 = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %wide.load57.fr = freeze <4 x i32> %wide.load57 ; 2 uses
  %i.ba = icmp sgt <4 x i32> %wide.load57.fr, splat (i32 75) ; 2 uses
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %.not60 = icmp eq i4 %i.bb, 0                   ; 2 uses
  %i.bc = select i1 %.not60, <4 x i1> %i.am, <4 x i1> %i.ba ; 2 uses
  %i.bd = select i1 %.not60, <4 x i32> %vec.phi, <4 x i32> %wide.load57.fr ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, 100000
  br i1 %i.be, label %_ZN9benchmark5State3endEv.exit, label %vector.body, !llvm.loop !55

_ZN9benchmark5State3endEv.exit:                   ; preds = %vector.body
  %i.bf = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.at, <4 x i1> %i.as, i32 101)
  %i.bg = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.ay, <4 x i1> %i.ax, i32 101)
  %i.bh = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.bd, <4 x i1> %i.bc, i32 101)
  %i.bi = xor i32 %i.bg, %i.bf
  %i.bj = xor i32 %i.bi, %i.bh
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %3, i64 %i.al) #7, !srcloc !50
  %i.bk = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.bk) #7, !srcloc !50
  %i.bl = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.bl) #7, !srcloc !50
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.bm) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bn = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bn, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.j:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.j
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bo, %bb.j ]
  %i.bp = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.j ]
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.j
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bo, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  %i.bq = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.br = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.br) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bs = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i19 = icmp eq ptr %i.bs, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bt = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %.not.i22 = icmp eq ptr %i.bt, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bu = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %.not.i25 = icmp eq ptr %i.bu, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z39BENCHMARK_multi_csa_only_novec_int32_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 4 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 100, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZN9benchmark5State3endEv.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01929.i = phi i32 [ 101, %.lr.ph ], [ %.1.i.1, %bb.j ]
  %.02028.i = phi i32 [ 101, %.lr.ph ], [ %.121.i.1, %bb.j ]
  %.02227.i = phi i32 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 75
  %spec.select.i = select i1 %i.ao, i32 %i.an, i32 %.02227.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i9
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 75
  %.121.i = select i1 %i.ar, i32 %i.aq, i32 %.02028.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i9
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 75
  %.1.i = select i1 %i.au, i32 %i.at, i32 %.01929.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i10
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 75
  %spec.select.i.1 = select i1 %i.ax, i32 %i.aw, i32 %spec.select.i ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 75
  %.121.i.1 = select i1 %i.ba, i32 %i.az, i32 %.121.i ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i10
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 75
  %.1.i.1 = select i1 %i.bd, i32 %i.bc, i32 %.1.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZN9benchmark5State3endEv.exit, label %bb.j, !llvm.loop !56

_ZN9benchmark5State3endEv.exit:                   ; preds = %bb.j
  %i.be = xor i32 %.121.i.1, %spec.select.i.1
  %i.bf = xor i32 %i.be, %.1.i.1
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %3, i64 %i.al) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bp = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bq = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %.not.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z41BENCHMARK_csa_with_arith_autovec_int32_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 4 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 100, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.j

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL26run_csa_with_arith_autovecIiET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.j

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL26run_csa_with_arith_autovecIiET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bw, %_ZL26run_csa_with_arith_autovecIiET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8, !tbaa !8     ; 5 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !8     ; 5 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !8     ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ak, i64 400000 ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.ai, i64 400000
  %scevgep55 = getelementptr i8, ptr %i.aj, i64 400000
  %bound0 = icmp ult ptr %i.ak, %scevgep54
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %i.ak, %scevgep55
  %bound157 = icmp ult ptr %i.aj, %scevgep
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %vec.phi = phi <4 x i32> [ %i.av, %vector.body ], [ splat (i32 101), %.lr.ph ]
  %i.al = phi <4 x i1> [ %i.au, %vector.body ], [ zeroinitializer, %.lr.ph ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !57
  %i.an = mul nsw <4 x i32> %wide.load, splat (i32 13)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  %wide.load59 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4, !alias.scope !60
  %i.ap = mul nsw <4 x i32> %wide.load59, splat (i32 5)
  %i.aq = add nsw <4 x i32> %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index
  store <4 x i32> %i.aq, ptr %i.ar, align 4, !tbaa !4, !alias.scope !62, !noalias !64
  %wide.load60 = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !57
  %wide.load60.fr = freeze <4 x i32> %wide.load60 ; 2 uses
  %i.as = icmp sgt <4 x i32> %wide.load60.fr, splat (i32 75) ; 2 uses
  %i.at = bitcast <4 x i1> %i.as to i4
  %.not61 = icmp eq i4 %i.at, 0                   ; 2 uses
  %i.au = select i1 %.not61, <4 x i1> %i.al, <4 x i1> %i.as ; 2 uses
  %i.av = select i1 %.not61, <4 x i32> %vec.phi, <4 x i32> %wide.load60.fr ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, 100000
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %i.ax = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.av, <4 x i1> %i.au, i32 101)
  br label %_ZL26run_csa_with_arith_autovecIiET_PS0_S1_S1_S0_.exit

scalar.ph:                                        ; preds = %.lr.ph, %scalar.ph
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10.1, %scalar.ph ], [ 0, %.lr.ph ] ; 5 uses
  %.01315.i = phi i32 [ %spec.select.i.1, %scalar.ph ], [ 101, %.lr.ph ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = mul nsw i32 %i.az, 13
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i9
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = mul nsw i32 %i.bc, 5
  %i.be = add nsw i32 %i.bd, %i.ba
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i9
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !4
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 75
  %spec.select.i = select i1 %i.bh, i32 %i.bg, i32 %.01315.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i10 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = mul nsw i32 %i.bj, 13
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i10
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = mul nsw i32 %i.bm, 5
  %i.bo = add nsw i32 %i.bn, %i.bk
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i10
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !4
  %i.bq = load i32, ptr %i.bi, align 4, !tbaa !4  ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 75
  %spec.select.i.1 = select i1 %i.br, i32 %i.bq, i32 %spec.select.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZL26run_csa_with_arith_autovecIiET_PS0_S1_S1_S0_.exit, label %scalar.ph, !llvm.loop !66

_ZL26run_csa_with_arith_autovecIiET_PS0_S1_S1_S0_.exit: ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.ax, %middle.block ], [ %spec.select.i.1, %scalar.ph ]
  store i32 %spec.select.i.lcssa, ptr %i.a, align 4, !tbaa !4
  %i.bs = load i64, ptr %3, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %3, i64 %i.bs) #7, !srcloc !50
  %i.bt = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.bt) #7, !srcloc !50
  %i.bu = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.bu) #7, !srcloc !50
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.bv) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bw = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bw, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.j:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.j
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bx, %bb.j ]
  %i.by = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.j ]
  call void @_ZdaPv(ptr noundef nonnull %i.by) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.j
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bx, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  %i.bz = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.ca = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.cb = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i19 = icmp eq ptr %i.cb, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.cc = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %.not.i22 = icmp eq ptr %i.cc, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.cd = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %.not.i25 = icmp eq ptr %i.cd, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z39BENCHMARK_csa_with_arith_novec_int32_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 4 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(400000) ptr @_Znam(i64 noundef 400000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 100, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL24run_csa_with_arith_novecIiET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL24run_csa_with_arith_novecIiET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZL24run_csa_with_arith_novecIiET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01315.i = phi i32 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i9 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = mul nsw i32 %i.am, 13
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i9
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = mul nsw i32 %i.ap, 5
  %i.ar = add nsw i32 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i9
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !4
  %i.at = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 75
  %spec.select.i = select i1 %i.au, i32 %i.at, i32 %.01315.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i10 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = mul nsw i32 %i.aw, 13
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = mul nsw i32 %i.az, 5
  %i.bb = add nsw i32 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i10
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !4
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 75
  %spec.select.i.1 = select i1 %i.be, i32 %i.bd, i32 %spec.select.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZL24run_csa_with_arith_novecIiET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !67

_ZL24run_csa_with_arith_novecIiET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i32 %spec.select.i.1, ptr %i.a, align 4, !tbaa !4
  %i.bf = load i64, ptr %3, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %3, i64 %i.bf) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIiEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bp = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bq = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %.not.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z42BENCHMARK_single_csa_only_autovec_uint8_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 1 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.28", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i8 0, ptr %1, align 1, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 100, ptr %i.e, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !72
  %i.w = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !72
  %i.y = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !73

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.j

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL27run_single_csa_only_autovecIhET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.j

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL27run_single_csa_only_autovecIhET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bb, %_ZL27run_single_csa_only_autovecIhET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x i8> [ splat (i8 101), %.lr.ph ], [ %i.av, %vector.body ]
  %i.ak = phi <16 x i1> [ zeroinitializer, %.lr.ph ], [ %i.au, %vector.body ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index
  %wide.load = load <16 x i8>, ptr %i.al, align 1, !tbaa !72
  %wide.load.fr = freeze <16 x i8> %wide.load     ; 2 uses
  %i.am = icmp ugt <16 x i8> %wide.load.fr, splat (i8 90) ; 2 uses
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not54 = icmp eq i16 %i.an, 0                  ; 2 uses
  %i.ao = select i1 %.not54, <16 x i1> %i.ak, <16 x i1> %i.am
  %i.ap = select i1 %.not54, <16 x i8> %vec.phi, <16 x i8> %wide.load.fr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !72
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1 ; 2 uses
  %i.as = icmp ugt <16 x i8> %wide.load.fr.1, splat (i8 90) ; 2 uses
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not54.1 = icmp eq i16 %i.at, 0                ; 2 uses
  %i.au = select i1 %.not54.1, <16 x i1> %i.ao, <16 x i1> %i.as ; 2 uses
  %i.av = select i1 %.not54.1, <16 x i8> %i.ap, <16 x i8> %wide.load.fr.1 ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.aw = icmp eq i64 %index.next.1, 100000
  br i1 %i.aw, label %_ZL27run_single_csa_only_autovecIhET_PS0_S1_S1_S0_.exit, label %vector.body, !llvm.loop !74

_ZL27run_single_csa_only_autovecIhET_PS0_S1_S1_S0_.exit: ; preds = %vector.body
  %i.ax = call i8 @llvm.experimental.vector.extract.last.active.v16i8(<16 x i8> %i.av, <16 x i1> %i.au, i8 101)
  store i8 %i.ax, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %3, i64 %i.aj) #7, !srcloc !50
  %i.ay = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.ay) #7, !srcloc !50
  %i.az = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.az) #7, !srcloc !50
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) align 1 dereferenceable(1) %i.a, i8 %i.ba) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bb = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bb, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.j:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.j
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bc, %bb.j ]
  %i.bd = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.j ]
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.j
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bc, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !68     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.be = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.be) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bf = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bg = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bg, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bh = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bh, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bi = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bi, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z40BENCHMARK_single_csa_only_novec_uint8_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 1 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.28", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i8 0, ptr %1, align 1, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 100, ptr %i.e, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !72
  %i.w = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !72
  %i.y = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !73

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL25run_single_csa_only_novecIhET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL25run_single_csa_only_novecIhET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bg, %_ZL25run_single_csa_only_novecIhET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 6 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.4, %bb.j ] ; 6 uses
  %.071.i = phi i8 [ 101, %.lr.ph ], [ %spec.select.i.4, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !72  ; 2 uses
  %i.am = icmp ugt i8 %i.al, 90
  %spec.select.i = select i1 %i.am, i8 %i.al, i8 %.071.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !72  ; 2 uses
  %i.aq = icmp ugt i8 %i.ap, 90
  %spec.select.i.1 = select i1 %i.aq, i8 %i.ap, i8 %spec.select.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !72  ; 2 uses
  %i.au = icmp ugt i8 %i.at, 90
  %spec.select.i.2 = select i1 %i.au, i8 %i.at, i8 %spec.select.i.1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !72  ; 2 uses
  %i.ay = icmp ugt i8 %i.ax, 90
  %spec.select.i.3 = select i1 %i.ay, i8 %i.ax, i8 %spec.select.i.2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !72  ; 2 uses
  %i.bc = icmp ugt i8 %i.bb, 90
  %spec.select.i.4 = select i1 %i.bc, i8 %i.bb, i8 %spec.select.i.3 ; 2 uses
  %indvars.iv.next.i10.4 = add nuw nsw i64 %indvars.iv.i9, 5 ; 2 uses
  %exitcond.not.i11.4 = icmp eq i64 %indvars.iv.next.i10.4, 100000
  br i1 %exitcond.not.i11.4, label %_ZL25run_single_csa_only_novecIhET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !75

_ZL25run_single_csa_only_novecIhET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i8 %spec.select.i.4, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %3, i64 %i.aj) #7, !srcloc !50
  %i.bd = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.bd) #7, !srcloc !50
  %i.be = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.be) #7, !srcloc !50
  %i.bf = load i8, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) align 1 dereferenceable(1) %i.a, i8 %i.bf) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bg = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bg, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bh, %bb.k ]
  %i.bi = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !68     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.bj = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bk = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bl = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bm = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bm, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bn = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bn, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z41BENCHMARK_multi_csa_only_autovec_uint8_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 1 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.28", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i8 0, ptr %1, align 1, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 100, ptr %i.e, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !72
  %i.w = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !72
  %i.y = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !73

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.j

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.j

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.028.044 = phi i64 [ %i.bn, %_ZN9benchmark5State3endEv.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !68
  %i.ak = load ptr, ptr %5, align 8, !tbaa !68
  %i.al = ptrtoint ptr %i.ai to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i8> [ splat (i8 101), %.lr.ph ], [ %i.bd, %vector.body ]
  %i.am = phi <16 x i1> [ zeroinitializer, %.lr.ph ], [ %i.bc, %vector.body ]
  %vec.phi54 = phi <16 x i8> [ splat (i8 101), %.lr.ph ], [ %i.ay, %vector.body ]
  %i.an = phi <16 x i1> [ zeroinitializer, %.lr.ph ], [ %i.ax, %vector.body ]
  %vec.phi55 = phi <16 x i8> [ splat (i8 101), %.lr.ph ], [ %i.at, %vector.body ]
  %i.ao = phi <16 x i1> [ zeroinitializer, %.lr.ph ], [ %i.as, %vector.body ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !72
  %wide.load.fr = freeze <16 x i8> %wide.load     ; 2 uses
  %i.aq = icmp ugt <16 x i8> %wide.load.fr, splat (i8 90) ; 2 uses
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not58 = icmp eq i16 %i.ar, 0                  ; 2 uses
  %i.as = select i1 %.not58, <16 x i1> %i.ao, <16 x i1> %i.aq ; 2 uses
  %i.at = select i1 %.not58, <16 x i8> %vec.phi55, <16 x i8> %wide.load.fr ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %wide.load56 = load <16 x i8>, ptr %i.au, align 1, !tbaa !72
  %wide.load56.fr = freeze <16 x i8> %wide.load56 ; 2 uses
  %i.av = icmp ugt <16 x i8> %wide.load56.fr, splat (i8 90) ; 2 uses
  %i.aw = bitcast <16 x i1> %i.av to i16
  %.not59 = icmp eq i16 %i.aw, 0                  ; 2 uses
  %i.ax = select i1 %.not59, <16 x i1> %i.an, <16 x i1> %i.av ; 2 uses
  %i.ay = select i1 %.not59, <16 x i8> %vec.phi54, <16 x i8> %wide.load56.fr ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index
  %wide.load57 = load <16 x i8>, ptr %i.az, align 1, !tbaa !72
  %wide.load57.fr = freeze <16 x i8> %wide.load57 ; 2 uses
  %i.ba = icmp ugt <16 x i8> %wide.load57.fr, splat (i8 90) ; 2 uses
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %.not60 = icmp eq i16 %i.bb, 0                  ; 2 uses
  %i.bc = select i1 %.not60, <16 x i1> %i.am, <16 x i1> %i.ba ; 2 uses
  %i.bd = select i1 %.not60, <16 x i8> %vec.phi, <16 x i8> %wide.load57.fr ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, 100000
  br i1 %i.be, label %_ZN9benchmark5State3endEv.exit, label %vector.body, !llvm.loop !76

_ZN9benchmark5State3endEv.exit:                   ; preds = %vector.body
  %i.bf = call i8 @llvm.experimental.vector.extract.last.active.v16i8(<16 x i8> %i.at, <16 x i1> %i.as, i8 101)
  %i.bg = call i8 @llvm.experimental.vector.extract.last.active.v16i8(<16 x i8> %i.ay, <16 x i1> %i.ax, i8 101)
  %i.bh = call i8 @llvm.experimental.vector.extract.last.active.v16i8(<16 x i8> %i.bd, <16 x i1> %i.bc, i8 101)
  %i.bi = xor i8 %i.bg, %i.bf
  %i.bj = xor i8 %i.bi, %i.bh
  store i8 %i.bj, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %3, i64 %i.al) #7, !srcloc !50
  %i.bk = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.bk) #7, !srcloc !50
  %i.bl = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.bl) #7, !srcloc !50
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) align 1 dereferenceable(1) %i.a, i8 %i.bm) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bn = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bn, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.j:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.j
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bo, %bb.j ]
  %i.bp = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.j ]
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.j
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bo, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !68     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.bq = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.br = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.br) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bs = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bs, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bt = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bt, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bu = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bu, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z39BENCHMARK_multi_csa_only_novec_uint8_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 1 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.28", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i8 0, ptr %1, align 1, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 100, ptr %i.e, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !72
  %i.w = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !72
  %i.y = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !73

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZN9benchmark5State3endEv.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01926.i = phi i8 [ 101, %.lr.ph ], [ %.1.i.1, %bb.j ]
  %.02025.i = phi i8 [ 101, %.lr.ph ], [ %.121.i.1, %bb.j ]
  %.02224.i = phi i8 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !72  ; 2 uses
  %i.ao = icmp ugt i8 %i.an, 90
  %spec.select.i = select i1 %i.ao, i8 %i.an, i8 %.02224.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !72  ; 2 uses
  %i.ar = icmp ugt i8 %i.aq, 90
  %.121.i = select i1 %i.ar, i8 %i.aq, i8 %.02025.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.i9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !72  ; 2 uses
  %i.au = icmp ugt i8 %i.at, 90
  %.1.i = select i1 %i.au, i8 %i.at, i8 %.01926.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next.i10
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !72  ; 2 uses
  %i.ax = icmp ugt i8 %i.aw, 90
  %spec.select.i.1 = select i1 %i.ax, i8 %i.aw, i8 %spec.select.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !72  ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 90
  %.121.i.1 = select i1 %i.ba, i8 %i.az, i8 %.121.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.i10
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !72  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 90
  %.1.i.1 = select i1 %i.bd, i8 %i.bc, i8 %.1.i   ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZN9benchmark5State3endEv.exit, label %bb.j, !llvm.loop !77

_ZN9benchmark5State3endEv.exit:                   ; preds = %bb.j
  %i.be = xor i8 %.121.i.1, %spec.select.i.1
  %i.bf = xor i8 %i.be, %.1.i.1
  store i8 %i.bf, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %3, i64 %i.al) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) align 1 dereferenceable(1) %i.a, i8 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !68     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bp = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bq = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z41BENCHMARK_csa_with_arith_autovec_uint8_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 1 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i8 0, ptr %1, align 1, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 100, ptr %i.e, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !72
  %i.w = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !72
  %i.y = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !73

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.j

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL26run_csa_with_arith_autovecIhET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.j

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL26run_csa_with_arith_autovecIhET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bw, %_ZL26run_csa_with_arith_autovecIhET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8, !tbaa !68    ; 5 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !68    ; 5 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !68    ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ak, i64 100000 ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.ai, i64 100000
  %scevgep55 = getelementptr i8, ptr %i.aj, i64 100000
  %bound0 = icmp ult ptr %i.ak, %scevgep54
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %i.ak, %scevgep55
  %bound157 = icmp ult ptr %i.aj, %scevgep
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %vec.phi = phi <16 x i8> [ %i.av, %vector.body ], [ splat (i8 101), %.lr.ph ]
  %i.al = phi <16 x i1> [ %i.au, %vector.body ], [ zeroinitializer, %.lr.ph ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !72, !alias.scope !78
  %i.an = mul <16 x i8> %wide.load, splat (i8 13)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %wide.load59 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !72, !alias.scope !81
  %i.ap = mul <16 x i8> %wide.load59, splat (i8 5)
  %i.aq = add <16 x i8> %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index
  store <16 x i8> %i.aq, ptr %i.ar, align 1, !tbaa !72, !alias.scope !83, !noalias !85
  %wide.load60 = load <16 x i8>, ptr %i.am, align 1, !tbaa !72, !alias.scope !78
  %wide.load60.fr = freeze <16 x i8> %wide.load60 ; 2 uses
  %i.as = icmp ugt <16 x i8> %wide.load60.fr, splat (i8 90) ; 2 uses
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not61 = icmp eq i16 %i.at, 0                  ; 2 uses
  %i.au = select i1 %.not61, <16 x i1> %i.al, <16 x i1> %i.as ; 2 uses
  %i.av = select i1 %.not61, <16 x i8> %vec.phi, <16 x i8> %wide.load60.fr ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, 100000
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %i.ax = call i8 @llvm.experimental.vector.extract.last.active.v16i8(<16 x i8> %i.av, <16 x i1> %i.au, i8 101)
  br label %_ZL26run_csa_with_arith_autovecIhET_PS0_S1_S1_S0_.exit

scalar.ph:                                        ; preds = %.lr.ph, %scalar.ph
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10.1, %scalar.ph ], [ 0, %.lr.ph ] ; 5 uses
  %.01314.i = phi i8 [ %spec.select.i.1, %scalar.ph ], [ 101, %.lr.ph ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !72
  %i.ba = mul i8 %i.az, 13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !72
  %i.bd = mul i8 %i.bc, 5
  %i.be = add i8 %i.bd, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.i9
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !72
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !72  ; 2 uses
  %i.bh = icmp ugt i8 %i.bg, 90
  %spec.select.i = select i1 %i.bh, i8 %i.bg, i8 %.01314.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next.i10 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !72
  %i.bk = mul i8 %i.bj, 13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.i10
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !72
  %i.bn = mul i8 %i.bm, 5
  %i.bo = add i8 %i.bn, %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.i10
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !72
  %i.bq = load i8, ptr %i.bi, align 1, !tbaa !72  ; 2 uses
  %i.br = icmp ugt i8 %i.bq, 90
  %spec.select.i.1 = select i1 %i.br, i8 %i.bq, i8 %spec.select.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZL26run_csa_with_arith_autovecIhET_PS0_S1_S1_S0_.exit, label %scalar.ph, !llvm.loop !87

_ZL26run_csa_with_arith_autovecIhET_PS0_S1_S1_S0_.exit: ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i8 [ %i.ax, %middle.block ], [ %spec.select.i.1, %scalar.ph ]
  store i8 %spec.select.i.lcssa, ptr %i.a, align 1, !tbaa !72
  %i.bs = load i64, ptr %3, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %3, i64 %i.bs) #7, !srcloc !50
  %i.bt = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.bt) #7, !srcloc !50
  %i.bu = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.bu) #7, !srcloc !50
  %i.bv = load i8, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) align 1 dereferenceable(1) %i.a, i8 %i.bv) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bw = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bw, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.j:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.j
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bx, %bb.j ]
  %i.by = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.j ]
  call void @_ZdaPv(ptr noundef nonnull %i.by) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.j
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bx, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !68     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.bz = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.ca = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.cb = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i19 = icmp eq ptr %i.cb, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.cc = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %.not.i22 = icmp eq ptr %i.cc, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.cd = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.not.i25 = icmp eq ptr %i.cd, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z39BENCHMARK_csa_with_arith_novec_uint8_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.38", align 1 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.28", align 8 ; 9 uses
  %4 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.28", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(100000) ptr @_Znam(i64 noundef 100000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i8 0, ptr %1, align 1, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 100, ptr %i.e, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !72
  %i.w = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !72
  %i.y = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(2) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !73

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL24run_csa_with_arith_novecIhET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL24run_csa_with_arith_novecIhET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZL24run_csa_with_arith_novecIhET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01314.i = phi i8 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i9 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !72
  %i.an = mul i8 %i.am, 13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !72
  %i.aq = mul i8 %i.ap, 5
  %i.ar = add i8 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.i9
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !72
  %i.at = load i8, ptr %i.al, align 1, !tbaa !72  ; 2 uses
  %i.au = icmp ugt i8 %i.at, 90
  %spec.select.i = select i1 %i.au, i8 %i.at, i8 %.01314.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next.i10 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !72
  %i.ax = mul i8 %i.aw, 13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !72
  %i.ba = mul i8 %i.az, 5
  %i.bb = add i8 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.i10
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !72
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !72  ; 2 uses
  %i.be = icmp ugt i8 %i.bd, 90
  %spec.select.i.1 = select i1 %i.be, i8 %i.bd, i8 %spec.select.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZL24run_csa_with_arith_novecIhET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !88

_ZL24run_csa_with_arith_novecIhET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i8 %spec.select.i.1, ptr %i.a, align 1, !tbaa !72
  %i.bf = load i64, ptr %3, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %3, i64 %i.bf) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.28") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !72
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) align 1 dereferenceable(1) %i.a, i8 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !68     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIhEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bp = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bq = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z42BENCHMARK_single_csa_only_autovec_int64_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 8 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i64 0, ptr %1, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 100, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !14
  %i.w = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL27run_single_csa_only_autovecIlET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL27run_single_csa_only_autovecIlET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bg, %_ZL27run_single_csa_only_autovecIlET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 6 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.4, %bb.j ] ; 6 uses
  %.071.i = phi i64 [ 101, %.lr.ph ], [ %spec.select.i.4, %bb.j ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 60
  %spec.select.i = select i1 %i.am, i64 %i.al, i64 %.071.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 60
  %spec.select.i.1 = select i1 %i.aq, i64 %i.ap, i64 %spec.select.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 60
  %spec.select.i.2 = select i1 %i.au, i64 %i.at, i64 %spec.select.i.1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 60
  %spec.select.i.3 = select i1 %i.ay, i64 %i.ax, i64 %spec.select.i.2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 60
  %spec.select.i.4 = select i1 %i.bc, i64 %i.bb, i64 %spec.select.i.3 ; 2 uses
  %indvars.iv.next.i10.4 = add nuw nsw i64 %indvars.iv.i9, 5 ; 2 uses
  %exitcond.not.i11.4 = icmp eq i64 %indvars.iv.next.i10.4, 100000
  br i1 %exitcond.not.i11.4, label %_ZL27run_single_csa_only_autovecIlET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !94

_ZL27run_single_csa_only_autovecIlET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i64 %spec.select.i.4, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %3, i64 %i.aj) #7, !srcloc !50
  %i.bd = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.bd) #7, !srcloc !50
  %i.be = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.be) #7, !srcloc !50
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %i.bf) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bg = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bg, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bh, %bb.k ]
  %i.bi = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  %i.bj = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bk = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bl = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bm = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bm, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bn = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bn, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z40BENCHMARK_single_csa_only_novec_int64_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 8 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i64 0, ptr %1, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 100, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !14
  %i.w = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL25run_single_csa_only_novecIlET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL25run_single_csa_only_novecIlET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bg, %_ZL25run_single_csa_only_novecIlET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 6 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.4, %bb.j ] ; 6 uses
  %.071.i = phi i64 [ 101, %.lr.ph ], [ %spec.select.i.4, %bb.j ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 60
  %spec.select.i = select i1 %i.am, i64 %i.al, i64 %.071.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 60
  %spec.select.i.1 = select i1 %i.aq, i64 %i.ap, i64 %spec.select.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 60
  %spec.select.i.2 = select i1 %i.au, i64 %i.at, i64 %spec.select.i.1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 60
  %spec.select.i.3 = select i1 %i.ay, i64 %i.ax, i64 %spec.select.i.2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 60
  %spec.select.i.4 = select i1 %i.bc, i64 %i.bb, i64 %spec.select.i.3 ; 2 uses
  %indvars.iv.next.i10.4 = add nuw nsw i64 %indvars.iv.i9, 5 ; 2 uses
  %exitcond.not.i11.4 = icmp eq i64 %indvars.iv.next.i10.4, 100000
  br i1 %exitcond.not.i11.4, label %_ZL25run_single_csa_only_novecIlET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !95

_ZL25run_single_csa_only_novecIlET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i64 %spec.select.i.4, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %3, i64 %i.aj) #7, !srcloc !50
  %i.bd = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.bd) #7, !srcloc !50
  %i.be = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.be) #7, !srcloc !50
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %i.bf) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bg = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bg, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bh, %bb.k ]
  %i.bi = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  %i.bj = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bk = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bl = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bm = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bm, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bn = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bn, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z41BENCHMARK_multi_csa_only_autovec_int64_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 8 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i64 0, ptr %1, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 100, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !14
  %i.w = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZN9benchmark5State3endEv.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01929.i = phi i64 [ 101, %.lr.ph ], [ %.1.i.1, %bb.j ]
  %.02028.i = phi i64 [ 101, %.lr.ph ], [ %.121.i.1, %bb.j ]
  %.02227.i = phi i64 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.an = load i64, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 60
  %spec.select.i = select i1 %i.ao, i64 %i.an, i64 %.02227.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i9
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 60
  %.121.i = select i1 %i.ar, i64 %i.aq, i64 %.02028.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i9
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 60
  %.1.i = select i1 %i.au, i64 %i.at, i64 %.01929.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i10
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 60
  %spec.select.i.1 = select i1 %i.ax, i64 %i.aw, i64 %spec.select.i ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 60
  %.121.i.1 = select i1 %i.ba, i64 %i.az, i64 %.121.i ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i10
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 60
  %.1.i.1 = select i1 %i.bd, i64 %i.bc, i64 %.1.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZN9benchmark5State3endEv.exit, label %bb.j, !llvm.loop !96

_ZN9benchmark5State3endEv.exit:                   ; preds = %bb.j
  %i.be = xor i64 %.121.i.1, %spec.select.i.1
  %i.bf = xor i64 %i.be, %.1.i.1
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %3, i64 %i.al) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bp = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bq = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z39BENCHMARK_multi_csa_only_novec_int64_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 8 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i64 0, ptr %1, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 100, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !14
  %i.w = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZN9benchmark5State3endEv.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01929.i = phi i64 [ 101, %.lr.ph ], [ %.1.i.1, %bb.j ]
  %.02028.i = phi i64 [ 101, %.lr.ph ], [ %.121.i.1, %bb.j ]
  %.02227.i = phi i64 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9
  %i.an = load i64, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 60
  %spec.select.i = select i1 %i.ao, i64 %i.an, i64 %.02227.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i9
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 60
  %.121.i = select i1 %i.ar, i64 %i.aq, i64 %.02028.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i9
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 60
  %.1.i = select i1 %i.au, i64 %i.at, i64 %.01929.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i10
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 60
  %spec.select.i.1 = select i1 %i.ax, i64 %i.aw, i64 %spec.select.i ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 60
  %.121.i.1 = select i1 %i.ba, i64 %i.az, i64 %.121.i ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i10
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 60
  %.1.i.1 = select i1 %i.bd, i64 %i.bc, i64 %.1.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZN9benchmark5State3endEv.exit, label %bb.j, !llvm.loop !97

_ZN9benchmark5State3endEv.exit:                   ; preds = %bb.j
  %i.be = xor i64 %.121.i.1, %spec.select.i.1
  %i.bf = xor i64 %i.be, %.1.i.1
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %3, i64 %i.al) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bp = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bq = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z41BENCHMARK_csa_with_arith_autovec_int64_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 8 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i64 0, ptr %1, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 100, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !14
  %i.w = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL26run_csa_with_arith_autovecIlET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL26run_csa_with_arith_autovecIlET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZL26run_csa_with_arith_autovecIlET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01315.i = phi i64 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = mul nsw i64 %i.am, 13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i9
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = mul nsw i64 %i.ap, 5
  %i.ar = add nsw i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i9
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !14
  %i.at = load i64, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 60
  %spec.select.i = select i1 %i.au, i64 %i.at, i64 %.01315.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i10 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %i.ax = mul nsw i64 %i.aw, 13
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = mul nsw i64 %i.az, 5
  %i.bb = add nsw i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i10
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !14
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 60
  %spec.select.i.1 = select i1 %i.be, i64 %i.bd, i64 %spec.select.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZL26run_csa_with_arith_autovecIlET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !98

_ZL26run_csa_with_arith_autovecIlET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i64 %spec.select.i.1, ptr %i.a, align 8, !tbaa !14
  %i.bf = load i64, ptr %3, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %3, i64 %i.bf) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL21benchmark_csa_autovecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES6_S3_.exit, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.bp = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bq = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bq, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit27: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit24, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z39BENCHMARK_csa_with_arith_novec_int64_t_RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution.49", align 8 ; 10 uses
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %4 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.39", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = tail call noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = invoke noalias noundef nonnull dereferenceable(800000) ptr @_Znam(i64 noundef 800000) #8
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i64 0, ptr %1, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 100, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 12345, ptr %2, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 12345, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.g = lshr i64 %store_forwarded, 30
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul nuw nsw i64 %i.h, 1812433253
  %i.j = add nuw nsw i64 %i.i, %.011.i.i.i        ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l
  %i.n = lshr i64 %i.k, 30
  %i.o = xor i64 %i.n, %i.j
  %i.p = mul i64 %i.o, 1812433253
  %i.q = add i64 %i.p, %i.l
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !14
  %i.s = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.t, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %.noexc8 ] ; 4 uses
  %i.u = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc6 unwind label %.thread

.noexc6:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !14
  %i.w = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc7 unwind label %.thread

.noexc7:                                          ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = invoke noundef i64 @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc8 unwind label %.thread

.noexc8:                                          ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100000
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.k

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.i
  %.not.i.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not43, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZL24run_csa_with_arith_novecIlET_PS0_S1_S1_S0_.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit unwind label %bb.k

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread: ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

.thread:                                          ; preds = %bb.f, %.noexc6, %.noexc7
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZL24run_csa_with_arith_novecIlET_PS0_S1_S1_S0_.exit
  %.sroa.028.044 = phi i64 [ %i.bj, %_ZL24run_csa_with_arith_novecIlET_PS0_S1_S1_S0_.exit ], [ %i.ae, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i10.1, %bb.j ] ; 5 uses
  %.01315.i = phi i64 [ 101, %.lr.ph ], [ %spec.select.i.1, %bb.j ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i9 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = mul nsw i64 %i.am, 13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i9
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = mul nsw i64 %i.ap, 5
  %i.ar = add nsw i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i9
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !14
  %i.at = load i64, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 60
  %spec.select.i = select i1 %i.au, i64 %i.at, i64 %.01315.i
  %indvars.iv.next.i10 = or disjoint i64 %indvars.iv.i9, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i10 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %i.ax = mul nsw i64 %i.aw, 13
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i10
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = mul nsw i64 %i.az, 5
  %i.bb = add nsw i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i10
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !14
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 60
  %spec.select.i.1 = select i1 %i.be, i64 %i.bd, i64 %spec.select.i ; 2 uses
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %exitcond.not.i11.1 = icmp eq i64 %indvars.iv.next.i10.1, 100000
  br i1 %exitcond.not.i11.1, label %_ZL24run_csa_with_arith_novecIlET_PS0_S1_S1_S0_.exit, label %bb.j, !llvm.loop !99

_ZL24run_csa_with_arith_novecIlET_PS0_S1_S1_S0_.exit: ; preds = %bb.j
  store i64 %spec.select.i.1, ptr %i.a, align 8, !tbaa !14
  %i.bf = load i64, ptr %3, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %3, i64 %i.bf) #7, !srcloc !50
  %i.bg = load i64, ptr %4, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %4, i64 %i.bg) #7, !srcloc !50
  %i.bh = load i64, ptr %5, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr.39") align 8 dereferenceable(8) %5, i64 %i.bh) #7, !srcloc !50
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !14
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %i.bi) #7, !srcloc !50
  fence syncscope("singlethread") acq_rel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bj = add nsw i64 %.sroa.028.044, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !51

bb.k:                                             ; preds = %bb.i, %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.thread, %bb.k
  %.pn.pn.pn.i52 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %i.bk, %bb.k ]
  %i.bl = phi ptr [ %i.d, %.thread ], [ %.pre, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.k
  %.pn.pn.pn.i53 = phi { ptr, i32 } [ %.pn.pn.pn.i52, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %i.ag, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  %i.bm = phi ptr [ %i.c, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i36, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14 ], [ %.pn.pn.pn.i53, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr38 = load ptr, ptr %3, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not.i16 = icmp eq ptr %.pr38, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %i.af, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  %i.bn = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15.thread ], [ %.pr38, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ]
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  %.pn.pn.pn.pn.pn.i42 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit15 ], [ %.pn.pn.pn.pn.pn.i41, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i42

_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.bo = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #9
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZL19benchmark_csa_novecIlEvRN9benchmark5StateEPFT_PS3_S4_S4_S3_ES3_.exit, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
end_hunk_0
