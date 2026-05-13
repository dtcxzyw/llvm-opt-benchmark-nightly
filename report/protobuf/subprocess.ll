inline.NumInlined: 141
inline.NumDeleted: 72
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::array" = type { [7 x i8] }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.absl::lts_20250512::log_internal::LogMessage::OstreamView" = type { %"class.std::basic_streambuf", ptr, %"class.absl::lts_20250512::Span", %"class.absl::lts_20250512::Span", %"class.absl::lts_20250512::Span" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20250512::Span" = type { ptr, i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.fd_set = type { [16 x i64] }
%"class.absl::lts_20250512::substitute_internal::Arg" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIPcEERS2_RKT_ = comdat any

@.str = private unnamed_addr constant [77 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/compiler/subprocess.cc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pipe(stdin_pipe) != -1\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pipe(stdout_pipe) != -1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fork: \00", align 1
@.str.4 = private unnamed_addr constant [154 x i8] c": program not found or is not executable\0APlease specify a program using absolute path or make sure the program is available in your PATH system variable\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"child_stdin_ != -1\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Must call Start() first.\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to serialize request.\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"select: \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"waitpid: \00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Plugin failed with status code $0.\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Plugin killed by signal $0.\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Neither WEXITSTATUS nor WTERMSIG is true?\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Plugin output is unparseable: \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN4absl12lts_2025051212log_internal9kCharNullE = external global %"struct.std::array", align 1

@_ZN6google8protobuf8compiler10SubprocessC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf8compiler10SubprocessC2Ev
@_ZN6google8protobuf8compiler10SubprocessD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf8compiler10SubprocessD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf8compiler10SubprocessC2Ev(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 -1, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.b, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8compiler10SubprocessD2Ev(ptr noundef nonnull readonly align 4 captures(none) dead_on_return(12) dereferenceable(12) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke i32 @close(i32 noundef %i.b)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10   ; 2 uses
  %.not2 = icmp eq i32 %i.e, -1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke i32 @close(i32 noundef %i.e)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable
}

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8compiler10Subprocess5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10SearchModeE(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  %i.b = alloca [2 x i32], align 4                ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.e = call i32 @pipe(ptr noundef nonnull %i.a) #25
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.b, label %.critedge, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 309, ptr noundef nonnull @.str.1) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.g = call i32 @pipe(ptr noundef nonnull %i.b) #25
  %.not20 = icmp eq i32 %i.g, -1
  br i1 %.not20, label %bb.d, label %.critedge22, !prof !11

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 310, ptr noundef nonnull @.str.2) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit23 unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit23: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  unreachable

.critedge22:                                      ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.i = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.j = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.i) #27
  %i.k = add i64 %i.j, 1
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #28 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit, label %bb.f

bb.f:                                             ; preds = %.critedge22
  %i.m = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull readonly dereferenceable(1) %i.i) #25 ; 0 uses
  br label %_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit

_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit: ; preds = %.critedge22, %bb.f
  store ptr %i.l, ptr %i.c, align 16, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !18
  %i.o = call i32 @fork() #25                     ; 2 uses
  store i32 %i.o, ptr %0, align 4, !tbaa !7
  switch i32 %i.o, label %bb.p [
    i32 -1, label %bb.g
    i32 0, label %bb.l
  ]

bb.g:                                             ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 316) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 6, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.p = tail call ptr @__errno_location() #29
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = call ptr @strerror(i32 noundef %i.q) #25
  store ptr %i.r, ptr %i.d, align 8, !tbaa !18
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24 unwind label %bb.j

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  unreachable

bb.l:                                             ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3
  %i.w = call i32 @dup2(i32 noundef %i.v, i32 noundef 0) #25 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = call i32 @dup2(i32 noundef %i.y, i32 noundef 1) #25 ; 0 uses
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ab = call i32 @close(i32 noundef %i.aa)      ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = call i32 @close(i32 noundef %i.ad)      ; 0 uses
  %i.af = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ag = call i32 @close(i32 noundef %i.af)      ; 0 uses
  %i.ah = load i32, ptr %i.x, align 4, !tbaa !3
  %i.ai = call i32 @close(i32 noundef %i.ah)      ; 0 uses
  switch i32 %2, label %bb.o [
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %6 = load ptr, ptr %i.c, align 16, !tbaa !18
  %i.aj = call i32 @execvp(ptr noundef %6, ptr noundef nonnull %i.c) #25 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %7 = load ptr, ptr %i.c, align 16, !tbaa !18
  %i.ak = call i32 @execv(ptr noundef %7, ptr noundef nonnull %i.c) #25 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.al = load ptr, ptr %i.c, align 16, !tbaa !18 ; 2 uses
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #27
  %i.an = call i64 @write(i32 noundef 2, ptr noundef nonnull %i.al, i64 noundef %i.am) ; 0 uses
  %i.ao = call i64 @write(i32 noundef 2, ptr noundef nonnull @.str.4, i64 noundef 153) ; 0 uses
  call void @_exit(i32 noundef 1) #30
  unreachable

bb.p:                                             ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit
  %8 = load ptr, ptr %i.c, align 16, !tbaa !18
  call void @free(ptr noundef %8) #25
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !3
  %i.aq = call i32 @close(i32 noundef %i.ap)      ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = call i32 @close(i32 noundef %i.as)      ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !9
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #10

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #8

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %spec.select.i = select i1 %.not.i, ptr @_ZN4absl12lts_2025051212log_internal9kCharNullE, ptr %i.d ; 2 uses
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #25
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %spec.select.i, i64 noundef %i.e)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8compiler10Subprocess11CommunicateERKNS0_7MessageEPS3_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %5 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %struct.fd_set, align 8             ; 8 uses
  %10 = alloca %struct.fd_set, align 8            ; 8 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !22
  store i8 0, ptr %i.h, align 8, !tbaa !23
  %i.j = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %7)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull %i.k) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 24, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  unreachable

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.7, i64 noundef 28)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.r, align 8, !tbaa !22
  store i8 0, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %.not60156 = icmp eq i32 %i.t, -1
  %.pre161 = load i32, ptr %i.e, align 4, !tbaa !9 ; 2 uses
  br i1 %.not60156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.u = call i32 @llvm.smax.i32(i32 %.pre161, i32 %i.t)
  %i.v = add nsw i32 %i.u, 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %bb.al
  %.042157 = phi i32 [ 0, %.lr.ph ], [ %.345.ph, %bb.al ] ; 5 uses
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %.pr.pr, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, i8 0, i64 128, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, i8 0, i64 128, i1 false), !tbaa !24
  %i.x = srem i32 %i.w, 64
  %i.y = zext nneg i32 %i.x to i64
end_hunk_0
