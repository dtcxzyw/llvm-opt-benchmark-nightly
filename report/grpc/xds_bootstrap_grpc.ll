Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_bootstrap_grpc?download=true
inline.NumInlined: 2174
inline.NumDeleted: 1321
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK9grpc_core16GrpcXdsBootstrap8GrpcNode8ToStringB5cxx11Ev:._crit_edge.i.i
  br label %.body

bb.u:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.u
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #25
  br label %.body

.body:                                            ; preds = %bb.u, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %.pn21.pn = phi { ptr, i32 } [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bp, %bb.t ], [ %i.bq, %bb.u ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.w

bb.v:                                             ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit, %bb.m
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.x unwind label %bb.c

bb.w:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.c
  %.pn24 = phi { ptr, i32 } [ %i.j, %bb.c ], [ %.pn21.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  %i.bw = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.a
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.w
  %i.by = load i64, ptr %i.a, align 8, !tbaa !23
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.x:                                             ; preds = %bb.v
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  resume { ptr, i32 } %.pn24
}

declare void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.191, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %.noexc unwind label %bb.c, !inline_history !148

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #28, !inline_history !149
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev.exit: ; preds = %.noexc, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9grpc_core16GrpcXdsBootstrap8GrpcNode10JsonLoaderERKNS_8JsonArgsE(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core16GrpcXdsBootstrap8GrpcNode10JsonLoaderERKNS_8JsonArgsEE6loader acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap8GrpcNode10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %bb.d unwind label %bb.f       ; 22 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_16GrpcXdsBootstrap8GrpcNodeELm4EvEE, i64 16), ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr %i.e, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 8, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 1, ptr %.sroa.635.0..sroa_idx, align 2
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @.str.18, ptr %.sroa.837.0..sroa_idx, align 8
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.938.0..sroa_idx, align 8
  %.sroa.1039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr %.sroa.1039.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i16 40, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  store i8 1, ptr %.sroa.1240.0..sroa_idx, align 2
  %.sroa.1442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @.str.19, ptr %.sroa.1442.0..sroa_idx, align 8
  %.sroa.1543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr null, ptr %.sroa.1543.0..sroa_idx, align 8
  %.sroa.1644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_16GrpcXdsBootstrap8GrpcNode8LocalityEEEE6value_E, ptr %.sroa.1644.0..sroa_idx, align 8
  %.sroa.1745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i16 72, ptr %.sroa.1745.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 1, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.2047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @.str.20, ptr %.sroa.2047.0..sroa_idx, align 8
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr null, ptr %.sroa.2148.0..sroa_idx, align 8
  %.sroa.2249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessIS9_ESaISt4pairIKS9_SB_EEEEEE6value_E, ptr %.sroa.2249.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i16 168, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 114
  store i8 1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr @.str.21, ptr %.sroa.2550.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr null, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !23
  store ptr %i.d, ptr @_ZZN9grpc_core16GrpcXdsBootstrap8GrpcNode10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !151
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap8GrpcNode10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN9grpc_core16GrpcXdsBootstrap8GrpcNode10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !151
  ret ptr %i.f

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap8GrpcNode10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core16GrpcXdsBootstrap13GrpcAuthority8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  store i8 123, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 40, ptr nonnull @.str.22)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.i = load i64, ptr %i.e, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.i, ptr %i.h)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.23)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 11, ptr nonnull @.str.25)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !43   ; 3 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !43   ; 3 uses
  %.not46 = icmp eq ptr %i.o, %i.p
  br i1 %.not46, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNK9grpc_core13GrpcXdsServer3KeyB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %bb.h unwind label %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %2, align 8, !tbaa !27
  %i.t = load i64, ptr %i.q, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.t, ptr %i.s)
          to label %bb.i unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.r
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.i
  %i.w = load i64, ptr %i.r, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.i
  %3 = load i64, ptr %i.q, align 8, !tbaa !26
  %4 = icmp ult i64 %3, 16
  call void @llvm.assume(i1 %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %.not.peel = icmp eq ptr %i.y, %i.p
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.f
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.27)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.036.047 = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.26)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNK9grpc_core13GrpcXdsServer3KeyB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.036.047)
          to label %bb.k unwind label %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %2, align 8, !tbaa !27
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.aa, ptr %i.z)
          to label %bb.l unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.r
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !23
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.p
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !152

.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.h
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !23
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.a, %bb.b, %bb.c, %bb.e, %bb.m, %._crit_edge
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %._crit_edge, %bb.d
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn20 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ak = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %.loopexit.split-lp
  %i.am = load i64, ptr %i.a, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.n:                                             ; preds = %bb.m
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  resume { ptr, i32 } %.pn20
}

declare void @_ZNK9grpc_core13GrpcXdsServer3KeyB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9grpc_core16GrpcXdsBootstrap13GrpcAuthority10JsonLoaderERKNS_8JsonArgsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core16GrpcXdsBootstrap13GrpcAuthority10JsonLoaderERKNS_8JsonArgsEE6loader acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap13GrpcAuthority10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #27
          to label %bb.d unwind label %bb.f       ; 17 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_16GrpcXdsBootstrap13GrpcAuthorityELm3EvEE, i64 16), ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr %i.e, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 32, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 1, ptr %.sroa.619.0..sroa_idx, align 2
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @.str.28, ptr %.sroa.821.0..sroa_idx, align 8
  %.sroa.922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.922.0..sroa_idx, align 8
  %.sroa.1023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderISt6vectorINS_13GrpcXdsServerESaIS4_EEEEE6value_E, ptr %.sroa.1023.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i16 8, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  store i8 1, ptr %.sroa.1224.0..sroa_idx, align 2
  %.sroa.1426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @.str.29, ptr %.sroa.1426.0..sroa_idx, align 8
  %.sroa.1527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr null, ptr %.sroa.1527.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderIbEEE6value_E, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i16 64, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 1, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.1928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @.str.30, ptr %.sroa.1928.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr null, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !23
  store ptr %i.d, ptr @_ZZN9grpc_core16GrpcXdsBootstrap13GrpcAuthority10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !46
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap13GrpcAuthority10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN9grpc_core16GrpcXdsBootstrap13GrpcAuthority10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !46
  ret ptr %i.f

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap13GrpcAuthority10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core16GrpcXdsBootstrap18AllowedGrpcService8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  store i8 123, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !23
  %i.d = load ptr, ptr %1, align 8, !tbaa !49
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 20, ptr nonnull @.str.31)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke { i64, ptr } %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.j, ptr %i.k)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 9, ptr nonnull @.str.32)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %2, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.r, ptr %i.p)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i
  %i.ae = phi ptr [ @.str.33, %._crit_edge.i.i ], [ @.str.34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 3 uses
  %.not5960 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not5960, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.al, ptr nonnull %i.ae)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke { i64, ptr } %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ar, ptr %i.as)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 9, ptr nonnull @.str.32)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %bb.o unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %3, align 8, !tbaa !27
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ay, ptr %i.ax)
          to label %bb.p unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ak
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel: ; preds = %bb.p
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34.peel: ; preds = %bb.p
  %4 = load i64, ptr %i.aj, align 8, !tbaa !26
  %5 = icmp ult i64 %4, 16
  call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.not59.peel = icmp eq ptr %i.bd, %i.ai
  br i1 %.not59.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.x, %bb.q, %bb.j
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %bb.q, %bb.x
  %.sroa.049.061 = phi ptr [ %i.bv, %bb.x ], [ %i.bd, %bb.q ] ; 3 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 19, ptr nonnull @.str.34)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.peel.next
  %i.be = load ptr, ptr %.sroa.049.061, align 8, !tbaa !54 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke { i64, ptr } %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.bj, ptr %i.bk)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 9, ptr nonnull @.str.32)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bl = load ptr, ptr %.sroa.049.061, align 8, !tbaa !54 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.v unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %3, align 8, !tbaa !27
  %i.bq = load i64, ptr %i.aj, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.bq, ptr %i.bp)
          to label %bb.w unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ak
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.w
  %i.bt = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.049.061, i64 8 ; 2 uses
  %.not59 = icmp eq ptr %i.bv, %i.ai
  br i1 %.not59, label %._crit_edge, label %.peel.next, !llvm.loop !153

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.r, %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, %bb.m, %bb.l, %bb.k, %.lr.ph, %bb.a, %bb.b, %bb.c, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.o
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ak
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp
  %i.by = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %.pn22 = phi { ptr, i32 } [ %lpad.loopexit.split-lp98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn24.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ca = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %.loopexit.split-lp
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !23
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.y:                                             ; preds = %._crit_edge
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService10JsonLoaderERKNS_8JsonArgsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService10JsonLoaderERKNS_8JsonArgsEE6loader acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_16GrpcXdsBootstrap18AllowedGrpcServiceELm0EvEE, i64 16), ptr %i.d, align 8, !tbaa !30
  store ptr %i.d, ptr @_ZZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !56
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService10JsonLoaderERKNS_8JsonArgsEE6loader, align 8, !tbaa !56
  ret ptr %i.e

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService10JsonLoaderERKNS_8JsonArgsEE6loader) #26
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core16GrpcXdsBootstrap18AllowedGrpcService12JsonPostLoadERKNS_12experimental4JsonERKNS_8JsonArgsEPNS_16ValidationErrorsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.grpc_core::RefCountedPtr", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.41", align 16   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN9grpc_core29ParseXdsBootstrapChannelCredsERKNS_12experimental4JsonERKNS_8JsonArgsEPNS_16ValidationErrorsE(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::RefCountedPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3)
  %i.a = load ptr, ptr %4, align 8, !tbaa !156
  store ptr null, ptr %4, align 8, !tbaa !156
  %i.b = load ptr, ptr %0, align 8, !tbaa !156    ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !156
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEEaSEOS3_.exit, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !154
  br label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEEaSEOS3_.exit

_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEEaSEOS3_.exit: ; preds = %bb.b, %bb.c
  %.pr = load ptr, ptr %4, align 8, !tbaa !49     ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEEaSEOS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 acq_rel, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %.pr, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #26, !inline_history !1
  br label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit

_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit: ; preds = %bb.a, %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEEaSEOS3_.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
end_hunk_0
begin_hunk_1_@_ZNK9grpc_core16GrpcXdsBootstrap8ToStringB5cxx11Ev:._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.53, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %.not209 = icmp eq ptr %i.e, %i.g
  br i1 %.not209, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.27)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.a:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0191.0210 = phi ptr [ %i.e, %.lr.ph ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.26)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNK9grpc_core13GrpcXdsServer3KeyB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0191.0210)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !27
  %i.k = load i64, ptr %i.h, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.k, ptr %i.j)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.i, align 8, !tbaa !23
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0191.0210, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.g
  br i1 %.not, label %._crit_edge, label %bb.a

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.f
  %i.u = load i64, ptr %i.i, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.e
  %.pn81 = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.y = load i8, ptr %i.x, align 8, !tbaa !78, !range !79, !noundef !80
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 9, ptr nonnull @.str.54)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNK9grpc_core16GrpcXdsBootstrap8GrpcNode8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %i.w)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %3, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ac, ptr %i.aa)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.k
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.m:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.m
  %i.an = load i64, ptr %i.al, align 8, !tbaa !23
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.aj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 52, ptr nonnull @.str.55)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.au, ptr %i.at)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.23)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 44, ptr nonnull @.str.56)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ba, ptr %i.az)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.23)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !37
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 17, ptr nonnull @.str.57)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %.not195211 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not195211, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 6, ptr nonnull @.str.58)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.lr.ph215
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.bn, ptr %i.bl)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.60)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNK9grpc_core16GrpcXdsBootstrap13GrpcAuthority8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bj)
          to label %bb.ab unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.bo = load ptr, ptr %4, align 8, !tbaa !27
  %i.bp = load i64, ptr %i.bh, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.bp, ptr %i.bo)
          to label %bb.ac unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.bq = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bi
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.peel: ; preds = %bb.ac
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106.peel: ; preds = %bb.ac
  %7 = load i64, ptr %i.bh, align 8, !tbaa !26
  %8 = icmp ult i64 %7, 16
  call void @llvm.assume(i1 %8)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.bf) #29 ; 2 uses
  %.not195.peel = icmp eq ptr %i.bu, %i.bg
  br i1 %.not195.peel, label %._crit_edge216, label %.peel.next

._crit_edge216:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.peel, %bb.x
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 4, ptr nonnull @.str.61)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.sroa.0171.0212 = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.peel ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0171.0212, i64 64
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 5, ptr nonnull @.str.59)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.peel.next
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0171.0212, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0171.0212, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.bz, ptr %i.bx)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.60)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNK9grpc_core16GrpcXdsBootstrap13GrpcAuthority8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bv)
          to label %bb.ag unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.ca = load ptr, ptr %4, align 8, !tbaa !27
  %i.cb = load i64, ptr %i.bh, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.cb, ptr %i.ca)
          to label %bb.ah unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bi
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ah
  %i.ce = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.cg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0171.0212) #29 ; 2 uses
  %.not195 = icmp eq ptr %i.cg, %i.bg
  br i1 %.not195, label %._crit_edge216, label %.peel.next, !llvm.loop !175

.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.aa
  %lpad.loopexit.split-lp365 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %bb.ab
  %lpad.loopexit.split-lp368 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bi
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp
  %i.cj = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  %.pn68 = phi { ptr, i32 } [ %lpad.loopexit.split-lp368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %lpad.loopexit.split-lp365, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp368, %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit.split-lp

bb.ai:                                            ; preds = %._crit_edge216, %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !37
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.bb, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 27, ptr nonnull @.str.62)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %.not196217 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not196217, label %._crit_edge222, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 6, ptr nonnull @.str.58)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %.lr.ph221
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.cx, ptr %i.cv)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 14, ptr nonnull @.str.63)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.da, ptr %i.cy)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 9, ptr nonnull @.str.32)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !83 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dc)
          to label %bb.aq unwind label %.loopexit.split-lp256.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.dg = load ptr, ptr %5, align 8, !tbaa !27
  %i.dh = load i64, ptr %i.cr, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.dh, ptr %i.dg)
          to label %bb.ar unwind label %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.di = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cs
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i118.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.peel: ; preds = %bb.ar
  %i.dk = load i64, ptr %i.cs, align 8, !tbaa !23
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i118.peel: ; preds = %bb.ar
  %9 = load i64, ptr %i.cr, align 8, !tbaa !26
  %10 = icmp ult i64 %9, 16
  call void @llvm.assume(i1 %10)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i118.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.peel
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.cp) #29 ; 2 uses
  %.not196.peel = icmp eq ptr %i.dm, %i.cq
  br i1 %.not196.peel, label %._crit_edge222, label %.peel.next250

._crit_edge222:                                   ; preds = %bb.ba, %bb.as, %bb.ak
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 4, ptr nonnull @.str.61)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next250:                                    ; preds = %bb.as, %bb.ba
  %.sroa.0159.0218 = phi ptr [ %i.eg, %bb.ba ], [ %i.dm, %bb.as ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0159.0218, i64 64
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 5, ptr nonnull @.str.59)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %.peel.next250
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0159.0218, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0159.0218, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.dr, ptr %i.dp)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 14, ptr nonnull @.str.63)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0159.0218, i64 72
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.du, ptr %i.ds)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 9, ptr nonnull @.str.32)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0159.0218, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !83 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !30
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %bb.ay unwind label %.loopexit.split-lp256.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.ea = load ptr, ptr %5, align 8, !tbaa !27
  %i.eb = load i64, ptr %i.cr, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.eb, ptr %i.ea)
          to label %bb.az unwind label %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.ec = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cs
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.az
  %i.ee = load i64, ptr %i.cs, align 8, !tbaa !23
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.eg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0159.0218) #29 ; 2 uses
  %.not196 = icmp eq ptr %i.eg, %i.cq
  br i1 %.not196, label %._crit_edge222, label %.peel.next250, !llvm.loop !176

.loopexit.split-lp256.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.ap
  %lpad.loopexit.split-lp357 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cs
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp
  %i.ej = load i64, ptr %i.cs, align 8, !tbaa !23
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp256.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  %.pn72 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp256.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit.split-lp

bb.bb:                                            ; preds = %._crit_edge222, %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.em = load i64, ptr %i.el, align 8, !tbaa !37
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.bo, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 27, ptr nonnull @.str.64)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !66 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  %.not197223 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not197223, label %._crit_edge228, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.bd
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 6, ptr nonnull @.str.58)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %.lr.ph227
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ex, ptr %i.ev)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.60)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNK9grpc_core16GrpcXdsBootstrap18AllowedGrpcService8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %bb.bh unwind label %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.ey = load ptr, ptr %6, align 8, !tbaa !27
  %i.ez = load i64, ptr %i.er, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ez, ptr %i.ey)
          to label %bb.bi unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.fa = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.es
  br i1 %i.fb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.peel: ; preds = %bb.bi
  %i.fc = load i64, ptr %i.es, align 8, !tbaa !23
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.peel: ; preds = %bb.bi
  %11 = load i64, ptr %i.er, align 8, !tbaa !26
  %12 = icmp ult i64 %11, 16
  call void @llvm.assume(i1 %12)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fe = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ep) #29 ; 2 uses
  %.not197.peel = icmp eq ptr %i.fe, %i.eq
  br i1 %.not197.peel, label %._crit_edge228, label %.peel.next266

._crit_edge228:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.peel, %bb.bd
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 4, ptr nonnull @.str.61)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next266:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %.sroa.0143.0224 = phi ptr [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.peel ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0143.0224, i64 64
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 5, ptr nonnull @.str.59)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %.peel.next266
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0143.0224, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !27
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0143.0224, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.fj, ptr %i.fh)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.60)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNK9grpc_core16GrpcXdsBootstrap18AllowedGrpcService8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %bb.bm unwind label %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.fk = load ptr, ptr %6, align 8, !tbaa !27
  %i.fl = load i64, ptr %i.er, align 8, !tbaa !26
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.fl, ptr %i.fk)
          to label %bb.bn unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.fm = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.es
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.bn
  %i.fo = load i64, ptr %i.es, align 8, !tbaa !23
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0143.0224) #29 ; 2 uses
  %.not197 = icmp eq ptr %i.fq, %i.eq
  br i1 %.not197, label %._crit_edge228, label %.peel.next266, !llvm.loop !177

.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl, %bb.bg
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %bb.bh
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.es
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp
  %i.ft = load i64, ptr %i.es, align 8, !tbaa !23
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  %.pn77 = phi { ptr, i32 } [ %lpad.loopexit.split-lp351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %lpad.loopexit.split-lp348, %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.ad, %.peel.next, %.peel.next266, %bb.bj, %bb.bk, %.peel.next250, %bb.at, %bb.au, %bb.av, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.a, %bb.z, %bb.y, %.lr.ph215, %.lr.ph227, %bb.be, %bb.bf, %.lr.ph221, %bb.al, %bb.am, %bb.an, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.peel, %._crit_edge222, %._crit_edge216, %._crit_edge, %bb.h, %bb.o, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u, %bb.w, %bb.aj, %bb.bc, %bb.bo, %._crit_edge228
  %lpad.loopexit.split-lp371 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bo:                                            ; preds = %._crit_edge228, %bb.bb
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.65)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %lpad.loopexit.split-lp371, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fv = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.a
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %.loopexit.split-lp
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !23
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.bp:                                            ; preds = %bb.bo
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  resume { ptr, i32 } %.pn81.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK9grpc_core16GrpcXdsBootstrap15LookupAuthorityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(776) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core16GrpcXdsBootstrap13GrpcAuthorityEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !178

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core16GrpcXdsBootstrap13GrpcAuthorityEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core16GrpcXdsBootstrap13GrpcAuthorityEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %spec.select = select i1 %i.w, ptr null, ptr %i.x
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core16GrpcXdsBootstrap13GrpcAuthorityEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a
  %.0 = phi ptr [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core16GrpcXdsBootstrap13GrpcAuthorityEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core16GrpcXdsBootstrap13GrpcAuthorityESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core16GrpcXdsBootstrapD2Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10unique_ptrIN9grpc_core22XdsMatcherInputFactoryIS3_EESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN9grpc_core23XdsMatcherInputRegistryISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.b

end_hunk_1
