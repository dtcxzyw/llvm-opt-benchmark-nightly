inline.NumInlined: 53
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.6 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.6 = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTISt11logic_error = external constant ptr
@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"BM_diagnostic_test\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"BM_diagnostic_test_keep_running\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_diagnostics_test.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_Z11TestHandlerv() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #12
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_Z24try_invalid_pause_resumeRN9benchmark5StateE(ptr nofree noundef nonnull readnone align 64 captures(none) dereferenceable(184) %0) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z18BM_diagnostic_testRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #5 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp ne i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not2224 = icmp eq i64 %i.e, 0
  %.not.i.not22 = select i1 %.not, i1 true, i1 %.not.i.not2224
  br i1 %.not.i.not22, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.a:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  %i.h = add nsw i64 %.sroa.015.023, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.b, !prof !36

._crit_edge:                                      ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.015.023 = phi i64 [ %i.e, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.i = load i8, ptr %i.f, align 8, !tbaa !37, !range !38, !noundef !39
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.d, align 16, !tbaa !41
  %i.l = load i64, ptr %0, align 64, !tbaa !42
  %i.m = sub i64 %i.k, %i.l
  %i.n = load i64, ptr %i.g, align 8, !tbaa !43
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = sitofp i64 %i.o to double                ; 2 uses
  %i.q = fmul nnan double %i.p, %i.p
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %bb.b, %bb.c
  %i.r = phi double [ %i.q, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  store double %i.r, ptr %i.a, align 8, !tbaa !44
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.r) #12, !srcloc !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.s = icmp sgt i64 %.sroa.015.023, 0
  br i1 %i.s, label %bb.a, label %bb.d

bb.d:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_Z31BM_diagnostic_test_keep_runningRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit, %bb.a
  %i.f = load i64, ptr %0, align 64, !tbaa !42    ; 2 uses
  %.not.i = icmp slt i64 %i.f, 1
  br i1 %.not.i, label %bb.c, label %bb.e, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.b, align 8, !tbaa !37, !range !38, !noundef !39
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.i = load i32, ptr %i.c, align 4, !tbaa !8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %1, label %bb.g

1:                                                ; preds = %bb.d
  %2 = load i64, ptr %0, align 64, !tbaa !42      ; 2 uses
  %.not14.i = icmp slt i64 %2, 1
  br i1 %.not14.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %1, %bb.b
  %storemerge.in = phi i64 [ %i.f, %bb.b ], [ %2, %1 ]
  %storemerge = add nsw i64 %storemerge.in, -1    ; 2 uses
  store i64 %storemerge, ptr %0, align 64, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.j = load i8, ptr %i.b, align 8, !tbaa !37, !range !38, !noundef !39
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !40

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.d, align 16, !tbaa !41
  %i.m = sub i64 %i.l, %storemerge
  %i.n = load i64, ptr %i.e, align 8, !tbaa !43
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = sitofp i64 %i.o to double                ; 2 uses
  %i.q = fmul nnan double %i.p, %i.p
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %bb.e, %bb.f
  %i.r = phi double [ %i.q, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  store double %i.r, ptr %i.a, align 8, !tbaa !44
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.r) #12, !srcloc !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.b, !llvm.loop !48

bb.g:                                             ; preds = %1, %bb.d, %bb.c
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !4
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9benchmark8internal15GetAbortHandlerEv()
  store ptr @_Z11TestHandlerv, ptr %i.b, align 8, !tbaa !50
  call void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull @_ZN9benchmark16PrintDefaultHelpEv)
  %i.c = call noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() ; 0 uses
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9benchmark8internal15GetAbortHandlerEv() local_unnamed_addr #0

declare void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark16PrintDefaultHelpEv() #0

declare noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_diagnostics_test.cc() #11 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #15 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 18, ptr %i.b, align 8, !tbaa !52
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  store ptr %i.f, ptr %1, align 8, !tbaa !53
  %i.g = load i64, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.f, ptr noundef nonnull align 1 dereferenceable(18) @.str.2, i64 18, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !55
  %i.i = load ptr, ptr %1, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.d, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr @_Z18BM_diagnostic_testRN9benchmark5StateE, ptr %i.k, align 8, !tbaa !58
  %i.l = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.e, align 8, !tbaa !54
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #16
  br label %__cxx_global_var_init.1.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i: ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %common.resume.sink.split

bb.d:                                             ; preds = %bb.b, %.noexc.i
  %.0.i = phi i1 [ false, %bb.b ], [ true, %.noexc.i ] ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.e, align 8, !tbaa !54
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7
  %.sink = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 232) #16
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.1.exit:                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  store ptr %i.l, ptr @_ZL27benchmark_uniq_2_benchmark_, align 8, !tbaa !84
  %i.w = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #15 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 31, ptr %i.a, align 8, !tbaa !52
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i4 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1 ; 2 uses

.noexc.i4:                                        ; preds = %__cxx_global_var_init.1.exit
  store ptr %i.y, ptr %0, align 8, !tbaa !53
  %i.z = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.y, ptr noundef nonnull align 1 dereferenceable(31) @.str.4, i64 31, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !55
  %i.ab = load ptr, ptr %0, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.noexc.i4
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.w, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  store ptr @_Z31BM_diagnostic_test_keep_runningRN9benchmark5StateE, ptr %i.ad, align 8, !tbaa !58
  %i.ae = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.w)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.x
  br i1 %i.ag, label %__cxx_global_var_init.3.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.f
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !54
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #16
  br label %__cxx_global_var_init.3.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1: ; preds = %__cxx_global_var_init.1.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.e, %.noexc.i4
  %.0.i5 = phi i1 [ false, %bb.e ], [ true, %.noexc.i4 ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6: ; preds = %bb.g
  %i.an = load i64, ptr %i.x, align 8, !tbaa !54
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  br i1 %.0.i5, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  br i1 %.0.i5, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.3.exit:                     ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  store ptr %i.ae, ptr @_ZL27benchmark_uniq_3_benchmark_, align 8, !tbaa !84
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
