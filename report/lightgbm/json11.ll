Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/json11?download=true
inline.NumInlined: 1422
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN24json11_internal_lightgbm4JsonC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i8 0, ptr %i.g, align 8, !tbaa !41, !noalias !109
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN24json11_internal_lightgbm10JsonStringE, i64 16), ptr %i.o, align 8, !tbaa !22, !noalias !109
  store ptr %i.o, ptr %0, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.r, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN24json11_internal_lightgbm4JsonC2EPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !112
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #32, !noalias !113 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm10JsonStringESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPKcEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt12__shared_ptrIN24json11_internal_lightgbm10JsonStringELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm10JsonStringESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !113

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm10JsonStringESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #30, !noalias !113
  resume { ptr, i32 } %i.c

_ZNSt12__shared_ptrIN24json11_internal_lightgbm10JsonStringELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm10JsonStringESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPKcEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm10JsonStringESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = load ptr, ptr %1, align 8, !tbaa !112    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !78
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.g, ptr %i.a, align 8, !tbaa !106
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !58
  %i.j = load i64, ptr %i.a, align 8, !tbaa !106
  store i64 %i.j, ptr %i.e, align 8, !tbaa !41
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !41
  store i8 %i.l, ptr %i.k, align 1, !tbaa !41
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.d, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !28
  %i.o = load ptr, ptr %2, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !78
  %i.s = load ptr, ptr %2, align 8, !tbaa !58     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.n, align 8, !tbaa !28   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.w, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.s, ptr %i.q, align 8, !tbaa !58
  %i.x = load i64, ptr %i.e, align 8, !tbaa !41
  store i64 %i.x, ptr %i.r, align 8, !tbaa !41
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN24json11_internal_lightgbm10JsonStringE, i64 16), ptr %i.z, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !78
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !106
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !58
  %i.g = load i64, ptr %i.a, align 8, !tbaa !106
  store i64 %i.g, ptr %i.b, align 8, !tbaa !41
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !41
  store i8 %i.i, ptr %i.h, align 1, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = load ptr, ptr %0, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN24json11_internal_lightgbm4JsonC2ERKSt6vectorIS0_SaIS0_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN24json11_internal_lightgbm9JsonArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %2 = alloca %"class.std::allocator.12", align 1 ; 3 uses
  %3 = alloca %"class.std::shared_ptr.58", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !116
  store ptr null, ptr %3, align 16, !tbaa !119, !alias.scope !116
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN24json11_internal_lightgbm9JsonArrayESaIvEJRKSt6vectorINS4_4JsonESaIS8_EEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !116
  %i.b = load <2 x ptr>, ptr %3, align 16, !tbaa !62
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN24json11_internal_lightgbm9JsonArrayESaIvEJRKSt6vectorINS4_4JsonESaIS8_EEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN24json11_internal_lightgbm5ValueILNS_4Json4TypeE4ESt6vectorIS1_SaIS1_EEEE, i64 16), ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc3.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.l = icmp ugt i64 %i.k, 9223372036854775792
  br i1 %i.l, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !43

.noexc.i.i.i.i.i.i:                               ; preds = %bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #32
          to label %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc3.i.i.i.i_crit_edge unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc3.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !27
  %.pre14 = load ptr, ptr %i.f, align 8, !tbaa !27
  br label %.noexc3.i.i.i.i

.noexc3.i.i.i.i:                                  ; preds = %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc3.i.i.i.i_crit_edge, %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %4 = phi ptr [ %i.g, %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit ], [ %.pre14, %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc3.i.i.i.i_crit_edge ] ; 2 uses
  %5 = phi ptr [ %i.h, %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc3.i.i.i.i_crit_edge ] ; 2 uses
  %6 = phi ptr [ null, %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit ], [ %i.m, %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc3.i.i.i.i_crit_edge ] ; 5 uses
  store ptr %6, ptr %i.e, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %6, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !45
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %5, %4
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc3.i.i.i.i, %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ], [ %6, %.noexc3.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ], [ %5, %.noexc3.i.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.t, align 4, !tbaa !42
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !42
  br label %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i

_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %4
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !122

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i, %.noexc3.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %6, %.noexc3.i.i.i.i ], [ %i.z, %_ZSt10_ConstructIN24json11_internal_lightgbm4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN24json11_internal_lightgbm9JsonArrayE, i64 16), ptr %i.d, align 8, !tbaa !22
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  store ptr %i.d, ptr %1, align 8, !tbaa !123
  ret void

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11: ; preds = %_ZNSt15__new_allocatorIN24json11_internal_lightgbm4JsonEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN24json11_internal_lightgbm5ValueILNS_4Json4TypeE4ESt6vectorIS1_SaIS1_EEEE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !39
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !124
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !124
  br label %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i, !prof !43

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !47
  br label %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.x = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyIN24json11_internal_lightgbm9JsonArrayEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #30, !inline_history !47
  br label %_ZSt8_DestroyIN24json11_internal_lightgbm9JsonArrayEEvPT_.exit

_ZSt8_DestroyIN24json11_internal_lightgbm9JsonArrayEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN24json11_internal_lightgbm9JsonArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !41
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN24json11_internal_lightgbm5ValueILNS_4Json4TypeE4ESt6vectorIS1_SaIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN24json11_internal_lightgbm5ValueILNS_4Json4TypeE4ESt6vectorIS1_SaIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN24json11_internal_lightgbm4JsonES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !39
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !46
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !46
  br label %_ZSt8_DestroyIN24json11_internal_lightgbm4JsonEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
end_hunk_0
