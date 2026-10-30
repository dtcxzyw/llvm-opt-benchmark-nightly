Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_http_composite_filter?download=true
inline.NumInlined: 1662
inline.NumDeleted: 1038
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__cxa_guard_release

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core10XdsMatcher6ActionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core15CompositeFilter16SkipFilterActionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core15CompositeFilter16SkipFilterAction6EqualsERKNS_10XdsMatcher6ActionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core15CompositeFilter16SkipFilterAction8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZNK9grpc_core15CompositeFilter16SkipFilterAction4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEvENKUlvE_clEvE7factory acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEv.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEvENKUlvE_clEvE7factory) #30
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9grpc_core14UniqueTypeName7FactoryC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEvENKUlvE_clEvE7factory, i64 60, ptr nonnull @.str.13)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEvENKUlvE_clEvE7factory) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEvENKUlvE_clEvE7factory) #30
  br label %_ZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEvENKUlvE_clEvE7factory) #30
  resume { ptr, i32 } %i.e

_ZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZZN9grpc_core15CompositeFilter16SkipFilterAction4TypeEvENKUlvE_clEvE7factory, align 8, !tbaa !82 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79
  %.fca.0.insert.i.i.i.i = insertvalue { i64, ptr } poison, i64 %i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i.i.i, ptr %i.g, 1
  ret { i64, ptr } %.fca.1.insert.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core23XdsMatcherActionFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN9grpc_core12_GLOBAL__N_126ExecuteFilterActionFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal { i64, ptr } @_ZNK9grpc_core12_GLOBAL__N_126ExecuteFilterActionFactory4typeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEvENKUlvE_clEvE7factory acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEv.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEvENKUlvE_clEvE7factory) #30
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9grpc_core14UniqueTypeName7FactoryC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEvENKUlvE_clEvE7factory, i64 62, ptr nonnull @.str.14)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEvENKUlvE_clEvE7factory) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEvENKUlvE_clEvE7factory) #30
  br label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEvENKUlvE_clEvE7factory) #30
  resume { ptr, i32 } %i.e

_ZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZZN9grpc_core15CompositeFilter19ExecuteFilterAction4TypeEvENKUlvE_clEvE7factory, align 8, !tbaa !82 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79
  %.fca.0.insert.i.i.i.i = insertvalue { i64, ptr } poison, i64 %i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i.i.i, ptr %i.g, 1
  ret { i64, ptr } %.fca.1.insert.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK9grpc_core12_GLOBAL__N_126ExecuteFilterActionFactory20ParseAndCreateActionERKNS_15XdsResourceType13DecodeContextESt17basic_string_viewIcSt11char_traitsIcEEPNS_16ValidationErrorsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.127") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 %3, ptr %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.266", align 8   ; 11 uses
  %7 = alloca %"struct.grpc_core::CompositeFilter::ExecuteFilterAction::Filter", align 16 ; 7 uses
  %8 = alloca %"struct.grpc_core::CompositeFilter::ExecuteFilterAction::Filter", align 16 ; 6 uses
  %9 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %i.c = load i16, ptr getelementptr inbounds nuw (i8, ptr @envoy__extensions__filters__http__composite__v3__ExecuteFilterAction_msg_init, i64 8), align 8, !tbaa !37
  %i.d = zext i16 %i.c to i64                     ; 5 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !40   ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !20

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.n, ptr %i.b, align 8, !tbaa !40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %bb.b

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.a
  %i.o = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.b, i64 noundef %i.d) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !41

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i11.i.i.i = phi ptr [ %i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.o, %upb_Arena_Malloc.exit.i.i.i ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i, i8 0, i64 %i.d, i1 false)
  %i.p = tail call i32 @upb_Decode(ptr noundef %4, i64 noundef %3, ptr noundef nonnull %.0.i11.i.i.i, ptr noundef nonnull @envoy__extensions__filters__http__composite__v3__ExecuteFilterAction_msg_init, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b)
  %.not8.i = icmp eq i32 %i.p, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %upb_Arena_Malloc.exit.i.i.i
  tail call void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 35, ptr nonnull @.str.18)
  store ptr null, ptr %0, align 8, !tbaa !108
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !215
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__extensions__filters__http__composite__v3__FilterChainConfiguration_msg_init) #30, !srcloc !42
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i11.i.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 1              ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = inttoptr i64 %i.v to ptr
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__core__v3__TypedExtensionConfig_msg_init) #30, !srcloc !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 1              ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.loopexit, label %envoy_extensions_filters_http_composite_v3_FilterChainConfiguration_typed_config.exit

envoy_extensions_filters_http_composite_v3_FilterChainConfiguration_typed_config.exit: ; preds = %bb.e
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !217 ; 2 uses
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !218
  %i.ad = and i64 %i.ac, -8
  %i.ae = inttoptr i64 %i.ad to ptr
  %.not117 = icmp eq i64 %i.ab, 0
  br i1 %.not117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %envoy_extensions_filters_http_composite_v3_FilterChainConfiguration_typed_config.exit
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit
  %i.ai = phi ptr [ null, %.lr.ph ], [ %i.bj, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit ] ; 6 uses
  %i.aj = phi ptr [ null, %.lr.ph ], [ %i.bk, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit ] ; 5 uses
  %i.ak = phi ptr [ null, %.lr.ph ], [ %i.bl, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit ] ; 4 uses
  %.0116 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.0116
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_126ExecuteFilterActionFactory11ParseFilterERKNS_15XdsResourceType13DecodeContextERKNS_21XdsHttpFilterRegistryEPK41envoy_config_core_v3_TypedExtensionConfigPNS_16ValidationErrorsE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.t, ptr noundef %i.am, ptr noundef %5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !17
  %i.ao = load <2 x ptr>, ptr %7, align 16, !tbaa !58
  store <2 x ptr> %i.ao, ptr %i.ak, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !111
  br label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #34
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 576460752303423487)
  %i.ay = select i1 %i.aw, i64 576460752303423487, i64 %i.ax ; 3 uses
  %.not.i.i76 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i76)
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #32
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  %i.bc = load <2 x ptr>, ptr %7, align 16, !tbaa !58
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !tbaa !58
  store ptr null, ptr %i.ah, align 8, !tbaa !17
  %.not10.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc78, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ba, %.noexc78 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.ai, %.noexc78 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.be = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !58, !alias.scope !222
  store <2 x ptr> %i.be, ptr %.012.i.i.i.i, align 8, !tbaa !58, !alias.scope !221
  store ptr null, ptr %i.bd, align 8, !tbaa !17, !alias.scope !222
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.aj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !207

_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %.noexc78
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ba, %.noexc78 ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ai, null
  br i1 %.not.i23.i, label %.noexc, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.as) #33
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.ba, ptr %6, align 8, !tbaa !112
  store ptr %i.bh, ptr %i.af, align 8, !tbaa !111
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.bi, ptr %i.ag, align 8, !tbaa !113
  br label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit

_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit: ; preds = %bb.h, %.noexc
  %i.bj = phi ptr [ %i.ba, %.noexc ], [ %i.ai, %bb.h ] ; 2 uses
  %i.bk = phi ptr [ %i.bi, %.noexc ], [ %i.aj, %bb.h ] ; 2 uses
  %i.bl = phi ptr [ %i.bh, %.noexc ], [ %i.ap, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.bm = add nuw i64 %.0116, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.ab
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !208

bb.l:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit62

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.j
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !17 ; 4 uses
  %.not.i.i61 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i61, label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit62, label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.n, label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit62, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !209
  br label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit62

_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit62: ; preds = %bb.n, %bb.m, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn54 = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp145, %bb.m ], [ %lpad.loopexit.split-lp145, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.af

bb.o:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__core__v3__TypedExtensionConfig_msg_init) #30, !srcloc !42
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i11.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 1            ; 2 uses
  %.not45 = icmp eq i64 %i.bw, 0
  br i1 %.not45, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = inttoptr i64 %i.bw to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_126ExecuteFilterActionFactory11ParseFilterERKNS_15XdsResourceType13DecodeContextERKNS_21XdsHttpFilterRegistryEPK41envoy_config_core_v3_TypedExtensionConfigPNS_16ValidationErrorsE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.t, ptr noundef nonnull %i.bx, ptr noundef %5)
          to label %_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i79 unwind label %bb.q

_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i79: ; preds = %bb.p
  %i.by = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32
          to label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit67 unwind label %bb.r ; 4 uses

_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit67: ; preds = %_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i79
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cb = load <2 x ptr>, ptr %8, align 16, !tbaa !58
  store <2 x ptr> %i.cb, ptr %i.by, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  store ptr %i.by, ptr %6, align 8, !tbaa !112
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !111
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit69

bb.r:                                             ; preds = %_ZNKSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EE12_M_check_lenEmPKc.exit.i79
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !17 ; 4 uses
  %.not.i.i68 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i68, label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit69, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 acq_rel, align 8
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.t, label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit69, !prof !20

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #30, !inline_history !209
  br label %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit69

_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit69: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.q ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ], [ %i.ce, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.af

bb.u:                                             ; preds = %bb.o
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 47, ptr nonnull @.str.19)
          to label %.loopexit unwind label %bb.ae

.loopexit:                                        ; preds = %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit, %bb.e, %envoy_extensions_filters_http_composite_v3_FilterChainConfiguration_typed_config.exit, %bb.u, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit67
  %i.cn = phi ptr [ null, %bb.e ], [ null, %envoy_extensions_filters_http_composite_v3_FilterChainConfiguration_typed_config.exit ], [ null, %bb.u ], [ %i.cc, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit67 ], [ %i.bk, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit ]
  %i.co = phi ptr [ null, %bb.e ], [ null, %envoy_extensions_filters_http_composite_v3_FilterChainConfiguration_typed_config.exit ], [ null, %bb.u ], [ %i.cc, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit67 ], [ %i.bl, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit ]
  %i.cp = phi ptr [ null, %bb.e ], [ null, %envoy_extensions_filters_http_composite_v3_FilterChainConfiguration_typed_config.exit ], [ null, %bb.u ], [ %i.by, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit67 ], [ %i.bj, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__core__v3__RuntimeFractionalPercent_msg_init) #30, !srcloc !42
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i11.i.i.i, i64 32
  %i.cr = load i64, ptr %i.cq, align 1            ; 2 uses
  %.not48 = icmp eq i64 %i.cr, 0
  br i1 %.not48, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.cs = inttoptr i64 %i.cr to ptr
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__type__v3__FractionalPercent_msg_init) #30, !srcloc !42
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i64, ptr %i.ct, align 1            ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %5, ptr %9, align 8, !tbaa !45
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 29, ptr nonnull @.str.20)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.z

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.w
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 13, ptr nonnull @.str.4)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #31
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ad

bb.z:                                             ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn49 = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %i.cy, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.af

bb.ac:                                            ; preds = %bb.v
  %i.da = inttoptr i64 %i.cu to ptr
  %i.db = invoke noundef i32 @_ZN9grpc_core22ParseFractionalPercentEPK31envoy_type_v3_FractionalPercent(ptr noundef nonnull %i.da)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit, %.loopexit
  %.0112 = phi i32 [ 1000000, %.loopexit ], [ 1000000, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit ], [ %i.db, %bb.ac ]
  %i.dc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EED2Ev.exit unwind label %bb.ae ; 6 uses

_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EED2Ev.exit: ; preds = %bb.ad
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN9grpc_core15CompositeFilter19ExecuteFilterActionE, i64 16), ptr %i.dc, align 8, !tbaa !19, !noalias !223
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.cp, ptr %i.dd, align 8, !tbaa !112, !noalias !223
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.co, ptr %i.de, align 8, !tbaa !111, !noalias !223
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.cn, ptr %i.df, align 8, !tbaa !113, !noalias !223
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store i32 %.0112, ptr %i.dg, align 8, !tbaa !229, !noalias !223
  store ptr %i.dc, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac, %bb.u, %bb.ad
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit62, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit69
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %.pn49, %bb.ab ], [ %.pn, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit69 ], [ %i.dh, %bb.ae ], [ %.pn54, %_ZN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterD2Ev.exit62 ]
  call void @_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %.pn54.pn.pn.pn

bb.ag:                                            ; preds = %_ZNSt6vectorIN9grpc_core15CompositeFilter19ExecuteFilterAction6FilterESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_126ExecuteFilterActionFactory11ParseFilterERKNS_15XdsResourceType13DecodeContextERKNS_21XdsHttpFilterRegistryEPK41envoy_config_core_v3_TypedExtensionConfigPNS_16ValidationErrorsE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %6 = alloca %"class.std::optional", align 8     ; 10 uses
  %7 = alloca %"class.grpc_core::RefCountedPtr", align 8 ; 5 uses
end_hunk_0
