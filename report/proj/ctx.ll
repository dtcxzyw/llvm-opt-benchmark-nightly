Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/ctx?download=true
inline.NumInlined: 233
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pj_ctx = type <{ %"class.std::__cxx11::basic_string", i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, i32, i8, [3 x i8], i32, [4 x i8], %"class.std::__cxx11::basic_string", %"class.std::vector.8", ptr, ptr, ptr, %"class.std::map", i8, [7 x i8], %struct.projFileApiCallbackAndData, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %struct.projNetworkCallbacksAndData, %"class.std::__cxx11::basic_string", i8, [7 x i8], %struct.projGridChunkCache, i32, i32, i32, [4 x i8] }>
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%struct.projFileApiCallbackAndData = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.projNetworkCallbacksAndData = type { i8, ptr, ptr, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.projGridChunkCache = type <{ i8, [7 x i8], %"class.std::__cxx11::basic_string", i64, i32, [4 x i8] }>
%"struct.std::nothrow_t" = type { i8 }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_ = comdat any

@.str = private unnamed_addr constant [11 x i8] c"PROJ_DEBUG\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid value for PROJ_DEBUG: %s\0A\00", align 1
@_ZZ18pj_get_default_ctxvE15default_context = internal global %struct.pj_ctx zeroinitializer, align 8
@_ZGVZ18pj_get_default_ctxvE15default_context = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"PROJ_USE_PROJ4_INIT_RULES\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Invalid value for PROJ_USE_PROJ4_INIT_RULES\00", align 1

@_ZN6pj_ctxC1ERKS_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6pj_ctxC2ERKS_
@_ZN6pj_ctxD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6pj_ctxD2Ev

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_Z10pj_get_ctxP8PJconsts(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_Z18pj_get_default_ctxv.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_Z18pj_get_default_ctxv.exit, label %.invoke

.invoke:                                          ; preds = %bb.f, %bb.c
  invoke void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind nonnull writable sret(%struct.pj_ctx) align 8 @_ZZ18pj_get_default_ctxvE15default_context)
          to label %_Z18pj_get_default_ctxv.exit.sink.split unwind label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %_Z18pj_get_default_ctxv.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_Z18pj_get_default_ctxv.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not.i6 = icmp eq i32 %i.i, 0
  br i1 %.not.i6, label %_Z18pj_get_default_ctxv.exit, label %.invoke

common.resume:                                    ; preds = %.invoke
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  resume { ptr, i32 } %i.j

_Z18pj_get_default_ctxv.exit.sink.split:          ; preds = %.invoke
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6pj_ctxD1Ev, ptr nonnull @_ZZ18pj_get_default_ctxvE15default_context, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %_Z18pj_get_default_ctxv.exit

_Z18pj_get_default_ctxv.exit:                     ; preds = %_Z18pj_get_default_ctxv.exit.sink.split, %bb.f, %bb.e, %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.f ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.b ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.c ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.e ], [ @_ZZ18pj_get_default_ctxvE15default_context, %_Z18pj_get_default_ctxv.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_Z18pj_get_default_ctxv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind nonnull writable sret(%struct.pj_ctx) align 8 @_ZZ18pj_get_default_ctxvE15default_context)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6pj_ctxD1Ev, ptr nonnull @_ZZ18pj_get_default_ctxvE15default_context, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZ18pj_get_default_ctxvE15default_context

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @proj_assign_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %.not1617 = icmp eq ptr %i.e, %i.g
  br i1 %.not1617, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.013.018 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97
  tail call void @proj_assign_context(ptr noundef %i.i, ptr noundef %1)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 192 ; 2 uses
  %.not16 = icmp eq ptr %i.j, %i.g
  br i1 %.not16, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind noalias writable sret(%struct.pj_ctx) align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !41
  store i8 0, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.f, align 1, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.j, align 4, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.k, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.n, align 8, !tbaa !41
  store i8 0, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, i8 0, i64 72, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.p, ptr %i.r, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.s, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.t, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, i8 0, i64 88, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.x, align 8, !tbaa !41
  store i8 0, ptr %i.w, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.aa, align 8, !tbaa !41
  store i8 0, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 0, ptr %i.ab, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.ae, align 8, !tbaa !41
  store i8 0, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i8 0, ptr %i.af, align 8, !tbaa !99
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %i.aj, align 8, !tbaa !41
  store i8 0, ptr %i.ai, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i8 0, ptr %i.ak, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 1, ptr %i.al, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 0, ptr %i.ao, align 8, !tbaa !41
  store i8 0, ptr %i.an, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 314572800, ptr %i.ap, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 86400, ptr %i.aq, align 8, !tbaa !101
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 2, ptr %i.ar, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i32 0, ptr %i.as, align 4, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 0, ptr %i.at, align 8, !tbaa !81
  store i32 1, ptr %i.d, align 4, !tbaa !82
  store ptr @_Z16pj_stderr_loggerPviPKc, ptr %i.g, align 8, !tbaa !102
  invoke void @_ZN5osgeo4proj11FileManager27fillDefaultNetworkInterfaceEP6pj_ctx(ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.au = tail call ptr @getenv(ptr noundef nonnull @.str) #19 ; 6 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef nonnull %i.au, ptr noundef nonnull @.str.1) #19
  br i1 %i.av, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.d, align 4, !tbaa !82
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6pj_ctxD1Ev(ptr noundef nonnull align 8 dead_on_return(572) dereferenceable(572) %0) #19
  resume { ptr, i32 } %i.aw

bb.f:                                             ; preds = %bb.c
  %i.ax = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef nonnull %i.au, ptr noundef nonnull @.str.2) #19
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.d, align 4, !tbaa !82
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !42  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 45
  %i.ba = add i8 %i.ay, -48
  %or.cond = icmp ult i8 %i.ba, 10
  %or.cond14 = or i1 %i.az, %or.cond
  br i1 %or.cond14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.au, ptr noundef null, i32 noundef 10) #19, !inline_history !98
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -4
  %. = select i1 %i.bd, i32 %i.bc, i32 3
  store i32 %., ptr %i.d, align 4, !tbaa !82
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !104
end_hunk_0
begin_hunk_1_@_ZN6pj_ctxD2Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN18projGridChunkCacheD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !42
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !42
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !42
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef %i.al)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !84 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !85 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ap, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i.i, align 8, !tbaa !86 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ar
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ao, align 8, !tbaa !84
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ap, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !42
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bk = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !42
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  ret void

bb.g:                                             ; preds = %bb.c
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #23
  unreachable
}

declare void @_Z31proj_context_delete_cpp_contextP14projCppContext(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef ptr @proj_context_clone(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @proj_context_create()
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef dereferenceable_or_null(576) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 576, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #24 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6pj_ctxC1ERKS_(ptr noundef nonnull align 8 dereferenceable(572) %i.c, ptr noundef nonnull align 8 dereferenceable(572) %0)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvRKSt9nothrow_t(ptr noundef nonnull %i.c, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #22
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.c ], [ %i.c, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @proj_context_create() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(576) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 576, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #24 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_Z18pj_get_default_ctxv.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_Z18pj_get_default_ctxv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind nonnull writable sret(%struct.pj_ctx) align 8 @_ZZ18pj_get_default_ctxvE15default_context)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6pj_ctxD1Ev, ptr nonnull @_ZZ18pj_get_default_ctxvE15default_context, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %_Z18pj_get_default_ctxv.exit

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %.body

_Z18pj_get_default_ctxv.exit:                     ; preds = %bb.e, %bb.c, %bb.b
  invoke void @_ZN6pj_ctxC1ERKS_(ptr noundef nonnull align 8 dereferenceable(572) %i.a, ptr noundef nonnull align 8 dereferenceable(572) @_ZZ18pj_get_default_ctxvE15default_context)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_Z18pj_get_default_ctxv.exit, %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %_Z18pj_get_default_ctxv.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.f ]
  tail call void @_ZdlPvRKSt9nothrow_t(ptr noundef nonnull %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvRKSt9nothrow_t(ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define i32 @proj_errno(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z10pj_get_ctxP8PJconsts(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define i32 @proj_context_errno(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %_Z18pj_get_default_ctxv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_Z18pj_get_default_ctxv.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_Z18pj_get_default_ctxv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind nonnull writable sret(%struct.pj_ctx) align 8 @_ZZ18pj_get_default_ctxvE15default_context)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6pj_ctxD1Ev, ptr nonnull @_ZZ18pj_get_default_ctxvE15default_context, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %_Z18pj_get_default_ctxv.exit

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  resume { ptr, i32 } %i.f

_Z18pj_get_default_ctxv.exit:                     ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.b ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.c ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !66
  ret i32 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef i32 @proj_errno_set(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef returned %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z10pj_get_ctxP8PJconsts(ptr noundef %0)
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef nonnull %i.b, i32 noundef %1)
  %i.c = tail call ptr @__errno_location() #25
  store i32 %1, ptr %i.c, align 4, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %1
}

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define noundef i32 @proj_errno_restore(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %proj_errno_set.exit

proj_errno_set.exit:                              ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z10pj_get_ctxP8PJconsts(ptr noundef readonly %0)
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef nonnull %i.b, i32 noundef %1)
  %i.c = tail call ptr @__errno_location() #25
  store i32 %1, ptr %i.c, align 4, !tbaa !93
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %proj_errno_set.exit
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define i32 @proj_errno_reset(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z10pj_get_ctxP8PJconsts(ptr noundef readonly %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  %i.d = tail call noundef ptr @_Z10pj_get_ctxP8PJconsts(ptr noundef %0)
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef nonnull %i.d, i32 noundef 0)
  %i.e = tail call ptr @__errno_location() #25
  store i32 0, ptr %i.e, align 4, !tbaa !93
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @proj_context_destroy(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_Z18pj_get_default_ctxv.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_Z18pj_get_default_ctxv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind nonnull writable sret(%struct.pj_ctx) align 8 @_ZZ18pj_get_default_ctxvE15default_context)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6pj_ctxD1Ev, ptr nonnull @_ZZ18pj_get_default_ctxvE15default_context, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %_Z18pj_get_default_ctxv.exit

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  resume { ptr, i32 } %i.f

_Z18pj_get_default_ctxv.exit:                     ; preds = %bb.b, %bb.c, %bb.e
  %i.g = icmp eq ptr %0, @_ZZ18pj_get_default_ctxvE15default_context
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_Z18pj_get_default_ctxv.exit
  tail call void @_ZN6pj_ctxD1Ev(ptr noundef nonnull align 8 dead_on_return(572) dereferenceable(572) %0) #19
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 576) #22
  br label %bb.h

bb.h:                                             ; preds = %_Z18pj_get_default_ctxv.exit, %bb.a, %bb.g
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define void @proj_context_use_proj4_init_rules(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %_Z18pj_get_default_ctxv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_Z18pj_get_default_ctxv.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_Z18pj_get_default_ctxv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind nonnull writable sret(%struct.pj_ctx) align 8 @_ZZ18pj_get_default_ctxvE15default_context)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6pj_ctxD1Ev, ptr nonnull @_ZZ18pj_get_default_ctxvE15default_context, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %_Z18pj_get_default_ctxv.exit

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  resume { ptr, i32 } %i.f

_Z18pj_get_default_ctxv.exit:                     ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.b ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.c ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 72
  store i32 %1, ptr %i.g, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define i32 @proj_context_get_use_proj4_init_rules(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.4) #19 ; 7 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %_Z18pj_get_default_ctxv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZ18pj_get_default_ctxvE15default_context acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_Z18pj_get_default_ctxv.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_Z18pj_get_default_ctxv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6pj_ctx13createDefaultEv(ptr dead_on_unwind nonnull writable sret(%struct.pj_ctx) align 8 @_ZZ18pj_get_default_ctxvE15default_context)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6pj_ctxD1Ev, ptr nonnull @_ZZ18pj_get_default_ctxvE15default_context, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  br label %_Z18pj_get_default_ctxv.exit

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18pj_get_default_ctxvE15default_context) #19
  resume { ptr, i32 } %i.g

_Z18pj_get_default_ctxv.exit:                     ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %.012 = phi ptr [ %0, %bb.a ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.b ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.c ], [ @_ZZ18pj_get_default_ctxvE15default_context, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_Z18pj_get_default_ctxv.exit
  %i.h = tail call i32 @strcasecmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.5) #26
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call i32 @strcasecmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.6) #26
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcasecmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.7) #26
  %.not24 = icmp eq i32 %i.j, 0
  br i1 %.not24, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = tail call i32 @strcasecmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.8) #26
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcasecmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.9) #26
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = tail call i32 @strcasecmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.10) #26
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.012, i32 noundef 1, ptr noundef nonnull @.str.11)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_Z18pj_get_default_ctxv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.012, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %. = select i1 %i.p, i32 %1, i32 %i.o
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.k, %bb.l, %bb.g, %bb.h, %bb.i
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %bb.g ], [ %., %bb.n ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.0
}

declare void @_Z6pj_logP6pj_ctxiPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !42
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !42
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !86 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !42
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !128

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 5
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #19 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_1
