Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/options_test?download=true
inline.NumInlined: 333
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.27" = type { %"struct.std::_Vector_base.28" }
%"struct.std::_Vector_base.28" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"BM_basic_slow\00", align 1
@_ZL27benchmark_uniq_5_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_6_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_7_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_8_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_9_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_10_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_11_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_12_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_13_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_14_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_15_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_16_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_17_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_18_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_19_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_20_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_21_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_22_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_23_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_24_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_25_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before = internal unnamed_addr global i1 false, align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"!invoked_before\00", align 1
@.str.27 = private unnamed_addr constant [100 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/options_test.cc\00", align 1
@__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE = private unnamed_addr constant [53 x i8] c"void BM_explicit_iteration_count(benchmark::State &)\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"state.max_iterations == 42\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"actual_iterations == 42\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"state.iterations() == state.max_iterations\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"state.iterations() == 42\00", align 1
@_ZL28benchmark_uniq_26_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [28 x i8] c"BM_explicit_iteration_count\00", align 1
@__const.main.arg0_default = private unnamed_addr constant [10 x i8] c"benchmark\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@.str.35 = private unnamed_addr constant [109 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"range_.size() > pos\00", align 1
@__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm = private unnamed_addr constant [51 x i8] c"int64_t benchmark::State::range(std::size_t) const\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_options_test.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_Z8BM_basicRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %._crit_edge, label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader: ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %smin = tail call i64 @llvm.smin.i64(i64 %i.d, i64 0)
  %i.e = sub i64 %i.d, %smin
  %i.f = add i64 %i.d, -1
  %.not16.not = icmp ugt i64 %i.e, %i.f
  br i1 %.not16.not, label %._crit_edge, label %bb.a

._crit_edge:                                      ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.a:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #10
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z13BM_basic_slowRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = load ptr, ptr %i.a, align 32, !tbaa !37  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #10
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %.not16 = icmp ne i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 16             ; 5 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1719 = icmp eq i64 %i.i, 0
  %.not.i.not17 = select i1 %.not16, i1 true, i1 %.not.i.not1719
  br i1 %.not.i.not17, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.j = icmp slt i64 %i.e, 1
  %i.k = mul nuw nsw i64 %i.e, 1000000
  %i.l = udiv i64 %i.e, 1000                      ; 2 uses
  %.neg.i.i = mul nsw i64 %i.l, -1000000000
  %i.m = add nsw i64 %.neg.i.i, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.j, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.preheader, label %.lr.ph.split

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.preheader: ; preds = %.lr.ph
  %smin = tail call i64 @llvm.smin.i64(i64 %i.i, i64 0)
  %i.o = sub i64 %i.i, %smin
  %i.p = add i64 %i.i, -1
  %.not24.not = icmp ugt i64 %i.o, %i.p
  br i1 %.not24.not, label %._crit_edge, label %.split.us

bb.c:                                             ; preds = %.critedge.i
  %i.q = add nsw i64 %.sroa.010.018, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.q, 0
  br i1 %.not.i.not, label %._crit_edge, label %.lr.ph.split, !prof !39

._crit_edge:                                      ; preds = %bb.c, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.preheader, %_ZNK9benchmark5State5rangeEm.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %.sroa.010.018 = phi i64 [ %i.q, %bb.c ], [ %i.i, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i64 %i.l, ptr %1, align 8, !tbaa !40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split
  %i.r = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @__errno_location() #12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.d, label %.critedge.i, !llvm.loop !43

.critedge.i:                                      ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.w = icmp sgt i64 %.sroa.010.018, 0
  br i1 %i.w, label %bb.c, label %.split.us

.split.us:                                        ; preds = %.critedge.i, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.preheader
  call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #10
  unreachable
}

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark15RangeMultiplierEi(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark10DenseRangeElli(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark7MinTimeEd(ptr noundef nonnull align 8 dereferenceable(224), double noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark13MinWarmUpTimeEd(ptr noundef nonnull align 8 dereferenceable(224), double noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark11UseRealTimeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark11ThreadRangeEii(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark11RepetitionsEi(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_Z10CustomArgsPN9benchmark8internal9BenchmarkE(ptr noundef nonnull %0) #1 {
bb.a:
  %i.a = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 0) ; 0 uses
  %i.b = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1) ; 0 uses
  %i.c = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 2) ; 0 uses
  %i.d = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 3) ; 0 uses
  %i.e = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 4) ; 0 uses
  %i.f = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 5) ; 0 uses
  %i.g = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 6) ; 0 uses
  %i.h = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 7) ; 0 uses
  %i.i = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 8) ; 0 uses
  %i.j = tail call noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 9) ; 0 uses
  ret void
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark5ApplyEPFvPS1_E(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_Z27BM_explicit_iteration_countRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.b = load i1, ptr @_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  store i1 true, ptr @_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !45
  %i.d = icmp eq i64 %i.c, 42
  br i1 %i.d, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 69, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE) #10
  unreachable

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %.not.not = icmp eq i32 %i.f, 0
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %spec.select = select i1 %.not.not, i64 42, i64 0, !prof !46 ; 2 uses
  store i64 %spec.select, ptr %i.a, align 8
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %spec.select) #11, !srcloc !47
  %i.g = load i64, ptr %i.a, align 8, !tbaa !38
  %i.h = icmp eq i64 %i.g, 42
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE) #10
  unreachable

bb.f:                                             ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !48, !range !49, !noundef !50
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK9benchmark5State10iterationsEv.exit13, label %_ZNK9benchmark5State10iterationsEv.exit13.thread, !prof !51

_ZNK9benchmark5State10iterationsEv.exit13:        ; preds = %bb.f
  %i.l = load i64, ptr %0, align 64, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53
  %i.o = icmp eq i64 %i.n, %i.l
  br i1 %i.o, label %_ZNK9benchmark5State10iterationsEv.exit, label %bb.g

_ZNK9benchmark5State10iterationsEv.exit13.thread: ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 16, !tbaa !45
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNK9benchmark5State10iterationsEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit13.thread, %_ZNK9benchmark5State10iterationsEv.exit13
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE) #10
  unreachable

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %_ZNK9benchmark5State10iterationsEv.exit13
  %i.r = load i64, ptr %i.b, align 16, !tbaa !45
  %i.s = icmp eq i64 %i.r, 42
  br i1 %i.s, label %bb.h, label %_ZNK9benchmark5State10iterationsEv.exit.thread

_ZNK9benchmark5State10iterationsEv.exit.thread:   ; preds = %_ZNK9benchmark5State10iterationsEv.exit13.thread, %_ZNK9benchmark5State10iterationsEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, i32 noundef 75, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE) #10
  unreachable

bb.h:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN9benchmark8internal9Benchmark10IterationsEl(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @__const.main.arg0_default, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr %i.b, ptr %i.c, align 8, !tbaa !54
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !4
end_hunk_0
