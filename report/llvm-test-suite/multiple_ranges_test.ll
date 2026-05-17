inline.NumInlined: 506
inline.NumDeleted: 214
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::vector<long>, std::vector<long>, std::_Identity<std::vector<long>>, std::less<std::vector<long>>>::_Alloc_node" = type { ptr }
%"class.std::vector.31" = type { %"struct.std::_Vector_base.32" }
%"struct.std::_Vector_base.32" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN37MultipleRangesFixture_Empty_BenchmarkC2Ev = comdat any

$_ZN21MultipleRangesFixtureD2Ev = comdat any

$_ZN37MultipleRangesFixture_Empty_BenchmarkD0Ev = comdat any

$_ZN9benchmark7Fixture3RunERNS_5StateE = comdat any

$_ZN21MultipleRangesFixture5SetUpERKN9benchmark5StateE = comdat any

$_ZN9benchmark7Fixture8TearDownERKNS_5StateE = comdat any

$_ZN9benchmark7Fixture5SetUpERNS_5StateE = comdat any

$_ZN9benchmark7Fixture8TearDownERNS_5StateE = comdat any

$_ZN21MultipleRangesFixtureC2Ev = comdat any

$_ZN21MultipleRangesFixtureD0Ev = comdat any

$_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_ = comdat any

$_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_ = comdat any

$_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_ = comdat any

$_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_ = comdat any

$_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ = comdat any

$_ZTI21MultipleRangesFixture = comdat any

$_ZTS21MultipleRangesFixture = comdat any

$_ZTIN9benchmark7FixtureE = comdat any

$_ZTSN9benchmark7FixtureE = comdat any

$_ZTV21MultipleRangesFixture = comdat any

@_ZL53benchmark_uniq_2MultipleRangesFixture_Empty_Benchmark = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [108 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/multiple_ranges_test.cc\00", align 1
@__PRETTY_FUNCTION__._Z23BM_CheckDefaultArgumentRN9benchmark5StateE = private unnamed_addr constant [49 x i8] c"void BM_CheckDefaultArgument(benchmark::State &)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"state.range() != state.range(1)\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"BM_CheckDefaultArgument\00", align 1
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"BM_MultipleRanges\00", align 1
@__const.main.arg0_default = private unnamed_addr constant [10 x i8] c"benchmark\00", align 1
@_ZTV37MultipleRangesFixture_Empty_Benchmark = hidden unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI37MultipleRangesFixture_Empty_Benchmark, ptr @_ZN21MultipleRangesFixtureD2Ev, ptr @_ZN37MultipleRangesFixture_Empty_BenchmarkD0Ev, ptr @_ZN9benchmark7Fixture3RunERNS_5StateE, ptr @_ZN21MultipleRangesFixture5SetUpERKN9benchmark5StateE, ptr @_ZN9benchmark7Fixture8TearDownERKNS_5StateE, ptr @_ZN9benchmark7Fixture5SetUpERNS_5StateE, ptr @_ZN9benchmark7Fixture8TearDownERNS_5StateE, ptr @_ZN37MultipleRangesFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE] }, align 8
@_ZTI37MultipleRangesFixture_Empty_Benchmark = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS37MultipleRangesFixture_Empty_Benchmark, ptr @_ZTI21MultipleRangesFixture }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS37MultipleRangesFixture_Empty_Benchmark = hidden constant [40 x i8] c"37MultipleRangesFixture_Empty_Benchmark\00", align 1
@_ZTI21MultipleRangesFixture = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21MultipleRangesFixture, ptr @_ZTIN9benchmark7FixtureE }, comdat, align 8
@_ZTS21MultipleRangesFixture = linkonce_odr hidden constant [24 x i8] c"21MultipleRangesFixture\00", comdat, align 1
@_ZTIN9benchmark7FixtureE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9benchmark7FixtureE, ptr @_ZTIN9benchmark8internal9BenchmarkE }, comdat, align 8
@_ZTSN9benchmark7FixtureE = linkonce_odr hidden constant [21 x i8] c"N9benchmark7FixtureE\00", comdat, align 1
@_ZTIN9benchmark8internal9BenchmarkE = external constant ptr
@.str.8 = private unnamed_addr constant [20 x i8] c"range_.size() > pos\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h\00", align 1
@__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm = private unnamed_addr constant [51 x i8] c"int64_t benchmark::State::range(std::size_t) const\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"MultipleRangesFixture/Empty\00", align 1
@_ZTV21MultipleRangesFixture = linkonce_odr hidden unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI21MultipleRangesFixture, ptr @_ZN21MultipleRangesFixtureD2Ev, ptr @_ZN21MultipleRangesFixtureD0Ev, ptr @_ZN9benchmark7Fixture3RunERNS_5StateE, ptr @_ZN21MultipleRangesFixture5SetUpERKN9benchmark5StateE, ptr @_ZN9benchmark7Fixture8TearDownERKNS_5StateE, ptr @_ZN9benchmark7Fixture5SetUpERNS_5StateE, ptr @_ZN9benchmark7Fixture8TearDownERNS_5StateE, ptr @__cxa_pure_virtual] }, comdat, align 8
@constinit.12 = private unnamed_addr constant [3 x i64] [i64 1, i64 3, i64 5], align 8
@constinit.13 = private unnamed_addr constant [3 x i64] [i64 1, i64 3, i64 8], align 8
@constinit.14 = private unnamed_addr constant [3 x i64] [i64 1, i64 3, i64 15], align 8
@constinit.15 = private unnamed_addr constant [3 x i64] [i64 2, i64 3, i64 5], align 8
@constinit.16 = private unnamed_addr constant [3 x i64] [i64 2, i64 3, i64 8], align 8
@constinit.17 = private unnamed_addr constant [3 x i64] [i64 2, i64 3, i64 15], align 8
@constinit.18 = private unnamed_addr constant [3 x i64] [i64 1, i64 4, i64 5], align 8
@constinit.19 = private unnamed_addr constant [3 x i64] [i64 1, i64 4, i64 8], align 8
@constinit.20 = private unnamed_addr constant [3 x i64] [i64 1, i64 4, i64 15], align 8
@constinit.21 = private unnamed_addr constant [3 x i64] [i64 2, i64 4, i64 5], align 8
@constinit.22 = private unnamed_addr constant [3 x i64] [i64 2, i64 4, i64 8], align 8
@constinit.23 = private unnamed_addr constant [3 x i64] [i64 2, i64 4, i64 15], align 8
@constinit.24 = private unnamed_addr constant [3 x i64] [i64 1, i64 7, i64 5], align 8
@constinit.25 = private unnamed_addr constant [3 x i64] [i64 1, i64 7, i64 8], align 8
@constinit.26 = private unnamed_addr constant [3 x i64] [i64 1, i64 7, i64 15], align 8
@constinit.27 = private unnamed_addr constant [3 x i64] [i64 2, i64 7, i64 5], align 8
@constinit.28 = private unnamed_addr constant [3 x i64] [i64 2, i64 7, i64 8], align 8
@constinit.29 = private unnamed_addr constant [3 x i64] [i64 2, i64 7, i64 15], align 8
@constinit.30 = private unnamed_addr constant [3 x i64] [i64 7, i64 6, i64 3], align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.32 = private unnamed_addr constant [10 x i8] c"EXPECTED\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ACTUAL\0A\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.37 = private unnamed_addr constant [52 x i8] c"expectedValues.find(ranges) != expectedValues.end()\00", align 1
@__PRETTY_FUNCTION__._ZN21MultipleRangesFixture5SetUpERKN9benchmark5StateE = private unnamed_addr constant [70 x i8] c"virtual void MultipleRangesFixture::SetUp(const ::benchmark::State &)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_multiple_ranges_test.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN37MultipleRangesFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #1 align 2 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp ne i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %1)
  %.not.i.not2125 = icmp eq i64 %i.e, 0
  %.not.i.not21 = select i1 %.not, i1 true, i1 %.not.i.not2125
  br i1 %.not.i.not21, label %._crit_edge24, label %.lr.ph23, !prof !35

.lr.ph23:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.a:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit
  %i.h = add nsw i64 %.sroa.013.022, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %._crit_edge24, label %bb.b, !prof !36

._crit_edge24:                                    ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %1)
  ret void

bb.b:                                             ; preds = %.lr.ph23, %bb.a
  %.sroa.013.022 = phi i64 [ %i.e, %.lr.ph23 ], [ %i.h, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %i.j = load ptr, ptr %i.f, align 32, !tbaa !38  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.not18 = icmp eq ptr %i.i, %i.j
  br i1 %.not18, label %bb.c, label %_ZNK9benchmark5State5rangeEm.exit12

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #19
  unreachable

_ZNK9benchmark5State5rangeEm.exit12:              ; preds = %bb.b
  %i.n = icmp ugt i64 %i.m, 8
  br i1 %i.n, label %_ZNK9benchmark5State5rangeEm.exit11, label %bb.d

bb.d:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit12
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #19
  unreachable

_ZNK9benchmark5State5rangeEm.exit11:              ; preds = %_ZNK9benchmark5State5rangeEm.exit12
  %.not19 = icmp eq i64 %i.m, 16
  br i1 %.not19, label %bb.e, label %_ZNK9benchmark5State5rangeEm.exit

bb.e:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit11
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #19
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %_ZNK9benchmark5State5rangeEm.exit11
  %2 = load <3 x i64>, ptr %i.j, align 8, !tbaa !39
  %3 = call i64 @llvm.vector.reduce.mul.v3i64(<3 x i64> %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.o = icmp sgt i64 %3, 0
  br i1 %i.o, label %.lr.ph, label %_ZN9benchmark5State13StateIteratorppEv.exit

_ZN9benchmark5State13StateIteratorppEv.exit:      ; preds = %.lr.ph, %_ZNK9benchmark5State5rangeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = icmp sgt i64 %.sroa.013.022, 0
  br i1 %i.p, label %bb.a, label %bb.f

bb.f:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #19
  unreachable

.lr.ph:                                           ; preds = %_ZNK9benchmark5State5rangeEm.exit, %.lr.ph
  %storemerge20 = phi i64 [ %i.r, %.lr.ph ], [ 0, %_ZNK9benchmark5State5rangeEm.exit ]
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %storemerge20) #20, !srcloc !40
  %i.q = load i64, ptr %i.a, align 8, !tbaa !39
  %i.r = add nsw i64 %i.q, 1                      ; 3 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !39
  %i.s = icmp slt i64 %i.r, %3
  br i1 %i.s, label %.lr.ph, label %_ZN9benchmark5State13StateIteratorppEv.exit, !llvm.loop !41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN37MultipleRangesFixture_Empty_BenchmarkC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN21MultipleRangesFixtureC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV37MultipleRangesFixture_Empty_Benchmark, i64 16), ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 27, ptr %i.a, align 8, !tbaa !39
  %i.c = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.c, ptr %1, align 8, !tbaa !46
  %i.d = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.c, ptr noundef nonnull align 1 dereferenceable(27) @.str.11, i64 27, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !48
  %i.f = load ptr, ptr %1, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN9benchmark8internal9Benchmark7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !47
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

bb.c:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !47
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4, %bb.b
  %.pn = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN21MultipleRangesFixtureD2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #20
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN9benchmark8internal9Benchmark15RangeMultiplierEi(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z23BM_CheckDefaultArgumentRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 32, !tbaa !38  ; 4 uses
  %.not20 = icmp eq ptr %i.c, %i.d
  br i1 %.not20, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit12

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #19
  unreachable

_ZNK9benchmark5State5rangeEm.exit12:              ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.g, 8
  br i1 %i.h, label %_ZNK9benchmark5State5rangeEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit12
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #19
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %_ZNK9benchmark5State5rangeEm.exit12
  %i.i = load i64, ptr %i.d, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %.not = icmp eq i64 %i.i, %i.k
  br i1 %.not, label %bb.d, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

bb.d:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23BM_CheckDefaultArgumentRN9benchmark5StateE) #19
  unreachable

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %.not21 = icmp ne i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not2226 = icmp eq i64 %i.o, 0
  %.not.i.not22 = select i1 %.not21, i1 true, i1 %.not.i.not2226
  br i1 %.not.i.not22, label %._crit_edge, label %_ZN9benchmark5State13StateIteratorppEv.exit.preheader, !prof !35

_ZN9benchmark5State13StateIteratorppEv.exit.preheader: ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %smin = tail call i64 @llvm.smin.i64(i64 %i.o, i64 0)
  %i.p = sub i64 %i.o, %smin
  %i.q = add i64 %i.o, -1
  %.not27.not = icmp ugt i64 %i.p, %i.q
  br i1 %.not27.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.e:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #19
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZL17BM_MultipleRangesRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
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
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #19
  unreachable
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_multiple_ranges_test.cc:bb.a
  %i.bw = icmp eq ptr %i.bv, %i.aq
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

.thread.i:                                        ; preds = %bb.x, %bb.w, %bb.v
  %.pn.i1 = phi { ptr, i32 } [ %i.bn, %bb.v ], [ %i.bo, %bb.w ], [ %i.bo, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bx = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aq
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i: ; preds = %.thread.i
  %i.bz = load i64, ptr %i.aq, align 8, !tbaa !47
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i: ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %bb.y
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !47
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.cc) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.05.i, label %bb.z, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.05.i, label %bb.z, label %common.resume

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread.i
  %.pn.pn.pn26.i = phi { ptr, i32 } [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread.i ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 232) #21
  br label %common.resume

__cxx_global_var_init.4.exit:                     ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  store ptr %i.bc, ptr @_ZL27benchmark_uniq_3_benchmark_, align 8, !tbaa !78
  %i.cd = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 17, ptr %i.a, align 8, !tbaa !39
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i9 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread.i6 ; 2 uses

.noexc.i9:                                        ; preds = %__cxx_global_var_init.4.exit
  store ptr %i.cf, ptr %0, align 8, !tbaa !46
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cf, ptr noundef nonnull align 1 dereferenceable(17) @.str.7, i64 17, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !48
  %i.ci = load ptr, ptr %0, align 8, !tbaa !46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %.noexc.i9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.cd, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 224
  store ptr @_ZL17BM_MultipleRangesRN9benchmark5StateE, ptr %i.ck, align 8, !tbaa !80
  %i.cl = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.cd)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.cm = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %bb.ac unwind label %bb.af     ; 6 uses

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cm, ptr %1, align 8, !tbaa !73
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !76
  store i64 5, ptr %i.cm, align 8
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 5, ptr %.sroa.5.0..sroa_idx.i17, align 8
  %.sroa.6.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 6, ptr %.sroa.6.0..sroa_idx.i18, align 8
  %.sroa.7.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 6, ptr %.sroa.7.0..sroa_idx.i19, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !77
  %i.cq = invoke noundef ptr @_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(224) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load ptr, ptr %1, align 8, !tbaa !73    ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i21, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i22, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !76
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #21
  br label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i22

_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i22:    ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.cw = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ce
  br i1 %i.cx, label %__cxx_global_var_init.6.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i22
  %i.cy = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #21
  br label %__cxx_global_var_init.6.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread.i6: ; preds = %__cxx_global_var_init.4.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %bb.aj

bb.af:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i13

bb.ag:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !73    ; 3 uses
  %.not.i.i.i13.i20 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i13.i20, label %.thread.i13, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !76
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #21
  br label %.thread.i13

bb.ai:                                            ; preds = %bb.aa, %.noexc.i9
  %.05.i10 = phi i1 [ false, %bb.aa ], [ true, %.noexc.i9 ] ; 2 uses
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ce
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i11

.thread.i13:                                      ; preds = %bb.ah, %bb.ag, %bb.af
  %.pn.i14 = phi { ptr, i32 } [ %i.db, %bb.af ], [ %i.dc, %bb.ag ], [ %i.dc, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.dl = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.ce
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread.i15: ; preds = %.thread.i13
  %i.dn = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread33.i16: ; preds = %.thread.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i11: ; preds = %bb.ai
  %i.dp = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %.05.i10, label %bb.aj, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i12: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %.05.i10, label %bb.aj, label %common.resume

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread.i6
  %.pn.pn.pn26.i7 = phi { ptr, i32 } [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread.i6 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i12 ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i11 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 232) #21
  br label %common.resume

__cxx_global_var_init.6.exit:                     ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  store ptr %i.cq, ptr @_ZL27benchmark_uniq_4_benchmark_, align 8, !tbaa !78
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.mul.v3i64(<3 x i64>) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 28}
!9 = !{!"_ZTSN9benchmark5StateE", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 25, !12, i64 28, !13, i64 32, !10, i64 56, !19, i64 64, !28, i64 112, !5, i64 144, !5, i64 148, !31, i64 152, !32, i64 160, !33, i64 168, !34, i64 176}
!10 = !{!"long", !6, i64 0}
!11 = !{!"bool", !6, i64 0}
!12 = !{!"_ZTSN9benchmark8internal7SkippedE", !6, i64 0}
!13 = !{!"_ZTSSt6vectorIlSaIlEE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 long", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !20, i64 0}
!20 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !21, i64 0}
!21 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !22, i64 0, !24, i64 8}
!22 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !23, i64 0}
!23 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!24 = !{!"_ZTSSt15_Rb_tree_header", !25, i64 0, !10, i64 32}
!25 = !{!"_ZTSSt18_Rb_tree_node_base", !26, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!26 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!27 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !10, i64 8, !6, i64 16}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !18, i64 0}
!31 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !18, i64 0}
!32 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !18, i64 0}
!33 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !18, i64 0}
!34 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !18, i64 0}
!35 = !{!"branch_weights", i32 1, i32 127}
!36 = !{!"branch_weights", i32 127, i32 255873}
!37 = !{!16, !17, i64 8}
!38 = !{!16, !17, i64 0}
!39 = !{!10, !10, i64 0}
!40 = !{i64 2708443}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !7, i64 0}
!45 = !{!29, !30, i64 0}
!46 = !{!28, !30, i64 0}
!47 = !{!6, !6, i64 0}
!48 = !{!28, !10, i64 8}
!49 = !{!30, !30, i64 0}
!50 = !{!24, !10, i64 32}
!51 = !{!24, !27, i64 16}
!52 = distinct !{!52, !42}
!53 = !{!17, !17, i64 0}
!54 = !{!24, !27, i64 8}
!55 = !{!16, !17, i64 16}
!56 = distinct !{!56, !42}
!57 = !{!27, !27, i64 0}
!58 = distinct !{!58, !42}
!59 = !{!24, !26, i64 0}
!60 = !{!24, !27, i64 24}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTSSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !18, i64 0}
!63 = !{!64, !62, i64 0}
!64 = !{!"_ZTSNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeE", !62, i64 0}
!65 = !{}
!66 = !{i64 8}
!67 = !{!25, !27, i64 24}
!68 = distinct !{!68, !42}
!69 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!70 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!71 = !{!25, !27, i64 16}
!72 = distinct !{!72, !42}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseISt4pairIllESaIS1_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTSSt4pairIllE", !18, i64 0}
!76 = !{!74, !75, i64 16}
!77 = !{!74, !75, i64 8}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTSN9benchmark8internal9BenchmarkE", !18, i64 0}
!80 = !{!81, !18, i64 224}
!81 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !82, i64 0, !18, i64 224}
!82 = !{!"_ZTSN9benchmark8internal9BenchmarkE", !28, i64 8, !83, i64 40, !84, i64 48, !89, i64 72, !94, i64 96, !11, i64 100, !5, i64 104, !95, i64 112, !95, i64 120, !10, i64 128, !5, i64 136, !11, i64 140, !11, i64 141, !11, i64 142, !96, i64 144, !18, i64 152, !97, i64 160, !102, i64 184, !18, i64 208, !18, i64 216}
!83 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !6, i64 0}
!84 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !85, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!88 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!89 = !{!"_ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !90, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE12_Vector_implE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !18, i64 0}
!94 = !{!"_ZTSN9benchmark8TimeUnitE", !6, i64 0}
!95 = !{!"double", !6, i64 0}
!96 = !{!"_ZTSN9benchmark4BigOE", !6, i64 0}
!97 = !{!"_ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !98, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE12_Vector_implE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!101 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !18, i64 0}
!102 = !{!"_ZTSSt6vectorIiSaIiEE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 int", !18, i64 0}
end_hunk_1
