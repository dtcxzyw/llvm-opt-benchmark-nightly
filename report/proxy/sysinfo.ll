Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/sysinfo?download=true
inline.NumInlined: 627
inline.NumDeleted: 266
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.9 }
%union.anon.9 = type { i32 }
%"struct.benchmark::CPUInfo::CacheInfo" = type <{ %"class.std::__cxx11::basic_string", i32, i32, i32, [4 x i8] }>
%struct.cpu_set_t = type { [16 x i64] }
%"class.benchmark::(anonymous namespace)::ThreadAffinityGuard" = type <{ i64, %struct.cpu_set_t, i8, [7 x i8] }>
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }

$_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev = comdat any

$_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_ = comdat any

$_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_ = comdat any

$_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_ = comdat any

$_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_ = comdat any

$_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

@_ZZN9benchmark7CPUInfo3GetEvE4info = internal unnamed_addr global ptr null, align 8
@_ZGVZN9benchmark7CPUInfo3GetEvE4info = internal global i64 0, align 8
@_ZZN9benchmark10SystemInfo3GetEvE4info = internal unnamed_addr global ptr null, align 8
@_ZGVZN9benchmark10SystemInfo3GetEvE4info = internal global i64 0, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [35 x i8] c"Unable to extract number of CPUs.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"sysconf(_SC_NPROCESSORS_ONLN) failed with error: \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"/sys/devices/system/cpu/cpu\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"/cpufreq/scaling_governor\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"/sys/devices/system/cpu/cpu0/tsc_freq_khz\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to open /proc/cpuinfo\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"cpu MHz\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Failure reading /proc/cpuinfo\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Failed to read to end of /proc/cpuinfo\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"stod\00", align 1
@.str.20 = private unnamed_addr constant [88 x i8] c"***WARNING*** Failed to set thread affinity. Estimated CPU frequency may be incorrect.\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Failed to reset thread affinity\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"/sys/devices/system/cpu/cpu0/cache/\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Failed while reading file '\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"size'\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"Invalid cache size format: failed to read size suffix\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"Invalid cache size format: Expected bytes \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Failed to read from file \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"shared_cpu_map\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stoul\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_sysinfo.cc, ptr null }]

@_ZN9benchmark7CPUInfoC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN9benchmark7CPUInfoC2Ev
@_ZN9benchmark10SystemInfoC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN9benchmark10SystemInfoC2Ev

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN9benchmark7CPUInfo3GetEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark7CPUInfo3GetEvE4info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark7CPUInfo3GetEvE4info) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9benchmark7CPUInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN9benchmark7CPUInfo3GetEvE4info, align 8, !tbaa !52
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark7CPUInfo3GetEvE4info) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN9benchmark7CPUInfo3GetEvE4info, align 8, !tbaa !52
  ret ptr %i.e

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.f, %bb.g ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9benchmark7CPUInfo3GetEvE4info) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark7CPUInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.benchmark::CPUInfo::CacheInfo", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::basic_ifstream", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %16 = alloca %struct.cpu_set_t, align 8         ; 6 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::basic_ifstream", align 8 ; 15 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.benchmark::(anonymous namespace)::ThreadAffinityGuard", align 8 ; 8 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.p = alloca i32, align 4                      ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.q = alloca ptr, align 8                      ; 3 uses
  %i.r = tail call i64 @sysconf(i32 noundef 84) #23
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZN9benchmark12_GLOBAL__N_114GetNumCPUsImplEv.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.u = tail call ptr @__errno_location() #26
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = tail call ptr @strerror(i32 noundef %i.v) #23
  store ptr %i.w, ptr %i.q, align 8, !tbaa !14
  call fastcc void @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA50_KcPcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #27
  unreachable

_ZN9benchmark12_GLOBAL__N_114GetNumCPUsImplEv.exit.i: ; preds = %bb.a
  %i.x = icmp eq i32 %i.s, 0
  br i1 %i.x, label %bb.c, label %_ZN9benchmark12_GLOBAL__N_110GetNumCPUsEv.exit

bb.c:                                             ; preds = %_ZN9benchmark12_GLOBAL__N_114GetNumCPUsImplEv.exit.i
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 34) ; 0 uses
  br label %_ZN9benchmark12_GLOBAL__N_110GetNumCPUsEv.exit

_ZN9benchmark12_GLOBAL__N_110GetNumCPUsEv.exit:   ; preds = %_ZN9benchmark12_GLOBAL__N_114GetNumCPUsImplEv.exit.i, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ %i.s, %_ZN9benchmark12_GLOBAL__N_114GetNumCPUsImplEv.exit.i ] ; 2 uses
  store i32 %.0.i, ptr %0, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.aa, ptr %30, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !24
  store i8 0, ptr %i.aa, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i32 0, ptr %i.p, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, %_ZN9benchmark12_GLOBAL__N_110GetNumCPUsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 1 dereferenceable(26) @.str.3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = invoke fastcc noundef zeroext i1 @_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef %30)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.ad, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.af = icmp eq i64 %i.ae, 11
  br i1 %i.af, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.g
  %i.ag = load ptr, ptr %30, align 8, !tbaa !26   ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = xor i64 %i.ah, 7020393216926180720
  %i.aj = getelementptr i8, ptr %i.ag, i64 3
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = xor i64 %i.ak, 7305804385252175718
  %i.am = or i64 %i.ai, %i.al
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not26.i = icmp eq i32 %i.ao, 0
  br i1 %.not26.i, label %.critedge.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i

bb.h:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.i:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %31, align 8, !tbaa !26   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ac
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

.critedge.i:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.f
  %i.av = load ptr, ptr %31, align 8, !tbaa !26   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ac
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %.critedge.i
  %i.ax = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.az = load i32, ptr %i.p, align 4, !tbaa !12
  %i.ba = add nsw i32 %i.az, 1                    ; 2 uses
  store i32 %i.ba, ptr %i.p, align 4, !tbaa !12
  %.not.i = icmp slt i32 %i.ba, %.0.i
  br i1 %.not.i, label %bb.d, label %.loopexit.i, !llvm.loop !53

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.g
  %i.bb = load ptr, ptr %31, align 8, !tbaa !26   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ac
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.bd = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %.loopexit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  %i.bf = load ptr, ptr %30, align 8, !tbaa !26   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aa
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bh = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

common.resume:                                    ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i ], [ %.pn97.pn.pn.pn.i, %bb.cm ], [ %.pn24.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %common.resume

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i
  %i.bj = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ] ; 3 uses
  %.not30.i = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  %i.bk = load ptr, ptr %30, align 8, !tbaa !26   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aa
  br i1 %i.bl, label %_ZN9benchmark12_GLOBAL__N_110CpuScalingEi.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %.loopexit.i
  %i.bm = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #25
  br label %_ZN9benchmark12_GLOBAL__N_110CpuScalingEi.exit

_ZN9benchmark12_GLOBAL__N_110CpuScalingEi.exit:   ; preds = %.loopexit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  store i32 %.not30.i, ptr %i.z, align 4, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.bp, ptr %20, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i64 41, ptr %i.m, align 8, !tbaa !28
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc.i unwind label %bb.t   ; 3 uses

.noexc.i:                                         ; preds = %_ZN9benchmark12_GLOBAL__N_110CpuScalingEi.exit
  store ptr %i.bq, ptr %20, align 8, !tbaa !26
  %i.br = load i64, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.bq, ptr noundef nonnull align 1 dereferenceable(41) @.str.7, i64 41, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZN9benchmark7CPUInfoC2Ev:bb.a

.lr.ph.i.i186.5.i:                                ; preds = %.lr.ph.i.i186.4.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.val117.i, i64 5
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !25
  %i.kx = call i32 @tolower(i32 noundef 105) #28
  %i.ky = sext i8 %i.kw to i32
  %i.kz = call i32 @tolower(i32 noundef %i.ky) #28
  %i.la = icmp eq i32 %i.kx, %i.kz
  br i1 %i.la, label %.lr.ph.i.i186.6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i

.lr.ph.i.i186.6.i:                                ; preds = %.lr.ph.i.i186.5.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.val117.i, i64 6
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !25
  %i.ld = call i32 @tolower(i32 noundef 112) #28
  %i.le = sext i8 %i.lc to i32
  %i.lf = call i32 @tolower(i32 noundef %i.le) #28
  %i.lg = icmp eq i32 %i.ld, %i.lf
  br i1 %i.lg, label %.lr.ph.i.i186.7.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i

.lr.ph.i.i186.7.i:                                ; preds = %.lr.ph.i.i186.6.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.val117.i, i64 7
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !25
  %i.lj = call i32 @tolower(i32 noundef 115) #28
  %i.lk = sext i8 %i.li to i32
  %i.ll = call i32 @tolower(i32 noundef %i.lk) #28
  %i.lm = icmp eq i32 %i.lj, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i: ; preds = %.lr.ph.i.i186.7.i, %.lr.ph.i.i186.6.i, %.lr.ph.i.i186.5.i, %.lr.ph.i.i186.4.i, %.lr.ph.i.i186.3.i, %.lr.ph.i.i186.2.i, %.lr.ph.i.i186.1.i, %.lr.ph.i.i186.preheader.i, %._crit_edge.i.i181.i, %._crit_edge.i.i181.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i: ; preds = %.lr.ph.i.i186.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.ln = load i64, ptr %i.fd, align 8
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i
  %i.lp = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.lq = tail call ptr @__errno_location() #26   ; 6 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !12 ; 2 uses
  store i32 0, ptr %i.lq, align 4, !tbaa !12
  %i.ls = call noundef double @strtod(ptr noundef %i.lp, ptr noundef nonnull %i.h)
  %i.lt = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.lu = icmp eq ptr %i.lt, %i.lp
  br i1 %i.lu, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.19) #27
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %.critedge.i.i195.i, %bb.bg
  %i.lv = landingpad { ptr, i32 }
          cleanup
  %i.lw = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.bj, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i196.i

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !12
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i196.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i196.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %.body176.i

bb.bk:                                            ; preds = %bb.bf
  %i.ly = load i32, ptr %i.lq, align 4, !tbaa !12
  switch i32 %i.ly, label %bb.bn [
    i32 34, label %.critedge.i.i195.i
    i32 0, label %bb.bm
  ]

.critedge.i.i195.i:                               ; preds = %bb.bk
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.19) #27
          to label %bb.bl unwind label %bb.bi

bb.bl:                                            ; preds = %.critedge.i.i195.i
  unreachable

bb.bm:                                            ; preds = %bb.bk
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !12
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %i.lz = fmul double %i.ls, 1.000000e+06         ; 2 uses
  %i.ma = fcmp olt double %i.lz, 0.000000e+00
  %spec.store.select.i = select i1 %i.ma, double -1.000000e+00, double %i.lz
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i, %bb.be, %bb.av
  %.377.i = phi double [ %.074..i, %bb.be ], [ %.074.ph.i, %bb.av ], [ %.074.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i ], [ %.074.ph.i, %bb.bn ], [ %.074.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i ] ; 2 uses
  %cond.i = phi i1 [ %i.jr, %bb.be ], [ true, %bb.av ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i ], [ true, %bb.bn ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i ]
  %.2.i = phi double [ %.0.ph.i, %bb.be ], [ %.0.ph.i, %bb.av ], [ %.0.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i ], [ %spec.store.select.i, %bb.bn ], [ %.0.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread.i ]
  %i.mb = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.fc
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i: ; preds = %bb.bo
  %i.md = load i64, ptr %i.fc, align 8, !tbaa !25
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br i1 %cond.i, label %.outer.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.i, !llvm.loop !55

.body176.i:                                       ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i196.i, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %bb.au
  %.pn97.i = phi { ptr, i32 } [ %lpad.phi253.i, %bb.au ], [ %i.jm, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %i.lv, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i196.i ]
  %i.mf = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.fc
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i: ; preds = %.body176.i
  %i.mh = load i64, ptr %i.fc, align 8, !tbaa !25
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i: ; preds = %.body176.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.ck

bb.bp:                                            ; preds = %bb.ah
  %i.mj = load ptr, ptr %23, align 8, !tbaa !30
  %i.mk = getelementptr i8, ptr %i.mj, i64 -24
  %i.ml = load i64, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds i8, ptr %23, i64 %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !39 ; 2 uses
  %i.mp = trunc i32 %i.mo to i1
  br i1 %i.mp, label %.invoke.i, label %bb.bq

.invoke.i:                                        ; preds = %bb.bq, %bb.bp
  %i.mq = phi ptr [ @.str.14, %bb.bp ], [ @.str.15, %bb.bq ]
  %i.mr = phi i64 [ 30, %bb.bp ], [ 39, %bb.bq ]
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.mq, i64 noundef %i.mr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.i unwind label %.loopexit.split-lp.i ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.mt = and i32 %i.mo, 2
  %.not247.i = icmp eq i32 %i.mt, 0
  br i1 %.not247.i, label %.invoke.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mu = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.mv = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.mu)
          to label %.noexc214.i unwind label %.loopexit.split-lp.i

.noexc214.i:                                      ; preds = %bb.br
  %.not.i213.i = icmp eq ptr %i.mv, null
  br i1 %.not.i213.i, label %bb.bs, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i

bb.bs:                                            ; preds = %.noexc214.i
  %i.mw = load ptr, ptr %23, align 8, !tbaa !30
  %i.mx = getelementptr i8, ptr %i.mw, i64 -24
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = getelementptr inbounds i8, ptr %23, i64 %i.my ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !39
  %i.nc = or i32 %i.nb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mz, i32 noundef %i.nc)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i unwind label %.loopexit.split-lp.i

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i: ; preds = %bb.bs, %.noexc214.i
  %i.nd = fcmp ult double %.0.ph.i, 0.000000e+00
  br i1 %i.nd, label %bb.bt, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.i

bb.bt:                                            ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.ne = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %29, i64 136 ; 3 uses
  %i.ng = tail call i64 @pthread_self() #26       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ne, i8 0, i64 128, i1 false)
  store i64 %i.ng, ptr %29, align 8, !tbaa !99
  %i.nh = call i32 @pthread_getaffinity_np(i64 noundef %i.ng, i64 noundef 128, ptr noundef nonnull %i.ne) #23
  %.not.i.i216.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i216.i, label %bb.bu, label %.sink.split.i.i

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(128) %i.ne, i64 128, i1 false)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bz
  %i.ni = trunc nuw i8 %.118.i.i.i.a to i1
  br i1 %i.ni, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.sink.split.i.i

bb.bw:                                            ; preds = %bb.bz, %bb.bu
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.bu ], [ %indvars.iv.next.i.i.i.a, %bb.bz ] ; 3 uses
  %.01720.i.i.i = phi i8 [ 1, %bb.bu ], [ %.118.i.i.i.a, %bb.bz ] ; 2 uses
  %i.nj = lshr i64 %indvars.iv.i.i.i, 6
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.nj ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !28 ; 2 uses
  %i.nm = and i64 %indvars.iv.i.i.i, 63
  %32 = shl nuw i64 1, %i.nm                      ; 2 uses
  %33 = and i64 %i.nl, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nn = trunc nuw i8 %.01720.i.i.i to i1
  br i1 %i.nn, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.no = xor i64 %32, -1
  %i.np = and i64 %i.nl, %i.no
  store i64 %i.np, ptr %i.nk, align 8, !tbaa !28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.118.i.i.i.a = phi i8 [ %.01720.i.i.i, %bb.bw ], [ 0, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %indvars.iv.next.i.i.i.a = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.a, 1024
  br i1 %exitcond.not.i.i.i, label %bb.bv, label %bb.bw, !llvm.loop !58

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i: ; preds = %bb.bv
  %i.nq = load i64, ptr %29, align 8, !tbaa !99
  %i.nr = call i32 @pthread_setaffinity_np(i64 noundef %i.nq, i64 noundef 128, ptr noundef nonnull %16) #23
  %i.ns = icmp eq i32 %i.nr, 0                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.nt = zext i1 %i.ns to i8
  store i8 %i.nt, ptr %i.nf, align 8, !tbaa !100
  br i1 %i.ns, label %bb.cb, label %bb.ca

.sink.split.i.i:                                  ; preds = %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, %bb.bt
  store i8 0, ptr %i.nf, align 8, !tbaa !100
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split.i.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 87)
          to label %bb.cb unwind label %bb.cj     ; 0 uses

bb.cb:                                            ; preds = %bb.ca, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
  %i.nv = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %i.nw = sitofp i64 %i.nv to double
  %i.nx = fdiv double %i.nw, 1.000000e+09         ; 2 uses
  %i.ny = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !101 ; 2 uses
  %i.nz = extractvalue { i64, i64 } %i.ny, 0
  %i.oa = extractvalue { i64, i64 } %i.ny, 1
  %i.ob = shl i64 %i.oa, 32
  %i.oc = or i64 %i.ob, %i.nz                     ; 2 uses
  %i.od = urem i64 %i.oc, 2147483647
  %storemerge.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %i.oe = phi i64 [ 0, %bb.cb ], [ %i.on, %bb.cd ]
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i, %bb.cb ], [ %i.om, %bb.cd ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.cc
  %.03.i.i = phi i64 [ 10000, %bb.cc ], [ %i.ok, %.lr.ph.i.i ]
  %i.of = phi i64 [ %.sroa.0.0.i, %bb.cc ], [ %i.oj, %.lr.ph.i.i ]
  %i.og = mul nuw nsw i64 %i.of, 48271
  %i.oh = urem i64 %i.og, 2147483647
  %i.oi = mul nuw nsw i64 %i.oh, 48271
  %i.oj = urem i64 %i.oi, 2147483647              ; 2 uses
  %i.ok = add nsw i64 %.03.i.i, -2                ; 2 uses
  %.not.i218.i.1 = icmp eq i64 %i.ok, 0
  br i1 %.not.i218.i.1, label %bb.cd, label %.lr.ph.i.i, !llvm.loop !59

bb.cd:                                            ; preds = %.lr.ph.i.i
  %i.ol = mul nuw nsw i64 %i.oj, 48271
  %i.om = urem i64 %i.ol, 2147483647              ; 2 uses
  %i.on = add i64 %i.om, %i.oe                    ; 3 uses
  store i64 %i.on, ptr %i.o, align 8, !tbaa !28
  %i.oo = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %i.op = sitofp i64 %i.oo to double
  %i.oq = fdiv double %i.op, 1.000000e+09
  %i.or = fsub double %i.oq, %i.nx
  %i.os = fcmp olt double %i.or, 1.000000e+00
  br i1 %i.os, label %bb.cc, label %bb.ce, !llvm.loop !60

bb.ce:                                            ; preds = %bb.cd
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.o, i64 %i.on) #23, !srcloc !102
  %i.ot = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !101 ; 2 uses
  %i.ou = extractvalue { i64, i64 } %i.ot, 0
  %i.ov = extractvalue { i64, i64 } %i.ot, 1
  %i.ow = shl i64 %i.ov, 32
  %i.ox = or i64 %i.ow, %i.ou
  %i.oy = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %i.oz = sitofp i64 %i.oy to double
  %i.pa = fdiv double %i.oz, 1.000000e+09
  %i.pb = sub nsw i64 %i.ox, %i.oc
  %i.pc = sitofp i64 %i.pb to double
  %i.pd = fsub double %i.pa, %i.nx
  %i.pe = fdiv double %i.pc, %i.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  %i.pf = load i8, ptr %i.nf, align 8, !tbaa !100, !range !103, !noundef !104
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %bb.cf, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.ph = load i64, ptr %29, align 8, !tbaa !99
  %i.pi = call i32 @pthread_setaffinity_np(i64 noundef %i.ph, i64 noundef 128, ptr noundef nonnull %i.ne) #23
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke fastcc void @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_() #27
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.pk = landingpad { ptr, i32 }
          catch ptr null
  %i.pl = extractvalue { ptr, i32 } %i.pk, 0
  call void @__clang_call_terminate(ptr %i.pl) #29
  unreachable

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.i

bb.cj:                                            ; preds = %bb.ca
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.ck

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i, %.invoke.i
  %.478.i = phi double [ %i.pe, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i ], [ %.0.ph.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i ], [ -1.000000e+00, %.invoke.i ], [ %.377.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i ]
  %i.pn = load ptr, ptr %24, align 8, !tbaa !26   ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.fa
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.i
  %i.pp = load i64, ptr %i.fa, align 8, !tbaa !25
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.ck:                                            ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i, %.loopexit.split-lp.i, %.loopexit.i5
  %.pn97.pn.i = phi { ptr, i32 } [ %.pn97.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i ], [ %i.pm, %bb.cj ], [ %lpad.loopexit.i, %.loopexit.i5 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.pr = load ptr, ptr %24, align 8, !tbaa !26   ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.fa
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i: ; preds = %bb.ck
  %i.pt = load i64, ptr %i.fa, align 8, !tbaa !25
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.cl

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, %bb.aa
  %.579.i = phi double [ %.478.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i ], [ -1.000000e+00, %bb.aa ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, %bb.ab
  %.pn97.pn.pn.i = phi { ptr, i32 } [ %.pn97.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i ], [ %i.ez, %bb.ab ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i
  %.pn97.pn.pn.pn.i = phi { ptr, i32 } [ %.pn97.pn.pn.i, %bb.cl ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  br label %common.resume

_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit: ; preds = %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.680.i = phi double [ %i.ec, %bb.s ], [ %.579.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  store double %.680.i, ptr %i.bo, align 8, !tbaa !105
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pv, i8 0, i64 24, i1 false), !alias.scope !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !108
  %i.pw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.pw, ptr %5, align 8, !tbaa !21, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23, !noalias !108
  store i64 35, ptr %i.f, align 8, !tbaa !28, !noalias !108
  %i.px = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.cr, !noalias !108 ; 3 uses

.noexc.i.i:                                       ; preds = %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit
  store ptr %i.px, ptr %5, align 8, !tbaa !26, !noalias !108
  %i.py = load i64, ptr %i.f, align 8, !tbaa !28, !noalias !108 ; 3 uses
  store i64 %i.py, ptr %i.pw, align 8, !tbaa !25, !noalias !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.px, ptr noundef nonnull align 1 dereferenceable(35) @.str.22, i64 35, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.py, ptr %i.pz, align 8, !tbaa !24, !noalias !108
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.py
  store i8 0, ptr %i.qa, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23, !noalias !108
  %i.qb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.qf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ql = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
end_hunk_1
