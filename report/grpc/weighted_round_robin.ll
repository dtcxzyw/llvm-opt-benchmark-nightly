Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/weighted_round_robin?download=true
inline.NumInlined: 3302
inline.NumDeleted: 1812
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK9grpc_core24WeightedRoundRobinConfig4nameEv:bb.a
  ret { i64, ptr } { i64 20, ptr @.str.49 }
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9grpc_core24WeightedRoundRobinConfig10JsonLoaderERKNS_8JsonArgsE(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core24WeightedRoundRobinConfig10JsonLoaderERKNS_8JsonArgsEE6loader acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core24WeightedRoundRobinConfig10JsonLoaderERKNS_8JsonArgsEE6loader) #37
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #38
          to label %bb.d unwind label %bb.f       ; 32 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_24WeightedRoundRobinConfigELm6EvEE, i64 16), ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderIbEEE6value_E, ptr %i.e, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 16, ptr %.sroa.584.0..sroa_idx, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 1, ptr %.sroa.685.0..sroa_idx, align 2
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @.str.15, ptr %.sroa.887.0..sroa_idx, align 8
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.988.0..sroa_idx, align 8
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E, ptr %.sroa.1089.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i16 24, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  store i8 1, ptr %.sroa.1290.0..sroa_idx, align 2
  %.sroa.1492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @.str.16, ptr %.sroa.1492.0..sroa_idx, align 8
  %.sroa.1593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr null, ptr %.sroa.1593.0..sroa_idx, align 8
  %.sroa.1694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E, ptr %.sroa.1694.0..sroa_idx, align 8
  %.sroa.1795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i16 32, ptr %.sroa.1795.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 1, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.2097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @.str.17, ptr %.sroa.2097.0..sroa_idx, align 8
  %.sroa.2198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr null, ptr %.sroa.2198.0..sroa_idx, align 8
  %.sroa.2299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E, ptr %.sroa.2299.0..sroa_idx, align 8
  %.sroa.23100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i16 40, ptr %.sroa.23100.0..sroa_idx, align 8
  %.sroa.24101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 114
  store i8 1, ptr %.sroa.24101.0..sroa_idx, align 2
  %.sroa.26102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr @.str.18, ptr %.sroa.26102.0..sroa_idx, align 8
  %.sroa.27103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr null, ptr %.sroa.27103.0..sroa_idx, align 8
  %.sroa.28104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E, ptr %.sroa.28104.0..sroa_idx, align 8
  %.sroa.29105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i16 48, ptr %.sroa.29105.0..sroa_idx, align 8
  %.sroa.30106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 146
  store i8 1, ptr %.sroa.30106.0..sroa_idx, align 2
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr @.str.19, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr null, ptr %.sroa.33108.0..sroa_idx, align 8
  %.sroa.34109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderIfEEE6value_E, ptr %.sroa.34109.0..sroa_idx, align 8
  %.sroa.35110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i16 56, ptr %.sroa.35110.0..sroa_idx, align 8
  %.sroa.36111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 178
  store i8 1, ptr %.sroa.36111.0..sroa_idx, align 2
  %.sroa.37112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @.str.20, ptr %.sroa.37112.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store ptr null, ptr %.sroa.38.0..sroa_idx, align 8, !tbaa !28
  store ptr %i.d, ptr @_ZZN9grpc_core24WeightedRoundRobinConfig10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !306
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core24WeightedRoundRobinConfig10JsonLoaderERKNS_8JsonArgsEE6loader) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN9grpc_core24WeightedRoundRobinConfig10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !306
  ret ptr %i.f

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core24WeightedRoundRobinConfig10JsonLoaderERKNS_8JsonArgsEE6loader) #37
  resume { ptr, i32 } %i.g
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core24WeightedRoundRobinConfig12JsonPostLoadERKNS_12experimental4JsonERKNS_8JsonArgsEPNS_16ValidationErrorsE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %5 = alloca %"class.std::optional", align 8     ; 12 uses
  %6 = alloca %"struct.grpc_core::WeightedRoundRobinConfig::ParsedMetric", align 8 ; 8 uses
  %7 = alloca %"struct.grpc_core::WeightedRoundRobinConfig::ParsedMetric", align 8 ; 8 uses
  %8 = alloca %"struct.grpc_core::WeightedRoundRobinConfig::ParsedMetric", align 8 ; 8 uses
  %9 = alloca %"struct.grpc_core::WeightedRoundRobinConfig::ParsedMetric", align 8 ; 9 uses
  %10 = alloca %"struct.grpc_core::WeightedRoundRobinConfig::ParsedMetric", align 8 ; 9 uses
  %11 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 100)
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 8, !tbaa !48
  %i.g = fcmp olt float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %3, ptr %4, align 8, !tbaa !51
  tail call void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 24, ptr nonnull @.str.21)
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 20, ptr nonnull @.str.22)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #39
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.bf

bb.f:                                             ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit, %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN9grpc_core25IsExperimentEnvVarEnabledEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
  br i1 %i.k, label %bb.g, label %bb.be

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i8, ptr %i.l, align 8, !tbaa !308
  switch i8 %i.m, label %bb.h [
    i8 4, label %_ZNK9grpc_core12experimental4Json6objectB5cxx11Ev.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !309

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.51, ptr %i.o, align 8, !tbaa !55
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.g
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @.str.50, ptr %i.q, align 8, !tbaa !55
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZNK9grpc_core12experimental4Json6objectB5cxx11Ev.exit: ; preds = %bb.g
  call void @_ZN9grpc_core19LoadJsonObjectFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEESt8optionalIT_ERKSt3mapIS7_NS_12experimental4JsonESt4lessIS7_ESaISt4pairIKS7_SF_EEERKNS_8JsonArgsESt17basic_string_viewIcS5_EPNS_16ValidationErrorsEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 34, ptr nonnull @.str.23, ptr noundef %3, i1 noundef zeroext false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !57, !range !58, !noundef !59
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.i, label %_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZNK9grpc_core12experimental4Json6objectB5cxx11Ev.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !61     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %.not233 = icmp eq ptr %i.u, %i.w
  br i1 %.not233, label %.loopexit.thread, label %.lr.ph

.loopexit.thread:                                 ; preds = %bb.i
  store i8 0, ptr %i.r, align 8, !tbaa !57
  br label %bb.bc

.lr.ph:                                           ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 13 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 13 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.ba
  %.044235 = phi i64 [ 0, %.lr.ph ], [ %i.jr, %bb.ba ] ; 2 uses
  %.sroa.0188.0234 = phi ptr [ %i.u, %.lr.ph ], [ %i.js, %bb.ba ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0188.0234, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !64 ; 4 uses
  %.pre242 = load ptr, ptr %.sroa.0188.0234, align 8, !tbaa !65 ; 9 uses
  switch i64 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread201 [
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 23, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.bd = load i64, ptr %.pre242, align 1
  %i.be = xor i64 %i.bd, 7811903076112363619
  %i.bf = getelementptr i8, ptr %.pre242, i64 7
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 7957695015159490924
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store i32 0, ptr %6, align 8, !tbaa !68
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !69
  store i64 0, ptr %i.ai, align 8, !tbaa !64
  store i8 0, ptr %i.ah, align 8, !tbaa !28
  %i.bm = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 6 uses
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 0, ptr %i.bm, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !69
  %i.bq = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ah
  br i1 %i.br, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bs = load i8, ptr %i.ah, align 8
  store i8 %i.bs, ptr %i.bp, align 8
  br label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !65
  %i.bt = load i64, ptr %i.ah, align 8, !tbaa !28
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !28
  br label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 0, ptr %i.bu, align 8, !tbaa !64
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !65
  store i64 0, ptr %i.ai, align 8, !tbaa !64
  %i.bv = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr %i.bw, ptr %i.aa, align 8, !tbaa !70
  br label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit unwind label %bb.n

_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.m
  %.pre241 = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.bx = icmp eq ptr %.pre241, %i.ah
  br i1 %i.bx, label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit
  %i.by = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %.pre241, i64 noundef %i.bz) #41
  br label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit

_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit: ; preds = %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ba

bb.n:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ah
  br i1 %i.cc, label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.n
  %i.cd = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #41
  br label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit67

_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit67: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bb

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cf = load i64, ptr %.pre242, align 1
  %i.cg = xor i64 %i.cf, 7811903076111836525
  %i.ch = getelementptr i8, ptr %.pre242, i64 7
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 %i.ci, 7957695015159490924
  %i.ck = or i64 %i.cg, %i.cj
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i32 1, ptr %7, align 8, !tbaa !68
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !69
  store i64 0, ptr %i.af, align 8, !tbaa !64
  store i8 0, ptr %i.ae, align 8, !tbaa !28
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 6 uses
  %i.cp = load ptr, ptr %i.ab, align 8, !tbaa !71
  %.not.i.i74 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i74, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread
  store i32 1, ptr %i.co, align 8, !tbaa !68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 3 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !69
  %i.cs = load ptr, ptr %i.ad, align 8, !tbaa !65 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ae
  br i1 %i.ct, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75

bb.p:                                             ; preds = %bb.o
  %i.cu = load i8, ptr %i.ae, align 8
  store i8 %i.cu, ptr %i.cr, align 8
  br label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit78.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75: ; preds = %bb.o
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !65
  %i.cv = load i64, ptr %i.ae, align 8, !tbaa !28
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !28
  br label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit78.thread

_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit78.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 0, ptr %i.cw, align 8, !tbaa !64
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !65
  store i64 0, ptr %i.af, align 8, !tbaa !64
  %i.cx = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store ptr %i.cy, ptr %i.aa, align 8, !tbaa !70
  br label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit81

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread
  invoke void @_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.co, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit78 unwind label %bb.r

_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit78: ; preds = %bb.q
  %.pre240 = load ptr, ptr %i.ad, align 8, !tbaa !65 ; 2 uses
  %i.cz = icmp eq ptr %.pre240, %i.ae
  br i1 %i.cz, label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EE9push_backEOS2_.exit78
  %i.da = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %.pre240, i64 noundef %i.db) #41
end_hunk_0
begin_hunk_1_@_ZN9grpc_core24WeightedRoundRobinConfig12JsonPostLoadERKNS_12experimental4JsonERKNS_8JsonArgsEPNS_16ValidationErrorsE:bb.a
.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i141, %bb.ag
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit155

bb.an:                                            ; preds = %bb.am
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %i.am, align 8, !tbaa !65 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.an
  br i1 %i.ii, label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153: ; preds = %bb.an
  %i.ij = load i64, ptr %i.an, align 8, !tbaa !28
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #41
  br label %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit155

_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit155: ; preds = %bb.an, %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153
  %.pn52 = phi { ptr, i32 } [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ig, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bb

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit125.thread208: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread203, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 36, ptr %13, align 8
  store ptr @.str.30, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.il = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.044235, ptr noundef nonnull %i.aq)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit125.thread208
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %i.ar
  store i64 %i.in, ptr %14, align 8, !tbaa !73
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  store i64 1, ptr %15, align 8
  store ptr @.str.31, ptr %i.at, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.io = load ptr, ptr %12, align 8, !tbaa !65
  %i.ip = load i64, ptr %i.au, align 8, !tbaa !64
  store ptr %3, ptr %11, align 8, !tbaa !51
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 %i.ip, ptr %i.io)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.av

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.ap
  %i.iq = load ptr, ptr %12, align 8, !tbaa !65   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.av
  br i1 %i.ir, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.is = load i64, ptr %i.av, align 8, !tbaa !28
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  store i64 25, ptr %17, align 8
  store ptr @.str.32, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.iu = load ptr, ptr %.sroa.0188.0234, align 8, !tbaa !65
  %i.iv = load i64, ptr %i.bb, align 8, !tbaa !64
  store i64 %i.iv, ptr %18, align 8
  store ptr %i.iu, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  store i64 1, ptr %19, align 8
  store ptr @.str.33, ptr %i.ay, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %19)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.iw = load ptr, ptr %16, align 8, !tbaa !65
  %i.ix = load i64, ptr %i.az, align 8, !tbaa !64
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 %i.ix, ptr %i.iw)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.iy = load ptr, ptr %16, align 8, !tbaa !65   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ba
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.ar
  %i.ja = load i64, ptr %i.ba, align 8, !tbaa !28
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit166 unwind label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #39
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit166: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ba

bb.at:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit125.thread208
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.au:                                            ; preds = %bb.ao
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.av:                                            ; preds = %bb.ap
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %12, align 8, !tbaa !65   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.av
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.av
  %i.jj = load i64, ptr %i.av, align 8, !tbaa !28
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.au
  %.pn = phi { ptr, i32 } [ %i.jf, %bb.au ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.jg, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %i.je, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.az

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.ay:                                            ; preds = %bb.aq
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %16, align 8, !tbaa !65   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.ba
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.ay
  %i.jp = load i64, ptr %i.ba, align 8, !tbaa !28
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.ax
  %.pn48 = phi { ptr, i32 } [ %i.jl, %bb.ax ], [ %i.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.jm, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.aw
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.bb

bb.ba:                                            ; preds = %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit81, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit116, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit166, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit152, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit98, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit
  %i.jr = add i64 %.044235, 1
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0188.0234, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.js, %i.w
  br i1 %.not, label %.loopexit, label %bb.j

bb.bb:                                            ; preds = %bb.az, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit155, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit119, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit101, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit84, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit67
  %.pn60.pn = phi { ptr, i32 } [ %i.ca, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit67 ], [ %i.dc, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit84 ], [ %i.dw, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit101 ], [ %.pn54, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit119 ], [ %.pn52, %_ZN9grpc_core24WeightedRoundRobinConfig12ParsedMetricD2Ev.exit155 ], [ %.pn48.pn.pn, %bb.az ]
  call void @_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.bf

.loopexit:                                        ; preds = %bb.ba
  %.pre247 = load i8, ptr %i.r, align 8, !tbaa !57, !range !58
  %i.jt = trunc nuw i8 %.pre247 to i1
  store i8 0, ptr %i.r, align 8, !tbaa !57
  br i1 %i.jt, label %bb.bc, label %_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev.exit

bb.bc:                                            ; preds = %.loopexit.thread, %.loopexit
  %i.ju = load ptr, ptr %5, align 8, !tbaa !76    ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !77 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ju, %i.jw
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.kc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ju, %bb.bc ] ; 3 uses
  %i.jx = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !28
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kc, %i.jw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.bc
  %i.kd = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ju, %bb.bc ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !79
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.ki) #41
  br label %_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev.exit: ; preds = %_ZNK9grpc_core12experimental4Json6objectB5cxx11Ev.exit, %.loopexit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev.exit, %bb.f
  ret void

bb.bf:                                            ; preds = %bb.bb, %bb.e
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.bb ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn60.pn.pn
}

declare void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core19LoadJsonObjectFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEESt8optionalIT_ERKSt3mapIS7_NS_12experimental4JsonESt4lessIS7_ESaISt4pairIKS7_SF_EEERKNS_8JsonArgsESt17basic_string_viewIcS5_EPNS_16ValidationErrorsEb(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, ptr %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.std::vector.24", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 1, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.57, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 %3, ptr %10, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !80
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10)
  %i.b = load ptr, ptr %8, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  store ptr %5, ptr %7, align 8, !tbaa !51
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.d, ptr %i.b)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.c

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %8, align 8, !tbaa !65     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.j = invoke noundef ptr @_ZN9grpc_core11json_detail18GetJsonObjectFieldERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessIS7_ESaISt4pairIKS7_S9_EEESt17basic_string_viewIcS5_EPNS_16ValidationErrorsEb(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %3, ptr %4, ptr noundef nonnull %5, i1 noundef zeroext %6)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread43, label %bb.e

.thread43:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8, !tbaa !57
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %8, align 8, !tbaa !65     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !28
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.n

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.u = load i64, ptr %i.t, align 8, !tbaa !85
  %i.v = load ptr, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE6value_E, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE6value_E, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %11, ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.t, align 8, !tbaa !85
  %i.y = icmp ugt i64 %i.x, %i.u
  %.pre = load ptr, ptr %11, align 8, !tbaa !76   ; 4 uses
  br i1 %i.y, label %bb.h, label %.thread45

bb.g:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.m

.thread45:                                        ; preds = %bb.f
  store ptr %.pre, ptr %0, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !61
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ad, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ae, align 8, !tbaa !57
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre26
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %bb.h ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !65 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !28
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %.pre26
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #41
  %.pre27.pre = load ptr, ptr %7, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %.pre27 = phi ptr [ %5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i ], [ %.pre27.pre, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %.not.i = icmp eq ptr %.pre27, null
  br i1 %.not.i, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread45, %.thread43, %bb.j
  %i.ar = phi ptr [ %5, %.thread43 ], [ %.pre27, %bb.j ], [ %5, %.thread45 ]
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ar)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #39
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret void

bb.m:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.s, %bb.d ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !57
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.b
  %i.m = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #41
  br label %_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core34RegisterWeightedRoundRobinLbPolicyEPNS_17CoreConfiguration7BuilderE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38, !noalias !313 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN9grpc_core12_GLOBAL__N_125WeightedRoundRobinFactoryE, i64 16), ptr %i.b, align 8, !tbaa !27, !noalias !313
  store ptr %i.b, ptr %1, align 8, !tbaa !316
  invoke void @_ZN9grpc_core27LoadBalancingPolicyRegistry7Builder34RegisterLoadBalancingPolicyFactoryESt10unique_ptrINS_26LoadBalancingPolicyFactoryESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !317    ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_125WeightedRoundRobinFactoryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core26LoadBalancingPolicyFactoryEEclEPS1_.exit.i

_ZNKSt14default_deleteIN9grpc_core26LoadBalancingPolicyFactoryEEclEPS1_.exit.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #37, !inline_history !312
  br label %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_125WeightedRoundRobinFactoryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_125WeightedRoundRobinFactoryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN9grpc_core26LoadBalancingPolicyFactoryEEclEPS1_.exit.i, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !317    ; 3 uses
  %.not.i3 = icmp eq ptr %i.h, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_125WeightedRoundRobinFactoryESt14default_deleteIS2_EED2Ev.exit8, label %_ZNKSt14default_deleteIN9grpc_core26LoadBalancingPolicyFactoryEEclEPS1_.exit.i4

_ZNKSt14default_deleteIN9grpc_core26LoadBalancingPolicyFactoryEEclEPS1_.exit.i4: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #37, !inline_history !312
  br label %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_125WeightedRoundRobinFactoryESt14default_deleteIS2_EED2Ev.exit8

_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_125WeightedRoundRobinFactoryESt14default_deleteIS2_EED2Ev.exit8: ; preds = %_ZNKSt14default_deleteIN9grpc_core26LoadBalancingPolicyFactoryEEclEPS1_.exit.i4, %bb.c
  resume { ptr, i32 } %i.g
}

declare void @_ZN9grpc_core27LoadBalancingPolicyRegistry7Builder34RegisterLoadBalancingPolicyFactoryESt10unique_ptrINS_26LoadBalancingPolicyFactoryESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core24WeightedRoundRobinConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #41
  br label %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !86
  br label %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #41
  br label %_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EED2Ev.exit

_ZNSt6vectorIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core24WeightedRoundRobinConfigD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #41
  br label %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN9grpc_core24WeightedRoundRobinConfig12ParsedMetricEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !86
  br label %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core24WeightedRoundRobinConfigD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #41
  br label %_ZN9grpc_core24WeightedRoundRobinConfigD2Ev.exit

_ZN9grpc_core24WeightedRoundRobinConfigD2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core24WeightedRoundRobinConfig12ParsedMetricES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.34() #7 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  %i.b = icmp eq i8 %i.a, 0
end_hunk_1
begin_hunk_2_@_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEv:bb.a
  %i.ma = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6PickerEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr nonnull %0)
          to label %bb.dr unwind label %bb.en     ; 0 uses

bb.dr:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit230
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %30, i64 23, ptr nonnull @.str.116)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit unwind label %bb.en

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit: ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !107
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %.sroa.0.0.copyload.i232 = load i64, ptr %i.md, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i232, ptr %32, align 8
  invoke void @_ZNK9grpc_core8Duration8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.ds unwind label %bb.eo

bb.ds:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  %i.me = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.dt unwind label %bb.ep

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.me)
          to label %.critedge131 unwind label %bb.ep

.critedge131:                                     ; preds = %bb.dt
  %i.mf = load ptr, ptr %31, align 8, !tbaa !65   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %.critedge131
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !28
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236

bb.du:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %.critedge136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236: ; preds = %.critedge131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %.critedge136

.critedge136:                                     ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236
  %.val141 = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.mk = getelementptr inbounds nuw i8, ptr %.val141, i64 40
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !115 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !27
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 72
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = invoke noundef ptr %i.mo(ptr noundef nonnull align 8 dereferenceable(8) %i.ml)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dv:                                            ; preds = %.critedge136
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !107
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  %.sroa.0.0.copyload.i238 = load i64, ptr %i.ms, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i238, ptr %33, align 8
  %i.mt = invoke i64 @_ZNK9grpc_core8DurationcvNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEv(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.dw unwind label %bb.es

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mv = atomicrmw add ptr %i.mu, i64 1 monotonic, align 8, !noalias !607 ; 0 uses
  store ptr %0, ptr %35, align 8, !tbaa !271, !alias.scope !607
  %i.mw = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %.val140 = load ptr, ptr %i.c, align 8, !tbaa !227 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.mx = getelementptr inbounds nuw i8, ptr %.val140, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !113, !noalias !608 ; 2 uses
  store ptr %i.my, ptr %i.mw, align 8, !tbaa !113, !alias.scope !608
  %i.mz = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.val140, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !110, !noalias !608 ; 4 uses
  store ptr %i.nb, ptr %i.mz, align 8, !tbaa !110, !alias.scope !608
  %.not.i.i.i.i239 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i239, label %_ZNK9grpc_core19LoadBalancingPolicy15work_serializerEv.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 3 uses
  %i.nd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !608
  %.not.i.i.i.i.i240 = icmp eq i8 %i.nd, 0
  br i1 %.not.i.i.i.i.i240, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ne = load i32, ptr %i.nc, align 4, !tbaa !119, !noalias !608
  %i.nf = add nsw i32 %i.ne, 1
  store i32 %i.nf, ptr %i.nc, align 4, !tbaa !119, !noalias !608
  br label %_ZNK9grpc_core19LoadBalancingPolicy15work_serializerEv.exit

bb.dz:                                            ; preds = %bb.dx
  %i.ng = atomicrmw volatile add ptr %i.nc, i32 1 acq_rel, align 4, !noalias !608 ; 0 uses
  br label %_ZNK9grpc_core19LoadBalancingPolicy15work_serializerEv.exit

_ZNK9grpc_core19LoadBalancingPolicy15work_serializerEv.exit: ; preds = %bb.dw, %bb.dy, %bb.dz
  %i.nh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38
          to label %bb.ea unwind label %bb.et, !inline_history !594 ; 4 uses

bb.ea:                                            ; preds = %_ZNK9grpc_core19LoadBalancingPolicy15work_serializerEv.exit
  store ptr %0, ptr %i.nh, align 8, !tbaa !271
  store ptr null, ptr %35, align 8, !tbaa !271
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %i.my, ptr %i.ni, align 8, !tbaa !113
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store ptr null, ptr %i.mz, align 8, !tbaa !110
  store ptr %i.nb, ptr %i.nj, align 8, !tbaa !110
  store ptr null, ptr %i.mw, align 8, !tbaa !113
  store ptr %i.nh, ptr %34, align 16, !tbaa !28
  %i.nk = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_1EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESA_", ptr %i.nk, align 16, !tbaa !610
  %i.nl = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_1JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.nl, align 8, !tbaa !611
  %i.nm = load ptr, ptr %i.mp, align 8, !tbaa !27
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 88
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = invoke { i64, i64 } %i.no(ptr noundef nonnull align 8 dereferenceable(24) %i.mp, i64 %i.mt, ptr noundef nonnull align 16 %34)
          to label %bb.eb unwind label %bb.eu     ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %i.nq = extractvalue { i64, i64 } %i.np, 0
  %i.nr = extractvalue { i64, i64 } %i.np, 1
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 8, !tbaa !236, !range !58, !noundef !59
  %i.nv = trunc nuw i8 %i.nu to i1
  store i64 %i.nq, ptr %i.ns, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.nr, ptr %.sroa.5.0..sroa_idx, align 8
  br i1 %i.nv, label %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit", label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i8 1, ptr %i.nt, align 8, !tbaa !236
  br label %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit": ; preds = %bb.eb, %bb.ec
  %i.nw = load ptr, ptr %i.nk, align 16, !tbaa !610
  call void %i.nw(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %34, ptr noundef nonnull align 16 dereferenceable(32) %34) #37, !inline_history !595
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  %i.nx = load ptr, ptr %i.ld, align 8, !tbaa !110 ; 8 uses
  %.not.i.i245 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i245, label %_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit249, label %bb.ed

bb.ed:                                            ; preds = %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit"
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 4 uses
  %i.nz = load atomic i64, ptr %i.ny acquire, align 8 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 4294967297
  %i.ob = trunc i64 %i.nz to i32                  ; 2 uses
  br i1 %i.oa, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 0, ptr %i.ny, align 8, !tbaa !117
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 0, ptr %i.oc, align 4, !tbaa !118
  %i.od = load ptr, ptr %i.nx, align 8, !tbaa !27
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #37, !inline_history !15
  %i.og = load ptr, ptr %i.nx, align 8, !tbaa !27
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #37, !inline_history !15
  br label %_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit249

bb.ef:                                            ; preds = %bb.ed
  %i.oj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i246 = icmp eq i8 %i.oj, 0
  br i1 %.not.i.i.i246, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ok = add nsw i32 %i.ob, -1
  store i32 %i.ok, ptr %i.ny, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i247

bb.eh:                                            ; preds = %bb.ef
  %i.ol = atomicrmw volatile add ptr %i.ny, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i247

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i247: ; preds = %bb.eh, %bb.eg
  %.0.i.i.i.i248 = phi i32 [ %i.ob, %bb.eg ], [ %i.ol, %bb.eh ]
  %i.om = icmp eq i32 %.0.i.i.i.i248, 1
  br i1 %i.om, label %bb.ei, label %_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit249, !prof !105

bb.ei:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i247
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #37
  br label %_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit249

_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit249: ; preds = %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit", %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i247, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  %i.on = load i8, ptr %i.in, align 16, !tbaa !264, !range !58, !noundef !59
  %i.oo = trunc nuw i8 %i.on to i1
  store i8 0, ptr %i.in, align 16, !tbaa !264
  br i1 %i.oo, label %bb.ej, label %_ZNSt14_Optional_baseIN9grpc_core21StaticStrideSchedulerELb0ELb0EED2Ev.exit

bb.ej:                                            ; preds = %_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit249
  %i.op = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.oq = load ptr, ptr %i.op, align 16, !tbaa !272 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.or = getelementptr inbounds nuw i8, ptr %25, i64 48
  %i.os = load ptr, ptr %i.or, align 16, !tbaa !267
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = ptrtoint ptr %i.oq to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef %i.ov) #41
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.ek, %bb.ej
  %i.ow = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ox = load ptr, ptr %i.ow, align 16, !tbaa !262
  call void %i.ox(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(80) %25, ptr noundef nonnull align 16 dereferenceable(80) %25) #37, !inline_history !596
  br label %_ZNSt14_Optional_baseIN9grpc_core21StaticStrideSchedulerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core21StaticStrideSchedulerELb0ELb0EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit249, %_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  %.not.i.i.i250 = icmp eq ptr %.sroa.0278.0.lcssa, null
  br i1 %.not.i.i.i250, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.el

bb.el:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core21StaticStrideSchedulerELb0ELb0EED2Ev.exit
  %i.oy = ptrtoint ptr %.sroa.21.0.lcssa to i64
  %i.oz = sub i64 %i.oy, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0278.0.lcssa, i64 noundef %i.oz) #41
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt14_Optional_baseIN9grpc_core21StaticStrideSchedulerELb0ELb0EED2Ev.exit, %bb.el
  ret void

bb.em:                                            ; preds = %bb.do
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.en:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit228, %bb.dq, %bb.dp, %bb.dr, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit230
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.eo:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.ep:                                            ; preds = %bb.dt, %bb.ds
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pe = load ptr, ptr %31, align 8, !tbaa !65   ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %bb.ep
  %i.ph = load i64, ptr %i.pf, align 8, !tbaa !28
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.eo
  %.pn102 = phi { ptr, i32 } [ %i.pc, %bb.eo ], [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %i.pd, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.en
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %i.pb, %bb.en ], [ %.pn102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #43
  br label %bb.er

bb.er:                                            ; preds = %bb.em, %bb.eq
  %.pn102.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn, %bb.eq ], [ %i.pa, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dd, %.critedge125, %.critedge129, %bb.cc, %.critedge136
  %lpad.loopexit.split-lp845 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.es:                                            ; preds = %bb.dv
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.et:                                            ; preds = %_ZNK9grpc_core19LoadBalancingPolicy15work_serializerEv.exit
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.eu:                                            ; preds = %bb.ea
  %i.pl = landingpad { ptr, i32 }
          cleanup
  %i.pm = load ptr, ptr %i.nk, align 16, !tbaa !610
  call void %i.pm(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %34, ptr noundef nonnull align 16 dereferenceable(32) %34) #37, !inline_history !595
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.pn108 = phi { ptr, i32 } [ %i.pl, %bb.eu ], [ %i.pk, %bb.et ]
  call fastcc void @"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.es
  %.pn108.pn.pn = phi { ptr, i32 } [ %.pn108, %bb.ev ], [ %i.pj, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ew, %bb.er, %bb.dg, %bb.cv
  %.pn108.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn, %bb.dg ], [ %.pn102.pn.pn.pn.pn, %bb.er ], [ %.pn108.pn.pn, %bb.ew ], [ %.pn97.pn.pn.pn, %bb.cv ], [ %lpad.loopexit.split-lp845, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  call void @_ZNSt14_Optional_baseIN9grpc_core21StaticStrideSchedulerELb0ELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %25) #37
  br label %bb.ex

bb.ex:                                            ; preds = %bb.cq, %.loopexit.split-lp
  %.pn108.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.ju, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit314, %.loopexit.split-lp315.loopexit.split-lp, %.loopexit.split-lp315.loopexit, %bb.cp, %bb.ex, %bb.av
  %.sroa.21.3 = phi ptr [ %.sroa.21.0464, %bb.av ], [ %.sroa.13.0465, %.loopexit.split-lp315.loopexit.split-lp ], [ %.sroa.21.0.lcssa, %bb.ex ], [ %.sroa.21.0.lcssa, %bb.cp ], [ %.sroa.21.6, %.loopexit314 ], [ %.sroa.21.1.ph.ph, %.loopexit.split-lp315.loopexit ], [ %.sroa.21.0.lcssa, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0278.3 = phi ptr [ %.sroa.0278.0466, %bb.av ], [ %.sroa.0278.0466, %.loopexit.split-lp315.loopexit.split-lp ], [ %.sroa.0278.0.lcssa, %bb.ex ], [ %.sroa.0278.0.lcssa, %bb.cp ], [ %.sroa.0278.6, %.loopexit314 ], [ %.sroa.0278.1.ph.ph, %.loopexit.split-lp315.loopexit ], [ %.sroa.0278.0.lcssa, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn115.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.av ], [ %lpad.loopexit.split-lp321, %.loopexit.split-lp315.loopexit.split-lp ], [ %.pn108.pn.pn.pn.pn.pn, %bb.ex ], [ %.pn.pn.pn.pn.pn, %bb.cp ], [ %lpad.loopexit316, %.loopexit314 ], [ %lpad.loopexit320, %.loopexit.split-lp315.loopexit ], [ %lpad.loopexit.split-lp849, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i254 = icmp eq ptr %.sroa.0278.3, null
  br i1 %.not.i.i.i254, label %_ZNSt6vectorIfSaIfEED2Ev.exit255, label %bb.ey

bb.ey:                                            ; preds = %.body
  %i.pn = ptrtoint ptr %.sroa.21.3 to i64
  %i.po = ptrtoint ptr %.sroa.0278.3 to i64
  %i.pp = sub i64 %i.pn, %i.po
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0278.3, i64 noundef %i.pp) #41
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit255

_ZNSt6vectorIfSaIfEED2Ev.exit255:                 ; preds = %.body, %bb.ey
  resume { ptr, i32 } %.pn115.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN9grpc_core21StaticStrideSchedulerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !118
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !10
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !105

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker12EndpointInfoESaIS4_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker4PickENS_19LoadBalancingPolicy8PickArgsE:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !245, !range !58, !noundef !59
  %i.ce = trunc nuw i8 %i.cd to i1
  %.not.i.i = icmp ne ptr %0, null
  %not. = xor i1 %i.ce, true
  %or.cond = select i1 %not., i1 %.not.i.i, i1 false
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = icmp eq i8 %i.cg, 0
  %or.cond56 = select i1 %or.cond, i1 %i.ch, i1 false
  br i1 %or.cond56, label %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.thread

_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %.critedge38
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %.noexc unwind label %bb.ah    ; 5 uses

.noexc:                                           ; preds = %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !224, !noalias !622 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i45, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEEC2ERKS4_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8, !noalias !622 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.ci, align 8, !tbaa !224, !noalias !622
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEEC2ERKS4_.exit.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEEC2ERKS4_.exit.i: ; preds = %bb.ac, %.noexc
  %i.co = phi ptr [ %.pre.i.i, %bb.ac ], [ null, %.noexc ]
  %i.cp = load ptr, ptr %i.ca, align 8, !tbaa !107, !noalias !622 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.cp, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerESt14default_deleteIS4_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEEC2ERKS4_.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = atomicrmw add ptr %i.cq, i64 1 monotonic, align 8, !noalias !622 ; 0 uses
  %.pre.i9.i = load ptr, ptr %i.ca, align 8, !tbaa !107, !noalias !622
  br label %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.ad, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEEC2ERKS4_.exit.i
  %i.cs = phi ptr [ %.pre.i9.i, %bb.ad ], [ null, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEEC2ERKS4_.exit.i ]
  %i.ct = load i64, ptr %i.cj, align 8, !tbaa !275, !noalias !622
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerE, i64 16), ptr %i.ck, align 8, !tbaa !27, !noalias !622
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.cu, align 8, !tbaa !224, !noalias !622
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !107, !noalias !622
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %i.ct, ptr %i.cw, align 8, !tbaa !275, !noalias !622
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !275
  br label %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.thread

bb.ae:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit, %bb.w, %bb.v, %bb.y, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit, %bb.x, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.ae ], [ %i.cy, %bb.af ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

bb.ah:                                            ; preds = %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEED2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(208) %0) #37
  br label %common.resume

_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.thread: ; preds = %.critedge38, %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerESt14default_deleteIS4_EED2Ev.exit
  ret void
}

declare noundef i32 @_ZN9grpc_core21Histogram_10000_20_649BucketForEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN9grpc_core21StaticStrideScheduler4MakeEN4absl12lts_202505124SpanIKfEENS2_12AnyInvocableIFjvEEE(ptr dead_on_unwind writable sret(%"class.std::optional.409") align 16, ptr, i64, ptr noundef align 16) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core21StaticStrideSchedulerEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !269
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f
}

declare void @_ZNK9grpc_core8Duration8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i64 @_ZNK9grpc_core8DurationcvNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !118
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !4
  br label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !105

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !271   ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 -1 acq_rel, align 8
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEED2Ev.exit, !prof !105

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %.val, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %.val) #37, !inline_history !623
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEED2Ev.exit

_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN9grpc_core21StaticStrideSchedulerELb0ELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !264, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 16, !tbaa !264
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN9grpc_core21StaticStrideSchedulerELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !272 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !267
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #41
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !262
  tail call void %i.l(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(65) %0, ptr noundef nonnull align 16 dereferenceable(65) %0) #37, !inline_history !624
  br label %_ZNSt17_Optional_payloadIN9grpc_core21StaticStrideSchedulerELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN9grpc_core21StaticStrideSchedulerELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseIN9grpc_core21StaticStrideSchedulerEE10_M_destroyEv.exit.i.i
  ret void
}

declare void @_ZNK9grpc_core18EndpointAddressSet8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZNK9grpc_core9Timestamp8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIfEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_21AlphaNumFormatterImplEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SI_St17basic_string_viewIcSF_EOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, i64 %3, ptr %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !64
  store i8 0, ptr %i.a, align 8, !tbaa !28
  %.not11 = icmp eq ptr %1, %2
  br i1 %.not11, label %._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.25, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.f = load float, ptr %1, align 4, !tbaa !253
  %i.g = fpext float %i.f to double
  %i.h = invoke noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef %i.g, ptr noundef nonnull %i.c)
          to label %.noexc5.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.peel:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel
  store i64 %i.h, ptr %6, align 8, !tbaa !73
  store ptr %i.c, ptr %i.d, align 8, !tbaa !74
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.noexc5.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.not.peel = icmp eq ptr %i.i, %2
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  ret void

.peel.next:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.014 = phi ptr [ %i.q, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !64
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.loopexit:                                        ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #40
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.peel.next
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, i64 noundef %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.n = load float, ptr %.sroa.0.014, align 4, !tbaa !253
  %i.o = fpext float %i.n to double
  %i.p = invoke noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef %i.o, ptr noundef nonnull %i.c)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  store i64 %i.p, ptr %6, align 8, !tbaa !73
  store ptr %i.c, ptr %i.d, align 8, !tbaa !74
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.q, %2
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !625

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %.noexc5.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel, %.loopexit
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.t = load i64, ptr %i.a, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp25
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef i32 @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EjRZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0) #30 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !628
  %i.a = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %.val.val, i64 172
  %i.c = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable19LocalManagerTrivialENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #6 comdat {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !629
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core21StaticStrideSchedulerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core21StaticStrideSchedulerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !272 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN9grpc_core21StaticStrideSchedulerEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !267
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #41
  br label %_ZSt8_DestroyIN9grpc_core21StaticStrideSchedulerEEvPT_.exit

_ZSt8_DestroyIN9grpc_core21StaticStrideSchedulerEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !262
  tail call void %i.j(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 16 dereferenceable(64) %i.h) #37, !inline_history !630
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core21StaticStrideSchedulerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core21StaticStrideSchedulerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core21StaticStrideSchedulerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

end_hunk_3
begin_hunk_4_@"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_1JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE":bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !289
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !290
  %i.i = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !58, !noundef !59
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i, !prof !105

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.f, !inline_history !631

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i unwind label %bb.f, !inline_history !631

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.e, align 8, !tbaa !288, !range !58, !noundef !59
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %common.resume.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !293
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #37, !inline_history !631
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.p = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !252
  br label %common.resume.i.i.i.i.i

common.resume.i.i.i.i.i:                          ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit36.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %.pn20.i.i.i.i.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit36.i.i.i.i.i ], [ %i.k, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.k, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i:         ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  store ptr %1, ptr %i.f, align 8, !tbaa !289
  %.val29.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.q = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i.i, i64 80 ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i.i.i.i.i unwind label %bb.o, !inline_history !631

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i.i.i.i.i: ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  %.val28.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !271 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !236, !range !58, !noundef !59
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.i, label %bb.t

bb.i:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i.i.i.i.i
  %i.u = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core29weighted_round_robin_lb_traceE, i64 8) monotonic, align 8, !range !58, !noundef !59
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %.critedge23.i.i.i.i.i, !prof !105

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.60, i32 noundef 743) #42
          to label %bb.k unwind label %bb.q, !inline_history !631

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 5, ptr nonnull @.str.61)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i.i.i.i.i unwind label %bb.r, !inline_history !631

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i.i.i.i.i: ; preds = %bb.k
  %.val26.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.w = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i.i, i64 16
  %.val24.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !227
  %i.x = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_118WeightedRoundRobinEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.val24.i.i.i.i.i)
          to label %bb.l unwind label %bb.r, !inline_history !631 ; 0 uses

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 8, ptr nonnull @.str.108)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i.i unwind label %bb.r, !inline_history !631

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i.i: ; preds = %bb.l
  %.val30.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.y = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6PickerEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.val30.i.i.i.i.i)
          to label %bb.m unwind label %bb.r, !inline_history !631 ; 0 uses

bb.m:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 13, ptr nonnull @.str.126)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i.i unwind label %bb.r, !inline_history !631

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i.i: ; preds = %bb.m
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.n unwind label %bb.r, !inline_history !631

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #43, !inline_history !631
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %.val27.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !271
  br label %.critedge23.i.i.i.i.i

.critedge23.i.i.i.i.i:                            ; preds = %bb.n, %bb.i
  %.val27.i.i.i.i.i = phi ptr [ %.val28.i.i.i.i.i, %bb.i ], [ %.val27.pre.i.i.i.i.i, %bb.n ]
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEv(ptr noundef nonnull align 8 dereferenceable(120) %.val27.i.i.i.i.i)
          to label %bb.t unwind label %bb.p, !inline_history !631

bb.o:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit36.i.i.i.i.i

bb.p:                                             ; preds = %.critedge23.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i.i, %bb.m, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i.i, %bb.l, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i.i.i.i.i, %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #43, !inline_history !631
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.r ], [ %i.ab, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.af

bb.t:                                             ; preds = %.critedge23.i.i.i.i.i, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i.i.i.i.i
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i unwind label %bb.u, !inline_history !631

bb.u:                                             ; preds = %bb.t
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #39, !inline_history !631
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i: ; preds = %bb.t
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !260 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !260
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEE5resetEPS3_.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 acq_rel, align 8
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.w, label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEE5resetEPS3_.exit.i.i.i.i.i, !prof !105

bb.w:                                             ; preds = %bb.v
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #37, !inline_history !632
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEE5resetEPS3_.exit.i.i.i.i.i

_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEE5resetEPS3_.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !27
  %i.am = load i64, ptr %i.c, align 8, !tbaa !287
  %i.an = or i64 %i.am, 1
  store i64 %i.an, ptr %i.c, align 8, !tbaa !287
  %i.ao = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.x unwind label %bb.ae, !inline_history !633 ; 0 uses

bb.x:                                             ; preds = %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEE5resetEPS3_.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !290
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.z unwind label %bb.ae, !inline_history !633

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !289
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !287
  %i.ar = and i64 %i.aq, 4
  %.not.i32.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i32.i.i.i.i.i, label %bb.aa, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.as = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !58, !noundef !59
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ab, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !105

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.ae, !inline_history !633

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.au = load i8, ptr %i.e, align 8, !tbaa !288, !range !58, !noundef !59
  %i.av = trunc nuw i8 %i.au to i1
  store i8 0, ptr %i.e, align 8, !tbaa !288
  br i1 %i.av, label %bb.ac, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_1JEEET_OT0_DpOT1_.exit"

bb.ac:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.d, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !293
  %.not.i.i.i.i.i.i.i34.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i34.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i35.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #37, !inline_history !633
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i35.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i35.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %i.ay = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !252
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_1JEEET_OT0_DpOT1_.exit"

bb.ae:                                            ; preds = %bb.ab, %bb.y, %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin6PickerEE5resetEPS3_.exit.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #39, !inline_history !633
  unreachable

bb.af:                                            ; preds = %bb.s, %bb.p
  %.pn17.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %.pn.pn.pn.i.i.i.i.i, %bb.s ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit36.i.i.i.i.i unwind label %bb.ag, !inline_history !631

bb.ag:                                            ; preds = %bb.af
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #39, !inline_history !631
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit36.i.i.i.i.i: ; preds = %bb.af, %bb.o
  %.pn20.i.i.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i.i.i, %bb.af ], [ %i.z, %bb.o ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #37, !inline_history !631
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %common.resume.i.i.i.i.i

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_1JEEET_OT0_DpOT1_.exit": ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i35.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvE3$_1EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESA_"(i1 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !28    ; 5 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !28
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.e, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !118
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37, !inline_history !634
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37, !inline_history !634
  br label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.h ], [ %i.r, %bb.i ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.j, label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !105

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37
  br label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.f, %bb.d
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !271 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit", label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.u = atomicrmw add ptr %i.t, i64 -1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit", !prof !105

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %.val.i, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #37, !inline_history !635
  br label %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit": ; preds = %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.k, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %"_ZZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker33BuildSchedulerAndStartTimerLockedEvEN3$_1D2Ev.exit", %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !287
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !287
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !290
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !289
  %i.h = load i64, ptr %i.a, align 8, !tbaa !287
  %i.i = and i64 %i.h, 4
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, !prof !105

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit unwind label %bb.i

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit:       ; preds = %bb.e, %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !288, !range !58, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !288
  br i1 %i.n, label %bb.g, label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !293
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #37
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !252
  br label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit: ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #39
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !287
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !287
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i, !inline_history !636 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !290
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i, !inline_history !636

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !289
  %i.h = load i64, ptr %i.a, align 8, !tbaa !287
  %i.i = and i64 %i.h, 4
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !105

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.i, !inline_history !636

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !288, !range !58, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !288
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !293
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #37, !inline_history !636
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !252
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #39, !inline_history !636
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  tail call void @abort() #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #32

declare noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core19LoadBalancingPolicy16SubchannelPickerEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !273
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f
}

declare noundef i64 @_ZNK9grpc_core21StaticStrideScheduler4PickEv(ptr noundef nonnull align 16 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #37, !inline_history !637
  br label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i64 -1 acq_rel, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit, !prof !105

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #37, !inline_history !7
  br label %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit, %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.n, align 8, !tbaa !224 ; 4 uses
  %.not.i2 = icmp eq ptr %.val, null
  br i1 %.not.i2, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 -1 acq_rel, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEED2Ev.exit, !prof !105

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.val) #37
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.val, i64 noundef 104) #41
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightEED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #37, !inline_history !638
  br label %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceEEclEPS2_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %.not.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i, label %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i64 -1 acq_rel, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit.i, !prof !105

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #37, !inline_history !639
  br label %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit.i

_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %_ZNSt10unique_ptrIN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceESt14default_deleteIS2_EED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !224 ; 4 uses
  %.not.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i2.i, label %_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 -1 acq_rel, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerD2Ev.exit, !prof !105

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin14EndpointWeightD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.val.i) #37
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.val.i, i64 noundef 104) #41
  br label %_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerD2Ev.exit

_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTrackerD2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_24WeightedRoundRobinConfigEED2Ev.exit.i, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN9grpc_core12_GLOBAL__N_118WeightedRoundRobin6Picker21SubchannelCallTracker6FinishENS_19LoadBalancingPolicy30SubchannelCallTrackerInterface10FinishArgsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.grpc_core::LoadBalancingPolicy::SubchannelCallTrackerInterface::FinishArgs", align 8 ; 5 uses
end_hunk_4
