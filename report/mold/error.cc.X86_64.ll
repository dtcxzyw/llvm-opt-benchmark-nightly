Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/error.cc.X86_64?download=true
inline.NumInlined: 173
inline.NumDeleted: 110
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
%"class.std::basic_string_view" = type { i64, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4mold7Counter9instancesE = comdat any

$_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev = comdat any

$_ZN4mold5FatalINS_6X86_64EEC5ERNS_7ContextIS1_EE = comdat any

$_ZN4mold5FatalINS_6X86_64EED5Ev = comdat any

$_ZN4mold10SyncStream4emitEv = comdat any

$_ZN4mold5ErrorINS_6X86_64EEC5ERNS_7ContextIS1_EE = comdat any

$_ZN4mold4WarnINS_6X86_64EEC5ERNS_7ContextIS1_EE = comdat any

$_ZNSt8optionalIN4mold10SyncStreamEE7emplaceIJRSoEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS6_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN4mold10SyncStream2muE = comdat any

@_ZN4mold7Counter9instancesE = linkonce_odr dso_local global { { ptr, ptr, ptr } } zeroinitializer, comdat, align 8
@_ZGVN4mold7Counter9instancesE = linkonce_odr dso_local global i64 0, comdat($_ZN4mold7Counter9instancesE), align 8
@__dso_handle = external hidden global i8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZN4moldL11fatal_colorE = internal unnamed_addr constant %"class.std::basic_string_view" { i64 26, ptr @.str.6 }, align 8
@_ZN4moldL10fatal_monoE = internal unnamed_addr constant %"class.std::basic_string_view" { i64 13, ptr @.str.5 }, align 8
@_ZN4moldL13warning_colorE = internal unnamed_addr constant %"class.std::basic_string_view" { i64 28, ptr @.str.10 }, align 8
@_ZN4moldL12warning_monoE = internal unnamed_addr constant %"class.std::basic_string_view" { i64 15, ptr @.str.9 }, align 8
@_ZN4moldL11error_colorE = internal unnamed_addr constant %"class.std::basic_string_view" { i64 26, ptr @.str.8 }, align 8
@_ZN4moldL10error_monoE = internal unnamed_addr constant %"class.std::basic_string_view" { i64 13, ptr @.str.7 }, align 8
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZN4mold10SyncStream2muE = linkonce_odr dso_local global { %union.pthread_mutex_t } zeroinitializer, comdat, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"mold: fatal: \00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"mold: \1B[0;1;31mfatal:\1B[0m \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"mold: error: \00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"mold: \1B[0;1;31merror:\1B[0m \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"mold: warning: \00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"mold: \1B[0;1;35mwarning:\1B[0m \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4mold7Counter9instancesE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4mold7Counter9instancesE], section "llvm.metadata"

@_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4mold5FatalINS_6X86_64EEC2ERNS_7ContextIS1_EE
@_ZN4mold5FatalINS_6X86_64EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN4mold5FatalINS_6X86_64EED2Ev
@_ZN4mold5ErrorINS_6X86_64EEC1ERNS_7ContextIS1_EE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4mold5ErrorINS_6X86_64EEC2ERNS_7ContextIS1_EE
@_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4mold4WarnINS_6X86_64EEC2ERNS_7ContextIS1_EE

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN4mold7Counter9instancesE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN4mold7Counter9instancesE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN4mold7Counter9instancesE) #15
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev, ptr nonnull @_ZN4mold7Counter9instancesE, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN4mold7Counter9instancesE) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !331    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !332
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #16
  br label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold5FatalINS_6X86_64EEC2ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat($_ZN4mold5FatalINS_6X86_64EEC5ERNS_7ContextIS1_EE) align 2 {
bb.a:
  store ptr @_ZSt4cerr, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.e, align 1, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.p, ptr noundef null) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !13
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8, !tbaa !13
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.q, i64 %i.y
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef null) #15
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !13
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %i.a, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.b, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.q, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #15
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 24, ptr %i.ai, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.al, align 8, !tbaa !42
  store i8 0, ptr %i.ak, align 8, !tbaa !43
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.a, i64 %i.ao
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, ptr noundef nonnull %i.af) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 0, ptr %i.aq, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2656
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !319, !range !320, !noundef !321
  %i.at = trunc nuw i8 %i.as to i1
  %_ZN4moldL11fatal_colorE._ZN4moldL10fatal_monoE = select i1 %i.at, ptr @_ZN4moldL11fatal_colorE, ptr @_ZN4moldL10fatal_monoE ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %_ZN4moldL11fatal_colorE._ZN4moldL10fatal_monoE, align 8, !tbaa !322
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %_ZN4moldL11fatal_colorE._ZN4moldL10fatal_monoE, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !323
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress noreturn nounwind
define weak_odr dso_local void @_ZN4mold5FatalINS_6X86_64EED2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %0) unnamed_addr #3 comdat($_ZN4mold5FatalINS_6X86_64EED5Ev) align 2 {
bb.a:
  tail call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(401) %0)
  tail call void @_ZN4mold7cleanupEv() #15
  tail call void @_exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(401) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !48, !range !320, !noundef !321
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4mold10SyncStream2muE) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #17
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !321, !align !338
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !41, !alias.scope !341
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !42, !alias.scope !341
  store i8 0, ptr %i.g, align 8, !tbaa !43, !alias.scope !341
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !342, !noalias !341 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !noalias !341 ; 2 uses
  %i.m = icmp ugt ptr %i.j, %i.l
  %.08.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.l ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i1 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !343, !noalias !341 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.u = load ptr, ptr %1, align 8, !tbaa !324
  %i.v = load i64, ptr %i.h, align 8, !tbaa !42
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.u, i64 noundef %i.v) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !43
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !344
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.a, i64 noundef 1) #15 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.g:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 10) #15 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = load ptr, ptr %1, align 8, !tbaa !324   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !43
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  store i8 1, ptr %i.b, align 8, !tbaa !48
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4mold10SyncStream2muE) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare void @_ZN4mold7cleanupEv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold5ErrorINS_6X86_64EEC2ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat($_ZN4mold5ErrorINS_6X86_64EEC5ERNS_7ContextIS1_EE) align 2 {
bb.a:
  store ptr @_ZSt4cerr, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.e, align 1, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.p, ptr noundef null) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !13
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8, !tbaa !13
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.q, i64 %i.y
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef null) #15
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !13
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %i.a, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.b, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.q, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #15
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 24, ptr %i.ai, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.al, align 8, !tbaa !42
  store i8 0, ptr %i.ak, align 8, !tbaa !43
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.a, i64 %i.ao
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, ptr noundef nonnull %i.af) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 0, ptr %i.aq, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2679
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !345, !range !320, !noundef !321
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2656
  %i.av = load i8, ptr %i.au, align 8, !tbaa !319, !range !320, !noundef !321
  %i.aw = trunc nuw i8 %i.av to i1                ; 2 uses
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %_ZN4moldL13warning_colorE._ZN4moldL12warning_monoE = select i1 %i.aw, ptr @_ZN4moldL13warning_colorE, ptr @_ZN4moldL12warning_monoE ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %_ZN4moldL13warning_colorE._ZN4moldL12warning_monoE, align 8, !tbaa !322
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %_ZN4moldL13warning_colorE._ZN4moldL12warning_monoE, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !323
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %_ZN4moldL11error_colorE._ZN4moldL10error_monoE = select i1 %i.aw, ptr @_ZN4moldL11error_colorE, ptr @_ZN4moldL10error_monoE ; 2 uses
  %.sroa.0.0.copyload.i5 = load i64, ptr %_ZN4moldL11error_colorE._ZN4moldL10error_monoE, align 8, !tbaa !322
  %.sroa.2.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %_ZN4moldL11error_colorE._ZN4moldL10error_monoE, i64 8
  %.sroa.2.0.copyload.i7 = load ptr, ptr %.sroa.2.0..sroa_idx.i6, align 8, !tbaa !323
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %.sroa.2.0.copyload.i7, i64 noundef %.sroa.0.0.copyload.i5) #15 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4088
  store i8 1, ptr %i.az, align 8, !tbaa !325
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold4WarnINS_6X86_64EEC2ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat($_ZN4mold4WarnINS_6X86_64EEC5ERNS_7ContextIS1_EE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 0, ptr %i.a, align 8, !tbaa !327
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2701
  %i.c = load i8, ptr %i.b, align 1, !tbaa !346, !range !320, !noundef !321
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(401) ptr @_ZNSt8optionalIN4mold10SyncStreamEE7emplaceIJRSoEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2668
  %i.g = load i8, ptr %i.f, align 4, !tbaa !347, !range !320, !noundef !321
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2656
  %i.j = load i8, ptr %i.i, align 8, !tbaa !319, !range !320, !noundef !321
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %_ZN4moldL11error_colorE._ZN4moldL10error_monoE = select i1 %i.k, ptr @_ZN4moldL11error_colorE, ptr @_ZN4moldL10error_monoE ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %_ZN4moldL11error_colorE._ZN4moldL10error_monoE, align 8, !tbaa !322
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %_ZN4moldL11error_colorE._ZN4moldL10error_monoE, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !323
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) #15 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4088
  store i8 1, ptr %i.n, align 8, !tbaa !325
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %_ZN4moldL13warning_colorE._ZN4moldL12warning_monoE = select i1 %i.k, ptr @_ZN4moldL13warning_colorE, ptr @_ZN4moldL12warning_monoE ; 2 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %_ZN4moldL13warning_colorE._ZN4moldL12warning_monoE, align 8, !tbaa !322
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %_ZN4moldL13warning_colorE._ZN4moldL12warning_monoE, i64 8
  %.sroa.2.0.copyload.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !323
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %.sroa.2.0.copyload.i8, i64 noundef %.sroa.0.0.copyload.i6) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(401) ptr @_ZNSt8optionalIN4mold10SyncStreamEE7emplaceIJRSoEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !327, !range !320, !noundef !321
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !327
  br i1 %i.c, label %bb.b, label %._ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit_crit_edge

._ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %.pre2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  br label %_ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(409) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !13
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !13
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !324  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !43
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #16
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #15
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.t, ptr %i.d, align 8, !tbaa !13
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.d, i64 %i.w
  store ptr %i.u, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.z) #15
  br label %_ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %._ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit_crit_edge, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i
  %i.aa = phi ptr [ %.pre2, %._ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit_crit_edge ], [ %i.u, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i ]
  %i.ab = phi ptr [ %.pre, %._ZNSt19_Optional_base_implIN4mold10SyncStreamESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit_crit_edge ], [ %i.t, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i ] ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ad) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.ag, align 1, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !13
  %i.ai = getelementptr i8, ptr %i.ab, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.aj
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8, !tbaa !33
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 %i.ao
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, ptr noundef null) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !13
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !13
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.aq, i64 %i.ay
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.az, ptr noundef null) #15
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ba, ptr %i.ac, align 8, !tbaa !13
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ac, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %i.ac, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.ad, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.aq, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bf, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #15
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bf, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 24, ptr %i.bi, align 8, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.bl, align 8, !tbaa !42
  store i8 0, ptr %i.bk, align 8, !tbaa !43
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.ac, i64 %i.bo
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bp, ptr noundef nonnull %i.bf) #15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 0, ptr %i.bq, align 8, !tbaa !48
  store i8 1, ptr %i.a, align 8, !tbaa !327
  ret ptr %0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !324    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !348

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  store i8 %i.v, ptr %i.t, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !43
  store i8 %i.w, ptr %i.m, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !42
  %i.x = load ptr, ptr %0, align 8, !tbaa !324
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !43
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !324
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !328

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !324    ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43
  store i8 %i.u, ptr %i.s, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !43
  store i8 %i.y, ptr %i.x, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !324   ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !43
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !324
  store i64 %.0, ptr %i.h, align 8, !tbaa !43
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !324    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !328

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #19 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !324    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !43
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #16
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !324
  store i64 %.0, ptr %i.d, align 8, !tbaa !43
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !42
  store i8 0, ptr %i.c, align 1, !tbaa !43
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !324    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  store i8 %i.v, ptr %i.t, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !42
  %i.x = load ptr, ptr %0, align 8, !tbaa !324
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"p1 _ZTSSo", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"vtable pointer", !3, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !8, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !8, i64 0, !14, i64 8}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !8, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !8, i64 0}
!21 = !{!"_ZTSSt6locale", !20, i64 0}
!22 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !18, i64 48, !4, i64 64, !5, i64 192, !19, i64 200, !21, i64 208}
!23 = !{!"bool", !4, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !8, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !8, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !8, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !8, i64 0}
!28 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !10, i64 216, !4, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!29 = !{!28, !10, i64 216}
!30 = !{!28, !4, i64 224}
!31 = !{!28, !23, i64 225}
!32 = !{!"_ZTSSi", !14, i64 8}
!33 = !{!32, !14, i64 8}
!34 = !{!"p1 omnipotent char", !8, i64 0}
!35 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !21, i64 56}
!36 = !{!"_ZTSSt13_Ios_Openmode", !4, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !14, i64 8, !4, i64 16}
!39 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !35, i64 0, !36, i64 64, !38, i64 72}
!40 = !{!39, !36, i64 64}
!41 = !{!37, !34, i64 0}
!42 = !{!38, !14, i64 8}
!43 = !{!4, !4, i64 0}
!44 = !{!"_ZTSSo"}
!45 = !{!"_ZTSSd", !32, i64 0, !44, i64 16}
!46 = !{!"_ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !45, i64 0, !39, i64 24}
!47 = !{!"_ZTSN4mold10SyncStreamE", !10, i64 0, !46, i64 8, !23, i64 400}
!48 = !{!47, !23, i64 400}
!49 = !{!"_ZTSN4mold13BsymbolicKindE", !4, i64 0}
!50 = !{!"_ZTSN4mold7BuildIdUt_E", !4, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIhSaIhEE", !53, i64 0}
!55 = !{!"_ZTSN4mold7BuildIdE", !50, i64 0, !54, i64 8, !14, i64 32}
!56 = !{!"_ZTSN4mold13CetReportKindE", !4, i64 0}
!57 = !{!"_ZTSSt9once_flag", !5, i64 0}
!58 = !{!"p1 _ZTSN4mold4Glob14LiteralPatternE", !8, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE", !61, i64 0}
!63 = !{!"p1 _ZTSN4mold4Glob7PatternE", !8, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE12_Vector_implE", !64, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE", !65, i64 0}
!67 = !{!"_ZTSSt6vectorIN4mold4Glob7PatternESaIS2_EE", !66, i64 0}
!68 = !{!"p1 long", !8, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseImSaImEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorImSaImEE", !71, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorIlSaIlEE", !75, i64 0}
!77 = !{!"_ZTSN4mold4Glob3NfaE", !72, i64 0, !72, i64 24, !72, i64 48, !72, i64 72, !76, i64 96}
!78 = !{!"_ZTSSt5arrayIiLm256EE", !4, i64 0}
!79 = !{!"p1 _ZTSN4mold11AhoCorasick8TrieNodeE", !8, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSN4mold11AhoCorasickE", !78, i64 0, !83, i64 1024}
!85 = !{!"_ZTSN4mold4GlobE", !57, i64 0, !23, i64 4, !23, i64 5, !14, i64 8, !62, i64 16, !62, i64 40, !62, i64 64, !67, i64 88, !77, i64 112, !84, i64 232}
!86 = !{!"_ZTSN4mold16SeparateCodeKindE", !4, i64 0}
!87 = !{!"_ZTSN4mold19ShuffleSectionsKindE", !4, i64 0}
!88 = !{!"p1 _ZTSN4mold6SymbolINS_6X86_64EEE", !8, i64 0}
!89 = !{!"_ZTSN4mold14UnresolvedKindE", !4, i64 0}
!90 = !{!"_ZTSSt22_Optional_payload_baseIlE", !4, i64 0, !23, i64 8}
!91 = !{!"_ZTSSt17_Optional_payloadIlLb1ELb1ELb1EE", !90, i64 0}
!92 = !{!"_ZTSSt14_Optional_baseIlLb1ELb1EE", !91, i64 0}
!93 = !{!"_ZTSSt8optionalIlE", !92, i64 0}
!94 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEE", !4, i64 0, !23, i64 24}
!95 = !{!"_ZTSSt17_Optional_payloadISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb1ELb0ELb0EE", !94, i64 0}
!96 = !{!"_ZTSSt17_Optional_payloadISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0ELb0EE", !95, i64 0}
!97 = !{!"_ZTSSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EE", !96, i64 0}
!98 = !{!"_ZTSSt8optionalISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEE", !97, i64 0}
!99 = !{!"_ZTSSt22_Optional_payload_baseImE", !4, i64 0, !23, i64 8}
!100 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !99, i64 0}
!101 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt8optionalImE", !101, i64 0}
!103 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !14, i64 0, !34, i64 8}
!104 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !9, i64 0}
!105 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !8, i64 0}
!106 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !105, i64 0}
!107 = !{!"float", !4, i64 0}
!108 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !107, i64 0, !14, i64 8}
!109 = !{!"_ZTSSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE", !104, i64 0, !14, i64 8, !106, i64 16, !14, i64 24, !108, i64 32, !105, i64 48}
!110 = !{!"_ZTSSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEE", !109, i64 0}
!111 = !{!"_ZTSSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE", !104, i64 0, !14, i64 8, !106, i64 16, !14, i64 24, !108, i64 32, !105, i64 48}
!112 = !{!"_ZTSSt13unordered_setISt17basic_string_viewIcSt11char_traitsIcEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !111, i64 0}
!113 = !{!"p1 _ZTSN4mold12SectionOrderE", !8, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIN4mold12SectionOrderESaIS1_EE", !116, i64 0}
!118 = !{!"p2 _ZTSN4mold6SymbolINS_6X86_64EEE", !9, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!"_ZTSNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_Vector_implE", !119, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE", !120, i64 0}
!122 = !{!"_ZTSSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE", !121, i64 0}
!123 = !{!"p1 _ZTSSt4pairIPN4mold6SymbolINS0_6X86_64EEESt7variantIJS4_mEEE", !8, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE12_Vector_implE", !124, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE", !125, i64 0}
!127 = !{!"_ZTSSt6vectorISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE", !126, i64 0}
!128 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !131, i64 0}
!133 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !8, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !136, i64 0}
!138 = !{!"_ZTSN4mold7ContextINS_6X86_64EEUt_E", !49, i64 0, !55, i64 8, !56, i64 48, !85, i64 56, !85, i64 1336, !86, i64 2616, !87, i64 2620, !88, i64 2624, !88, i64 2632, !88, i64 2640, !89, i64 2648, !23, i64 2652, !23, i64 2653, !23, i64 2654, !23, i64 2655, !23, i64 2656, !23, i64 2657, !23, i64 2658, !23, i64 2659, !23, i64 2660, !23, i64 2661, !23, i64 2662, !23, i64 2663, !23, i64 2664, !23, i64 2665, !23, i64 2666, !23, i64 2667, !23, i64 2668, !23, i64 2669, !23, i64 2670, !23, i64 2671, !23, i64 2672, !23, i64 2673, !23, i64 2674, !23, i64 2675, !23, i64 2676, !23, i64 2677, !23, i64 2678, !23, i64 2679, !23, i64 2680, !23, i64 2681, !23, i64 2682, !23, i64 2683, !23, i64 2684, !23, i64 2685, !23, i64 2686, !23, i64 2687, !23, i64 2688, !23, i64 2689, !23, i64 2690, !23, i64 2691, !23, i64 2692, !23, i64 2693, !23, i64 2694, !23, i64 2695, !23, i64 2696, !23, i64 2697, !23, i64 2698, !23, i64 2699, !23, i64 2700, !23, i64 2701, !23, i64 2702, !23, i64 2703, !23, i64 2704, !23, i64 2705, !23, i64 2706, !23, i64 2707, !23, i64 2708, !23, i64 2709, !23, i64 2710, !23, i64 2711, !23, i64 2712, !23, i64 2713, !23, i64 2714, !23, i64 2715, !23, i64 2716, !23, i64 2717, !23, i64 2718, !23, i64 2719, !23, i64 2720, !23, i64 2721, !23, i64 2722, !23, i64 2723, !23, i64 2724, !23, i64 2725, !23, i64 2726, !23, i64 2727, !23, i64 2728, !23, i64 2729, !14, i64 2736, !14, i64 2744, !14, i64 2752, !14, i64 2760, !14, i64 2768, !14, i64 2776, !93, i64 2784, !98, i64 2800, !102, i64 2832, !102, i64 2848, !38, i64 2864, !38, i64 2896, !38, i64 2928, !38, i64 2960, !38, i64 2992, !38, i64 3024, !38, i64 3056, !38, i64 3088, !38, i64 3120, !38, i64 3152, !38, i64 3184, !38, i64 3216, !38, i64 3248, !38, i64 3280, !38, i64 3312, !38, i64 3344, !103, i64 3376, !110, i64 3392, !110, i64 3448, !112, i64 3504, !112, i64 3560, !112, i64 3616, !112, i64 3672, !117, i64 3728, !122, i64 3752, !122, i64 3776, !127, i64 3800, !132, i64 3824, !132, i64 3848, !132, i64 3872, !137, i64 3896, !137, i64 3920, !137, i64 3944, !5, i64 3968, !14, i64 3976, !14, i64 3984}
!139 = !{!"_ZTSSt22_Optional_payload_baseIN3tbb6detail2d114global_controlEE", !4, i64 0, !23, i64 24}
!140 = !{!"_ZTSSt17_Optional_payloadIN3tbb6detail2d114global_controlELb1ELb0ELb0EE", !139, i64 0}
!141 = !{!"_ZTSSt17_Optional_payloadIN3tbb6detail2d114global_controlELb0ELb0ELb0EE", !140, i64 0}
!142 = !{!"_ZTSSt14_Optional_baseIN3tbb6detail2d114global_controlELb0ELb0EE", !141, i64 0}
!143 = !{!"_ZTSSt8optionalIN3tbb6detail2d114global_controlEE", !142, i64 0}
!144 = !{!"p1 _ZTSN4mold14VersionPatternE", !8, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorIN4mold14VersionPatternESaIS1_EE", !147, i64 0}
!149 = !{!"p1 _ZTSN4mold14DynamicPatternE", !8, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE17_Vector_impl_dataE", !149, i64 0, !149, i64 8, !149, i64 16}
!151 = !{!"_ZTSNSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE12_Vector_implE", !150, i64 0}
!152 = !{!"_ZTSSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE", !151, i64 0}
!153 = !{!"_ZTSSt6vectorIN4mold14DynamicPatternESaIS1_EE", !152, i64 0}
!154 = !{!"p1 _ZTSSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEE", !8, i64 0}
!155 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE"}
!156 = !{!"p1 _ZTSSt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS4_6X86_64EEEEE", !8, i64 0}
!157 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS5_6X86_64EEEEEE", !156, i64 0}
!158 = !{!"_ZTSSt6atomicIPS_IPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS4_6X86_64EEEEEE", !157, i64 0}
!159 = !{!"_ZTSSt13__atomic_baseImE", !14, i64 0}
!160 = !{!"_ZTSSt6atomicImE", !159, i64 0}
!161 = !{!"_ZTSSt13__atomic_baseIbE", !23, i64 0}
!162 = !{!"_ZTSSt6atomicIbE", !161, i64 0}
!163 = !{!"_ZTSN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EEE", !154, i64 0, !155, i64 8, !158, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!164 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEEE", !163, i64 0}
!165 = !{!"_ZTSN4mold13ArenaResourceE", !34, i64 0, !160, i64 8}
!166 = !{!"p1 _ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE5arrayE", !8, i64 0}
!167 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !166, i64 0}
!168 = !{!"_ZTSSt6atomicIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !167, i64 0}
!169 = !{!"_ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EEE", !168, i64 8, !160, i64 16}
!170 = !{!"p1 _ZTSN3tbb6detail2d113callback_baseE", !8, i64 0}
!171 = !{!"p1 _ZTSN3tbb6detail2d06paddedINS0_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS7_6SymbolINS7_6X86_64EEEE7PendingESaISD_EELm64EEEELm128EEE", !8, i64 0}
!172 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPNS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEEE"}
!173 = !{!"p1 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEE", !8, i64 0}
!174 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPN3tbb6detail2d06paddedINS2_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEE", !173, i64 0}
!175 = !{!"_ZTSSt6atomicIPS_IPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEEE", !174, i64 0}
!176 = !{!"_ZTSN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EENS1_17concurrent_vectorISJ_SL_EELm3EEE", !171, i64 0, !172, i64 8, !175, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!177 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EEEE", !176, i64 0}
!178 = !{!"_ZTSN3tbb6detail2d126enumerable_thread_specificISt5arrayISt6vectorIN4mold10ShardedMapINS5_6SymbolINS5_6X86_64EEEE7PendingESaISB_EELm64EENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EEE", !169, i64 0, !170, i64 24, !177, i64 32}
!179 = !{!"_ZTSN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEEE", !4, i64 0, !178, i64 8192}
!180 = !{!"p1 _ZTSSt10unique_ptrIN4mold13MergedSectionINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !8, i64 0}
!181 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!182 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !8, i64 0}
!183 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !182, i64 0}
!184 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !183, i64 0}
!185 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !180, i64 0, !181, i64 8, !184, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!186 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !185, i64 0}
!187 = !{!"p1 _ZTSSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS1_EE", !8, i64 0}
!188 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS6_EEEEE"}
!189 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE", !8, i64 0}
!190 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS3_EEEE", !189, i64 0}
!191 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEEE", !190, i64 0}
!192 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !187, i64 0, !188, i64 8, !191, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!193 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEEE", !192, i64 0}
!194 = !{!"p1 _ZTSSt10unique_ptrIN4mold10ObjectFileINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !8, i64 0}
!195 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!196 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !8, i64 0}
!197 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !196, i64 0}
!198 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !197, i64 0}
!199 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !194, i64 0, !195, i64 8, !198, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!200 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !199, i64 0}
!201 = !{!"p1 _ZTSSt10unique_ptrIN4mold10SharedFileINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !8, i64 0}
!202 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10SharedFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!203 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10SharedFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !8, i64 0}
!204 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10SharedFileINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !203, i64 0}
!205 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10SharedFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !204, i64 0}
!206 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !201, i64 0, !202, i64 8, !205, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!207 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !206, i64 0}
!208 = !{!"p1 _ZTSSt10unique_ptrIA_hSt14default_deleteIS0_EE", !8, i64 0}
!209 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS5_EEEEE"}
!210 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS1_EEE", !8, i64 0}
!211 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS2_EEEE", !210, i64 0}
!212 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIA_hSt14default_deleteIS1_EEEE", !211, i64 0}
!213 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EEE", !208, i64 0, !209, i64 8, !212, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!214 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEEE", !213, i64 0}
!215 = !{!"p1 _ZTSSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS1_EE", !8, i64 0}
!216 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EEEEE"}
!217 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !8, i64 0}
!218 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS3_EEEE", !217, i64 0}
!219 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEEE", !218, i64 0}
!220 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !215, i64 0, !216, i64 8, !219, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!221 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEEE", !220, i64 0}
!222 = !{!"p1 _ZTSSt10unique_ptrIN4mold5ChunkINS0_6X86_64EEESt14default_deleteIS3_EE", !8, i64 0}
!223 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold5ChunkINS5_6X86_64EEESt14default_deleteIS8_EEEEE"}
!224 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold5ChunkINS1_6X86_64EEESt14default_deleteIS4_EEE", !8, i64 0}
!225 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold5ChunkINS2_6X86_64EEESt14default_deleteIS5_EEEE", !224, i64 0}
!226 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold5ChunkINS1_6X86_64EEESt14default_deleteIS4_EEEE", !225, i64 0}
!227 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !222, i64 0, !223, i64 8, !226, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!228 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEEE", !227, i64 0}
!229 = !{!"p1 _ZTSSt10unique_ptrIN4mold13OutputSectionINS0_6X86_64EEESt14default_deleteIS3_EE", !8, i64 0}
!230 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS5_6X86_64EEESt14default_deleteIS8_EEEEE"}
!231 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS1_6X86_64EEESt14default_deleteIS4_EEE", !8, i64 0}
!232 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS2_6X86_64EEESt14default_deleteIS5_EEEE", !231, i64 0}
!233 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold13OutputSectionINS1_6X86_64EEESt14default_deleteIS4_EEEE", !232, i64 0}
!234 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13OutputSectionINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !229, i64 0, !230, i64 8, !233, i64 16, !4, i64 24, !160, i64 48, !160, i64 56, !162, i64 64}
!235 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold13OutputSectionINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEEE", !234, i64 0}
!236 = !{!"p2 _ZTSN4mold10ObjectFileINS_6X86_64EEE", !9, i64 0}
!237 = !{!"_ZTSNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !236, i64 0, !236, i64 8, !236, i64 16}
!238 = !{!"_ZTSNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE12_Vector_implE", !237, i64 0}
!239 = !{!"_ZTSSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE", !238, i64 0}
!240 = !{!"_ZTSSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE", !239, i64 0}
!241 = !{!"p2 _ZTSN4mold10SharedFileINS_6X86_64EEE", !9, i64 0}
!242 = !{!"_ZTSNSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !241, i64 0, !241, i64 8, !241, i64 16}
!243 = !{!"_ZTSNSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE12_Vector_implE", !242, i64 0}
!244 = !{!"_ZTSSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE", !243, i64 0}
!245 = !{!"_ZTSSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE", !244, i64 0}
!246 = !{!"p1 _ZTSN4mold10ObjectFileINS_6X86_64EEE", !8, i64 0}
!247 = !{!"p1 _ZTSN4mold6ElfSymINS_6X86_64EEE", !8, i64 0}
!248 = !{!"_ZTSNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE17_Vector_impl_dataE", !247, i64 0, !247, i64 8, !247, i64 16}
!249 = !{!"_ZTSNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE12_Vector_implE", !248, i64 0}
!250 = !{!"_ZTSSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE", !249, i64 0}
!251 = !{!"_ZTSSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE", !250, i64 0}
!252 = !{!"p1 _ZTSN4mold10OutputFileINS_6X86_64EEE", !8, i64 0}
!253 = !{!"_ZTSSt10_Head_baseILm0EPN4mold10OutputFileINS0_6X86_64EEELb0EE", !252, i64 0}
!254 = !{!"_ZTSSt11_Tuple_implILm0EJPN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EEE", !253, i64 0}
!255 = !{!"_ZTSSt5tupleIJPN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EEE", !254, i64 0}
!256 = !{!"_ZTSSt15__uniq_ptr_implIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EE", !255, i64 0}
!257 = !{!"_ZTSSt15__uniq_ptr_dataIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_ELb1ELb1EE", !256, i64 0}
!258 = !{!"_ZTSSt10unique_ptrIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EE", !257, i64 0}
!259 = !{!"p2 _ZTSN4mold5ChunkINS_6X86_64EEE", !9, i64 0}
!260 = !{!"_ZTSNSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !259, i64 0, !259, i64 8, !259, i64 16}
!261 = !{!"_ZTSNSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_Vector_implE", !260, i64 0}
!262 = !{!"_ZTSSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE", !261, i64 0}
!263 = !{!"_ZTSSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE", !262, i64 0}
!264 = !{!"_ZTSN4mold6AtomicIbEE", !162, i64 0}
!265 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!266 = !{!"_ZTSSt6atomicIiE", !265, i64 0}
!267 = !{!"_ZTSN4mold6AtomicIiEE", !266, i64 0}
!268 = !{!"_ZTSN3tbb6detail2d113tbb_allocatorINS0_2d213hash_map_baseINS2_ISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS1_13spin_rw_mutexEE6bucketEEE"}
!269 = !{!"_ZTSN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEEE", !268, i64 0, !160, i64 8, !160, i64 16, !4, i64 24, !4, i64 56}
!270 = !{!"_ZTSSt4hashIPN4mold6SymbolINS0_6X86_64EEEE"}
!271 = !{!"_ZTSSt8equal_toIPN4mold6SymbolINS0_6X86_64EEEE"}
!272 = !{!"_ZTSN3tbb6detail2d116tbb_hash_compareIPN4mold6SymbolINS3_6X86_64EEEEE", !270, i64 0, !271, i64 1}
!273 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEEE", !269, i64 0, !272, i64 568}
!274 = !{!"p1 _ZTSN4mold10OutputEhdrINS_6X86_64EEE", !8, i64 0}
!275 = !{!"p1 _ZTSN4mold10OutputShdrINS_6X86_64EEE", !8, i64 0}
!276 = !{!"p1 _ZTSN4mold10OutputPhdrINS_6X86_64EEE", !8, i64 0}
!277 = !{!"p1 _ZTSN4mold13InterpSectionINS_6X86_64EEE", !8, i64 0}
!278 = !{!"p1 _ZTSN4mold10GotSectionINS_6X86_64EEE", !8, i64 0}
!279 = !{!"p1 _ZTSN4mold13GotPltSectionINS_6X86_64EEE", !8, i64 0}
!280 = !{!"p1 _ZTSN4mold13RelPltSectionINS_6X86_64EEE", !8, i64 0}
!281 = !{!"p1 _ZTSN4mold13RelDynSectionINS_6X86_64EEE", !8, i64 0}
!282 = !{!"p1 _ZTSN4mold14RelrDynSectionINS_6X86_64EEE", !8, i64 0}
!283 = !{!"p1 _ZTSN4mold14DynamicSectionINS_6X86_64EEE", !8, i64 0}
!284 = !{!"p1 _ZTSN4mold13StrtabSectionINS_6X86_64EEE", !8, i64 0}
!285 = !{!"p1 _ZTSN4mold13DynstrSectionINS_6X86_64EEE", !8, i64 0}
!286 = !{!"p1 _ZTSN4mold11HashSectionINS_6X86_64EEE", !8, i64 0}
!287 = !{!"p1 _ZTSN4mold14GnuHashSectionINS_6X86_64EEE", !8, i64 0}
!288 = !{!"p1 _ZTSN4mold19GnuDebuglinkSectionINS_6X86_64EEE", !8, i64 0}
!289 = !{!"p1 _ZTSN4mold15ShstrtabSectionINS_6X86_64EEE", !8, i64 0}
!290 = !{!"p1 _ZTSN4mold10PltSectionINS_6X86_64EEE", !8, i64 0}
!291 = !{!"p1 _ZTSN4mold13PltGotSectionINS_6X86_64EEE", !8, i64 0}
!292 = !{!"p1 _ZTSN4mold13SymtabSectionINS_6X86_64EEE", !8, i64 0}
!293 = !{!"p1 _ZTSN4mold18SymtabShndxSectionINS_6X86_64EEE", !8, i64 0}
!294 = !{!"p1 _ZTSN4mold13DynsymSectionINS_6X86_64EEE", !8, i64 0}
!295 = !{!"p1 _ZTSN4mold14EhFrameSectionINS_6X86_64EEE", !8, i64 0}
!296 = !{!"p1 _ZTSN4mold17EhFrameHdrSectionINS_6X86_64EEE", !8, i64 0}
!297 = !{!"p1 _ZTSN4mold19EhFrameRelocSectionINS_6X86_64EEE", !8, i64 0}
!298 = !{!"p1 _ZTSN4mold13SFrameSectionINS_6X86_64EEE", !8, i64 0}
!299 = !{!"p1 _ZTSN4mold18SFrameRelocSectionINS_6X86_64EEE", !8, i64 0}
!300 = !{!"p1 _ZTSN4mold14CopyrelSectionINS_6X86_64EEE", !8, i64 0}
!301 = !{!"p1 _ZTSN4mold13VersymSectionINS_6X86_64EEE", !8, i64 0}
!302 = !{!"p1 _ZTSN4mold14VerneedSectionINS_6X86_64EEE", !8, i64 0}
!303 = !{!"p1 _ZTSN4mold13VerdefSectionINS_6X86_64EEE", !8, i64 0}
!304 = !{!"p1 _ZTSN4mold14BuildIdSectionINS_6X86_64EEE", !8, i64 0}
!305 = !{!"p1 _ZTSN4mold18NotePackageSectionINS_6X86_64EEE", !8, i64 0}
!306 = !{!"p1 _ZTSN4mold15GdbIndexSectionINS_6X86_64EEE", !8, i64 0}
!307 = !{!"p1 _ZTSN4mold19RelroPaddingSectionINS_6X86_64EEE", !8, i64 0}
!308 = !{!"p1 _ZTSN4mold13MergedSectionINS_6X86_64EEE", !8, i64 0}
!309 = !{!"p1 _ZTSN4mold12GdbIndexDataE", !8, i64 0}
!310 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!311 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !310, i64 0}
!312 = !{!"_ZTSSt12__shared_ptrIN4mold12GdbIndexDataELN9__gnu_cxx12_Lock_policyE2EE", !309, i64 0, !311, i64 8}
!313 = !{!"_ZTSSt10shared_ptrIN4mold12GdbIndexDataEE", !312, i64 0}
!314 = !{!"_ZTSNSt8__detail16__extent_storageILm18446744073709551615EEE", !14, i64 0}
!315 = !{!"_ZTSSt4spanIhLm18446744073709551615EE", !34, i64 0, !314, i64 8}
!316 = !{!"p1 _ZTSN4mold19NotePropertySectionINS_6X86_64EEE", !8, i64 0}
!317 = !{!"_ZTSN4mold13ContextExtrasINS_6X86_64EEE", !316, i64 0}
!318 = !{!"_ZTSN4mold7ContextINS_6X86_64EEE", !138, i64 0, !143, i64 3992, !148, i64 4024, !153, i64 4048, !14, i64 4072, !14, i64 4080, !23, i64 4088, !14, i64 4096, !164, i64 4104, !165, i64 4176, !179, i64 4192, !186, i64 12488, !193, i64 12560, !200, i64 12632, !207, i64 12704, !214, i64 12776, !221, i64 12848, !228, i64 12920, !235, i64 12992, !137, i64 13064, !240, i64 13088, !245, i64 13112, !246, i64 13136, !251, i64 13144, !258, i64 13168, !34, i64 13176, !23, i64 13184, !263, i64 13192, !264, i64 13216, !264, i64 13217, !267, i64 13220, !273, i64 13224, !263, i64 13800, !274, i64 13824, !275, i64 13832, !276, i64 13840, !277, i64 13848, !278, i64 13856, !279, i64 13864, !280, i64 13872, !281, i64 13880, !282, i64 13888, !283, i64 13896, !284, i64 13904, !285, i64 13912, !286, i64 13920, !287, i64 13928, !288, i64 13936, !289, i64 13944, !290, i64 13952, !291, i64 13960, !292, i64 13968, !293, i64 13976, !294, i64 13984, !295, i64 13992, !296, i64 14000, !297, i64 14008, !298, i64 14016, !299, i64 14024, !300, i64 14032, !300, i64 14040, !301, i64 14048, !302, i64 14056, !303, i64 14064, !304, i64 14072, !305, i64 14080, !306, i64 14088, !307, i64 14096, !308, i64 14104, !313, i64 14112, !315, i64 14128, !315, i64 14144, !315, i64 14160, !315, i64 14176, !315, i64 14192, !14, i64 14208, !14, i64 14216, !14, i64 14224, !88, i64 14232, !88, i64 14240, !88, i64 14248, !88, i64 14256, !88, i64 14264, !88, i64 14272, !88, i64 14280, !88, i64 14288, !88, i64 14296, !88, i64 14304, !88, i64 14312, !88, i64 14320, !88, i64 14328, !88, i64 14336, !88, i64 14344, !88, i64 14352, !88, i64 14360, !88, i64 14368, !88, i64 14376, !88, i64 14384, !88, i64 14392, !88, i64 14400, !88, i64 14408, !88, i64 14416, !88, i64 14424, !88, i64 14432, !317, i64 14440}
!319 = !{!318, !23, i64 2656}
!320 = !{i8 0, i8 2}
!321 = !{}
!322 = !{!14, !14, i64 0}
!323 = !{!34, !34, i64 0}
!324 = !{!38, !34, i64 0}
!325 = !{!318, !23, i64 4088}
!326 = !{!"_ZTSSt22_Optional_payload_baseIN4mold10SyncStreamEE", !4, i64 0, !23, i64 408}
!327 = !{!326, !23, i64 408}
!328 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!329 = !{!"p2 _ZTSN4mold7CounterE", !9, i64 0}
!330 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !329, i64 0, !329, i64 8, !329, i64 16}
!331 = !{!330, !329, i64 0}
!332 = !{!330, !329, i64 16}
!333 = distinct !{!333, i1 false, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!334 = distinct !{!334, !333, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!335 = distinct !{!335, i1 false, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!336 = distinct !{!336, !335, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!337 = !{!47, !10, i64 0}
!338 = !{i64 8}
!339 = !{!334}
!340 = !{!336}
!341 = !{!336, !334}
!342 = !{!35, !34, i64 40}
!343 = !{!35, !34, i64 32}
!344 = !{!22, !14, i64 16}
!345 = !{!318, !23, i64 2679}
!346 = !{!318, !23, i64 2701}
!347 = !{!318, !23, i64 2668}
!348 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
