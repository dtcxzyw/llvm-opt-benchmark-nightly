Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/call_log_batch?download=true
inline.NumInlined: 373
inline.NumDeleted: 185
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.grpc_core::NoDestruct" = type { [8 x i8] }
%"class.grpc_core::NoDestruct.19" = type { [24 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20250512::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = comdat any

$_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = comdat any

$_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE = comdat any

$_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv = comdat any

$_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = comdat any

$_ZN9grpc_core12arena_detail19DestroyArenaContextINS_8channelz8CallNodeEEEvPv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = comdat any

$_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = comdat any

@.str = private unnamed_addr constant [65 x i8] c"/opt-bench/work/grpc/grpc/src/core/lib/surface/call_log_batch.cc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ops[\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"]: \00", align 1
@_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E), align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"SEND_INITIAL_METADATA\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"SEND_MESSAGE ptr=%p\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SEND_CLOSE_FROM_CLIENT\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"SEND_STATUS_FROM_SERVER status=%d details=\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"RECV_INITIAL_METADATA ptr=%p\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"RECV_MESSAGE ptr=%p\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"RECV_STATUS_ON_CLIENT metadata=%p status=%p details=%p\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"RECV_CLOSE_ON_SERVER cancelled=%p\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"\0Akey=\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c" value=\00", align 1
@_ZTVN9grpc_core14promise_detail10UnwakeableE = external constant { [6 x ptr] }, align 8
@_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr local_unnamed_addr global %"class.grpc_core::NoDestruct.19" zeroinitializer, comdat, align 8
@_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr global i64 0, comdat, align 8
@llvm.global_ctors = appending global [3 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.3, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.4, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E }]
@llvm.used = appending global [3 x ptr] [ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define void @_Z19grpc_call_log_batchPKciPK7grpc_opm(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %10 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %11 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %12 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %13 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %14 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::vector", align 8      ; 25 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %26 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 33 uses
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %.phi.trans.insert209.i = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %.phi.trans.insert212.i = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %.phi.trans.insert215.i = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %.phi.trans.insert218.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 22
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %.phi.trans.insert226.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 23
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.au = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.011121 = phi i64 [ 0, %.lr.ph ], [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str, i32 noundef 109) #19
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage10AtLocationESt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(16) %26, i64 %i.aw, ptr nonnull %0, i32 noundef %1)
          to label %bb.c unwind label %bb.dd      ; 2 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 4, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit unwind label %bb.dd

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.011121, ptr %i.f, align 8, !tbaa !54
  %i.ay = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.d unwind label %bb.dd      ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 3, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit unwind label %bb.dd

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %.011121 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !55
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !58, !noalias !55
  switch i32 %i.ba, label %_ZL12add_metadataPK13grpc_metadatamPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit [
    i32 0, label %.noexc.i.i
    i32 1, label %bb.k
    i32 2, label %.noexc.i71.i
    i32 3, label %bb.w
    i32 4, label %bb.bv
    i32 5, label %bb.cc
    i32 6, label %bb.cj
    i32 7, label %bb.cq
  ]

.noexc.i.i:                                       ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !55
  store ptr %i.af, ptr %16, align 8, !tbaa !13, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !55
  store i64 21, ptr %i.e, align 8, !tbaa !54, !noalias !55
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.h, !noalias !55 ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.bb, ptr %16, align 8, !tbaa !15, !noalias !55
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !55 ; 3 uses
  store i64 %i.bc, ptr %i.af, align 8, !tbaa !16, !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bb, ptr noundef nonnull align 1 dereferenceable(21) @.str.5, i64 21, i1 false), !noalias !55
  store i64 %i.bc, ptr %i.ag, align 8, !tbaa !17, !noalias !55
  %i.bd = load ptr, ptr %16, align 8, !tbaa !15, !noalias !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !16, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !55
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !55 ; 7 uses
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !21, !noalias !55
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !13, !noalias !55
  %i.bi = load ptr, ptr %16, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.af
  br i1 %i.bj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !17, !noalias !55 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.bm, i1 false), !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !15, !noalias !55
  %i.bn = load i64, ptr %i.af, align 8, !tbaa !16, !noalias !55
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !16, !noalias !55
  %.pre229.i = load i64, ptr %i.ag, align 8, !tbaa !17, !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.bo = phi i64 [ %.pre229.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bk, %bb.f ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !17, !noalias !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %.noexc.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.i, !noalias !55

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.g
  %.pre230.i = load ptr, ptr %16, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.br = icmp eq ptr %.pre230.i, %i.af
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.bs = load i64, ptr %i.af, align 8, !tbaa !16, !noalias !55
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %.pre230.i, i64 noundef %i.bt) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !55
  br label %.invoke.i

bb.h:                                             ; preds = %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

bb.i:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %16, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.af
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %bb.i
  %i.by = load i64, ptr %i.af, align 8, !tbaa !16, !noalias !55
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i, %bb.h
  %.pn50.i = phi { ptr, i32 } [ %i.bu, %bb.h ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i ], [ %i.bv, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !55
  br label %.body.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !59
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !61, !noalias !59
  store ptr %i.cc, ptr %14, align 8, !tbaa !16, !noalias !59
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchINS1_7VoidPtrEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ad, align 8, !tbaa !63, !noalias !59
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.6, i64 19, ptr nonnull %14, i64 1)
end_hunk_0
begin_hunk_1_@_Z19grpc_call_log_batchPKciPK7grpc_opm:bb.a
  %i.hf = load i64, ptr %i.ar, align 8, !tbaa !16, !noalias !55
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %.pre155.i, i64 noundef %i.hg) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i22, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !55
  br label %_ZL12add_metadataPK13grpc_metadatamPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit

bb.aw:                                            ; preds = %bb.av
  %i.hh = landingpad { ptr, i32 }
          cleanup
  %i.hi = load ptr, ptr %4, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.ar
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i: ; preds = %bb.aw
  %i.hk = load i64, ptr %i.ar, align 8, !tbaa !16, !noalias !55
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !55
  br label %.body.i

._crit_edge.i.i40.i:                              ; preds = %.preheader.i, %.noexc27
  %.0149.i = phi i64 [ %i.ks, %.noexc27 ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !55
  store ptr %i.ah, ptr %5, align 8, !tbaa !13, !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ah, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i64 5, i1 false), !noalias !55
  store i64 5, ptr %i.ai, align 8, !tbaa !17, !noalias !55
  store i8 0, ptr %i.ap, align 1, !tbaa !16, !noalias !55
  %i.hm = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !55 ; 7 uses
  %i.hn = load ptr, ptr %i.i, align 8, !tbaa !21, !noalias !55
  %.not.i.i44.i = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i.i44.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i40.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 3 uses
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !13, !noalias !55
  %i.hp = load ptr, ptr %5, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ah
  br i1 %i.hq, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ho, ptr noundef nonnull align 8 dereferenceable(6) %i.ah, i64 6, i1 false), !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i: ; preds = %bb.ax
  store ptr %i.hp, ptr %i.hm, align 8, !tbaa !15, !noalias !55
  %i.hr = load i64, ptr %i.ah, align 8, !tbaa !16, !noalias !55
  store i64 %i.hr, ptr %i.ho, align 8, !tbaa !16, !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i, %bb.ay
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i64 5, ptr %i.hs, align 8, !tbaa !17, !noalias !55
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr %i.ht, ptr %i.h, align 8, !tbaa !20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

bb.az:                                            ; preds = %._crit_edge.i.i40.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i unwind label %bb.br, !noalias !55

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i: ; preds = %bb.az
  %.pre.i19 = load ptr, ptr %5, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.hu = icmp eq ptr %.pre.i19, %i.ah
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i
  %i.hv = load i64, ptr %i.ah, align 8, !tbaa !16, !noalias !55
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %.pre.i19, i64 noundef %i.hw) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !55
  %i.hx = getelementptr inbounds nuw [96 x i8], ptr %i.gu, i64 %.0149.i ; 5 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !69, !noalias !55
  %.not.i.i = icmp eq ptr %i.hy, null             ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !55
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 9
  %i.ic = select i1 %.not.i.i, ptr %i.ib, ptr %i.ia ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !noalias !55 ; 2 uses
  %i.if = and i64 %i.ie, 255
  %i.ig = select i1 %.not.i.i, i64 %i.if, i64 %i.ie ; 5 uses
  store ptr %i.aj, ptr %6, align 8, !tbaa !13, !noalias !55
  %i.ih = icmp eq ptr %i.ic, null
  %i.ii = icmp ne i64 %i.ig, 0
  %or.cond.i.i.i.i = and i1 %i.ih, %i.ii
  br i1 %or.cond.i.i.i.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #21
          to label %.noexc52.i unwind label %.loopexit.split-lp.i, !noalias !55

.noexc52.i:                                       ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !55
  store i64 %i.ig, ptr %i.b, align 8, !tbaa !54, !noalias !55
  %i.ij = icmp ugt i64 %i.ig, 15
  br i1 %i.ij, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i18

.noexc.i.i.i.i:                                   ; preds = %bb.bb
  %i.ik = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc53.i unwind label %.loopexit104.i, !noalias !55 ; 2 uses

.noexc53.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.ik, ptr %6, align 8, !tbaa !15, !noalias !55
  %i.il = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !55
  store i64 %i.il, ptr %i.aj, align 8, !tbaa !16, !noalias !55
  br label %._crit_edge.i.i.i.i.i18

._crit_edge.i.i.i.i.i18:                          ; preds = %.noexc53.i, %bb.bb
  %i.im = phi ptr [ %i.ik, %.noexc53.i ], [ %i.aj, %bb.bb ] ; 2 uses
  switch i64 %i.ig, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %bb.be
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i.i18
  %i.in = load i8, ptr %i.ic, align 1, !tbaa !16, !noalias !55
  store i8 %i.in, ptr %i.im, align 1, !tbaa !16, !noalias !55
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr align 1 %i.ic, i64 %i.ig, i1 false), !noalias !55
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i.i.i.i18
  %i.io = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !55 ; 2 uses
  store i64 %i.io, ptr %i.ak, align 8, !tbaa !17, !noalias !55
  %i.ip = load ptr, ptr %6, align 8, !tbaa !15, !noalias !55
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.io
  store i8 0, ptr %i.iq, align 1, !tbaa !16, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !55
  %i.ir = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !55 ; 7 uses
  %i.is = load ptr, ptr %i.i, align 8, !tbaa !21, !noalias !55
  %.not.i.i54.i = icmp eq ptr %i.ir, %i.is
  br i1 %.not.i.i54.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 3 uses
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !13, !noalias !55
  %i.iu = load ptr, ptr %6, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.aj
  br i1 %i.iv, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i

bb.bg:                                            ; preds = %bb.bf
  %i.iw = load i64, ptr %i.ak, align 8, !tbaa !17, !noalias !55 ; 3 uses
  %i.ix = icmp ult i64 %i.iw, 16
  call void @llvm.assume(i1 %i.ix), !noalias !55
  %i.iy = add nuw nsw i64 %i.iw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.it, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.iy, i1 false), !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i: ; preds = %bb.bf
  store ptr %i.iu, ptr %i.ir, align 8, !tbaa !15, !noalias !55
  %i.iz = load i64, ptr %i.aj, align 8, !tbaa !16, !noalias !55
  store i64 %i.iz, ptr %i.it, align 8, !tbaa !16, !noalias !55
  %.pre150.i = load i64, ptr %i.ak, align 8, !tbaa !17, !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i, %bb.bg
  %i.ja = phi i64 [ %.pre150.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i ], [ %i.iw, %bb.bg ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !17, !noalias !55
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  store ptr %i.jc, ptr %i.h, align 8, !tbaa !20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i

bb.bh:                                            ; preds = %bb.be
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.i unwind label %bb.bs, !noalias !55

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.i: ; preds = %bb.bh
  %.pre151.i = load ptr, ptr %6, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.jd = icmp eq ptr %.pre151.i, %i.aj
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.i
  %i.je = load i64, ptr %i.aj, align 8, !tbaa !16, !noalias !55
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %.pre151.i, i64 noundef %i.jf) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !55
  store ptr %i.al, ptr %7, align 8, !tbaa !13, !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.al, ptr noundef nonnull align 1 dereferenceable(7) @.str.19, i64 7, i1 false), !noalias !55
  store i64 7, ptr %i.am, align 8, !tbaa !17, !noalias !55
  store i8 0, ptr %i.aq, align 1, !tbaa !16, !noalias !55
  %i.jg = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !55 ; 6 uses
  %i.jh = load ptr, ptr %i.i, align 8, !tbaa !21, !noalias !55
  %.not.i.i66.i = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i.i66.i, label %bb.bi, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit70.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit70.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 3 uses
  store ptr %i.ji, ptr %i.jg, align 8, !tbaa !13, !noalias !55
  %i.jj = load ptr, ptr %7, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.al
  %spec.store.select.i = select i1 %i.jk, ptr %i.ji, ptr %i.jj
  store ptr %spec.store.select.i, ptr %i.jg, align 8, !noalias !55
  %i.jl = load i64, ptr %i.al, align 8, !noalias !55
  store i64 %i.jl, ptr %i.ji, align 8, !noalias !55
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 7, ptr %i.jm, align 8, !tbaa !17, !noalias !55
  %28 = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !55
  %i.jn = getelementptr inbounds nuw i8, ptr %28, i64 32
  store ptr %i.jn, ptr %i.h, align 8, !tbaa !20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit70.i unwind label %bb.bt, !noalias !55

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit70.i: ; preds = %bb.bi
  %.pre152.i = load ptr, ptr %7, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.jo = icmp eq ptr %.pre152.i, %i.al
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit70.i
  %i.jp = load i64, ptr %i.al, align 8, !tbaa !16, !noalias !55
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %.pre152.i, i64 noundef %i.jq) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit70.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit70.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !55
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.js = invoke noundef ptr @_Z15grpc_dump_sliceRK10grpc_slicej(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, i32 noundef 3)
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !55
  store ptr %i.an, ptr %8, align 8, !tbaa !13, !noalias !55
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.noexc
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #21
          to label %.noexc76.i unwind label %.loopexit.split-lp106.i, !noalias !55

.noexc76.i:                                       ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %.noexc
  %i.ju = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.js) #18, !noalias !55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !55
  store i64 %i.ju, ptr %i.a, align 8, !tbaa !54, !noalias !55
  %i.jv = icmp ugt i64 %i.ju, 15
  br i1 %i.jv, label %.noexc.i75.i, label %._crit_edge.i.i74.i

.noexc.i75.i:                                     ; preds = %bb.bk
  %i.jw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc77.i unwind label %.loopexit105.i, !noalias !55 ; 2 uses

.noexc77.i:                                       ; preds = %.noexc.i75.i
  store ptr %i.jw, ptr %8, align 8, !tbaa !15, !noalias !55
  %i.jx = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !55
  store i64 %i.jx, ptr %i.an, align 8, !tbaa !16, !noalias !55
  br label %._crit_edge.i.i74.i

._crit_edge.i.i74.i:                              ; preds = %.noexc77.i, %bb.bk
  %i.jy = phi ptr [ %i.jw, %.noexc77.i ], [ %i.an, %bb.bk ] ; 2 uses
  switch i64 %i.ju, label %bb.bm [
    i64 1, label %bb.bl
    i64 0, label %bb.bn
  ]

bb.bl:                                            ; preds = %._crit_edge.i.i74.i
  %i.jz = load i8, ptr %i.js, align 1, !tbaa !16, !noalias !55
  store i8 %i.jz, ptr %i.jy, align 1, !tbaa !16, !noalias !55
  br label %bb.bn

bb.bm:                                            ; preds = %._crit_edge.i.i74.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr nonnull align 1 %i.js, i64 %i.ju, i1 false), !noalias !55
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %._crit_edge.i.i74.i
  %i.ka = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !55 ; 2 uses
  store i64 %i.ka, ptr %i.ao, align 8, !tbaa !17, !noalias !55
  %i.kb = load ptr, ptr %8, align 8, !tbaa !15, !noalias !55
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ka
  store i8 0, ptr %i.kc, align 1, !tbaa !16, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !55
  %i.kd = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !55 ; 7 uses
  %i.ke = load ptr, ptr %i.i, align 8, !tbaa !21, !noalias !55
  %.not.i.i79.i = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i.i79.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 3 uses
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !13, !noalias !55
  %i.kg = load ptr, ptr %8, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.an
  br i1 %i.kh, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80.i

bb.bp:                                            ; preds = %bb.bo
  %i.ki = load i64, ptr %i.ao, align 8, !tbaa !17, !noalias !55 ; 3 uses
  %i.kj = icmp ult i64 %i.ki, 16
  call void @llvm.assume(i1 %i.kj), !noalias !55
  %i.kk = add nuw nsw i64 %i.ki, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kf, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.kk, i1 false), !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80.i: ; preds = %bb.bo
  store ptr %i.kg, ptr %i.kd, align 8, !tbaa !15, !noalias !55
  %i.kl = load i64, ptr %i.an, align 8, !tbaa !16, !noalias !55
  store i64 %i.kl, ptr %i.kf, align 8, !tbaa !16, !noalias !55
  %.pre153.i = load i64, ptr %i.ao, align 8, !tbaa !17, !noalias !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80.i, %bb.bp
  %i.km = phi i64 [ %.pre153.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80.i ], [ %i.ki, %bb.bp ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !17, !noalias !55
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store ptr %i.ko, ptr %i.h, align 8, !tbaa !20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

bb.bq:                                            ; preds = %bb.bn
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.kd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.i unwind label %bb.bu, !noalias !55

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.i: ; preds = %bb.bq
  %.pre154.i = load ptr, ptr %8, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.kp = icmp eq ptr %.pre154.i, %i.an
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.i
  %i.kq = load i64, ptr %i.an, align 8, !tbaa !16, !noalias !55
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %.pre154.i, i64 noundef %i.kr) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !55
  invoke void @gpr_free(ptr noundef nonnull %i.js)
          to label %.noexc27 unwind label %bb.j

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i
  %i.ks = add nuw i64 %.0149.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ks, %i.gt
  br i1 %exitcond.not.i, label %_ZL12add_metadataPK13grpc_metadatamPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit, label %._crit_edge.i.i40.i, !llvm.loop !34

bb.br:                                            ; preds = %bb.az
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load ptr, ptr %5, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.ah
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i: ; preds = %bb.br
  %i.kw = load i64, ptr %i.ah, align 8, !tbaa !16, !noalias !55
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !55
  br label %.body.i

.loopexit104.i:                                   ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

.loopexit.split-lp.i:                             ; preds = %bb.ba
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

bb.bs:                                            ; preds = %bb.bh
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kz = load ptr, ptr %6, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.aj
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i: ; preds = %bb.bs
  %i.lb = load i64, ptr %i.aj, align 8, !tbaa !16, !noalias !55
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i, %.loopexit.split-lp.i, %.loopexit104.i
  %.pn26.i = phi { ptr, i32 } [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit104.i ], [ %i.ky, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !55
  br label %.body.i

bb.bt:                                            ; preds = %bb.bi
  %i.ld = landingpad { ptr, i32 }
          cleanup
  %i.le = load ptr, ptr %7, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.al
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i: ; preds = %bb.bt
  %i.lg = load i64, ptr %i.al, align 8, !tbaa !16, !noalias !55
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #20, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !55
  br label %.body.i

.loopexit105.i:                                   ; preds = %.noexc.i75.i
end_hunk_1
