Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/BenchmarkUtil?download=true
inline.NumInlined: 268
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr.6" = type { %"struct.std::__uniq_ptr_data.7" }
%"struct.std::__uniq_ptr_data.7" = type { %"class.std::__uniq_ptr_impl.8" }
%"class.std::__uniq_ptr_impl.8" = type { %"class.std::tuple.9" }
%"class.std::tuple.9" = type { %"struct.std::_Tuple_impl.10" }
%"struct.std::_Tuple_impl.10" = type { %"struct.std::_Head_base.13" }
%"struct.std::_Head_base.13" = type { ptr }
%"class.fmt::v9::format_arg_store" = type { %"struct.fmt::v9::detail::arg_data" }
%"struct.fmt::v9::detail::arg_data" = type { [1 x %"class.fmt::v9::detail::value"] }
%"class.fmt::v9::detail::value" = type { %union.anon.4 }
%union.anon.4 = type { i128 }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::filesystem::__cxx11::directory_iterator" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev = comdat any

$_ZNKSt10filesystem7__cxx114path8filenameEv = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt10filesystem7__cxx114pathC2ERKS1_ = comdat any

$_ZNSt10unique_ptrIA_VmSt14default_deleteIS1_EED2Ev = comdat any

@.str = private unnamed_addr constant [36 x i8] c"/sys/devices/system/cpu/cpu{}/cache\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"stoul\00", align 1
@_ZZN5folly12bm_llc_evictEmE8llc_size = internal global i64 0, align 8
@_ZGVZN5folly12bm_llc_evictEmE8llc_size = internal global i64 0, align 8
@_ZZN5folly12bm_llc_evictEmE3vec = internal global %"class.std::unique_ptr.6" zeroinitializer, align 8
@_ZGVZN5folly12bm_llc_evictEmE3vec = internal global i64 0, align 8
@__dso_handle = external hidden global i8

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6detail20bm_llc_size_fallbackEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %1 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 7 uses
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 12 uses
  %5 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 9 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 7 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call i32 @sched_getcpu() #18        ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.bt, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18, !noalias !53
  %.sroa.03.0.insert.ext.i = zext nneg i32 %i.b to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %0, align 16, !noalias !53
  call void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str, i64 35, i64 1, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18, !noalias !53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !16
  %i.e = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !19
  %i.l = load i64, ptr %i.f, align 8, !tbaa !21
  store i64 %i.l, ptr %i.d, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.m = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !20
  store ptr %i.f, ptr %2, align 8, !tbaa !19
  store i64 0, ptr %i.n, align 8, !tbaa !20
  store i8 0, ptr %i.f, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.s) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.g, %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !21
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #19
  br label %.body

_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit: ; preds = %bb.d
  %i.x = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit
  %i.z = load i64, ptr %i.f, align 8, !tbaa !21
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.am

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ab = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 5 uses
  %.not.i.i.i26 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i26, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.h

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  store ptr %i.ab, ptr %4, align 8, !tbaa !56, !alias.scope !57
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !26, !alias.scope !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread

bb.h:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189: ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !27
  store ptr %i.ab, ptr %4, align 8, !tbaa !56, !alias.scope !58
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !26, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  br label %bb.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !56, !alias.scope !58
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !26, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.not.i.i.i29 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i29, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread, label %bb.i

bb.i:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.am = phi ptr [ %i.aj, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189 ], [ %i.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr192 = phi ptr [ %i.ad, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pr192, i64 8 ; 7 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i30 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !27
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.l

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %.ph = phi ptr [ %i.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ], [ %i.ae, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !59
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !60
  %i.as = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.an, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %.pr192, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !30
  %i.aw = load ptr, ptr %.pr192, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %.pr192) #18, !call_target !37, !inline_history !52
  %i.az = load ptr, ptr %.pr192, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pr192) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36

bb.n:                                             ; preds = %bb.l
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i33 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.an, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34

bb.p:                                             ; preds = %bb.n
  %i.be = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i35 = phi i32 [ %i.au, %bb.o ], [ %i.be, %bb.p ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i35, 1
  br i1 %i.bf, label %bb.q, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36, !prof !40

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr192) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34, %bb.q
  %i.bg = phi ptr [ %.ph, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread ], [ %i.am, %bb.q ], [ %i.am, %bb.m ], [ %i.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.pre160 = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 9 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.bo, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36
  %.0104 = phi i64 [ 0, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36 ], [ %.1, %bb.bo ] ; 3 uses
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bs = icmp eq ptr %i.br, %.pre160
  br i1 %i.bs, label %bb.s, label %bb.an

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i37 = icmp eq ptr %.pre160, null
  br i1 %.not.i.i.i37, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre160, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bt, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre160, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !30
  %i.by = load ptr, ptr %.pre160, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18, !call_target !37, !inline_history !52
  %i.cb = load ptr, ptr %.pre160, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41

bb.v:                                             ; preds = %bb.t
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i38 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

bb.x:                                             ; preds = %bb.v
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i40 = phi i32 [ %i.bw, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i40, 1
  br i1 %i.ch, label %bb.y, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41, !prof !40

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ci = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i42 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i42, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, label %bb.z

bb.z:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cj, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !30
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #18, !call_target !37, !inline_history !52
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46

bb.ab:                                            ; preds = %bb.z
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i43 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i43, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

bb.ad:                                            ; preds = %bb.ab
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i45 = phi i32 [ %i.cm, %bb.ac ], [ %i.cw, %bb.ad ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i45, 1
  br i1 %i.cx, label %bb.ae, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, !prof !40

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i47 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i47, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51, label %bb.af

bb.af:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cz, align 8, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !30
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #18, !call_target !37, !inline_history !52
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51

bb.ah:                                            ; preds = %bb.af
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i48 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i48, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

bb.aj:                                            ; preds = %bb.ah
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i50 = phi i32 [ %i.dc, %bb.ai ], [ %i.dm, %bb.aj ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i50, 1
  br i1 %i.dn, label %bb.ak, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51, !prof !40

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i52, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53, label %bb.al

bb.al:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.do) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53: ; preds = %bb.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51
  %i.dp = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.d
  br i1 %i.dq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.bt

.body:                                            ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dt = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.f
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %.body
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !21
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.bs

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.an:                                            ; preds = %bb.r
  %i.dy = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.dy)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %bb.an
  %i.dz = load i64, ptr %i.bi, align 8, !tbaa !20
  %.not.i.i.i60 = icmp ult i64 %i.dz, 5
  br i1 %.not.i.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ao
  %i.ea = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 1
  %i.ec = xor i32 %i.eb, 1701080681
  %i.ed = getelementptr i8, ptr %i.ea, i64 4
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32
  %i.eg = xor i32 %i.ef, 120
  %i.eh = or i32 %i.ec, %i.eg
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ao
  %i.el = phi i1 [ false, %bb.ao ], [ %i.ek, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.em = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i61, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.em) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit
  %i.en = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.bk
  br i1 %i.eo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62
  %i.ep = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66

_ZNSt10filesystem7__cxx114pathD2Ev.exit66:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.el, label %bb.aq, label %bb.bo

bb.aq:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i8 noundef zeroext 2)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.dy)
          to label %.noexc unwind label %bb.bh

.noexc:                                           ; preds = %bb.ar
  %i.er = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %.noexc
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #18
  br label %.body67

_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit: ; preds = %.noexc
  %i.et = load ptr, ptr %8, align 8, !tbaa !19
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %7, ptr noundef %i.et, i32 noundef 8)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit unwind label %bb.bi

_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit: ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.eu = load ptr, ptr %i.bl, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i70, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71, label %bb.at

bb.at:                                            ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.eu) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71: ; preds = %bb.at, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  %i.ev = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.bm
  br i1 %i.ew, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71
  %i.ex = load i64, ptr %i.bm, align 8, !tbaa !21
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit75

_ZNSt10filesystem7__cxx114pathD2Ev.exit75:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  %i.ez = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i76, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77, label %bb.au

bb.au:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit75
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.ez) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77: ; preds = %bb.au, %_ZNSt10filesystem7__cxx114pathD2Ev.exit75
  %i.fa = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bo
  br i1 %i.fb, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77
  %i.fc = load i64, ptr %i.bo, align 8, !tbaa !21
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit81

_ZNSt10filesystem7__cxx114pathD2Ev.exit81:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.bp, ptr %10, align 8, !tbaa !16
  store i64 0, ptr %i.bq, align 8, !tbaa !20
  store i8 0, ptr %i.bp, align 8, !tbaa !21
  %i.fe = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.av unwind label %bb.bk     ; 0 uses

bb.av:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit81
  %i.ff = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.fg = tail call ptr @__errno_location() #20   ; 6 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !27 ; 2 uses
  store i32 0, ptr %i.fg, align 4, !tbaa !27
  %i.fi = call noundef i64 @__isoc23_strtoul(ptr noundef %i.ff, ptr noundef nonnull %i.a, i32 noundef 10) ; 3 uses
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.fk = icmp eq ptr %i.fj, %i.ff
  br i1 %i.fk, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.7) #21
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %.critedge.i.i, %bb.aw
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load i32, ptr %i.fg, align 4, !tbaa !27
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.az, label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.az:                                            ; preds = %bb.ay
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !27
  br label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.body82

bb.ba:                                            ; preds = %bb.av
  %i.fo = load i32, ptr %i.fg, align 4, !tbaa !27
  switch i32 %i.fo, label %bb.bd [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.bc
  ]

.critedge.i.i:                                    ; preds = %bb.ba
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.7) #21
          to label %bb.bb unwind label %bb.ay

bb.bb:                                            ; preds = %.critedge.i.i
  unreachable

bb.bc:                                            ; preds = %bb.ba
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.fp = load i64, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %i.fq = load ptr, ptr %10, align 8, !tbaa !19   ; 3 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 -1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !21
  switch i8 %i.ft, label %bb.bm [
    i8 75, label %bb.be
    i8 77, label %bb.bl
  ]

bb.be:                                            ; preds = %bb.bd
  %i.fu = shl i64 %i.fi, 10
  br label %bb.bm

bb.bf:                                            ; preds = %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bq

bb.bg:                                            ; preds = %bb.aq
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ar
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.bi:                                            ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #18
  br label %.body67

.body67:                                          ; preds = %bb.bh, %bb.as, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.fy, %bb.bi ], [ %i.fx, %bb.bh ], [ %i.es, %bb.as ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #18
  br label %bb.bj

bb.bj:                                            ; preds = %.body67, %bb.bg
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body67 ], [ %i.fw, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bn

bb.bk:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit81
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.bl:                                            ; preds = %bb.bd
  %i.ga = shl i64 %i.fi, 20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bd, %bb.bl, %bb.be
  %.0 = phi i64 [ %i.fu, %bb.be ], [ %i.ga, %bb.bl ], [ %i.fi, %bb.bd ]
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.0104, i64 %.0)
  %i.gb = icmp eq ptr %i.fq, %i.bp
  br i1 %i.gb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85: ; preds = %bb.bm
  %i.gc = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.gc)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.bm
  %i.gd = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.ge) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bo

.body82:                                          ; preds = %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %bb.bk
  %.pn17 = phi { ptr, i32 } [ %i.fz, %bb.bk ], [ %i.fl, %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  %i.gf = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.bp
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %.body82
  %i.gh = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %.body82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %7) #18
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.bj
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn.pn, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bq

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt10filesystem7__cxx114pathD2Ev.exit66
  %.1 = phi i64 [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.0104, %_ZNSt10filesystem7__cxx114pathD2Ev.exit66 ]
  %i.gj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.r unwind label %bb.bp      ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bf, %bb.bn, %bb.bp
  %.pn21 = phi { ptr, i32 } [ %i.gk, %bb.bp ], [ %.pn17.pn, %bb.bn ], [ %i.fv, %bb.bf ]
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.am
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.bq ], [ %i.dx, %bb.am ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #18
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.br ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn21.pn.pn

bb.bt:                                            ; preds = %bb.a, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %.014 = phi i64 [ %.0104, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ], [ 0, %bb.a ]
  ret i64 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !30
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !37, !inline_history !62
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !39, !inline_history !62
  br label %_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !40

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !20
  store i8 0, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = trunc i64 %i.k to i8
  %i.m = and i8 %i.l, 3
  switch i8 %i.m, label %.thread [
    i8 3, label %_ZNSt10filesystem7__cxx114pathC2Ev.exit.sink.split
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !19
  %i.o = getelementptr i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !21
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !20
  store i8 0, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #22
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.x = and i64 %i.k, 3
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %.thread19

_ZNKSt10filesystem7__cxx114path3endEv.exit:       ; preds = %bb.h
  %i.z = tail call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #18, !noalias !65
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !23
  %.pre.fr = freeze ptr %.pre
  %.pre9 = ptrtoint ptr %.pre.fr to i64
  %.pre10 = and i64 %.pre9, 3
  %i.aa = icmp eq i64 %.pre10, 0
  %spec.select24 = getelementptr inbounds i8, ptr %i.z, i64 -48
  %spec.select = select i1 %i.aa, ptr %spec.select24, ptr %1
  br label %.thread19

.thread19:                                        ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit, %bb.h
  %i.ab = phi ptr [ %1, %bb.h ], [ %spec.select, %_ZNKSt10filesystem7__cxx114path3endEv.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp eq i64 %i.af, 3
  br i1 %i.ag, label %_ZNSt10filesystem7__cxx114pathC2Ev.exit.sink.split, label %.thread

.thread:                                          ; preds = %.thread19, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !20
  store i8 0, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #22
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit.sink.split: ; preds = %.thread19, %bb.d
  %.sink = phi ptr [ %1, %bb.d ], [ %i.ab, %.thread19 ]
  tail call void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sink)
  br label %_ZNSt10filesystem7__cxx114pathC2Ev.exit

_ZNSt10filesystem7__cxx114pathC2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit.sink.split, %.thread, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !21
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(5) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %1) #18 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !16
  %i.c = icmp ugt i64 %i.a, 15
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.noexc.i.i.i, label %bb.c

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.a, 1                      ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !40

.noexc9.i.i.i:                                    ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.c
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !19
  store i64 %i.a, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.a, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.k, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.o) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.n, %bb.k ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.r = load i64, ptr %i.b, align 8, !tbaa !21
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !37, !inline_history !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !27   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !39, !inline_history !66
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !40

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #23 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !21
  store i8 %i.k, ptr %i.j, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.p
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 0, -4294967295) i64 @_ZN5folly11bm_llc_sizeEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #18, !srcloc !68 ; 3 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 2 ; 2 uses
  %i.d = extractvalue { i32, i32, i32, i32 } %i.a, 3 ; 2 uses
  switch i32 %i.b, label %_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit [
    i32 1970169159, label %bb.b
    i32 1752462657, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 1818588270
  %i.f = icmp eq i32 %i.d, 1231384169
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33, label %_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.c, 1145913699
  %i.h = icmp eq i32 %i.d, 1769238117
  %or.cond61 = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond61, label %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us, label %_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit

_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us: ; preds = %bb.c, %bb.d
  %.sroa.07.sroa.3.0.i25.us = phi i32 [ %.sroa.07.sroa.3.1.i.us, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.07.sroa.0.0.i24.us = phi i32 [ %.sroa.07.sroa.0.1.i.us, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.4.0.i23.us = phi i32 [ %.sroa.4.1.i.us, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.0.i22.us = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.i = add nuw nsw i32 %.0.i22.us, 1            ; 3 uses
  %i.j = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 -2147483619, i32 %i.i) #18, !srcloc !68 ; 3 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.j, 0 ; 3 uses
  %i.l = and i32 %i.k, 31
  %.not.i.us = icmp eq i32 %i.l, 0
  br i1 %.not.i.us, label %_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us
  %i.m = extractvalue { i32, i32, i32, i32 } %i.j, 2
  %i.n = extractvalue { i32, i32, i32, i32 } %i.j, 1
  %i.o = trunc i32 %i.k to i1                     ; 3 uses
  %.sroa.4.1.i.us = select i1 %i.o, i32 %i.m, i32 %.sroa.4.0.i23.us ; 2 uses
  %.sroa.07.sroa.0.1.i.us = select i1 %i.o, i32 %i.k, i32 %.sroa.07.sroa.0.0.i24.us ; 2 uses
  %.sroa.07.sroa.3.1.i.us = select i1 %i.o, i32 %i.n, i32 %.sroa.07.sroa.3.0.i25.us ; 2 uses
  %exitcond52.not = icmp eq i32 %i.i, 32
  br i1 %exitcond52.not, label %_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit, label %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us, !llvm.loop !67

_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33: ; preds = %bb.b, %bb.e
  %.sroa.07.sroa.3.0.i25.us29 = phi i32 [ %.sroa.07.sroa.3.1.i.us40, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.sroa.07.sroa.0.0.i24.us30 = phi i32 [ %.sroa.07.sroa.0.1.i.us39, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.sroa.4.0.i23.us31 = phi i32 [ %.sroa.4.1.i.us38, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.0.i22.us32 = phi i32 [ %i.p, %bb.e ], [ 0, %bb.b ]
  %i.p = add nuw nsw i32 %.0.i22.us32, 1          ; 3 uses
  %i.q = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %i.p) #18, !srcloc !68 ; 3 uses
  %i.r = extractvalue { i32, i32, i32, i32 } %i.q, 0 ; 3 uses
  %i.s = and i32 %i.r, 31
  %.not.i.us37 = icmp eq i32 %i.s, 0
  br i1 %.not.i.us37, label %_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33
  %i.t = extractvalue { i32, i32, i32, i32 } %i.q, 2
  %i.u = extractvalue { i32, i32, i32, i32 } %i.q, 1
  %i.v = trunc i32 %i.r to i1                     ; 3 uses
  %.sroa.4.1.i.us38 = select i1 %i.v, i32 %i.t, i32 %.sroa.4.0.i23.us31 ; 2 uses
  %.sroa.07.sroa.0.1.i.us39 = select i1 %i.v, i32 %i.r, i32 %.sroa.07.sroa.0.0.i24.us30 ; 2 uses
  %.sroa.07.sroa.3.1.i.us40 = select i1 %i.v, i32 %i.u, i32 %.sroa.07.sroa.3.0.i25.us29 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, 32
  br i1 %exitcond.not, label %_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit, label %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33, !llvm.loop !67

_ZN5folly28x86_cpuid_get_llc_cache_infoENS_16x86_cpuid_vendorE.exit: ; preds = %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us, %bb.d, %bb.e, %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33, %bb.a, %bb.b, %bb.c
  %.us-phi = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.sroa.4.0.i23.us31, %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33 ], [ %.sroa.4.1.i.us38, %bb.e ], [ %.sroa.4.0.i23.us, %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us ], [ %.sroa.4.1.i.us, %bb.d ]
  %.us-phi26 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.sroa.07.sroa.0.0.i24.us30, %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33 ], [ %.sroa.07.sroa.0.1.i.us39, %bb.e ], [ %.sroa.07.sroa.0.0.i24.us, %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us ], [ %.sroa.07.sroa.0.1.i.us, %bb.d ]
  %.us-phi27 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.sroa.07.sroa.3.0.i25.us29, %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us33 ], [ %.sroa.07.sroa.3.1.i.us40, %bb.e ], [ %.sroa.07.sroa.3.0.i25.us, %_ZN5folly24x86_cpuid_get_cache_infoENS_16x86_cpuid_vendorEj.exit.us ], [ %.sroa.07.sroa.3.1.i.us, %bb.d ] ; 3 uses
  %i.w = and i32 %.us-phi26, 31
  %.not.i.i = icmp eq i32 %i.w, 0
  %i.x = lshr i32 %.us-phi27, 22
  %i.y = add nuw nsw i32 %i.x, 1
  %narrow.i = select i1 %.not.i.i, i32 0, i32 %i.y
  %i.z = lshr i32 %.us-phi27, 12
  %i.aa = and i32 %i.z, 1023
  %i.ab = add nuw nsw i32 %i.aa, 1
  %narrow1.i = mul nuw nsw i32 %narrow.i, %i.ab
  %i.ac = zext nneg i32 %narrow1.i to i64
  %i.ad = and i32 %.us-phi27, 4095
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add i32 %.us-phi, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.af, %i.ah
  %i.aj = mul nuw i64 %i.ai, %i.ac
  ret i64 %i.aj
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12bm_llc_evictEm(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly12bm_llc_evictEmE8llc_size acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12bm_llc_evictEmE8llc_size) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZN5folly11bm_llc_sizeEv()
  store i64 %i.d, ptr @_ZZN5folly12bm_llc_evictEmE8llc_size, align 8, !tbaa !72
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5folly12bm_llc_evictEmE8llc_size) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12bm_llc_evictEmE8llc_size) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load i64, ptr @_ZZN5folly12bm_llc_evictEmE8llc_size, align 8, !tbaa !72
  %.fr30 = freeze i64 %i.f                        ; 3 uses
  %i.g = lshr i64 %.fr30, 6                       ; 9 uses
  %i.h = load atomic i8, ptr @_ZGVZN5folly12bm_llc_evictEmE3vec acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.h, !prof !71

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12bm_llc_evictEmE3vec) #18
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i64 %.fr30, -64
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #23
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.l, ptr @_ZZN5folly12bm_llc_evictEmE3vec, align 8, !tbaa !43
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIA_VmSt14default_deleteIS1_EED2Ev, ptr nonnull @_ZZN5folly12bm_llc_evictEmE3vec, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12bm_llc_evictEmE3vec) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.not18 = icmp eq i64 %i.g, 0
  %i.n = load ptr, ptr @_ZZN5folly12bm_llc_evictEmE3vec, align 8 ; 12 uses
  br i1 %.not18, label %.split17, label %.preheader.preheader.preheader

.preheader.preheader.preheader:                   ; preds = %bb.h
  %i.o = add nsw i64 %i.g, -1
  %i.p = lshr i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.r = icmp ult i64 %.fr30, 1600
  br i1 %i.r, label %.preheader.preheader.epil.preheader, label %.preheader.preheader.preheader.new

.preheader.preheader.preheader.new:               ; preds = %.preheader.preheader.preheader
  %unroll_iter = and i64 %i.q, 4611686018427387900
  br label %.preheader.preheader

.split17:                                         ; preds = %bb.p, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly12bm_llc_evictEmE3vec) #18
  resume { ptr, i32 } %i.s

._crit_edge.unr-lcssa:                            ; preds = %.preheader.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.preheader.epil.preheader

.preheader.preheader.epil.preheader:              ; preds = %._crit_edge.unr-lcssa, %.preheader.preheader.preheader
  %.015.epil.init = phi i64 [ 0, %.preheader.preheader.preheader ], [ %i.ao, %._crit_edge.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.preheader.preheader.epil

.preheader.preheader.epil:                        ; preds = %.preheader.preheader.epil, %.preheader.preheader.epil.preheader
  %.015.epil = phi i64 [ %i.t, %.preheader.preheader.epil ], [ %.015.epil.init, %.preheader.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.preheader.epil ], [ 0, %.preheader.preheader.epil.preheader ]
  %.idx.epil = shl nuw nsw i64 %.015.epil, 6
  %gep.epil = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.epil
  store volatile i64 %0, ptr %gep.epil, align 8, !tbaa !72
  %i.t = add nuw nsw i64 %.015.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader.preheader.epil, !llvm.loop !69

._crit_edge:                                      ; preds = %.preheader.preheader.epil, %._crit_edge.unr-lcssa
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge
  %.015.1 = phi i64 [ 0, %._crit_edge ], [ %i.u, %bb.j ] ; 2 uses
  %.idx.1 = shl nuw nsw i64 %.015.1, 6
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %.idx.1
  store volatile i64 %0, ptr %gep.1, align 8, !tbaa !72
  %i.u = add nuw nsw i64 %.015.1, 8               ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %i.g
  br i1 %i.v, label %bb.j, label %._crit_edge.1, !llvm.loop !70

._crit_edge.1:                                    ; preds = %bb.j
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.1
  %.015.2 = phi i64 [ 0, %._crit_edge.1 ], [ %i.w, %bb.k ] ; 2 uses
  %.idx.2 = shl nuw nsw i64 %.015.2, 6
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %.idx.2
  store volatile i64 %0, ptr %gep.2, align 8, !tbaa !72
  %i.w = add nuw nsw i64 %.015.2, 8               ; 2 uses
  %i.x = icmp samesign ult i64 %i.w, %i.g
  br i1 %i.x, label %bb.k, label %._crit_edge.2, !llvm.loop !70

._crit_edge.2:                                    ; preds = %bb.k
  %invariant.gep.3 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge.2
  %.015.3 = phi i64 [ 0, %._crit_edge.2 ], [ %i.y, %bb.l ] ; 2 uses
  %.idx.3 = shl nuw nsw i64 %.015.3, 6
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %.idx.3
  store volatile i64 %0, ptr %gep.3, align 8, !tbaa !72
  %i.y = add nuw nsw i64 %.015.3, 8               ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, %i.g
  br i1 %i.z, label %bb.l, label %._crit_edge.3, !llvm.loop !70

._crit_edge.3:                                    ; preds = %bb.l
  %invariant.gep.4 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.3
  %.015.4 = phi i64 [ 0, %._crit_edge.3 ], [ %i.aa, %bb.m ] ; 2 uses
  %.idx.4 = shl nuw nsw i64 %.015.4, 6
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep.4, i64 %.idx.4
  store volatile i64 %0, ptr %gep.4, align 8, !tbaa !72
  %i.aa = add nuw nsw i64 %.015.4, 8              ; 2 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.g
  br i1 %i.ab, label %bb.m, label %._crit_edge.4, !llvm.loop !70

._crit_edge.4:                                    ; preds = %bb.m
  %invariant.gep.5 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge.4
  %.015.5 = phi i64 [ 0, %._crit_edge.4 ], [ %i.ac, %bb.n ] ; 2 uses
  %.idx.5 = shl nuw nsw i64 %.015.5, 6
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep.5, i64 %.idx.5
  store volatile i64 %0, ptr %gep.5, align 8, !tbaa !72
  %i.ac = add nuw nsw i64 %.015.5, 8              ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.g
  br i1 %i.ad, label %bb.n, label %._crit_edge.5, !llvm.loop !70

._crit_edge.5:                                    ; preds = %bb.n
  %invariant.gep.6 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %._crit_edge.5
  %.015.6 = phi i64 [ 0, %._crit_edge.5 ], [ %i.ae, %bb.o ] ; 2 uses
  %.idx.6 = shl nuw nsw i64 %.015.6, 6
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep.6, i64 %.idx.6
  store volatile i64 %0, ptr %gep.6, align 8, !tbaa !72
  %i.ae = add nuw nsw i64 %.015.6, 8              ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.g
  br i1 %i.af, label %bb.o, label %._crit_edge.6, !llvm.loop !70

._crit_edge.6:                                    ; preds = %bb.o
  %invariant.gep.7 = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge.6
  %.015.7 = phi i64 [ 0, %._crit_edge.6 ], [ %i.ag, %bb.p ] ; 2 uses
  %.idx.7 = shl nuw nsw i64 %.015.7, 6
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep.7, i64 %.idx.7
  store volatile i64 %0, ptr %gep.7, align 8, !tbaa !72
  %i.ag = add nuw nsw i64 %.015.7, 8              ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.g
  br i1 %i.ah, label %bb.p, label %.split17, !llvm.loop !70

.preheader.preheader:                             ; preds = %.preheader.preheader, %.preheader.preheader.preheader.new
  %.015 = phi i64 [ 0, %.preheader.preheader.preheader.new ], [ %i.ao, %.preheader.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.preheader.new ], [ %niter.next.3, %.preheader.preheader ]
  %.idx = shl nuw nsw i64 %.015, 6
  %gep = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  store volatile i64 %0, ptr %gep, align 8, !tbaa !72
  %i.ai = shl i64 %.015, 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ai
  %gep.122 = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  store volatile i64 %0, ptr %gep.122, align 8, !tbaa !72
  %i.ak = shl i64 %.015, 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  %gep.225 = getelementptr inbounds nuw i8, ptr %i.al, i64 1024
  store volatile i64 %0, ptr %gep.225, align 8, !tbaa !72
  %i.am = shl i64 %.015, 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.am
  %gep.328 = getelementptr inbounds nuw i8, ptr %i.an, i64 1536
  store volatile i64 %0, ptr %gep.328, align 8, !tbaa !72
  %i.ao = add nuw nsw i64 %.015, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.unr-lcssa, label %.preheader.preheader, !llvm.loop !70
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_VmSt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIA_VmEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit

_ZNKSt14default_deleteIA_VmEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #19
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIA_VmEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !38, file: !33, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !9, i64 16}
!19 = !{!18, !14, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!9, !9, i64 0}
!22 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!25 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!10, !10, i64 0}
!28 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!29 = !{!28, !10, i64 8}
!30 = !{!28, !10, i64 12}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!35 = !{null, !34}
!36 = !DISubroutineType(types: !35)
!37 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !33, line: 139, type: !36, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!38 = !DINamespace(name: "std", scope: null)
!39 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !33, line: 143, type: !36, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"p1 long", !13, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{!44, i1 false, !"_ZN3fmt2v96formatIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSB_"}
!45 = distinct !{!45, !44, !"_ZN3fmt2v96formatIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSB_: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE"}
!47 = distinct !{!47, !46, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0:thread"}
!48 = distinct !{!48, !46, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE"}
!50 = distinct !{!50, !49, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE: argument 0:thread"}
!51 = distinct !{!51, !49, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE: argument 0"}
!52 = distinct !{ptr @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev, null, null, null}
!53 = !{!45}
!54 = !{!"p1 _ZTSNSt10filesystem7__cxx114_DirE", !13, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !25, i64 8}
!56 = !{!55, !54, i64 0}
!57 = !{!47}
!58 = !{!48}
!59 = !{!50}
!60 = !{!51}
!61 = !{!14, !14, i64 0}
!62 = distinct !{null, null, null}
!63 = distinct !{!63, i1 false, !"_ZNKSt10filesystem7__cxx114path3endEv"}
!64 = distinct !{!64, !63, !"_ZNKSt10filesystem7__cxx114path3endEv: argument 0"}
!65 = !{!64}
!66 = distinct !{null}
!67 = distinct !{!67, !41}
!68 = !{i64 6262297, i64 6262301, i64 6262315}
!69 = distinct !{!69, !73}
!70 = distinct !{!70, !41}
!71 = !{!"branch_weights", i32 1, i32 1048575}
!72 = !{!17, !17, i64 0}
!73 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
