Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_noop?download=true
inline.NumInlined: 315
inline.NumDeleted: 155
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
%"class.boost::detail::test_result" = type { i8, i32 }
%"class.boost::stacktrace::basic_stacktrace" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl" }
%"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl" = type { %"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl_data" }
%"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair" = type { %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace" }
%"class.boost::stacktrace::frame" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN5boost6detail9test_implEPKcS2_iS2_b = comdat any

$_Z35function_from_main_translation_uniti = comdat any

$_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev = comdat any

$_ZN5boost13report_errorsEv = comdat any

$_ZN5boost6detail11test_resultD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EC2IS5_S5_TnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES9_IT0_EEE5valueEbE4typeELb1EEEv = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEaSEOS4_ = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm = comdat any

$_ZZN5boost6detail12test_resultsEvE8instance = comdat any

$_ZGVZN5boost6detail12test_resultsEvE8instance = comdat any

@.str = private unnamed_addr constant [44 x i8] c"return_from_nested_namespaces().size() == 0\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/boost/boost/libs/stacktrace/test/test_noop.cpp\00", align 1
@__PRETTY_FUNCTION__._Z29test_deeply_nested_namespacesv = private unnamed_addr constant [37 x i8] c"void test_deeply_nested_namespaces()\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"return_from_nested_namespaces().empty()\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"!return_from_nested_namespaces()\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"!res.first\00", align 1
@__PRETTY_FUNCTION__._Z11test_nestedv = private unnamed_addr constant [19 x i8] c"void test_nested()\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"res.first.empty()\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"res.first.size() == 0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"res.second <= res.first\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"res.second >= res.first\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"res.second == res.first\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"!(res.second > res.first)\00", align 1
@__PRETTY_FUNCTION__._Z16test_empty_framev = private unnamed_addr constant [24 x i8] c"void test_empty_frame()\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"empty_frame.source_file() == \22\22\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"empty_frame.name() == \22\22\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"empty_frame.source_line() == 0\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"f.name() == \22\22\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"f.source_file() == \22\22\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"f.source_line() == 0\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"): test '\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"' failed in function '\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global %"class.boost::detail::test_result" zeroinitializer, comdat, align 4
@_ZGVZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.23 = private unnamed_addr constant [37 x i8] c"main() should return report_errors()\00", align 1
@_ZTISt11logic_error = external constant ptr
@.str.24 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"No errors detected.\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c" error\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c" detected.\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_Z29test_deeply_nested_namespacesv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 10 uses
  %1 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 10 uses
  %2 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @_Z29return_from_nested_namespacesv(ptr dead_on_unwind nonnull writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 16, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29test_deeply_nested_namespacesv, i1 noundef zeroext %i.d)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_Z29return_from_nested_namespacesv(ptr dead_on_unwind nonnull writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8 %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = load ptr, ptr %1, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.m, %i.n
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 17, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29test_deeply_nested_namespacesv, i1 noundef zeroext %.not.i)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit4

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit4: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_Z29return_from_nested_namespacesv(ptr dead_on_unwind nonnull writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8 %2)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.x = load ptr, ptr %2, align 8, !tbaa !14
  %.not.i.i.not = icmp eq ptr %i.w, %i.x
  %i.y = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29test_deeply_nested_namespacesv, i1 noundef zeroext %.not.i.i.not)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit4
  %i.z = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i5, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit6

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit6: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.h:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i7, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit8

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit8: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.n

bb.j:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i9, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit10, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit10

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit10: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.n

bb.l:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit4
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i11, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit10, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.at, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12 ], [ %i.am, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit10 ], [ %i.af, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit8 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i5 = icmp eq ptr %1, null
  br i1 %.not.i5, label %bb.f, label %bb.g
end_hunk_0
begin_hunk_1_@_Z11test_nestedv:bb.a
  %.not.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.dm, %i.dj
  br i1 %.not.i.i.i.i.i.i.i.i13, label %.critedge.i.i.i.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i.i10, !llvm.loop !52

.critedge.i.i.i.i.i.i.i.i14:                      ; preds = %bb.s, %bb.r
  %.019.lcssa.i.i.i.i.i.i.i.i15 = phi ptr [ %i.da, %bb.r ], [ %i.dn, %bb.s ]
  %i.do = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i15, %i.cz
  br label %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i10
  %.not = icmp uge ptr %i.dk, %i.dl
  br label %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit: ; preds = %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit, %bb.p, %bb.q, %.critedge.i.i.i.i.i.i.i.i14
  %i.dp = phi i1 [ false, %bb.p ], [ true, %bb.q ], [ %i.do, %.critedge.i.i.i.i.i.i.i.i14 ], [ %.not, %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit ]
  %i.dq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 32, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %i.dp)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !15
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i: ; preds = %bb.u, %bb.t
  %i.dx = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !15
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #24
  br label %_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev.exit

_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev.exit: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void

bb.w:                                             ; preds = %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit8, %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %bb.c, %bb.b, %bb.a
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %i.ed
}

declare void @_Z21function_from_libraryiPFSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EiE(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z35function_from_main_translation_uniti(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, i32 noundef %1) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 7 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  tail call void @_Z21function_from_libraryiPFSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EiE(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8 %0, i32 noundef %i.a, ptr noundef nonnull @_Z35function_from_main_translation_uniti)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EC2IS5_S5_TnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES9_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.24)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #25
          to label %bb.n unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.e ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt11logic_error) #23
  %i.f = icmp eq i32 %.0, %i.e
  br i1 %i.f, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.06 = extractvalue { ptr, i32 } %.pn, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.06) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef -1)
          to label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit: ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2) #23 ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.merged = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn, %bb.g ]
  call void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  resume { ptr, i32 } %.merged

bb.m:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, %bb.b
  ret void

bb.n:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i1, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit2

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit2: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16test_empty_framev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit:
  %0 = alloca %"class.boost::stacktrace::frame", align 8 ; 7 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.boost::stacktrace::frame", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store ptr null, ptr %0, align 8, !tbaa !48
  %6 = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.a = icmp eq i8 %6, 0
  br i1 %i.a, label %7, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !16

7:                                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %8 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  %.not.i.i5 = icmp eq i32 %8, 0
  br i1 %.not.i.i5, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %9

9:                                                ; preds = %7
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %7, %9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZNK5boost10stacktrace5frame11source_fileB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !57
  %13 = icmp eq i64 %12, 0
  %14 = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_empty_framev, i1 noundef zeroext %13)
          to label %bb.a unwind label %bb.e       ; 0 uses

bb.a:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.b = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !45
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK5boost10stacktrace5frame4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57
  %i.i = icmp eq i64 %i.h, 0
  %i.j = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 39, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_empty_framev, i1 noundef zeroext %i.i)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !58     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !45
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.p = call noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.q = icmp eq i64 %i.p, 0
  %i.r = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 40, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_empty_framev, i1 noundef zeroext %i.q) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNK5boost10stacktrace5frame4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !57
  %i.u = icmp eq i64 %i.t, 0
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_empty_framev, i1 noundef zeroext %i.u)
          to label %bb.c unwind label %bb.g       ; 0 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.w = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.c
  %i.z = load i64, ptr %i.x, align 8, !tbaa !45
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK5boost10stacktrace5frame11source_fileB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !57
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_empty_framev, i1 noundef zeroext %i.ad)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.af = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !45
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ak = call noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_empty_framev, i1 noundef zeroext %i.al) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void

bb.e:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.e
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.f
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !45
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.g
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !45
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !45
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK5boost10stacktrace5frame11source_fileB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZNK5boost10stacktrace5frame4nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #5 {
bb.a:
  tail call void @_Z29test_deeply_nested_namespacesv()
  tail call void @_Z11test_nestedv()
  tail call void @_Z16test_empty_framev()
  %i.a = tail call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13report_errorsEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail12test_resultsEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  store i8 1, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !46 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.29, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !44
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.30, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.31, ptr @.str.13
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.32, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !44
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !0
end_hunk_1
