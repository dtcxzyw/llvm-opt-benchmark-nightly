inline.NumInlined: 166
inline.NumDeleted: 114
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.(anonymous namespace)::TestReporter" = type { %"class.benchmark::ConsoleReporter.base", %"class.std::vector.21" }
%"class.benchmark::ConsoleReporter.base" = type <{ %"class.benchmark::BenchmarkReporter", i32, [4 x i8], i64, %"class.std::map", i8 }>
%"class.benchmark::BenchmarkReporter" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl = comdat any

$_ZN9benchmark17BenchmarkReporter8FinalizeEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"BM_MyBench\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"--benchmark_min_time=4x\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"returned_count == 1\00", align 1
@.str.4 = private unnamed_addr constant [122 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/benchmark_min_time_flag_iters_test.cc\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"!iters.empty() && iters[0] == 4\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@.str.7 = private unnamed_addr constant [109 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN12_GLOBAL__N_112TestReporterE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_112TestReporterE, ptr @_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE, ptr @_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl, ptr @_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE, ptr @_ZN9benchmark17BenchmarkReporter8FinalizeEv, ptr @_ZN12_GLOBAL__N_112TestReporterD2Ev, ptr @_ZN12_GLOBAL__N_112TestReporterD0Ev, ptr @_ZN9benchmark15ConsoleReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE, ptr @_ZN9benchmark15ConsoleReporter11PrintHeaderERKNS_17BenchmarkReporter3RunE] }, align 8
@_ZTIN12_GLOBAL__N_112TestReporterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_112TestReporterE, ptr @_ZTIN9benchmark15ConsoleReporterE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12_GLOBAL__N_112TestReporterE = internal constant [31 x i8] c"N12_GLOBAL__N_112TestReporterE\00", align 1
@_ZTIN9benchmark15ConsoleReporterE = external constant ptr
@_ZTVN9benchmark15ConsoleReporterE = external unnamed_addr constant { [10 x ptr] }, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"report.size() == 1\00", align 1
@__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE = private unnamed_addr constant [87 x i8] c"virtual void (anonymous namespace)::TestReporter::ReportRuns(const std::vector<Run> &)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_benchmark_min_time_flag_iters_test.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @_ZL10BM_MyBenchRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
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
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.(anonymous namespace)::TestReporter", align 8 ; 22 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = add nsw i32 %0, 1                        ; 2 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp slt i32 %0, -1
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #18 ; 4 uses
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge.i.i

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext nneg i32 %0 to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %1, i64 %i.j, i1 false), !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader, %bb.a
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.k
  store ptr @.str.2, ptr %i.l, align 8, !tbaa !36
  call void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull @_ZN9benchmark16PrintDefaultHelpEv)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN9benchmark17BenchmarkReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 3, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.o, ptr %i.q, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.o, ptr %i.r, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.s, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i8 0, ptr %i.t, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_112TestReporterE, i64 16), ptr %2, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.v, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.w, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.x, align 2, !tbaa !53
  %i.y = invoke noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !53
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = icmp eq i64 %i.y, 1
  br i1 %i.ad, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #16
  unreachable

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !53
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !56  ; 4 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.ap = getelementptr inbounds i8, ptr null, i64 %i.ao
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp ugt i64 %i.ao, 9223372036854775800
  br i1 %i.aq, label %.noexc.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc25 unwind label %bb.k

.noexc25:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #18
          to label %.noexc26 unwind label %bb.k   ; 6 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao ; 3 uses
  %i.at = icmp samesign ugt i64 %i.ao, 8
  br i1 %i.at, label %bb.g, label %bb.h, !prof !58

bb.g:                                             ; preds = %.noexc26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

bb.h:                                             ; preds = %.noexc26
  %i.au = icmp eq i64 %i.ao, 8
  br i1 %i.au, label %bb.i, label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.al, align 8, !tbaa !59
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !59
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

_ZNSt6vectorIlSaIlEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.h, %bb.g, %.thread
  %i.aw = phi ptr [ %i.as, %bb.g ], [ %i.as, %bb.h ], [ %i.as, %bb.i ], [ %i.ap, %.thread ] ; 2 uses
  %i.ax = phi ptr [ %i.ar, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %bb.i ], [ null, %.thread ] ; 4 uses
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !59
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit, %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #16
  unreachable

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.g) #19
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.be) #19
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_112TestReporterE, i64 16), ptr %2, align 8, !tbaa !49
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !56  ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #19, !inline_history !61
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.l, %_ZNSt6vectorIlSaIlEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN9benchmark15ConsoleReporterE, i64 16), ptr %2, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bm)
          to label %_ZN12_GLOBAL__N_112TestReporterD2Ev.exit unwind label %bb.m, !inline_history !61

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #16, !inline_history !61
  unreachable

_ZN12_GLOBAL__N_112TestReporterD2Ev.exit:         ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  call void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(120) %2) #17, !inline_history !61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.k
  %.pn20 = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ae, %bb.d ]
  call void @_ZN12_GLOBAL__N_112TestReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn20
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

declare void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark16PrintDefaultHelpEv() #0

declare noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112TestReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_112TestReporterE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN9benchmark15ConsoleReporterE, i64 16), ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
          to label %_ZN9benchmark15ConsoleReporterD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #16
  unreachable

_ZN9benchmark15ConsoleReporterD2Ev.exit:          ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  tail call void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(89) %0) #17
  ret void
}

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9benchmark15ConsoleReporter13ReportContextERKNS_17BenchmarkReporter7ContextE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 560
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef 21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.i, align 8, !tbaa !59
  store i64 %i.n, ptr %i.k, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !55
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !56   ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #18 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !59
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !59
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #19
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !56
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %i.l, align 8, !tbaa !60
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %bb.d, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i
  tail call void @_ZN9benchmark15ConsoleReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112TestReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_112TestReporterE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19, !inline_history !61
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN9benchmark15ConsoleReporterE, i64 16), ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
          to label %_ZN12_GLOBAL__N_112TestReporterD2Ev.exit unwind label %bb.c, !inline_history !61

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #16, !inline_history !61
  unreachable

_ZN12_GLOBAL__N_112TestReporterD2Ev.exit:         ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  tail call void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(120) %0) #17, !inline_history !61
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #19
  ret void
}

declare void @_ZN9benchmark15ConsoleReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(560)) unnamed_addr #0

declare void @_ZN9benchmark15ConsoleReporter11PrintHeaderERKNS_17BenchmarkReporter3RunE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(560)) unnamed_addr #0

declare void @_ZN9benchmark17BenchmarkReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare noundef zeroext i1 @_ZN9benchmark15ConsoleReporter13ReportContextERKNS_17BenchmarkReporter7ContextE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN9benchmark15ConsoleReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !53
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_benchmark_min_time_flag_iters_test.cc() #12 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.c, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.e, align 2, !tbaa !53
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.b, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr @_ZL10BM_MyBenchRN9benchmark5StateE, ptr %i.f, align 8, !tbaa !70
  %i.g = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8, !tbaa !53
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #19
  br label %__cxx_global_var_init.1.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !tbaa !53
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br i1 %.0.i, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br i1 %.0.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 232) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  resume { ptr, i32 } %i.l

__cxx_global_var_init.1.exit:                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  store ptr %i.g, ptr @_ZL27benchmark_uniq_2_benchmark_, align 8, !tbaa !97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }

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
!36 = !{!30, !30, i64 0}
!37 = !{!38, !41, i64 24}
!38 = !{!"_ZTSN9benchmark15ConsoleReporterE", !39, i64 0, !41, i64 24, !10, i64 32, !19, i64 40, !11, i64 88}
!39 = !{!"_ZTSN9benchmark17BenchmarkReporterE", !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSSo", !18, i64 0}
!41 = !{!"_ZTSN9benchmark15ConsoleReporter13OutputOptionsE", !6, i64 0}
!42 = !{!38, !10, i64 32}
!43 = !{!24, !26, i64 0}
!44 = !{!24, !27, i64 8}
!45 = !{!24, !27, i64 16}
!46 = !{!24, !27, i64 24}
!47 = !{!24, !10, i64 32}
!48 = !{!38, !11, i64 88}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !7, i64 0}
!51 = !{!29, !30, i64 0}
!52 = !{!28, !10, i64 8}
!53 = !{!6, !6, i64 0}
!54 = !{!28, !30, i64 0}
!55 = !{!16, !17, i64 8}
!56 = !{!16, !17, i64 0}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!58 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!59 = !{!10, !10, i64 0}
!60 = !{!16, !17, i64 16}
!61 = !{ptr @_ZN12_GLOBAL__N_112TestReporterD2Ev}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSN9benchmark17BenchmarkReporter3RunE", !18, i64 0}
!65 = !{!63, !64, i64 0}
!66 = !{!25, !27, i64 24}
!67 = !{!25, !27, i64 16}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!71, !18, i64 224}
!71 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !72, i64 0, !18, i64 224}
!72 = !{!"_ZTSN9benchmark8internal9BenchmarkE", !28, i64 8, !73, i64 40, !74, i64 48, !79, i64 72, !84, i64 96, !11, i64 100, !5, i64 104, !85, i64 112, !85, i64 120, !10, i64 128, !5, i64 136, !11, i64 140, !11, i64 141, !11, i64 142, !86, i64 144, !18, i64 152, !87, i64 160, !92, i64 184, !18, i64 208, !18, i64 216}
!73 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !6, i64 0}
!74 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!79 = !{!"_ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !18, i64 0}
!84 = !{!"_ZTSN9benchmark8TimeUnitE", !6, i64 0}
!85 = !{!"double", !6, i64 0}
!86 = !{!"_ZTSN9benchmark4BigOE", !6, i64 0}
!87 = !{!"_ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE12_Vector_implE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !18, i64 0}
!92 = !{!"_ZTSSt6vectorIiSaIiEE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 int", !18, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTSN9benchmark8internal9BenchmarkE", !18, i64 0}
end_hunk_0
