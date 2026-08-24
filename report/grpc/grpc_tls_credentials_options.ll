Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/grpc_tls_credentials_options?download=true
inline.NumInlined: 537
inline.NumDeleted: 252
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.grpc_core::TraceFlag" = type <{ ptr, %"struct.std::atomic.27", [7 x i8] }>
%"struct.std::atomic.27" = type { %"struct.std::__atomic_base.28" }
%"struct.std::__atomic_base.28" = type { i8 }
%"class.grpc_core::NoDestruct" = type { [8 x i8] }
%"struct.std::atomic.31" = type { %"struct.std::__atomic_base.32" }
%"struct.std::__atomic_base.32" = type { ptr }
%"struct.std::array" = type { [7 x i8] }
%"class.grpc_core::ExecCtx" = type { ptr, %struct.grpc_closure_list, %"struct.grpc_core::ExecCtx::CombinerData", i64, %"class.std::optional", ptr }
%struct.grpc_closure_list = type { ptr, ptr }
%"struct.grpc_core::ExecCtx::CombinerData" = type { ptr, ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base.7", [7 x i8] }
%"struct.std::_Optional_payload.base.7" = type { %"struct.std::_Optional_payload_base.base.6" }
%"struct.std::_Optional_payload_base.base.6" = type <{ %"union.std::_Optional_payload_base<grpc_core::ScopedTimeCache>::_Storage", i8 }>
%"union.std::_Optional_payload_base<grpc_core::ScopedTimeCache>::_Storage" = type { %"class.grpc_core::ScopedTimeCache" }
%"class.grpc_core::ScopedTimeCache" = type { %"class.grpc_core::Timestamp::ScopedSource", %"class.std::optional.1" }
%"class.grpc_core::Timestamp::ScopedSource" = type { %"class.grpc_core::Timestamp::Source", ptr }
%"class.grpc_core::Timestamp::Source" = type { ptr }
%"class.std::optional.1" = type { %"struct.std::_Optional_base.2" }
%"struct.std::_Optional_base.2" = type { %"struct.std::_Optional_payload.4" }
%"struct.std::_Optional_payload.4" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<grpc_core::Timestamp>::_Storage", i8 }>
%"union.std::_Optional_payload_base<grpc_core::Timestamp>::_Storage" = type { %"class.grpc_core::Timestamp" }
%"class.grpc_core::Timestamp" = type { i64 }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20250512::log_internal::LogMessage::OstreamView" = type { %"class.std::basic_streambuf", ptr, %"class.absl::lts_20250512::Span", %"class.absl::lts_20250512::Span", %"class.absl::lts_20250512::Span" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20250512::Span" = type { ptr, i64 }
%"class.std::optional.11" = type { %"struct.std::_Optional_base.12" }
%"struct.std::_Optional_base.12" = type { %"struct.std::_Optional_payload.14" }
%"struct.std::_Optional_payload.14" = type { %"struct.std::_Optional_payload.base.18", [7 x i8] }
%"struct.std::_Optional_payload.base.18" = type { %"struct.std::_Optional_payload_base.base.17" }
%"struct.std::_Optional_payload_base.base.17" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }

$_ZN9grpc_core7ExecCtxD2Ev = comdat any

$_ZN28grpc_tls_credentials_optionsC2ERS_ = comdat any

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIP28grpc_tls_credentials_optionsEERS2_RKT_ = comdat any

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_ = comdat any

$_ZNSt12__shared_ptrIN9grpc_core12experimental11CrlProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev = comdat any

$_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = comdat any

$_ZN9grpc_core7ExecCtxD0Ev = comdat any

$_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv = comdat any

$__clang_call_terminate = comdat any

$_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv = comdat any

$_ZN28grpc_tls_credentials_optionsD2Ev = comdat any

$_ZN28grpc_tls_credentials_optionsD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_ = comdat any

$_ZTVN9grpc_core7ExecCtxE = comdat any

$_ZTIN9grpc_core7ExecCtxE = comdat any

$_ZTSN9grpc_core7ExecCtxE = comdat any

$_ZTVN9grpc_core9Timestamp12ScopedSourceE = comdat any

$_ZTIN9grpc_core9Timestamp12ScopedSourceE = comdat any

$_ZTSN9grpc_core9Timestamp12ScopedSourceE = comdat any

$_ZTIN9grpc_core9Timestamp6SourceE = comdat any

$_ZTSN9grpc_core9Timestamp6SourceE = comdat any

$_ZTV28grpc_tls_credentials_options = comdat any

$_ZTI28grpc_tls_credentials_options = comdat any

$_ZTS28grpc_tls_credentials_options = comdat any

$_ZTIN9grpc_core10RefCountedI28grpc_tls_credentials_optionsNS_19PolymorphicRefCountENS_11UnrefDeleteEEE = comdat any

$_ZTSN9grpc_core10RefCountedI28grpc_tls_credentials_optionsNS_19PolymorphicRefCountENS_11UnrefDeleteEEE = comdat any

$_ZTIN9grpc_core19PolymorphicRefCountE = comdat any

$_ZTSN9grpc_core19PolymorphicRefCountE = comdat any

@.str = private unnamed_addr constant [19 x i8] c"options != nullptr\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"/opt-bench/work/grpc/grpc/src/core/credentials/transport/tls/grpc_tls_credentials_options.cc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"verifier != nullptr\00", align 1
@_ZN9grpc_core9api_traceE = external local_unnamed_addr global %"class.grpc_core::TraceFlag", align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"grpc_tls_credentials_options_set_tls_session_key_log_config(options=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Enabling TLS session key logging with keys stored at: \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Disabling TLS session key logging\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"provider != nullptr\00", align 1
@_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E), align 8
@_ZTVN9grpc_core7ExecCtxE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN9grpc_core7ExecCtxE, ptr @_ZN9grpc_core7ExecCtxD2Ev, ptr @_ZN9grpc_core7ExecCtxD0Ev, ptr @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv] }, comdat, align 8
@_ZTIN9grpc_core7ExecCtxE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core7ExecCtxE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core7ExecCtxE = linkonce_odr constant [21 x i8] c"N9grpc_core7ExecCtxE\00", comdat, align 1
@_ZN9grpc_core7ExecCtx9exec_ctx_E = external thread_local local_unnamed_addr global ptr, align 8
@_ZN9grpc_core4Fork16support_enabled_E = external local_unnamed_addr global %"struct.std::atomic.27", align 1
@_ZTVN9grpc_core9Timestamp12ScopedSourceE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN9grpc_core9Timestamp12ScopedSourceE, ptr @__cxa_pure_virtual, ptr @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv] }, comdat, align 8
@_ZN9grpc_core9Timestamp25thread_local_time_source_E = external thread_local local_unnamed_addr global ptr, align 8
@_ZTIN9grpc_core9Timestamp12ScopedSourceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core9Timestamp12ScopedSourceE, ptr @_ZTIN9grpc_core9Timestamp6SourceE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core9Timestamp12ScopedSourceE = linkonce_odr constant [37 x i8] c"N9grpc_core9Timestamp12ScopedSourceE\00", comdat, align 1
@_ZTIN9grpc_core9Timestamp6SourceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core9Timestamp6SourceE }, comdat, align 8
@_ZTSN9grpc_core9Timestamp6SourceE = linkonce_odr constant [30 x i8] c"N9grpc_core9Timestamp6SourceE\00", comdat, align 1
@_ZTV28grpc_tls_credentials_options = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI28grpc_tls_credentials_options, ptr @_ZN28grpc_tls_credentials_optionsD2Ev, ptr @_ZN28grpc_tls_credentials_optionsD0Ev] }, comdat, align 8
@_ZTI28grpc_tls_credentials_options = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS28grpc_tls_credentials_options, ptr @_ZTIN9grpc_core10RefCountedI28grpc_tls_credentials_optionsNS_19PolymorphicRefCountENS_11UnrefDeleteEEE }, comdat, align 8
@_ZTS28grpc_tls_credentials_options = linkonce_odr constant [31 x i8] c"28grpc_tls_credentials_options\00", comdat, align 1
@_ZTIN9grpc_core10RefCountedI28grpc_tls_credentials_optionsNS_19PolymorphicRefCountENS_11UnrefDeleteEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core10RefCountedI28grpc_tls_credentials_optionsNS_19PolymorphicRefCountENS_11UnrefDeleteEEE, ptr @_ZTIN9grpc_core19PolymorphicRefCountE }, comdat, align 8
@_ZTSN9grpc_core10RefCountedI28grpc_tls_credentials_optionsNS_19PolymorphicRefCountENS_11UnrefDeleteEEE = linkonce_odr constant [99 x i8] c"N9grpc_core10RefCountedI28grpc_tls_credentials_optionsNS_19PolymorphicRefCountENS_11UnrefDeleteEEE\00", comdat, align 1
@_ZTIN9grpc_core19PolymorphicRefCountE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core19PolymorphicRefCountE }, comdat, align 8
@_ZTSN9grpc_core19PolymorphicRefCountE = linkonce_odr constant [34 x i8] c"N9grpc_core19PolymorphicRefCountE\00", comdat, align 1
@"_ZZZ62grpc_tls_credentials_options_set_tls_session_key_log_file_pathENK3$_0clEvE4site" = internal global { ptr, { i32 }, %"struct.std::atomic.31" } { ptr @.str.1, { i32 } { i32 2147483647 }, %"struct.std::atomic.31" zeroinitializer }, align 8
@"_ZZZ62grpc_tls_credentials_options_set_tls_session_key_log_file_pathENK3$_1clEvE4site" = internal global { ptr, { i32 }, %"struct.std::atomic.31" } { ptr @.str.1, { i32 } { i32 2147483647 }, %"struct.std::atomic.31" zeroinitializer }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN9grpc_core14promise_detail10UnwakeableE = external constant { [6 x ptr] }, align 8
@_ZN4absl12lts_2025051212log_internal9kCharNullE = external global %"struct.std::array", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E], section "llvm.metadata"

; Function Attrs: uwtable
define noundef nonnull ptr @grpc_tls_credentials_options_create() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !27
  %i.h = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %0, ptr %i.e, align 8, !tbaa !26
  %i.j = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #26
          to label %bb.f unwind label %common.resume ; 18 uses

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.k, i8 0, i64 240, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV28grpc_tls_credentials_options, i64 16), ptr %i.j, align 16, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i8 1, ptr %i.m, align 4, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 1, ptr %i.n, align 4, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 1, ptr %i.o, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  store ptr %i.q, ptr %i.p, align 16, !tbaa !64
  store i8 0, ptr %i.q, align 16, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.s, ptr %i.r, align 16, !tbaa !64
  store i8 0, ptr %i.s, align 16, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  store ptr %i.u, ptr %i.t, align 16, !tbaa !64
  store i8 0, ptr %i.u, align 16, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !64
  store i8 0, ptr %i.w, align 16, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.x, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !8
  store i64 1, ptr %i.b, align 8, !tbaa !10
  %i.aa = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.g unwind label %bb.n, !inline_history !66 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !27
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.i unwind label %bb.n, !inline_history !66

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !26
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !10
  %i.ad = and i64 %i.ac, 4
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.j, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ae = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !28, !noundef !29
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !30

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.n, !inline_history !66

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.k, %bb.j, %bb.i
  %i.ag = load i8, ptr %i.d, align 8, !tbaa !25, !range !28, !noundef !29
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.d, align 8, !tbaa !25
  br i1 %i.ah, label %bb.l, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.l:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.c, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i5, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #25, !inline_history !66
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6: ; preds = %bb.m, %bb.l
  %i.ak = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !71
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.f
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #27, !inline_history !66
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret ptr %i.j

common.resume:                                    ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !26
  %i.h = load i64, ptr %i.a, align 8, !tbaa !10
  %i.i = and i64 %i.h, 4
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, !prof !30

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit unwind label %bb.i

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit:       ; preds = %bb.e, %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !25, !range !28, !noundef !29
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !25
  br i1 %i.n, label %bb.g, label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #25
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !71
  br label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit: ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #27
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @grpc_tls_credentials_options_copy(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #26 ; 3 uses
  invoke void @_ZN28grpc_tls_credentials_optionsC2ERS_(ptr noundef nonnull align 8 dereferenceable(280) %i.a, ptr noundef nonnull align 8 dereferenceable(280) %0)
          to label %bb.e unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 42, ptr noundef nonnull %i.b) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  unreachable

bb.e:                                             ; preds = %bb.b
  ret ptr %i.a

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 280) #29
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

end_hunk_0
